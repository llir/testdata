; ModuleID = 'coreutils-8.32/src/id.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [USER]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"Print user and group information for each specified USER,\0Aor (when USER omitted) for the current user.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [521 x i8] c"  -a             ignore, for compatibility with other versions\0A  -Z, --context  print only the security context of the process\0A  -g, --group    print only the effective group ID\0A  -G, --groups   print all group IDs\0A  -n, --name     print a name instead of a number, for -ugG\0A  -r, --real     print the real ID instead of the effective ID, with -ugG\0A  -u, --user     print only the effective user ID\0A  -z, --zero     delimit entries with NUL characters, not whitespace;\0A                   not permitted in default format\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"\0AWithout any OPTION, print some useful set of identified information.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.38 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"agnruzGZ\00", align 1
@longopts = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [55 x i8] c"--context (-Z) works only on an SELinux-enabled kernel\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Arnold Robbins\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@just_group_list = internal unnamed_addr global i1 false, align 1, !dbg !83
@opt_zero = internal unnamed_addr global i1 false, align 1, !dbg !84
@just_user = internal unnamed_addr global i1 false, align 1, !dbg !85
@use_real = internal unnamed_addr global i1 false, align 1, !dbg !86
@use_name = internal unnamed_addr global i1 false, align 1, !dbg !87
@just_group = internal unnamed_addr global i1 false, align 1, !dbg !88
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [44 x i8] c"cannot print \22only\22 of more than one choice\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"cannot print only names or real IDs in default format\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"option --zero not permitted in default format\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@multiple_users = internal unnamed_addr global i8 0, align 1, !dbg !43
@euid = internal global i32 0, align 4, !dbg !18
@.str.22 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@ok = internal unnamed_addr global i8 1, align 1, !dbg !45
@ruid = internal unnamed_addr global i32 0, align 4, !dbg !11
@egid = internal unnamed_addr global i32 0, align 4, !dbg !24
@rgid = internal unnamed_addr global i32 0, align 4, !dbg !20
@.str.23 = private unnamed_addr constant [25 x i8] c"cannot get effective UID\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"cannot find name for user ID %s\00", align 1
@uidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !47
@.str.52 = private unnamed_addr constant [7 x i8] c"uid=%s\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c" gid=%s\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !59
@.str.55 = private unnamed_addr constant [9 x i8] c" euid=%s\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c" egid=%s\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c" groups=\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@gidtostr_ptr.buf.4 = internal global [21 x i8] zeroinitializer, align 16, !dbg !89
@.str.16 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.17 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), align 8, !dbg !99
@.str.60 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !104
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !109
@.str.63 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !111
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !117
@.str.74 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.75 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.76 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.80, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.81, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.86, i32 0, i32 0), i8* null], align 16, !dbg !123
@.str.77 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.78 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.79 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.80 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.81 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.82 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.83 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.84 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.85 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.86 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !167
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !171
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !183
@.str.11.87 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.89 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.90 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.91 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.92 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.93 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !190
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !197
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !185
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !199
@.str.3.100 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.2.102 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.1.103 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.105 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.106 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.107 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.108 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.109 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.110 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.111 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.112 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.113 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.114 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.115 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.116 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.117 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.118 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.119 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.122 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.126 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !205
@.str.1.140 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.146 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.147 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.159 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.160 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !776 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !780, metadata !DIExpression()), !dbg !781
  %3 = icmp eq i32 %0, 0, !dbg !782
  br i1 %3, label %9, label %4, !dbg !784

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !785, !tbaa !787
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !785
  %7 = load i8*, i8** @program_name, align 8, !dbg !785, !tbaa !787
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !785
  br label %64, !dbg !785

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !791
  %11 = load i8*, i8** @program_name, align 8, !dbg !791, !tbaa !787
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #27, !dbg !791
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !793
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !793, !tbaa !787
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !793
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([521 x i8], [521 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !794
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !794, !tbaa !787
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !794
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !795
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !795, !tbaa !787
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !795
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !796
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !796, !tbaa !787
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !796
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !797
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !797, !tbaa !787
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !797
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), metadata !798, metadata !DIExpression()) #27, !dbg !817
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #27, !dbg !819
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !804, metadata !DIExpression()) #27, !dbg !820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !820
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), metadata !813, metadata !DIExpression()) #27, !dbg !817
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !814, metadata !DIExpression()) #27, !dbg !817
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !821
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !814, metadata !DIExpression()) #27, !dbg !817
  br label %30, !dbg !822

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !814, metadata !DIExpression()) #27, !dbg !817
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #28, !dbg !823
  %34 = icmp eq i32 %33, 0, !dbg !823
  br i1 %34, label %40, label %35, !dbg !822

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !824
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !814, metadata !DIExpression()) #27, !dbg !817
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !825
  %38 = load i8*, i8** %37, align 8, !dbg !825, !tbaa !826
  %39 = icmp eq i8* %38, null, !dbg !828
  br i1 %39, label %40, label %30, !dbg !829, !llvm.loop !830

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !832
  %43 = load i8*, i8** %42, align 8, !dbg !832, !tbaa !834
  %44 = icmp eq i8* %43, null, !dbg !835
  %45 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !836
  call void @llvm.dbg.value(metadata i8* %45, metadata !813, metadata !DIExpression()) #27, !dbg !817
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #27, !dbg !837
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0)) #27, !dbg !837
  %48 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !838
  call void @llvm.dbg.value(metadata i8* %48, metadata !816, metadata !DIExpression()) #27, !dbg !817
  %49 = icmp eq i8* %48, null, !dbg !839
  br i1 %49, label %57, label %50, !dbg !841

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #28, !dbg !842
  %52 = icmp eq i32 %51, 0, !dbg !842
  br i1 %52, label %57, label %53, !dbg !843

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.38, i64 0, i64 0), i32 5) #27, !dbg !844
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !844, !tbaa !787
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #27, !dbg !844
  br label %57, !dbg !846

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 5) #27, !dbg !847
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #27, !dbg !847
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #27, !dbg !848
  %61 = icmp eq i8* %45, getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), !dbg !848
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !848
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #27, !dbg !848
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #27, !dbg !849
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #29, !dbg !850
  unreachable, !dbg !850
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !851 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !855 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !910 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !918, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8** %1, metadata !919, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i32 0, metadata !921, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8 0, metadata !922, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* null, metadata !923, metadata !DIExpression()), !dbg !946
  %3 = load i8*, i8** %1, align 8, !dbg !947, !tbaa !787
  tail call void @set_program_name(i8* %3) #27, !dbg !948
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #27, !dbg !949
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #27, !dbg !950
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #27, !dbg !951
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !952
  br label %8, !dbg !953

8:                                                ; preds = %24, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #27, !dbg !954
  call void @llvm.dbg.value(metadata i32 %9, metadata !920, metadata !DIExpression()), !dbg !946
  switch i32 %9, label %21 [
    i32 -1, label %25
    i32 97, label %24
    i32 90, label %10
    i32 103, label %22
    i32 110, label %12
    i32 114, label %13
    i32 117, label %14
    i32 122, label %15
    i32 71, label %16
    i32 -130, label %17
    i32 -131, label %18
  ], !dbg !953

10:                                               ; preds = %8
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 5) #27, !dbg !955
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %11) #27, !dbg !955
  unreachable, !dbg !955

12:                                               ; preds = %8
  br label %22, !dbg !959

13:                                               ; preds = %8
  br label %22, !dbg !960

14:                                               ; preds = %8
  br label %22, !dbg !961

15:                                               ; preds = %8
  br label %22, !dbg !962

16:                                               ; preds = %8
  br label %22, !dbg !963

17:                                               ; preds = %8
  tail call void @usage(i32 0) #30, !dbg !964
  unreachable, !dbg !964

18:                                               ; preds = %8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !965, !tbaa !787
  %20 = load i8*, i8** @Version, align 8, !dbg !965, !tbaa !787
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #27, !dbg !965
  tail call void @exit(i32 0) #29, !dbg !965
  unreachable, !dbg !965

21:                                               ; preds = %8
  tail call void @usage(i32 1) #30, !dbg !966
  unreachable, !dbg !966

22:                                               ; preds = %8, %12, %13, %14, %15, %16
  %23 = phi i1* [ @just_group_list, %16 ], [ @opt_zero, %15 ], [ @just_user, %14 ], [ @use_real, %13 ], [ @use_name, %12 ], [ @just_group, %8 ]
  store i1 true, i1* %23, align 1, !dbg !967
  br label %24, !dbg !953

24:                                               ; preds = %22, %8
  br label %8, !dbg !954, !llvm.loop !968

25:                                               ; preds = %8
  %26 = load i32, i32* @optind, align 4, !dbg !970, !tbaa !971
  %27 = sub nsw i32 %0, %26, !dbg !973
  %28 = sext i32 %27 to i64, !dbg !974
  call void @llvm.dbg.value(metadata i64 %28, metadata !924, metadata !DIExpression()), !dbg !946
  %29 = load i1, i1* @just_user, align 1, !dbg !975
  %30 = zext i1 %29 to i32, !dbg !975
  %31 = load i1, i1* @just_group, align 1, !dbg !977
  %32 = zext i1 %31 to i32, !dbg !977
  %33 = add nuw nsw i32 %32, %30, !dbg !978
  %34 = load i1, i1* @just_group_list, align 1, !dbg !979
  %35 = zext i1 %34 to i32, !dbg !979
  %36 = add nuw nsw i32 %33, %35, !dbg !980
  %37 = icmp ugt i32 %36, 1, !dbg !981
  br i1 %37, label %38, label %40, !dbg !982

38:                                               ; preds = %25
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 5) #27, !dbg !983
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %39) #27, !dbg !983
  unreachable, !dbg !983

40:                                               ; preds = %25
  %41 = or i1 %29, %31, !dbg !984
  %42 = or i1 %41, %34, !dbg !984
  call void @llvm.dbg.value(metadata i1 %42, metadata !925, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !946
  br i1 %42, label %43, label %45, !dbg !985

43:                                               ; preds = %40
  %44 = icmp eq i32 %27, 0, !dbg !987
  br i1 %44, label %100, label %59, !dbg !989

45:                                               ; preds = %40
  %46 = load i1, i1* @use_real, align 1, !dbg !990
  br i1 %46, label %49, label %47, !dbg !991

47:                                               ; preds = %45
  %48 = load i1, i1* @use_name, align 1, !dbg !992
  br i1 %48, label %49, label %51, !dbg !993

49:                                               ; preds = %47, %45
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i32 5) #27, !dbg !994
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %50) #27, !dbg !994
  unreachable, !dbg !994

51:                                               ; preds = %47
  %52 = load i1, i1* @opt_zero, align 1, !dbg !995
  br i1 %52, label %53, label %55, !dbg !997

53:                                               ; preds = %51
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i32 5) #27, !dbg !998
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %54) #27, !dbg !998
  unreachable, !dbg !998

55:                                               ; preds = %51
  %56 = icmp eq i32 %27, 0, !dbg !987
  br i1 %56, label %57, label %59, !dbg !999

57:                                               ; preds = %55
  %58 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0)) #27, !dbg !1000
  br label %100, !dbg !989

59:                                               ; preds = %55, %43
  %60 = icmp ne i32 %27, 1, !dbg !1001
  %61 = zext i1 %60 to i8, !dbg !1002
  store i8 %61, i8* @multiple_users, align 1, !dbg !1002, !tbaa !1003
  %62 = sext i32 %26 to i64, !dbg !1005
  %63 = add nsw i64 %28, %62, !dbg !1006
  call void @llvm.dbg.value(metadata i64 %63, metadata !924, metadata !DIExpression()), !dbg !946
  %64 = icmp ugt i64 %63, %62, !dbg !1007
  br i1 %64, label %65, label %151, !dbg !1008

65:                                               ; preds = %59, %95
  %66 = phi i64 [ %98, %95 ], [ %62, %59 ]
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !926, metadata !DIExpression()), !dbg !1009
  %67 = getelementptr inbounds i8*, i8** %1, i64 %66, !dbg !1010
  %68 = load i8*, i8** %67, align 8, !dbg !1010, !tbaa !787
  call void @llvm.dbg.value(metadata i8* %68, metadata !942, metadata !DIExpression()), !dbg !1009
  %69 = load i8, i8* %68, align 1, !dbg !1011, !tbaa !1013
  %70 = icmp eq i8 %69, 0, !dbg !1011
  br i1 %70, label %78, label %71, !dbg !1014

71:                                               ; preds = %65
  %72 = tail call i8* @parse_user_spec(i8* nonnull %68, i32* nonnull @euid, i32* null, i8** null, i8** null) #27, !dbg !1015
  %73 = icmp eq i8* %72, null, !dbg !1018
  br i1 %73, label %74, label %78, !dbg !1019

74:                                               ; preds = %71
  %75 = load i32, i32* @euid, align 4, !dbg !1020, !tbaa !971
  %76 = tail call %struct.passwd* @getpwuid(i32 %75) #27, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.passwd* %76, metadata !926, metadata !DIExpression()), !dbg !1009
  %77 = icmp eq %struct.passwd* %76, null, !dbg !1023
  br i1 %77, label %78, label %87, !dbg !1025

78:                                               ; preds = %65, %71, %74
  %79 = tail call i32* @__errno_location() #31, !dbg !1026
  %80 = load i32, i32* %79, align 4, !dbg !1026, !tbaa !971
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 5) #27, !dbg !1028
  %82 = load i32, i32* @optind, align 4, !dbg !1029, !tbaa !971
  %83 = sext i32 %82 to i64, !dbg !1030
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83, !dbg !1030
  %85 = load i8*, i8** %84, align 8, !dbg !1030, !tbaa !787
  %86 = tail call i8* @quote(i8* %85) #27, !dbg !1031
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %80, i8* %81, i8* %86) #27, !dbg !1032
  store i8 0, i8* @ok, align 1, !dbg !1033, !tbaa !1003
  br label %95, !dbg !1034

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.passwd, %struct.passwd* %76, i64 0, i32 0, !dbg !1035
  %89 = load i8*, i8** %88, align 8, !dbg !1035, !tbaa !1036
  %90 = tail call noalias i8* @xstrdup(i8* %89) #27, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %90, metadata !923, metadata !DIExpression()), !dbg !946
  %91 = getelementptr inbounds %struct.passwd, %struct.passwd* %76, i64 0, i32 2, !dbg !1039
  %92 = load i32, i32* %91, align 8, !dbg !1039, !tbaa !1040
  store i32 %92, i32* @euid, align 4, !dbg !1041, !tbaa !971
  store i32 %92, i32* @ruid, align 4, !dbg !1042, !tbaa !971
  %93 = getelementptr inbounds %struct.passwd, %struct.passwd* %76, i64 0, i32 3, !dbg !1043
  %94 = load i32, i32* %93, align 4, !dbg !1043, !tbaa !1044
  store i32 %94, i32* @egid, align 4, !dbg !1045, !tbaa !971
  store i32 %94, i32* @rgid, align 4, !dbg !1046, !tbaa !971
  tail call fastcc void @print_stuff(i8* %90), !dbg !1047
  tail call void @free(i8* %90) #27, !dbg !1048
  br label %95, !dbg !1049

95:                                               ; preds = %87, %78
  %96 = load i32, i32* @optind, align 4, !dbg !1050, !tbaa !971
  %97 = add nsw i32 %96, 1, !dbg !1050
  store i32 %97, i32* @optind, align 4, !dbg !1050, !tbaa !971
  %98 = sext i32 %97 to i64, !dbg !1051
  %99 = icmp ugt i64 %63, %98, !dbg !1007
  br i1 %99, label %65, label %151, !dbg !1008, !llvm.loop !1052

100:                                              ; preds = %57, %43
  call void @llvm.dbg.value(metadata i32 -1, metadata !943, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i32 -1, metadata !945, metadata !DIExpression()), !dbg !1054
  br i1 %29, label %101, label %103, !dbg !1055

101:                                              ; preds = %100
  %102 = load i1, i1* @use_real, align 1, !dbg !1056
  br i1 %102, label %114, label %105, !dbg !1058

103:                                              ; preds = %100
  %104 = or i1 %31, %34, !dbg !1059
  br i1 %104, label %114, label %105, !dbg !1059

105:                                              ; preds = %103, %101
  %106 = tail call i32* @__errno_location() #31, !dbg !1060
  store i32 0, i32* %106, align 4, !dbg !1062, !tbaa !971
  %107 = tail call i32 @geteuid() #27, !dbg !1063
  store i32 %107, i32* @euid, align 4, !dbg !1064, !tbaa !971
  %108 = icmp eq i32 %107, -1, !dbg !1065
  br i1 %108, label %109, label %114, !dbg !1067

109:                                              ; preds = %105
  %110 = load i32, i32* %106, align 4, !dbg !1068, !tbaa !971
  %111 = icmp eq i32 %110, 0, !dbg !1068
  br i1 %111, label %114, label %112, !dbg !1069

112:                                              ; preds = %109
  %113 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 5) #27, !dbg !1070
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %110, i8* %113) #27, !dbg !1070
  unreachable, !dbg !1070

114:                                              ; preds = %103, %105, %109, %101
  %115 = load i1, i1* @just_user, align 1, !dbg !1071
  br i1 %115, label %116, label %118, !dbg !1073

116:                                              ; preds = %114
  %117 = load i1, i1* @use_real, align 1, !dbg !1074
  br i1 %117, label %122, label %150, !dbg !1071

118:                                              ; preds = %114
  %119 = load i1, i1* @just_group, align 1, !dbg !1075
  br i1 %119, label %120, label %122, !dbg !1076

120:                                              ; preds = %118
  %121 = tail call i32* @__errno_location() #31, !dbg !1077
  br label %133, !dbg !1076

122:                                              ; preds = %118, %116
  %123 = tail call i32* @__errno_location() #31, !dbg !1080
  store i32 0, i32* %123, align 4, !dbg !1082, !tbaa !971
  %124 = tail call i32 @getuid() #27, !dbg !1083
  store i32 %124, i32* @ruid, align 4, !dbg !1084, !tbaa !971
  %125 = icmp eq i32 %124, -1, !dbg !1085
  br i1 %125, label %126, label %131, !dbg !1087

126:                                              ; preds = %122
  %127 = load i32, i32* %123, align 4, !dbg !1088, !tbaa !971
  %128 = icmp eq i32 %127, 0, !dbg !1088
  br i1 %128, label %131, label %129, !dbg !1089

129:                                              ; preds = %126
  %130 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 5) #27, !dbg !1090
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %127, i8* %130) #27, !dbg !1090
  unreachable, !dbg !1090

131:                                              ; preds = %122, %126
  %132 = load i1, i1* @just_user, align 1, !dbg !1091
  br i1 %132, label %150, label %133, !dbg !1092

133:                                              ; preds = %120, %131
  %134 = phi i32* [ %121, %120 ], [ %123, %131 ], !dbg !1077
  store i32 0, i32* %134, align 4, !dbg !1093, !tbaa !971
  %135 = tail call i32 @getegid() #27, !dbg !1094
  store i32 %135, i32* @egid, align 4, !dbg !1095, !tbaa !971
  %136 = icmp eq i32 %135, -1, !dbg !1096
  br i1 %136, label %137, label %142, !dbg !1098

137:                                              ; preds = %133
  %138 = load i32, i32* %134, align 4, !dbg !1099, !tbaa !971
  %139 = icmp eq i32 %138, 0, !dbg !1099
  br i1 %139, label %142, label %140, !dbg !1100

140:                                              ; preds = %137
  %141 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 5) #27, !dbg !1101
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %138, i8* %141) #27, !dbg !1101
  unreachable, !dbg !1101

142:                                              ; preds = %137, %133
  store i32 0, i32* %134, align 4, !dbg !1102, !tbaa !971
  %143 = tail call i32 @getgid() #27, !dbg !1103
  store i32 %143, i32* @rgid, align 4, !dbg !1104, !tbaa !971
  %144 = icmp eq i32 %143, -1, !dbg !1105
  br i1 %144, label %145, label %150, !dbg !1107

145:                                              ; preds = %142
  %146 = load i32, i32* %134, align 4, !dbg !1108, !tbaa !971
  %147 = icmp eq i32 %146, 0, !dbg !1108
  br i1 %147, label %150, label %148, !dbg !1109

148:                                              ; preds = %145
  %149 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 5) #27, !dbg !1110
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %146, i8* %149) #27, !dbg !1110
  unreachable, !dbg !1110

150:                                              ; preds = %116, %142, %145, %131
  tail call fastcc void @print_stuff(i8* null), !dbg !1111
  br label %151

151:                                              ; preds = %95, %59, %150
  %152 = load i8, i8* @ok, align 1, !dbg !1112, !tbaa !1003, !range !1113
  %153 = xor i8 %152, 1, !dbg !1112
  %154 = zext i8 %153 to i32, !dbg !1112
  ret i32 %154, !dbg !1114
}

; Function Attrs: nounwind
declare !dbg !1115 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1118 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1121 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1128 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1134 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare !dbg !1138 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #9

declare !dbg !1139 %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_stuff(i8* %0) unnamed_addr #8 !dbg !1142 {
  %2 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1144, metadata !DIExpression()), !dbg !1145
  %3 = load i1, i1* @just_user, align 1, !dbg !1146
  br i1 %3, label %4, label %29, !dbg !1148

4:                                                ; preds = %1
  %5 = load i1, i1* @use_real, align 1, !dbg !1149
  %6 = load i32, i32* @ruid, align 4, !dbg !1149
  %7 = load i32, i32* @euid, align 4, !dbg !1149
  %8 = select i1 %5, i32 %6, i32 %7, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %8, metadata !1150, metadata !DIExpression()) #27, !dbg !1157
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1155, metadata !DIExpression()) #27, !dbg !1157
  %9 = load i1, i1* @use_name, align 1, !dbg !1159
  br i1 %9, label %12, label %10, !dbg !1161

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64, !dbg !1162
  br label %22, !dbg !1161

12:                                               ; preds = %4
  %13 = tail call %struct.passwd* @getpwuid(i32 %8) #27, !dbg !1164
  call void @llvm.dbg.value(metadata %struct.passwd* %13, metadata !1155, metadata !DIExpression()) #27, !dbg !1157
  %14 = icmp eq %struct.passwd* %13, null, !dbg !1166
  br i1 %14, label %15, label %19, !dbg !1168

15:                                               ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i64 0, i64 0), i32 5) #27, !dbg !1169
  call void @llvm.dbg.value(metadata i32* undef, metadata !55, metadata !DIExpression()) #27, !dbg !1171
  %17 = zext i32 %8 to i64, !dbg !1173
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #27, !dbg !1174
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %18) #27, !dbg !1175
  store i8 0, i8* @ok, align 1, !dbg !1176, !tbaa !1003
  br label %22, !dbg !1177

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %struct.passwd* %13, metadata !1155, metadata !DIExpression()) #27, !dbg !1157
  %20 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i64 0, i32 0, !dbg !1178
  %21 = load i8*, i8** %20, align 8, !dbg !1178, !tbaa !1036
  br label %25, !dbg !1179

22:                                               ; preds = %15, %10
  %23 = phi i64 [ %11, %10 ], [ %17, %15 ], !dbg !1162
  call void @llvm.dbg.value(metadata i32* undef, metadata !55, metadata !DIExpression()) #27, !dbg !1180
  %24 = tail call i8* @umaxtostr(i64 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #27, !dbg !1181
  br label %25, !dbg !1179

25:                                               ; preds = %19, %22
  %26 = phi i8* [ %21, %19 ], [ %24, %22 ], !dbg !1179
  call void @llvm.dbg.value(metadata i8* %26, metadata !1156, metadata !DIExpression()) #27, !dbg !1157
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1182, !tbaa !787
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #27, !dbg !1182
  br label %201, !dbg !1183

29:                                               ; preds = %1
  %30 = load i1, i1* @just_group, align 1, !dbg !1184
  br i1 %30, label %31, label %41, !dbg !1186

31:                                               ; preds = %29
  %32 = load i1, i1* @use_real, align 1, !dbg !1187
  %33 = load i32, i32* @rgid, align 4, !dbg !1187
  %34 = load i32, i32* @egid, align 4, !dbg !1187
  %35 = select i1 %32, i32 %33, i32 %34, !dbg !1187
  %36 = load i1, i1* @use_name, align 1, !dbg !1188
  %37 = tail call zeroext i1 @print_group(i32 %35, i1 zeroext %36) #27, !dbg !1189
  %38 = zext i1 %37 to i8, !dbg !1189
  %39 = load i8, i8* @ok, align 1, !dbg !1190, !tbaa !1003, !range !1113
  %40 = and i8 %39, %38, !dbg !1190
  store i8 %40, i8* @ok, align 1, !dbg !1190, !tbaa !1003
  br label %201, !dbg !1191

41:                                               ; preds = %29
  %42 = load i1, i1* @just_group_list, align 1, !dbg !1192
  br i1 %42, label %43, label %54, !dbg !1194

43:                                               ; preds = %41
  %44 = load i32, i32* @ruid, align 4, !dbg !1195, !tbaa !971
  %45 = load i32, i32* @rgid, align 4, !dbg !1196, !tbaa !971
  %46 = load i32, i32* @egid, align 4, !dbg !1197, !tbaa !971
  %47 = load i1, i1* @use_name, align 1, !dbg !1198
  %48 = load i1, i1* @opt_zero, align 1, !dbg !1199
  %49 = select i1 %48, i8 0, i8 32, !dbg !1199
  %50 = tail call zeroext i1 @print_group_list(i8* %0, i32 %44, i32 %45, i32 %46, i1 zeroext %47, i8 signext %49) #27, !dbg !1200
  %51 = zext i1 %50 to i8, !dbg !1200
  %52 = load i8, i8* @ok, align 1, !dbg !1201, !tbaa !1003, !range !1113
  %53 = and i8 %52, %51, !dbg !1201
  store i8 %53, i8* @ok, align 1, !dbg !1201, !tbaa !1003
  br label %201, !dbg !1202

54:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %0, metadata !1203, metadata !DIExpression()) #27, !dbg !1221
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i32 5) #27, !dbg !1224
  call void @llvm.dbg.value(metadata i32* @ruid, metadata !55, metadata !DIExpression()) #27, !dbg !1225
  %56 = load i32, i32* @ruid, align 4, !dbg !1227, !tbaa !971
  %57 = zext i32 %56 to i64, !dbg !1227
  %58 = tail call i8* @umaxtostr(i64 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #27, !dbg !1228
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* %58) #27, !dbg !1224
  %60 = load i32, i32* @ruid, align 4, !dbg !1229, !tbaa !971
  %61 = tail call %struct.passwd* @getpwuid(i32 %60) #27, !dbg !1230
  call void @llvm.dbg.value(metadata %struct.passwd* %61, metadata !1206, metadata !DIExpression()) #27, !dbg !1221
  %62 = icmp eq %struct.passwd* %61, null, !dbg !1231
  br i1 %62, label %67, label %63, !dbg !1233

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.passwd, %struct.passwd* %61, i64 0, i32 0, !dbg !1234
  %65 = load i8*, i8** %64, align 8, !dbg !1234, !tbaa !1036
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %65) #27, !dbg !1234
  br label %67, !dbg !1234

67:                                               ; preds = %63, %54
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i32 5) #27, !dbg !1235
  call void @llvm.dbg.value(metadata i32* @rgid, metadata !67, metadata !DIExpression()) #27, !dbg !1236
  %69 = load i32, i32* @rgid, align 4, !dbg !1238, !tbaa !971
  %70 = zext i32 %69 to i64, !dbg !1238
  %71 = tail call i8* @umaxtostr(i64 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #27, !dbg !1239
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* %71) #27, !dbg !1235
  %73 = load i32, i32* @rgid, align 4, !dbg !1240, !tbaa !971
  %74 = tail call %struct.group* @getgrgid(i32 %73) #27, !dbg !1241
  call void @llvm.dbg.value(metadata %struct.group* %74, metadata !1207, metadata !DIExpression()) #27, !dbg !1221
  %75 = icmp eq %struct.group* %74, null, !dbg !1242
  br i1 %75, label %80, label %76, !dbg !1244

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.group, %struct.group* %74, i64 0, i32 0, !dbg !1245
  %78 = load i8*, i8** %77, align 8, !dbg !1245, !tbaa !1246
  %79 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %78) #27, !dbg !1245
  br label %80, !dbg !1245

80:                                               ; preds = %76, %67
  %81 = load i32, i32* @euid, align 4, !dbg !1248, !tbaa !971
  %82 = load i32, i32* @ruid, align 4, !dbg !1250, !tbaa !971
  %83 = icmp eq i32 %81, %82, !dbg !1251
  br i1 %83, label %97, label %84, !dbg !1252

84:                                               ; preds = %80
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i32 5) #27, !dbg !1253
  call void @llvm.dbg.value(metadata i32* @euid, metadata !55, metadata !DIExpression()) #27, !dbg !1255
  %86 = load i32, i32* @euid, align 4, !dbg !1257, !tbaa !971
  %87 = zext i32 %86 to i64, !dbg !1257
  %88 = tail call i8* @umaxtostr(i64 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #27, !dbg !1258
  %89 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %85, i8* %88) #27, !dbg !1253
  %90 = load i32, i32* @euid, align 4, !dbg !1259, !tbaa !971
  %91 = tail call %struct.passwd* @getpwuid(i32 %90) #27, !dbg !1260
  call void @llvm.dbg.value(metadata %struct.passwd* %91, metadata !1206, metadata !DIExpression()) #27, !dbg !1221
  %92 = icmp eq %struct.passwd* %91, null, !dbg !1261
  br i1 %92, label %97, label %93, !dbg !1263

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.passwd, %struct.passwd* %91, i64 0, i32 0, !dbg !1264
  %95 = load i8*, i8** %94, align 8, !dbg !1264, !tbaa !1036
  %96 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %95) #27, !dbg !1264
  br label %97, !dbg !1264

97:                                               ; preds = %93, %84, %80
  %98 = phi %struct.passwd* [ %91, %93 ], [ null, %84 ], [ %61, %80 ], !dbg !1221
  call void @llvm.dbg.value(metadata %struct.passwd* %98, metadata !1206, metadata !DIExpression()) #27, !dbg !1221
  %99 = load i32, i32* @egid, align 4, !dbg !1265, !tbaa !971
  %100 = load i32, i32* @rgid, align 4, !dbg !1267, !tbaa !971
  %101 = icmp eq i32 %99, %100, !dbg !1268
  br i1 %101, label %115, label %102, !dbg !1269

102:                                              ; preds = %97
  %103 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i32 5) #27, !dbg !1270
  call void @llvm.dbg.value(metadata i32* @egid, metadata !67, metadata !DIExpression()) #27, !dbg !1272
  %104 = load i32, i32* @egid, align 4, !dbg !1274, !tbaa !971
  %105 = zext i32 %104 to i64, !dbg !1274
  %106 = tail call i8* @umaxtostr(i64 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #27, !dbg !1275
  %107 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %103, i8* %106) #27, !dbg !1270
  %108 = load i32, i32* @egid, align 4, !dbg !1276, !tbaa !971
  %109 = tail call %struct.group* @getgrgid(i32 %108) #27, !dbg !1277
  call void @llvm.dbg.value(metadata %struct.group* %109, metadata !1207, metadata !DIExpression()) #27, !dbg !1221
  %110 = icmp eq %struct.group* %109, null, !dbg !1278
  br i1 %110, label %115, label %111, !dbg !1280

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.group, %struct.group* %109, i64 0, i32 0, !dbg !1281
  %113 = load i8*, i8** %112, align 8, !dbg !1281, !tbaa !1246
  %114 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %113) #27, !dbg !1281
  br label %115, !dbg !1281

115:                                              ; preds = %111, %102, %97
  %116 = bitcast i32** %2 to i8*, !dbg !1282
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %116) #27, !dbg !1282
  %117 = icmp eq i8* %0, null, !dbg !1283
  br i1 %117, label %127, label %118, !dbg !1285

118:                                              ; preds = %115
  %119 = icmp eq %struct.passwd* %98, null, !dbg !1286
  br i1 %119, label %123, label %120, !dbg !1286

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.passwd, %struct.passwd* %98, i64 0, i32 3, !dbg !1287
  %122 = load i32, i32* %121, align 4, !dbg !1287, !tbaa !1044
  br label %123, !dbg !1286

123:                                              ; preds = %120, %118
  %124 = phi i32 [ %122, %120 ], [ -1, %118 ], !dbg !1288
  call void @llvm.dbg.value(metadata i32 %124, metadata !1217, metadata !DIExpression()) #27, !dbg !1289
  call void @llvm.dbg.value(metadata i32** %2, metadata !1215, metadata !DIExpression(DW_OP_deref)) #27, !dbg !1289
  %125 = call i32 @xgetgroups(i8* nonnull %0, i32 %124, i32** nonnull %2) #27, !dbg !1290
  call void @llvm.dbg.value(metadata i32 %125, metadata !1218, metadata !DIExpression()) #27, !dbg !1289
  %126 = icmp slt i32 %125, 0, !dbg !1291
  br i1 %126, label %131, label %141, !dbg !1293

127:                                              ; preds = %115
  %128 = load i32, i32* @egid, align 4, !dbg !1294, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %124, metadata !1217, metadata !DIExpression()) #27, !dbg !1289
  call void @llvm.dbg.value(metadata i32** %2, metadata !1215, metadata !DIExpression(DW_OP_deref)) #27, !dbg !1289
  %129 = call i32 @xgetgroups(i8* null, i32 %128, i32** nonnull %2) #27, !dbg !1290
  call void @llvm.dbg.value(metadata i32 %125, metadata !1218, metadata !DIExpression()) #27, !dbg !1289
  %130 = icmp slt i32 %129, 0, !dbg !1291
  br i1 %130, label %136, label %141, !dbg !1293

131:                                              ; preds = %123
  %132 = tail call i32* @__errno_location() #31, !dbg !1295
  %133 = load i32, i32* %132, align 4, !dbg !1295, !tbaa !971
  %134 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1298
  %135 = call i8* @quote(i8* nonnull %0) #27, !dbg !1299
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %133, i8* %134, i8* %135) #27, !dbg !1300
  br label %140, !dbg !1300

136:                                              ; preds = %127
  %137 = tail call i32* @__errno_location() #31, !dbg !1301
  %138 = load i32, i32* %137, align 4, !dbg !1301, !tbaa !971
  %139 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i32 5) #27, !dbg !1302
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %138, i8* %139) #27, !dbg !1303
  br label %140

140:                                              ; preds = %136, %131
  store i8 0, i8* @ok, align 1, !dbg !1304, !tbaa !1003
  br label %200, !dbg !1305

141:                                              ; preds = %127, %123
  %142 = phi i32 [ %129, %127 ], [ %125, %123 ]
  %143 = icmp eq i32 %142, 0, !dbg !1306
  br i1 %143, label %165, label %144, !dbg !1308

144:                                              ; preds = %141
  %145 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i32 5) #27, !dbg !1309
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1309, !tbaa !787
  %147 = call i32 @fputs_unlocked(i8* %145, %struct._IO_FILE* %146) #27, !dbg !1309
  call void @llvm.dbg.value(metadata i32 0, metadata !1219, metadata !DIExpression()) #27, !dbg !1310
  %148 = zext i32 %142 to i64, !dbg !1311
  call void @llvm.dbg.value(metadata i64 0, metadata !1219, metadata !DIExpression()) #27, !dbg !1310
  %149 = load i32*, i32** %2, align 8, !dbg !1313, !tbaa !787
  call void @llvm.dbg.value(metadata i32* %149, metadata !1215, metadata !DIExpression()) #27, !dbg !1289
  call void @llvm.dbg.value(metadata i32* %149, metadata !67, metadata !DIExpression()) #27, !dbg !1315
  %150 = load i32, i32* %149, align 4, !dbg !1317, !tbaa !971
  %151 = zext i32 %150 to i64, !dbg !1317
  %152 = call i8* @umaxtostr(i64 %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #27, !dbg !1318
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1313, !tbaa !787
  %154 = call i32 @fputs_unlocked(i8* %152, %struct._IO_FILE* %153) #27, !dbg !1313
  %155 = load i32*, i32** %2, align 8, !dbg !1319, !tbaa !787
  call void @llvm.dbg.value(metadata i32* %155, metadata !1215, metadata !DIExpression()) #27, !dbg !1289
  %156 = load i32, i32* %155, align 4, !dbg !1319, !tbaa !971
  %157 = call %struct.group* @getgrgid(i32 %156) #27, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.group* %157, metadata !1207, metadata !DIExpression()) #27, !dbg !1221
  %158 = icmp eq %struct.group* %157, null, !dbg !1321
  br i1 %158, label %163, label %159, !dbg !1323

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.group, %struct.group* %157, i64 0, i32 0, !dbg !1324
  %161 = load i8*, i8** %160, align 8, !dbg !1324, !tbaa !1246
  %162 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %161) #27, !dbg !1324
  br label %163, !dbg !1324

163:                                              ; preds = %159, %144
  call void @llvm.dbg.value(metadata i64 1, metadata !1219, metadata !DIExpression()) #27, !dbg !1310
  %164 = icmp eq i32 %142, 1, !dbg !1311
  br i1 %164, label %165, label %168, !dbg !1325

165:                                              ; preds = %197, %163, %141
  %166 = bitcast i32** %2 to i8**, !dbg !1326
  %167 = load i8*, i8** %166, align 8, !dbg !1326, !tbaa !787
  call void @llvm.dbg.value(metadata i32* undef, metadata !1215, metadata !DIExpression()) #27, !dbg !1289
  call void @free(i8* %167) #27, !dbg !1327
  br label %200, !dbg !1328

168:                                              ; preds = %163, %197
  %169 = phi i64 [ %198, %197 ], [ 1, %163 ]
  call void @llvm.dbg.value(metadata i64 %169, metadata !1219, metadata !DIExpression()) #27, !dbg !1310
  call void @llvm.dbg.value(metadata i32 44, metadata !1329, metadata !DIExpression()) #27, !dbg !1335
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1338, !tbaa !787
  %171 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %170, i64 0, i32 5, !dbg !1338
  %172 = load i8*, i8** %171, align 8, !dbg !1338, !tbaa !1339
  %173 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %170, i64 0, i32 6, !dbg !1338
  %174 = load i8*, i8** %173, align 8, !dbg !1338, !tbaa !1343
  %175 = icmp ult i8* %172, %174, !dbg !1338
  br i1 %175, label %178, label %176, !dbg !1338, !prof !1344

176:                                              ; preds = %168
  %177 = call i32 @__overflow(%struct._IO_FILE* nonnull %170, i32 44) #27, !dbg !1338
  br label %180, !dbg !1338

178:                                              ; preds = %168
  %179 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !1338
  store i8* %179, i8** %171, align 8, !dbg !1338, !tbaa !1339
  store i8 44, i8* %172, align 1, !dbg !1338, !tbaa !1013
  br label %180, !dbg !1338

180:                                              ; preds = %178, %176
  %181 = load i32*, i32** %2, align 8, !dbg !1313, !tbaa !787
  call void @llvm.dbg.value(metadata i32* %181, metadata !1215, metadata !DIExpression()) #27, !dbg !1289
  %182 = getelementptr inbounds i32, i32* %181, i64 %169, !dbg !1313
  call void @llvm.dbg.value(metadata i32* %182, metadata !67, metadata !DIExpression()) #27, !dbg !1315
  %183 = load i32, i32* %182, align 4, !dbg !1317, !tbaa !971
  %184 = zext i32 %183 to i64, !dbg !1317
  %185 = call i8* @umaxtostr(i64 %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #27, !dbg !1318
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1313, !tbaa !787
  %187 = call i32 @fputs_unlocked(i8* %185, %struct._IO_FILE* %186) #27, !dbg !1313
  %188 = load i32*, i32** %2, align 8, !dbg !1319, !tbaa !787
  call void @llvm.dbg.value(metadata i32* %188, metadata !1215, metadata !DIExpression()) #27, !dbg !1289
  %189 = getelementptr inbounds i32, i32* %188, i64 %169, !dbg !1319
  %190 = load i32, i32* %189, align 4, !dbg !1319, !tbaa !971
  %191 = call %struct.group* @getgrgid(i32 %190) #27, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.group* %191, metadata !1207, metadata !DIExpression()) #27, !dbg !1221
  %192 = icmp eq %struct.group* %191, null, !dbg !1321
  br i1 %192, label %197, label %193, !dbg !1323

193:                                              ; preds = %180
  %194 = getelementptr inbounds %struct.group, %struct.group* %191, i64 0, i32 0, !dbg !1324
  %195 = load i8*, i8** %194, align 8, !dbg !1324, !tbaa !1246
  %196 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %195) #27, !dbg !1324
  br label %197, !dbg !1324

197:                                              ; preds = %193, %180
  %198 = add nuw nsw i64 %169, 1, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %198, metadata !1219, metadata !DIExpression()) #27, !dbg !1310
  %199 = icmp eq i64 %198, %148, !dbg !1311
  br i1 %199, label %165, label %168, !dbg !1325, !llvm.loop !1346

200:                                              ; preds = %140, %165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #27, !dbg !1328
  br label %201

201:                                              ; preds = %31, %200, %43, %25
  %202 = load i1, i1* @opt_zero, align 1, !dbg !1349
  br i1 %202, label %203, label %230, !dbg !1351

203:                                              ; preds = %201
  %204 = load i1, i1* @just_group_list, align 1, !dbg !1352
  %205 = load i8, i8* @multiple_users, align 1
  %206 = icmp ne i8 %205, 0
  %207 = and i1 %204, %206, !dbg !1353
  br i1 %207, label %208, label %230, !dbg !1353

208:                                              ; preds = %203
  call void @llvm.dbg.value(metadata i32 0, metadata !1329, metadata !DIExpression()) #27, !dbg !1354
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1357, !tbaa !787
  %210 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %209, i64 0, i32 5, !dbg !1357
  %211 = load i8*, i8** %210, align 8, !dbg !1357, !tbaa !1339
  %212 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %209, i64 0, i32 6, !dbg !1357
  %213 = load i8*, i8** %212, align 8, !dbg !1357, !tbaa !1343
  %214 = icmp ult i8* %211, %213, !dbg !1357
  br i1 %214, label %217, label %215, !dbg !1357, !prof !1344

215:                                              ; preds = %208
  %216 = call i32 @__overflow(%struct._IO_FILE* nonnull %209, i32 0) #27, !dbg !1357
  br label %219, !dbg !1357

217:                                              ; preds = %208
  %218 = getelementptr inbounds i8, i8* %211, i64 1, !dbg !1357
  store i8* %218, i8** %210, align 8, !dbg !1357, !tbaa !1339
  store i8 0, i8* %211, align 1, !dbg !1357, !tbaa !1013
  br label %219, !dbg !1357

219:                                              ; preds = %215, %217
  call void @llvm.dbg.value(metadata i32 0, metadata !1329, metadata !DIExpression()) #27, !dbg !1358
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1360, !tbaa !787
  %221 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %220, i64 0, i32 5, !dbg !1360
  %222 = load i8*, i8** %221, align 8, !dbg !1360, !tbaa !1339
  %223 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %220, i64 0, i32 6, !dbg !1360
  %224 = load i8*, i8** %223, align 8, !dbg !1360, !tbaa !1343
  %225 = icmp ult i8* %222, %224, !dbg !1360
  br i1 %225, label %228, label %226, !dbg !1360, !prof !1344

226:                                              ; preds = %219
  %227 = call i32 @__overflow(%struct._IO_FILE* nonnull %220, i32 0) #27, !dbg !1360
  br label %243, !dbg !1360

228:                                              ; preds = %219
  %229 = getelementptr inbounds i8, i8* %222, i64 1, !dbg !1360
  store i8* %229, i8** %221, align 8, !dbg !1360, !tbaa !1339
  store i8 0, i8* %222, align 1, !dbg !1360, !tbaa !1013
  br label %243, !dbg !1360

230:                                              ; preds = %203, %201
  %231 = phi i32 [ 0, %203 ], [ 10, %201 ], !dbg !1361
  call void @llvm.dbg.value(metadata i32 %231, metadata !1329, metadata !DIExpression()) #27, !dbg !1363
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1365, !tbaa !787
  %233 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %232, i64 0, i32 5, !dbg !1365
  %234 = load i8*, i8** %233, align 8, !dbg !1365, !tbaa !1339
  %235 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %232, i64 0, i32 6, !dbg !1365
  %236 = load i8*, i8** %235, align 8, !dbg !1365, !tbaa !1343
  %237 = icmp ult i8* %234, %236, !dbg !1365
  br i1 %237, label %240, label %238, !dbg !1365, !prof !1344

238:                                              ; preds = %230
  %239 = call i32 @__overflow(%struct._IO_FILE* nonnull %232, i32 %231) #27, !dbg !1365
  br label %243, !dbg !1365

240:                                              ; preds = %230
  %241 = trunc i32 %231 to i8, !dbg !1365
  %242 = getelementptr inbounds i8, i8* %234, i64 1, !dbg !1365
  store i8* %242, i8** %233, align 8, !dbg !1365, !tbaa !1339
  store i8 %241, i8* %234, align 1, !dbg !1365, !tbaa !1013
  br label %243, !dbg !1365

243:                                              ; preds = %240, %238, %228, %226
  ret void, !dbg !1366
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1367 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1371 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1372 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1373 i32 @getgid() local_unnamed_addr #2

declare !dbg !1374 %struct.group* @getgrgid(i32) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group_list(i8* %0, i32 %1, i32 %2, i32 %3, i1 zeroext %4, i8 signext %5) local_unnamed_addr #8 !dbg !1377 {
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1381, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i32 %1, metadata !1382, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i32 %2, metadata !1383, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i32 %3, metadata !1384, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i1 %4, metadata !1385, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %5, metadata !1386, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 1, metadata !1387, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1388, metadata !DIExpression()), !dbg !1404
  %8 = icmp eq i8* %0, null, !dbg !1405
  br i1 %8, label %13, label %9, !dbg !1407

9:                                                ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #27, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.passwd* %10, metadata !1388, metadata !DIExpression()), !dbg !1404
  %11 = icmp ne %struct.passwd* %10, null, !dbg !1410
  %12 = zext i1 %11 to i8, !dbg !1412
  br label %13, !dbg !1412

13:                                               ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !1404
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ], !dbg !1404
  call void @llvm.dbg.value(metadata %struct.passwd* %15, metadata !1388, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %14, metadata !1387, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i32 %2, metadata !1413, metadata !DIExpression()) #27, !dbg !1429
  call void @llvm.dbg.value(metadata i1 %4, metadata !1418, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1429
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1419, metadata !DIExpression()) #27, !dbg !1429
  call void @llvm.dbg.value(metadata i8 1, metadata !1427, metadata !DIExpression()) #27, !dbg !1429
  br i1 %4, label %18, label %16, !dbg !1432

16:                                               ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1433
  br label %29, !dbg !1432

18:                                               ; preds = %13
  %19 = tail call %struct.group* @getgrgid(i32 %2) #27, !dbg !1435
  call void @llvm.dbg.value(metadata %struct.group* %19, metadata !1419, metadata !DIExpression()) #27, !dbg !1429
  %20 = icmp eq %struct.group* %19, null, !dbg !1438
  br i1 %20, label %21, label %24, !dbg !1440

21:                                               ; preds = %18
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #27, !dbg !1441
  call void @llvm.dbg.value(metadata i32 %2, metadata !1413, metadata !DIExpression()) #27, !dbg !1429
  %23 = zext i32 %2 to i64, !dbg !1443
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %22, i64 %23) #27, !dbg !1444
  call void @llvm.dbg.value(metadata i8 0, metadata !1427, metadata !DIExpression()) #27, !dbg !1429
  br label %29, !dbg !1445

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %struct.group* %19, metadata !1419, metadata !DIExpression()) #27, !dbg !1429
  call void @llvm.dbg.value(metadata i8 undef, metadata !1427, metadata !DIExpression()) #27, !dbg !1429
  %25 = getelementptr inbounds %struct.group, %struct.group* %19, i64 0, i32 0, !dbg !1446
  %26 = load i8*, i8** %25, align 8, !dbg !1446, !tbaa !1246
  call void @llvm.dbg.value(metadata i8* %31, metadata !1428, metadata !DIExpression()) #27, !dbg !1429
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1447, !tbaa !787
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #27, !dbg !1447
  br label %34, !dbg !1448

29:                                               ; preds = %16, %21
  %30 = phi i64 [ %17, %16 ], [ %23, %21 ], !dbg !1433
  call void @llvm.dbg.value(metadata i8 undef, metadata !1427, metadata !DIExpression()) #27, !dbg !1429
  call void @llvm.dbg.value(metadata i32* undef, metadata !98, metadata !DIExpression()) #27, !dbg !1449
  %31 = tail call i8* @umaxtostr(i64 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.4, i64 0, i64 0)) #27, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %31, metadata !1428, metadata !DIExpression()) #27, !dbg !1429
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1447, !tbaa !787
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32) #27, !dbg !1447
  br i1 %4, label %35, label %34, !dbg !1448

34:                                               ; preds = %24, %29
  br label %35, !dbg !1448

35:                                               ; preds = %29, %34
  %36 = phi i8 [ %14, %34 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i8 %36, metadata !1387, metadata !DIExpression()), !dbg !1404
  %37 = icmp eq i32 %3, %2, !dbg !1451
  br i1 %37, label %70, label %38, !dbg !1453

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8 %5, metadata !1454, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !1457
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1460, !tbaa !787
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !1460
  %41 = load i8*, i8** %40, align 8, !dbg !1460, !tbaa !1339
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !1460
  %43 = load i8*, i8** %42, align 8, !dbg !1460, !tbaa !1343
  %44 = icmp ult i8* %41, %43, !dbg !1460
  br i1 %44, label %48, label %45, !dbg !1460, !prof !1344

45:                                               ; preds = %38
  %46 = zext i8 %5 to i32, !dbg !1461
  call void @llvm.dbg.value(metadata i8 %5, metadata !1454, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !1457
  %47 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %39, i32 %46) #27, !dbg !1460
  br label %50, !dbg !1460

48:                                               ; preds = %38
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1460
  store i8* %49, i8** %40, align 8, !dbg !1460, !tbaa !1339
  store i8 %5, i8* %41, align 1, !dbg !1460, !tbaa !1013
  br label %50, !dbg !1460

50:                                               ; preds = %45, %48
  call void @llvm.dbg.value(metadata i32 %3, metadata !1413, metadata !DIExpression()) #27, !dbg !1462
  call void @llvm.dbg.value(metadata i1 %4, metadata !1418, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1462
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1419, metadata !DIExpression()) #27, !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1427, metadata !DIExpression()) #27, !dbg !1462
  br i1 %4, label %53, label %51, !dbg !1465

51:                                               ; preds = %50
  %52 = zext i32 %3 to i64, !dbg !1466
  br label %64, !dbg !1465

53:                                               ; preds = %50
  %54 = tail call %struct.group* @getgrgid(i32 %3) #27, !dbg !1468
  call void @llvm.dbg.value(metadata %struct.group* %54, metadata !1419, metadata !DIExpression()) #27, !dbg !1462
  %55 = icmp eq %struct.group* %54, null, !dbg !1469
  br i1 %55, label %56, label %59, !dbg !1470

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #27, !dbg !1471
  call void @llvm.dbg.value(metadata i32 %3, metadata !1413, metadata !DIExpression()) #27, !dbg !1462
  %58 = zext i32 %3 to i64, !dbg !1472
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %57, i64 %58) #27, !dbg !1473
  call void @llvm.dbg.value(metadata i8 0, metadata !1427, metadata !DIExpression()) #27, !dbg !1462
  br label %64, !dbg !1474

59:                                               ; preds = %53
  call void @llvm.dbg.value(metadata %struct.group* %54, metadata !1419, metadata !DIExpression()) #27, !dbg !1462
  call void @llvm.dbg.value(metadata i8 undef, metadata !1427, metadata !DIExpression()) #27, !dbg !1462
  %60 = getelementptr inbounds %struct.group, %struct.group* %54, i64 0, i32 0, !dbg !1475
  %61 = load i8*, i8** %60, align 8, !dbg !1475, !tbaa !1246
  call void @llvm.dbg.value(metadata i8* %66, metadata !1428, metadata !DIExpression()) #27, !dbg !1462
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1476, !tbaa !787
  %63 = tail call i32 @fputs_unlocked(i8* %61, %struct._IO_FILE* %62) #27, !dbg !1476
  br label %69, !dbg !1477

64:                                               ; preds = %51, %56
  %65 = phi i64 [ %52, %51 ], [ %58, %56 ], !dbg !1466
  call void @llvm.dbg.value(metadata i8 undef, metadata !1427, metadata !DIExpression()) #27, !dbg !1462
  call void @llvm.dbg.value(metadata i32* undef, metadata !98, metadata !DIExpression()) #27, !dbg !1478
  %66 = tail call i8* @umaxtostr(i64 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.4, i64 0, i64 0)) #27, !dbg !1479
  call void @llvm.dbg.value(metadata i8* %66, metadata !1428, metadata !DIExpression()) #27, !dbg !1462
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1476, !tbaa !787
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #27, !dbg !1476
  br i1 %4, label %70, label %69, !dbg !1477

69:                                               ; preds = %59, %64
  br label %70, !dbg !1477

70:                                               ; preds = %69, %64, %35
  %71 = phi i8 [ %36, %35 ], [ %36, %69 ], [ 0, %64 ], !dbg !1404
  call void @llvm.dbg.value(metadata i8 %71, metadata !1387, metadata !DIExpression()), !dbg !1404
  %72 = bitcast i32** %7 to i8*, !dbg !1480
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #27, !dbg !1480
  %73 = icmp eq %struct.passwd* %15, null, !dbg !1481
  br i1 %73, label %77, label %74, !dbg !1481

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !1482
  %76 = load i32, i32* %75, align 4, !dbg !1482, !tbaa !1044
  br label %77, !dbg !1481

77:                                               ; preds = %70, %74
  %78 = phi i32 [ %76, %74 ], [ %3, %70 ], !dbg !1481
  call void @llvm.dbg.value(metadata i32** %7, metadata !1399, metadata !DIExpression(DW_OP_deref)), !dbg !1483
  %79 = call i32 @xgetgroups(i8* %0, i32 %78, i32** nonnull %7) #27, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %79, metadata !1401, metadata !DIExpression()), !dbg !1483
  %80 = icmp slt i32 %79, 0, !dbg !1485
  br i1 %80, label %86, label %81, !dbg !1487

81:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 0, metadata !1402, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %71, metadata !1387, metadata !DIExpression()), !dbg !1404
  %82 = icmp eq i32 %79, 0, !dbg !1489
  br i1 %82, label %94, label %83, !dbg !1491

83:                                               ; preds = %81
  %84 = zext i8 %5 to i32
  %85 = zext i32 %79 to i64, !dbg !1489
  br label %98, !dbg !1491

86:                                               ; preds = %77
  %87 = tail call i32* @__errno_location() #31, !dbg !1492
  %88 = load i32, i32* %87, align 4, !dbg !1492, !tbaa !971
  br i1 %8, label %92, label %89, !dbg !1495

89:                                               ; preds = %86
  %90 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 5) #27, !dbg !1496
  %91 = call i8* @quote(i8* nonnull %0) #27, !dbg !1498
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* %90, i8* %91) #27, !dbg !1499
  br label %145, !dbg !1500

92:                                               ; preds = %86
  %93 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.17, i64 0, i64 0), i32 5) #27, !dbg !1501
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* %93) #27, !dbg !1503
  br label %145

94:                                               ; preds = %141, %81
  %95 = phi i8 [ %71, %81 ], [ %142, %141 ], !dbg !1504
  %96 = bitcast i32** %7 to i8**, !dbg !1505
  %97 = load i8*, i8** %96, align 8, !dbg !1505, !tbaa !787
  call void @llvm.dbg.value(metadata i32* undef, metadata !1399, metadata !DIExpression()), !dbg !1483
  call void @free(i8* %97) #27, !dbg !1506
  br label %145, !dbg !1507

98:                                               ; preds = %83, %141
  %99 = phi i64 [ 0, %83 ], [ %143, %141 ]
  %100 = phi i8 [ %71, %83 ], [ %142, %141 ]
  call void @llvm.dbg.value(metadata i64 %99, metadata !1402, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %100, metadata !1387, metadata !DIExpression()), !dbg !1404
  %101 = load i32*, i32** %7, align 8, !dbg !1508, !tbaa !787
  call void @llvm.dbg.value(metadata i32* %101, metadata !1399, metadata !DIExpression()), !dbg !1483
  %102 = getelementptr inbounds i32, i32* %101, i64 %99, !dbg !1508
  %103 = load i32, i32* %102, align 4, !dbg !1508, !tbaa !971
  %104 = icmp eq i32 %103, %2, !dbg !1510
  %105 = icmp eq i32 %103, %3
  %106 = or i1 %104, %105, !dbg !1511
  br i1 %106, label %141, label %107, !dbg !1511

107:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i8 %5, metadata !1454, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !1512
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1515, !tbaa !787
  %109 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 5, !dbg !1515
  %110 = load i8*, i8** %109, align 8, !dbg !1515, !tbaa !1339
  %111 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 6, !dbg !1515
  %112 = load i8*, i8** %111, align 8, !dbg !1515, !tbaa !1343
  %113 = icmp ult i8* %110, %112, !dbg !1515
  br i1 %113, label %116, label %114, !dbg !1515, !prof !1344

114:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i8 %5, metadata !1454, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !1512
  %115 = call i32 @__overflow(%struct._IO_FILE* nonnull %108, i32 %84) #27, !dbg !1515
  br label %118, !dbg !1515

116:                                              ; preds = %107
  %117 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !1515
  store i8* %117, i8** %109, align 8, !dbg !1515, !tbaa !1339
  store i8 %5, i8* %110, align 1, !dbg !1515, !tbaa !1013
  br label %118, !dbg !1515

118:                                              ; preds = %114, %116
  %119 = load i32*, i32** %7, align 8, !dbg !1516, !tbaa !787
  call void @llvm.dbg.value(metadata i32* %119, metadata !1399, metadata !DIExpression()), !dbg !1483
  %120 = getelementptr inbounds i32, i32* %119, i64 %99, !dbg !1516
  %121 = load i32, i32* %120, align 4, !dbg !1516, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %121, metadata !1413, metadata !DIExpression()) #27, !dbg !1518
  call void @llvm.dbg.value(metadata i1 %4, metadata !1418, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1518
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1419, metadata !DIExpression()) #27, !dbg !1518
  call void @llvm.dbg.value(metadata i8 1, metadata !1427, metadata !DIExpression()) #27, !dbg !1518
  br i1 %4, label %124, label %122, !dbg !1520

122:                                              ; preds = %118
  %123 = zext i32 %121 to i64, !dbg !1521
  br label %135, !dbg !1520

124:                                              ; preds = %118
  %125 = call %struct.group* @getgrgid(i32 %121) #27, !dbg !1523
  call void @llvm.dbg.value(metadata %struct.group* %125, metadata !1419, metadata !DIExpression()) #27, !dbg !1518
  %126 = icmp eq %struct.group* %125, null, !dbg !1524
  br i1 %126, label %127, label %130, !dbg !1525

127:                                              ; preds = %124
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #27, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %121, metadata !1413, metadata !DIExpression()) #27, !dbg !1518
  %129 = zext i32 %121 to i64, !dbg !1527
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128, i64 %129) #27, !dbg !1528
  call void @llvm.dbg.value(metadata i8 0, metadata !1427, metadata !DIExpression()) #27, !dbg !1518
  br label %135, !dbg !1529

130:                                              ; preds = %124
  call void @llvm.dbg.value(metadata %struct.group* %125, metadata !1419, metadata !DIExpression()) #27, !dbg !1518
  call void @llvm.dbg.value(metadata i8 undef, metadata !1427, metadata !DIExpression()) #27, !dbg !1518
  %131 = getelementptr inbounds %struct.group, %struct.group* %125, i64 0, i32 0, !dbg !1530
  %132 = load i8*, i8** %131, align 8, !dbg !1530, !tbaa !1246
  call void @llvm.dbg.value(metadata i8* %137, metadata !1428, metadata !DIExpression()) #27, !dbg !1518
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1531, !tbaa !787
  %134 = call i32 @fputs_unlocked(i8* %132, %struct._IO_FILE* %133) #27, !dbg !1531
  br label %140, !dbg !1532

135:                                              ; preds = %122, %127
  %136 = phi i64 [ %123, %122 ], [ %129, %127 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 undef, metadata !1427, metadata !DIExpression()) #27, !dbg !1518
  call void @llvm.dbg.value(metadata i32* undef, metadata !98, metadata !DIExpression()) #27, !dbg !1533
  %137 = call i8* @umaxtostr(i64 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.4, i64 0, i64 0)) #27, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %137, metadata !1428, metadata !DIExpression()) #27, !dbg !1518
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1531, !tbaa !787
  %139 = call i32 @fputs_unlocked(i8* %137, %struct._IO_FILE* %138) #27, !dbg !1531
  br i1 %4, label %141, label %140, !dbg !1532

140:                                              ; preds = %130, %135
  br label %141, !dbg !1532

141:                                              ; preds = %140, %135, %98
  %142 = phi i8 [ %100, %98 ], [ %100, %140 ], [ 0, %135 ], !dbg !1404
  call void @llvm.dbg.value(metadata i8 %142, metadata !1387, metadata !DIExpression()), !dbg !1404
  %143 = add nuw nsw i64 %99, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %143, metadata !1402, metadata !DIExpression()), !dbg !1488
  %144 = icmp eq i64 %143, %85, !dbg !1489
  br i1 %144, label %94, label %98, !dbg !1491, !llvm.loop !1536

145:                                              ; preds = %89, %92, %94
  %146 = phi i8 [ %95, %94 ], [ %71, %92 ], [ %71, %89 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %146, metadata !1387, metadata !DIExpression()), !dbg !1404
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #27, !dbg !1507
  %147 = and i8 %146, 1
  %148 = icmp ne i8 %147, 0
  %149 = xor i1 %80, true
  %150 = and i1 %148, %149
  ret i1 %150, !dbg !1538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group(i32 %0, i1 zeroext %1) local_unnamed_addr #8 !dbg !1414 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1413, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i1 %1, metadata !1418, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1539
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1419, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1427, metadata !DIExpression()), !dbg !1539
  br i1 %1, label %5, label %3, !dbg !1540

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1541
  br label %14, !dbg !1540

5:                                                ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #27, !dbg !1543
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1419, metadata !DIExpression()), !dbg !1539
  %7 = icmp eq %struct.group* %6, null, !dbg !1544
  br i1 %7, label %8, label %11, !dbg !1545

8:                                                ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #27, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %0, metadata !1413, metadata !DIExpression()), !dbg !1539
  %10 = zext i32 %0 to i64, !dbg !1547
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #27, !dbg !1548
  call void @llvm.dbg.value(metadata i8 0, metadata !1427, metadata !DIExpression()), !dbg !1539
  br label %14, !dbg !1549

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1419, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 undef, metadata !1427, metadata !DIExpression()), !dbg !1539
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1550
  %13 = load i8*, i8** %12, align 8, !dbg !1550, !tbaa !1246
  br label %18, !dbg !1551

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !1541
  %16 = xor i1 %1, true, !dbg !1539
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1419, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 undef, metadata !1427, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32* undef, metadata !98, metadata !DIExpression()) #27, !dbg !1552
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.4, i64 0, i64 0)) #27, !dbg !1553
  br label %18, !dbg !1551

18:                                               ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !1551
  call void @llvm.dbg.value(metadata i8* %20, metadata !1428, metadata !DIExpression()), !dbg !1539
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1554, !tbaa !787
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21), !dbg !1554
  ret i1 %19, !dbg !1555
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1558, metadata !DIExpression()), !dbg !1559
  store i8* %0, i8** @file_name, align 8, !dbg !1560, !tbaa !787
  ret void, !dbg !1561
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1562 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1566, metadata !DIExpression()), !dbg !1567
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1568, !tbaa !1003
  ret void, !dbg !1569
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1570 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1575, !tbaa !787
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1576
  %3 = icmp eq i32 %2, 0, !dbg !1577
  br i1 %3, label %22, label %4, !dbg !1578

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1579, !tbaa !1003, !range !1113
  %6 = icmp eq i8 %5, 0, !dbg !1579
  br i1 %6, label %11, label %7, !dbg !1580

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !1581
  %9 = load i32, i32* %8, align 4, !dbg !1581, !tbaa !971
  %10 = icmp eq i32 %9, 32, !dbg !1582
  br i1 %10, label %22, label %11, !dbg !1583

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i32 5) #27, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %12, metadata !1572, metadata !DIExpression()), !dbg !1585
  %13 = load i8*, i8** @file_name, align 8, !dbg !1586, !tbaa !787
  %14 = icmp eq i8* %13, null, !dbg !1586
  %15 = tail call i32* @__errno_location() #31, !dbg !1588
  %16 = load i32, i32* %15, align 4, !dbg !1588, !tbaa !971
  br i1 %14, label %19, label %17, !dbg !1589

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !1590
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !1591
  br label %20, !dbg !1591

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.65, i64 0, i64 0), i8* %12) #27, !dbg !1592
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1593, !tbaa !971
  tail call void @_exit(i32 %21) #29, !dbg !1594
  unreachable, !dbg !1594

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1595, !tbaa !787
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1597
  %25 = icmp eq i32 %24, 0, !dbg !1598
  br i1 %25, label %28, label %26, !dbg !1599

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1600, !tbaa !971
  tail call void @_exit(i32 %27) #29, !dbg !1601
  unreachable, !dbg !1601

28:                                               ; preds = %22
  ret void, !dbg !1602
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #14 !dbg !1603 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1608, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %1, metadata !1609, metadata !DIExpression()), !dbg !1611
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1612
  call void @llvm.dbg.value(metadata i8* %3, metadata !1610, metadata !DIExpression()), !dbg !1611
  store i8 0, i8* %3, align 1, !dbg !1613, !tbaa !1013
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1611
  call void @llvm.dbg.value(metadata i8* %6, metadata !1610, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %5, metadata !1608, metadata !DIExpression()), !dbg !1611
  %7 = urem i64 %5, 10, !dbg !1614
  %8 = trunc i64 %7 to i8, !dbg !1617
  %9 = or i8 %8, 48, !dbg !1617
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %10, metadata !1610, metadata !DIExpression()), !dbg !1611
  store i8 %9, i8* %10, align 1, !dbg !1619, !tbaa !1013
  %11 = udiv i64 %5, 10, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %11, metadata !1608, metadata !DIExpression()), !dbg !1611
  %12 = icmp ult i64 %5, 10, !dbg !1621
  br i1 %12, label %13, label %4, !dbg !1622, !llvm.loop !1623

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1610, metadata !DIExpression()), !dbg !1611
  ret i8* %10, !dbg !1626
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1629, metadata !DIExpression()), !dbg !1632
  %2 = icmp eq i8* %0, null, !dbg !1633
  br i1 %2, label %3, label %6, !dbg !1635

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1636, !tbaa !787
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !1638
  tail call void @abort() #29, !dbg !1639
  unreachable, !dbg !1639

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !1640
  call void @llvm.dbg.value(metadata i8* %7, metadata !1630, metadata !DIExpression()), !dbg !1632
  %8 = icmp eq i8* %7, null, !dbg !1641
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1642
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %10, metadata !1631, metadata !DIExpression()), !dbg !1632
  %11 = ptrtoint i8* %10 to i64, !dbg !1643
  %12 = ptrtoint i8* %0 to i64, !dbg !1643
  %13 = sub i64 %11, %12, !dbg !1643
  %14 = icmp sgt i64 %13, 6, !dbg !1645
  br i1 %14, label %15, label %24, !dbg !1646

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1647
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.75, i64 0, i64 0), i64 7) #28, !dbg !1648
  %18 = icmp eq i32 %17, 0, !dbg !1649
  br i1 %18, label %19, label %24, !dbg !1650

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1629, metadata !DIExpression()), !dbg !1632
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i64 3) #28, !dbg !1651
  %21 = icmp eq i32 %20, 0, !dbg !1654
  br i1 %21, label %22, label %24, !dbg !1655

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1656
  call void @llvm.dbg.value(metadata i8* %23, metadata !1629, metadata !DIExpression()), !dbg !1632
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1658, !tbaa !787
  br label %24, !dbg !1659

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1629, metadata !DIExpression()), !dbg !1632
  store i8* %25, i8** @program_name, align 8, !dbg !1660, !tbaa !787
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1661, !tbaa !787
  ret void, !dbg !1662
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1663 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1668, metadata !DIExpression()), !dbg !1671
  %2 = tail call i32* @__errno_location() #31, !dbg !1672
  %3 = load i32, i32* %2, align 4, !dbg !1672, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %3, metadata !1669, metadata !DIExpression()), !dbg !1671
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1673
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1673
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1673
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !1674
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1674
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1670, metadata !DIExpression()), !dbg !1671
  store i32 %3, i32* %2, align 4, !dbg !1675, !tbaa !971
  ret %struct.quoting_options* %8, !dbg !1676
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !1677 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1683, metadata !DIExpression()), !dbg !1684
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1685
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1685
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1686
  %5 = load i32, i32* %4, align 8, !dbg !1686, !tbaa !1687
  ret i32 %5, !dbg !1689
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1690 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1694, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %1, metadata !1695, metadata !DIExpression()), !dbg !1696
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1697
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1697
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1698
  store i32 %1, i32* %5, align 8, !dbg !1699, !tbaa !1687
  ret void, !dbg !1700
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1701 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1705, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %1, metadata !1706, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %2, metadata !1707, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %1, metadata !1708, metadata !DIExpression()), !dbg !1713
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1714
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1714
  %6 = lshr i8 %1, 5, !dbg !1715
  %7 = zext i8 %6 to i64, !dbg !1715
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1716
  call void @llvm.dbg.value(metadata i32* %8, metadata !1709, metadata !DIExpression()), !dbg !1713
  %9 = and i8 %1, 31, !dbg !1717
  %10 = zext i8 %9 to i32, !dbg !1717
  call void @llvm.dbg.value(metadata i32 %10, metadata !1711, metadata !DIExpression()), !dbg !1713
  %11 = load i32, i32* %8, align 4, !dbg !1718, !tbaa !971
  %12 = lshr i32 %11, %10, !dbg !1719
  %13 = and i32 %12, 1, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %13, metadata !1712, metadata !DIExpression()), !dbg !1713
  %14 = and i32 %2, 1, !dbg !1721
  %15 = xor i32 %13, %14, !dbg !1722
  %16 = shl i32 %15, %10, !dbg !1723
  %17 = xor i32 %16, %11, !dbg !1724
  store i32 %17, i32* %8, align 4, !dbg !1724, !tbaa !971
  ret i32 %13, !dbg !1725
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1726 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1730, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i32 %1, metadata !1731, metadata !DIExpression()), !dbg !1733
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1734
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1736
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1730, metadata !DIExpression()), !dbg !1733
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1737
  %6 = load i32, i32* %5, align 4, !dbg !1737, !tbaa !1738
  call void @llvm.dbg.value(metadata i32 %6, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i32 %1, i32* %5, align 4, !dbg !1739, !tbaa !1738
  ret i32 %6, !dbg !1740
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1741 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1745, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8* %1, metadata !1746, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8* %2, metadata !1747, metadata !DIExpression()), !dbg !1748
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1749
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()), !dbg !1748
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1752
  store i32 10, i32* %6, align 8, !dbg !1753, !tbaa !1687
  %7 = icmp ne i8* %1, null, !dbg !1754
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1756
  br i1 %9, label %11, label %10, !dbg !1756

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !1757
  unreachable, !dbg !1757

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1758
  store i8* %1, i8** %12, align 8, !dbg !1759, !tbaa !1760
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1761
  store i8* %2, i8** %13, align 8, !dbg !1762, !tbaa !1763
  ret void, !dbg !1764
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1765 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1769, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %1, metadata !1770, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %2, metadata !1771, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %3, metadata !1772, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1773, metadata !DIExpression()), !dbg !1777
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1778
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1774, metadata !DIExpression()), !dbg !1777
  %8 = tail call i32* @__errno_location() #31, !dbg !1779
  %9 = load i32, i32* %8, align 4, !dbg !1779, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %9, metadata !1775, metadata !DIExpression()), !dbg !1777
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1780
  %11 = load i32, i32* %10, align 8, !dbg !1780, !tbaa !1687
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1781
  %13 = load i32, i32* %12, align 4, !dbg !1781, !tbaa !1738
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1782
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1783
  %16 = load i8*, i8** %15, align 8, !dbg !1783, !tbaa !1760
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1784
  %18 = load i8*, i8** %17, align 8, !dbg !1784, !tbaa !1763
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %19, metadata !1776, metadata !DIExpression()), !dbg !1777
  store i32 %9, i32* %8, align 4, !dbg !1786, !tbaa !971
  ret i64 %19, !dbg !1787
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1788 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1794, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %1, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %2, metadata !1796, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %3, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %4, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %5, metadata !1799, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32* %6, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %7, metadata !1801, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %8, metadata !1802, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* null, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1807, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1864
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !1865
  %14 = icmp eq i64 %13, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i1 %14, metadata !1809, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1864
  %15 = lshr i32 %5, 1, !dbg !1867
  %16 = trunc i32 %15 to i8, !dbg !1867
  %17 = and i8 %16, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i8 %17, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1864
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1868

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1869
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1870
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1871
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1872
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1864
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1873
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1874
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1875
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %38, metadata !1813, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %37, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %36, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %35, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %34, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %33, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %32, metadata !1807, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %31, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %30, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %29, metadata !1802, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %28, metadata !1801, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %27, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1858), !dbg !1876
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
  ], !dbg !1877

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 5, metadata !1798, metadata !DIExpression()), !dbg !1864
  br label %92, !dbg !1878

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 5, metadata !1798, metadata !DIExpression()), !dbg !1864
  %42 = and i8 %35, 1, !dbg !1880
  %43 = icmp eq i8 %42, 0, !dbg !1880
  br i1 %43, label %44, label %92, !dbg !1878

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1882
  br i1 %45, label %92, label %46, !dbg !1885

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1882, !tbaa !1013
  br label %92, !dbg !1882

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.87, i64 0, i64 0), i32 %27), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %48, metadata !1801, metadata !DIExpression()), !dbg !1864
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), i32 %27), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %49, metadata !1802, metadata !DIExpression()), !dbg !1864
  br label %50, !dbg !1891

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1802, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %51, metadata !1801, metadata !DIExpression()), !dbg !1864
  %53 = and i8 %35, 1, !dbg !1892
  %54 = icmp eq i8 %53, 0, !dbg !1892
  br i1 %54, label %55, label %70, !dbg !1894

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1864
  %56 = load i8, i8* %51, align 1, !dbg !1895, !tbaa !1013
  %57 = icmp eq i8 %56, 0, !dbg !1898
  br i1 %57, label %70, label %58, !dbg !1898

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %61, metadata !1804, metadata !DIExpression()), !dbg !1864
  %62 = icmp ult i64 %61, %39, !dbg !1899
  br i1 %62, label %63, label %65, !dbg !1902

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1899
  store i8 %59, i8* %64, align 1, !dbg !1899, !tbaa !1013
  br label %65, !dbg !1899

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %66, metadata !1804, metadata !DIExpression()), !dbg !1864
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1903
  call void @llvm.dbg.value(metadata i8* %67, metadata !1806, metadata !DIExpression()), !dbg !1864
  %68 = load i8, i8* %67, align 1, !dbg !1895, !tbaa !1013
  %69 = icmp eq i8 %68, 0, !dbg !1898
  br i1 %69, label %70, label %58, !dbg !1898, !llvm.loop !1904

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1906
  call void @llvm.dbg.value(metadata i64 %71, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %52, metadata !1806, metadata !DIExpression()), !dbg !1864
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %72, metadata !1807, metadata !DIExpression()), !dbg !1864
  br label %92, !dbg !1908

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1864
  br label %74, !dbg !1909

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %75, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1810, metadata !DIExpression()), !dbg !1864
  br label %76, !dbg !1910

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1872
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %78, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %77, metadata !1808, metadata !DIExpression()), !dbg !1864
  %79 = and i8 %78, 1, !dbg !1911
  %80 = icmp eq i8 %79, 0, !dbg !1911
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1913
  br label %82, !dbg !1913

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1864
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1867
  call void @llvm.dbg.value(metadata i8 %84, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %83, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 2, metadata !1798, metadata !DIExpression()), !dbg !1864
  %85 = and i8 %84, 1, !dbg !1914
  %86 = icmp eq i8 %85, 0, !dbg !1914
  br i1 %86, label %87, label %92, !dbg !1916

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1917
  br i1 %88, label %92, label %89, !dbg !1920

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1917, !tbaa !1013
  br label %92, !dbg !1917

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !1864
  br label %92, !dbg !1921

91:                                               ; preds = %26
  call void @abort() #29, !dbg !1922
  unreachable, !dbg !1922

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1906
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %40 ], !dbg !1864
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1864
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1864
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %100, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %99, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %98, metadata !1807, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %97, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %96, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %95, metadata !1802, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %94, metadata !1801, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %93, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1803, metadata !DIExpression()), !dbg !1864
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
  br label %121, !dbg !1923

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1924
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1906
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1869
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1873
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1874
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1875
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %128, metadata !1813, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %127, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %126, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %125, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %124, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %123, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %122, metadata !1803, metadata !DIExpression()), !dbg !1864
  %130 = icmp eq i64 %125, -1, !dbg !1925
  br i1 %130, label %131, label %135, !dbg !1926

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1927
  %133 = load i8, i8* %132, align 1, !dbg !1927, !tbaa !1013
  %134 = icmp eq i8 %133, 0, !dbg !1928
  br i1 %134, label %587, label %137, !dbg !1929

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1930
  br i1 %136, label %587, label %137, !dbg !1929

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1931
  br i1 %106, label %138, label %153, !dbg !1932

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1934
  %140 = and i1 %107, %130, !dbg !1935
  br i1 %140, label %141, label %143, !dbg !1935

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %142, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %143, !dbg !1937

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1937
  call void @llvm.dbg.value(metadata i64 %144, metadata !1797, metadata !DIExpression()), !dbg !1864
  %145 = icmp ugt i64 %139, %144, !dbg !1938
  br i1 %145, label %153, label %146, !dbg !1939

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1940
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1941
  %149 = icmp ne i32 %148, 0, !dbg !1942
  %150 = or i1 %149, %109, !dbg !1943
  %151 = xor i1 %149, true, !dbg !1943
  %152 = zext i1 %151 to i8, !dbg !1943
  br i1 %150, label %153, label %646, !dbg !1943

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1931
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %156, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %154, metadata !1797, metadata !DIExpression()), !dbg !1864
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1944
  %158 = load i8, i8* %157, align 1, !dbg !1944, !tbaa !1013
  call void @llvm.dbg.value(metadata i8 %158, metadata !1814, metadata !DIExpression()), !dbg !1931
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
  ], !dbg !1945

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1946

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1947

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !1931
  %162 = and i8 %126, 1, !dbg !1951
  %163 = icmp eq i8 %162, 0, !dbg !1951
  %164 = and i1 %110, %163, !dbg !1951
  br i1 %164, label %165, label %181, !dbg !1951

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1953
  br i1 %166, label %167, label %169, !dbg !1957

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1953
  store i8 39, i8* %168, align 1, !dbg !1953, !tbaa !1013
  br label %169, !dbg !1953

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %170, metadata !1804, metadata !DIExpression()), !dbg !1864
  %171 = icmp ult i64 %170, %129, !dbg !1958
  br i1 %171, label %172, label %174, !dbg !1961

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1958
  store i8 36, i8* %173, align 1, !dbg !1958, !tbaa !1013
  br label %174, !dbg !1958

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %175, metadata !1804, metadata !DIExpression()), !dbg !1864
  %176 = icmp ult i64 %175, %129, !dbg !1962
  br i1 %176, label %177, label %179, !dbg !1965

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1962
  store i8 39, i8* %178, align 1, !dbg !1962, !tbaa !1013
  br label %179, !dbg !1962

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %180, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %181, !dbg !1966

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1864
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %183, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %182, metadata !1804, metadata !DIExpression()), !dbg !1864
  %184 = icmp ult i64 %182, %129, !dbg !1967
  br i1 %184, label %185, label %187, !dbg !1970

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1967
  store i8 92, i8* %186, align 1, !dbg !1967, !tbaa !1013
  br label %187, !dbg !1967

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %188, metadata !1804, metadata !DIExpression()), !dbg !1864
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1971
  br i1 %191, label %192, label %473, !dbg !1971

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1973
  %194 = load i8, i8* %193, align 1, !dbg !1973, !tbaa !1013
  %195 = add i8 %194, -48, !dbg !1974
  %196 = icmp ult i8 %195, 10, !dbg !1974
  br i1 %196, label %197, label %473, !dbg !1974

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1975
  br i1 %198, label %199, label %201, !dbg !1979

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1975
  store i8 48, i8* %200, align 1, !dbg !1975, !tbaa !1013
  br label %201, !dbg !1975

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %202, metadata !1804, metadata !DIExpression()), !dbg !1864
  %203 = icmp ult i64 %202, %129, !dbg !1980
  br i1 %203, label %204, label %206, !dbg !1983

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1980
  store i8 48, i8* %205, align 1, !dbg !1980, !tbaa !1013
  br label %206, !dbg !1980

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %207, metadata !1804, metadata !DIExpression()), !dbg !1864
  br label %473, !dbg !1984

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1985

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1986

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1987

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1989
  br i1 %214, label %215, label %473, !dbg !1989

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1991
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1992
  %218 = load i8, i8* %217, align 1, !dbg !1992, !tbaa !1013
  %219 = icmp eq i8 %218, 63, !dbg !1993
  br i1 %219, label %220, label %473, !dbg !1994

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1995
  %222 = load i8, i8* %221, align 1, !dbg !1995, !tbaa !1013
  %223 = sext i8 %222 to i32, !dbg !1995
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
  ], !dbg !1996

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1997

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 undef, metadata !1803, metadata !DIExpression()), !dbg !1864
  %226 = icmp ult i64 %123, %129, !dbg !1999
  br i1 %226, label %227, label %229, !dbg !2002

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1999
  store i8 63, i8* %228, align 1, !dbg !1999, !tbaa !1013
  br label %229, !dbg !1999

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %230, metadata !1804, metadata !DIExpression()), !dbg !1864
  %231 = icmp ult i64 %230, %129, !dbg !2003
  br i1 %231, label %232, label %234, !dbg !2006

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2003
  store i8 34, i8* %233, align 1, !dbg !2003, !tbaa !1013
  br label %234, !dbg !2003

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %235, metadata !1804, metadata !DIExpression()), !dbg !1864
  %236 = icmp ult i64 %235, %129, !dbg !2007
  br i1 %236, label %237, label %239, !dbg !2010

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2007
  store i8 34, i8* %238, align 1, !dbg !2007, !tbaa !1013
  br label %239, !dbg !2007

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %240, metadata !1804, metadata !DIExpression()), !dbg !1864
  %241 = icmp ult i64 %240, %129, !dbg !2011
  br i1 %241, label %242, label %244, !dbg !2014

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2011
  store i8 63, i8* %243, align 1, !dbg !2011, !tbaa !1013
  br label %244, !dbg !2011

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %245, metadata !1804, metadata !DIExpression()), !dbg !1864
  br label %473, !dbg !2015

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %256, !dbg !2016

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %256, !dbg !2017

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %254, !dbg !2018

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %254, !dbg !2019

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %256, !dbg !2020

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1818, metadata !DIExpression()), !dbg !1931
  br i1 %110, label %252, label %253, !dbg !2021

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2022

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2025

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8 %255, metadata !1818, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.label(metadata !1859), !dbg !2028
  br i1 %111, label %256, label %631, !dbg !2029

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8 %257, metadata !1818, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.label(metadata !1860), !dbg !2031
  br i1 %102, label %495, label %473, !dbg !2032

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2033

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2034, !tbaa !1013
  %261 = icmp eq i8 %260, 0, !dbg !2036
  br i1 %261, label %262, label %473, !dbg !2037

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2038
  br i1 %263, label %264, label %473, !dbg !2040

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1821, metadata !DIExpression()), !dbg !1931
  br label %265, !dbg !2041

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %266, metadata !1821, metadata !DIExpression()), !dbg !1931
  br i1 %111, label %473, label %631, !dbg !2042

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1821, metadata !DIExpression()), !dbg !1931
  br i1 %110, label %268, label %473, !dbg !2044

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2045

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2048
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2050
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2050
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %274, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %273, metadata !1805, metadata !DIExpression()), !dbg !1864
  %275 = icmp ult i64 %123, %274, !dbg !2051
  br i1 %275, label %276, label %278, !dbg !2054

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2051
  store i8 39, i8* %277, align 1, !dbg !2051, !tbaa !1013
  br label %278, !dbg !2051

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %279, metadata !1804, metadata !DIExpression()), !dbg !1864
  %280 = icmp ult i64 %279, %274, !dbg !2055
  br i1 %280, label %281, label %283, !dbg !2058

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2055
  store i8 92, i8* %282, align 1, !dbg !2055, !tbaa !1013
  br label %283, !dbg !2055

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %284, metadata !1804, metadata !DIExpression()), !dbg !1864
  %285 = icmp ult i64 %284, %274, !dbg !2059
  br i1 %285, label %286, label %288, !dbg !2062

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2059
  store i8 39, i8* %287, align 1, !dbg !2059, !tbaa !1013
  br label %288, !dbg !2059

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %289, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %473, !dbg !2063

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2064

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1822, metadata !DIExpression()), !dbg !2065
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !2066
  %293 = load i16*, i16** %292, align 8, !dbg !2066, !tbaa !787
  %294 = zext i8 %158 to i64, !dbg !2066
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2066
  %296 = load i16, i16* %295, align 2, !dbg !2066, !tbaa !2068
  %297 = lshr i16 %296, 14, !dbg !2069
  %298 = trunc i16 %297 to i8, !dbg !2069
  %299 = and i8 %298, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i8 %354, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %355, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %306, metadata !1797, metadata !DIExpression()), !dbg !1864
  %300 = icmp eq i8 %299, 0, !dbg !2070
  call void @llvm.dbg.value(metadata i1 %357, metadata !1821, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1931
  br label %359, !dbg !2071

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2072
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1826, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %23, metadata !2074, metadata !DIExpression()) #27, !dbg !2082
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()) #27, !dbg !2082
  call void @llvm.dbg.value(metadata i64 8, metadata !2081, metadata !DIExpression()) #27, !dbg !2082
  store i64 0, i64* %10, align 8, !dbg !2084
  call void @llvm.dbg.value(metadata i64 0, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 1, metadata !1825, metadata !DIExpression()), !dbg !2065
  %302 = icmp eq i64 %154, -1, !dbg !2085
  br i1 %302, label %303, label %305, !dbg !2087

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %304, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %305, !dbg !2089

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1931
  call void @llvm.dbg.value(metadata i64 %306, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %307, !dbg !2090

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2091
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2092
  call void @llvm.dbg.value(metadata i8 %309, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %308, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2093
  %310 = add i64 %308, %122, !dbg !2094
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2095
  %312 = sub i64 %306, %310, !dbg !2096
  call void @llvm.dbg.value(metadata i32* %12, metadata !1844, metadata !DIExpression(DW_OP_deref)), !dbg !2097
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %313, metadata !1847, metadata !DIExpression()), !dbg !2097
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2099

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1822, metadata !DIExpression()), !dbg !2065
  %315 = icmp ugt i64 %306, %310, !dbg !2100
  br i1 %315, label %316, label %341, !dbg !2102

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2103
  br label %318, !dbg !2103

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1822, metadata !DIExpression()), !dbg !2065
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2104
  %322 = load i8, i8* %321, align 1, !dbg !2104, !tbaa !1013
  %323 = icmp eq i8 %322, 0, !dbg !2102
  br i1 %323, label %341, label %324, !dbg !2103

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %325, metadata !1822, metadata !DIExpression()), !dbg !2065
  %326 = add i64 %325, %122, !dbg !2106
  %327 = icmp ult i64 %326, %306, !dbg !2100
  br i1 %327, label %318, label %341, !dbg !2102, !llvm.loop !2107

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2108
  call void @llvm.dbg.value(metadata i64 1, metadata !1848, metadata !DIExpression()), !dbg !2109
  br i1 %330, label %331, label %344, !dbg !2108

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1848, metadata !DIExpression()), !dbg !2109
  %333 = add i64 %332, %310, !dbg !2110
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2113
  %335 = load i8, i8* %334, align 1, !dbg !2113, !tbaa !1013
  %336 = sext i8 %335 to i32, !dbg !2113
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2114

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %338, metadata !1848, metadata !DIExpression()), !dbg !2109
  %339 = icmp eq i64 %338, %313, !dbg !2116
  br i1 %339, label %344, label %331, !dbg !2117, !llvm.loop !2118

340:                                              ; preds = %307
  br label %341, !dbg !2120

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 undef, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2120
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2121, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %345, metadata !1844, metadata !DIExpression()), !dbg !2097
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !2123
  %347 = icmp eq i32 %346, 0, !dbg !2123
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2124
  call void @llvm.dbg.value(metadata i8 %348, metadata !1825, metadata !DIExpression()), !dbg !2065
  %349 = add i64 %313, %308, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %349, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2120
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !2126
  %351 = icmp eq i32 %350, 0, !dbg !2127
  br i1 %351, label %307, label %353, !dbg !2128, !llvm.loop !2129

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 undef, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2120
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2131
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2131
  call void @llvm.dbg.value(metadata i8 %354, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %355, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %306, metadata !1797, metadata !DIExpression()), !dbg !1864
  %356 = and i8 %354, 1, !dbg !2070
  %357 = icmp eq i8 %356, 0, !dbg !2070
  call void @llvm.dbg.value(metadata i1 %357, metadata !1821, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1931
  %358 = icmp ugt i64 %355, 1, !dbg !2132
  br i1 %358, label %367, label %359, !dbg !2071

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2133
  br i1 %364, label %367, label %365, !dbg !2133

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i8 %472, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %441, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %440, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %439, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %438, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %371, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %437, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %375, metadata !1803, metadata !DIExpression()), !dbg !1864
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %372, metadata !1855, metadata !DIExpression()), !dbg !2135
  %373 = and i1 %102, %368
  br label %374, !dbg !2136

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1924
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1864
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1873
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1931
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1931
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2137
  call void @llvm.dbg.value(metadata i8 %380, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %379, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %378, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %377, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %376, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %375, metadata !1803, metadata !DIExpression()), !dbg !1864
  br i1 %373, label %381, label %427, !dbg !2138

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2143

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !1931
  %383 = and i8 %377, 1, !dbg !2146
  %384 = icmp eq i8 %383, 0, !dbg !2146
  %385 = and i1 %110, %384, !dbg !2146
  br i1 %385, label %386, label %402, !dbg !2146

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2148
  br i1 %387, label %388, label %390, !dbg !2152

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2148
  store i8 39, i8* %389, align 1, !dbg !2148, !tbaa !1013
  br label %390, !dbg !2148

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %391, metadata !1804, metadata !DIExpression()), !dbg !1864
  %392 = icmp ult i64 %391, %129, !dbg !2153
  br i1 %392, label %393, label %395, !dbg !2156

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2153
  store i8 36, i8* %394, align 1, !dbg !2153, !tbaa !1013
  br label %395, !dbg !2153

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %396, metadata !1804, metadata !DIExpression()), !dbg !1864
  %397 = icmp ult i64 %396, %129, !dbg !2157
  br i1 %397, label %398, label %400, !dbg !2160

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2157
  store i8 39, i8* %399, align 1, !dbg !2157, !tbaa !1013
  br label %400, !dbg !2157

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %401, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %402, !dbg !2161

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1864
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %404, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %403, metadata !1804, metadata !DIExpression()), !dbg !1864
  %405 = icmp ult i64 %403, %129, !dbg !2162
  br i1 %405, label %406, label %408, !dbg !2165

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2162
  store i8 92, i8* %407, align 1, !dbg !2162, !tbaa !1013
  br label %408, !dbg !2162

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %409, metadata !1804, metadata !DIExpression()), !dbg !1864
  %410 = icmp ult i64 %409, %129, !dbg !2166
  br i1 %410, label %411, label %415, !dbg !2169

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2166
  %413 = or i8 %412, 48, !dbg !2166
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2166
  store i8 %413, i8* %414, align 1, !dbg !2166, !tbaa !1013
  br label %415, !dbg !2166

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %416, metadata !1804, metadata !DIExpression()), !dbg !1864
  %417 = icmp ult i64 %416, %129, !dbg !2170
  br i1 %417, label %418, label %423, !dbg !2173

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2170
  %420 = and i8 %419, 7, !dbg !2170
  %421 = or i8 %420, 48, !dbg !2170
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2170
  store i8 %421, i8* %422, align 1, !dbg !2170, !tbaa !1013
  br label %423, !dbg !2170

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %424, metadata !1804, metadata !DIExpression()), !dbg !1864
  %425 = and i8 %378, 7, !dbg !2174
  %426 = or i8 %425, 48, !dbg !2175
  call void @llvm.dbg.value(metadata i8 %426, metadata !1814, metadata !DIExpression()), !dbg !1931
  br label %436, !dbg !2176

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2177
  %429 = icmp eq i8 %428, 0, !dbg !2177
  br i1 %429, label %436, label %430, !dbg !2179

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2180
  br i1 %431, label %432, label %434, !dbg !2184

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2180
  store i8 92, i8* %433, align 1, !dbg !2180, !tbaa !1013
  br label %434, !dbg !2180

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %435, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1931
  br label %436, !dbg !2185

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1864
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1873
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1931
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1931
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %441, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %440, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %439, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %438, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %437, metadata !1804, metadata !DIExpression()), !dbg !1864
  %442 = add i64 %375, 1, !dbg !2186
  %443 = icmp ugt i64 %372, %442, !dbg !2188
  br i1 %443, label %444, label %471, !dbg !2189

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2190
  %446 = icmp ne i8 %445, 0, !dbg !2190
  %447 = and i8 %441, 1, !dbg !2190
  %448 = icmp eq i8 %447, 0, !dbg !2190
  %449 = and i1 %446, %448, !dbg !2190
  br i1 %449, label %450, label %461, !dbg !2190

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2193
  br i1 %451, label %452, label %454, !dbg !2197

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2193
  store i8 39, i8* %453, align 1, !dbg !2193, !tbaa !1013
  br label %454, !dbg !2193

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %455, metadata !1804, metadata !DIExpression()), !dbg !1864
  %456 = icmp ult i64 %455, %129, !dbg !2198
  br i1 %456, label %457, label %459, !dbg !2201

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2198
  store i8 39, i8* %458, align 1, !dbg !2198, !tbaa !1013
  br label %459, !dbg !2198

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %460, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %461, !dbg !2202

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2203
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %463, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %462, metadata !1804, metadata !DIExpression()), !dbg !1864
  %464 = icmp ult i64 %462, %129, !dbg !2204
  br i1 %464, label %465, label %467, !dbg !2207

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2204
  store i8 %439, i8* %466, align 1, !dbg !2204, !tbaa !1013
  br label %467, !dbg !2204

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %468, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %442, metadata !1803, metadata !DIExpression()), !dbg !1864
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2208
  %470 = load i8, i8* %469, align 1, !dbg !2208, !tbaa !1013
  call void @llvm.dbg.value(metadata i8 %470, metadata !1814, metadata !DIExpression()), !dbg !1931
  br label %374, !dbg !2209, !llvm.loop !2210

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i8 %472, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %441, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %440, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %439, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %438, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %371, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %437, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %375, metadata !1803, metadata !DIExpression()), !dbg !1864
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1924
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1864
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1869
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2213
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1864
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1864
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1931
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1931
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1931
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %482, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %481, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %156, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %480, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %479, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %478, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %477, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %476, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %475, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %474, metadata !1803, metadata !DIExpression()), !dbg !1864
  br i1 %116, label %494, label %484, !dbg !2214

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2216
  %486 = zext i8 %485 to i64, !dbg !2216
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2217
  %488 = load i32, i32* %487, align 4, !dbg !2217, !tbaa !971
  %489 = and i8 %480, 31, !dbg !2218
  %490 = zext i8 %489 to i32, !dbg !2218
  %491 = shl nuw i32 1, %490, !dbg !2219
  %492 = and i32 %488, %491, !dbg !2219
  %493 = icmp eq i32 %492, 0, !dbg !2219
  br i1 %493, label %494, label %495, !dbg !2220

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2221

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2222
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1864
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1869
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2213
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1873
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1874
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1931
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1931
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %503, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %502, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %501, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %500, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %499, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %498, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %497, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %496, metadata !1803, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1861), !dbg !2223
  br i1 %109, label %505, label %635, !dbg !2224

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !1931
  %506 = and i8 %500, 1, !dbg !2226
  %507 = icmp eq i8 %506, 0, !dbg !2226
  %508 = and i1 %110, %507, !dbg !2226
  br i1 %508, label %509, label %525, !dbg !2226

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2228
  br i1 %510, label %511, label %513, !dbg !2232

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2228
  store i8 39, i8* %512, align 1, !dbg !2228, !tbaa !1013
  br label %513, !dbg !2228

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %514, metadata !1804, metadata !DIExpression()), !dbg !1864
  %515 = icmp ult i64 %514, %504, !dbg !2233
  br i1 %515, label %516, label %518, !dbg !2236

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2233
  store i8 36, i8* %517, align 1, !dbg !2233, !tbaa !1013
  br label %518, !dbg !2233

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %519, metadata !1804, metadata !DIExpression()), !dbg !1864
  %520 = icmp ult i64 %519, %504, !dbg !2237
  br i1 %520, label %521, label %523, !dbg !2240

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2237
  store i8 39, i8* %522, align 1, !dbg !2237, !tbaa !1013
  br label %523, !dbg !2237

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %524, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %525, !dbg !2241

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1931
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %527, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %526, metadata !1804, metadata !DIExpression()), !dbg !1864
  %528 = icmp ult i64 %526, %504, !dbg !2242
  br i1 %528, label %529, label %531, !dbg !2245

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2242
  store i8 92, i8* %530, align 1, !dbg !2242, !tbaa !1013
  br label %531, !dbg !2242

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %543, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %542, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %541, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %540, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %539, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %538, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %537, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %536, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %535, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %534, metadata !1803, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1862), !dbg !2246
  br label %560, !dbg !2247

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2222
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1864
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1869
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2213
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1873
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1874
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2250
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1931
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1931
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %542, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %541, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %540, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %539, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %538, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %537, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %536, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %535, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %534, metadata !1803, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1862), !dbg !2246
  %544 = and i8 %538, 1, !dbg !2247
  %545 = icmp ne i8 %544, 0, !dbg !2247
  %546 = and i8 %541, 1, !dbg !2247
  %547 = icmp eq i8 %546, 0, !dbg !2247
  %548 = and i1 %545, %547, !dbg !2247
  br i1 %548, label %549, label %560, !dbg !2247

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2251
  br i1 %550, label %551, label %553, !dbg !2255

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2251
  store i8 39, i8* %552, align 1, !dbg !2251, !tbaa !1013
  br label %553, !dbg !2251

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %554, metadata !1804, metadata !DIExpression()), !dbg !1864
  %555 = icmp ult i64 %554, %543, !dbg !2256
  br i1 %555, label %556, label %558, !dbg !2259

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2256
  store i8 39, i8* %557, align 1, !dbg !2256, !tbaa !1013
  br label %558, !dbg !2256

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %559, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %560, !dbg !2260

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1931
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %569, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %568, metadata !1804, metadata !DIExpression()), !dbg !1864
  %570 = icmp ult i64 %568, %561, !dbg !2261
  br i1 %570, label %571, label %573, !dbg !2264

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2261
  store i8 %563, i8* %572, align 1, !dbg !2261, !tbaa !1013
  br label %573, !dbg !2261

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %574, metadata !1804, metadata !DIExpression()), !dbg !1864
  %575 = icmp eq i8 %562, 0, !dbg !2265
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2267
  call void @llvm.dbg.value(metadata i8 %576, metadata !1813, metadata !DIExpression()), !dbg !1864
  br label %577, !dbg !2268

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2222
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1864
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1869
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2213
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1873
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1864
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1875
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %584, metadata !1813, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %583, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %582, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %581, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %580, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %579, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %578, metadata !1803, metadata !DIExpression()), !dbg !1864
  %586 = add i64 %578, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %586, metadata !1803, metadata !DIExpression()), !dbg !1864
  br label %121, !dbg !2270, !llvm.loop !2271

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2273
  %590 = and i1 %110, %589, !dbg !2275
  %591 = xor i1 %590, true, !dbg !2275
  %592 = or i1 %109, %591, !dbg !2275
  br i1 %592, label %593, label %635, !dbg !2275

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2276
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2276
  br i1 %597, label %598, label %607, !dbg !2276

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2278
  %600 = icmp eq i8 %599, 0, !dbg !2278
  br i1 %600, label %603, label %601, !dbg !2281

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2282
  br label %652, !dbg !2283

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2284
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2286
  br i1 %606, label %26, label %607, !dbg !2286

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2287
  %610 = and i1 %609, %608, !dbg !2289
  br i1 %610, label %611, label %626, !dbg !2289

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %123, metadata !1804, metadata !DIExpression()), !dbg !1864
  %612 = load i8, i8* %97, align 1, !dbg !2290, !tbaa !1013
  %613 = icmp eq i8 %612, 0, !dbg !2293
  br i1 %613, label %626, label %614, !dbg !2293

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %617, metadata !1804, metadata !DIExpression()), !dbg !1864
  %618 = icmp ult i64 %617, %129, !dbg !2294
  br i1 %618, label %619, label %621, !dbg !2297

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2294
  store i8 %615, i8* %620, align 1, !dbg !2294, !tbaa !1013
  br label %621, !dbg !2294

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %622, metadata !1804, metadata !DIExpression()), !dbg !1864
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2298
  call void @llvm.dbg.value(metadata i8* %623, metadata !1806, metadata !DIExpression()), !dbg !1864
  %624 = load i8, i8* %623, align 1, !dbg !2290, !tbaa !1013
  %625 = icmp eq i8 %624, 0, !dbg !2293
  br i1 %625, label %626, label %614, !dbg !2293, !llvm.loop !2299

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1906
  call void @llvm.dbg.value(metadata i64 %627, metadata !1804, metadata !DIExpression()), !dbg !1864
  %628 = icmp ult i64 %627, %129, !dbg !2301
  br i1 %628, label %629, label %652, !dbg !2303

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2304
  store i8 0, i8* %630, align 1, !dbg !2305, !tbaa !1013
  br label %652, !dbg !2304

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %637, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1863), !dbg !2306
  %633 = icmp eq i8 %101, 0, !dbg !2307
  %634 = select i1 %633, i32 2, i32 4, !dbg !2307
  br label %642, !dbg !2307

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %637, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1863), !dbg !2306
  %639 = icmp eq i32 %93, 2, !dbg !2309
  %640 = icmp eq i8 %636, 0, !dbg !2307
  %641 = select i1 %640, i32 2, i32 4, !dbg !2307
  br i1 %639, label %642, label %646, !dbg !2307

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2307

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1798, metadata !DIExpression()), !dbg !1864
  %650 = and i32 %5, -3, !dbg !2310
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2311
  br label %652, !dbg !2312

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2313
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2318, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %1, metadata !2319, metadata !DIExpression()), !dbg !2322
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %3, metadata !2320, metadata !DIExpression()), !dbg !2322
  %4 = icmp eq i8* %3, %0, !dbg !2324
  br i1 %4, label %5, label %72, !dbg !2326

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %6, metadata !2321, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %6, metadata !2328, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8* undef, metadata !2334, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 85, metadata !2335, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 84, metadata !2336, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 70, metadata !2337, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 45, metadata !2338, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 56, metadata !2339, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 0, metadata !2341, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2344
  %7 = load i8, i8* %6, align 1, !dbg !2347, !tbaa !1013
  %8 = and i8 %7, -33, !dbg !2347
  %9 = sext i8 %8 to i32, !dbg !2347
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2347

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2349, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8* undef, metadata !2354, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 84, metadata !2355, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 70, metadata !2356, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 45, metadata !2357, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 56, metadata !2358, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2359, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2363
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2367
  %12 = load i8, i8* %11, align 1, !dbg !2367, !tbaa !1013
  %13 = and i8 %12, -33, !dbg !2367
  %14 = icmp eq i8 %13, 84, !dbg !2367
  br i1 %14, label %15, label %69, !dbg !2367

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2369, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8* undef, metadata !2374, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 70, metadata !2375, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 45, metadata !2376, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 56, metadata !2377, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2382
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2386
  %17 = load i8, i8* %16, align 1, !dbg !2386, !tbaa !1013
  %18 = and i8 %17, -33, !dbg !2386
  %19 = icmp eq i8 %18, 70, !dbg !2386
  br i1 %19, label %20, label %69, !dbg !2386

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2388, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8* undef, metadata !2393, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 45, metadata !2394, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 56, metadata !2395, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2396, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2400
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2404
  %22 = load i8, i8* %21, align 1, !dbg !2404, !tbaa !1013
  %23 = icmp eq i8 %22, 45, !dbg !2404
  br i1 %23, label %24, label %69, !dbg !2406

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2407, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8* undef, metadata !2412, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 56, metadata !2413, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2414, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2418
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2422
  %26 = load i8, i8* %25, align 1, !dbg !2422, !tbaa !1013
  %27 = icmp eq i8 %26, 56, !dbg !2422
  br i1 %27, label %28, label %69, !dbg !2424

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2425, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8* undef, metadata !2430, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2435
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2439
  %30 = load i8, i8* %29, align 1, !dbg !2439, !tbaa !1013
  %31 = icmp eq i8 %30, 0, !dbg !2439
  br i1 %31, label %32, label %69, !dbg !2441

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2442, !tbaa !1013
  %34 = icmp eq i8 %33, 96, !dbg !2443
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.90, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.91, i64 0, i64 0), !dbg !2442
  br label %72, !dbg !2444

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2349, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8* undef, metadata !2354, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 66, metadata !2355, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 49, metadata !2356, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 56, metadata !2357, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 48, metadata !2358, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 51, metadata !2359, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 48, metadata !2360, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2445
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2449
  %38 = load i8, i8* %37, align 1, !dbg !2449, !tbaa !1013
  %39 = and i8 %38, -33, !dbg !2449
  %40 = icmp eq i8 %39, 66, !dbg !2449
  br i1 %40, label %41, label %69, !dbg !2449

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2369, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8* undef, metadata !2374, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 49, metadata !2375, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 56, metadata !2376, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 48, metadata !2377, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 51, metadata !2378, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 48, metadata !2379, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2450
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2452
  %43 = load i8, i8* %42, align 1, !dbg !2452, !tbaa !1013
  %44 = icmp eq i8 %43, 49, !dbg !2452
  br i1 %44, label %45, label %69, !dbg !2453

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2388, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* undef, metadata !2393, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 56, metadata !2394, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 48, metadata !2395, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 51, metadata !2396, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 48, metadata !2397, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2454
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2456
  %47 = load i8, i8* %46, align 1, !dbg !2456, !tbaa !1013
  %48 = icmp eq i8 %47, 56, !dbg !2456
  br i1 %48, label %49, label %69, !dbg !2457

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2407, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* undef, metadata !2412, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 48, metadata !2413, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 51, metadata !2414, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 48, metadata !2415, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2458
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2460
  %51 = load i8, i8* %50, align 1, !dbg !2460, !tbaa !1013
  %52 = icmp eq i8 %51, 48, !dbg !2460
  br i1 %52, label %53, label %69, !dbg !2461

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2425, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8* undef, metadata !2430, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 51, metadata !2431, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 48, metadata !2432, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2462
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2464
  %55 = load i8, i8* %54, align 1, !dbg !2464, !tbaa !1013
  %56 = icmp eq i8 %55, 51, !dbg !2464
  br i1 %56, label %57, label %69, !dbg !2465

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2466, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8* undef, metadata !2471, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 48, metadata !2472, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 0, metadata !2473, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 0, metadata !2474, metadata !DIExpression()), !dbg !2475
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2479
  %59 = load i8, i8* %58, align 1, !dbg !2479, !tbaa !1013
  %60 = icmp eq i8 %59, 48, !dbg !2479
  br i1 %60, label %61, label %69, !dbg !2481

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2482, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8* undef, metadata !2487, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 0, metadata !2488, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2490
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2494
  %63 = load i8, i8* %62, align 1, !dbg !2494, !tbaa !1013
  %64 = icmp eq i8 %63, 0, !dbg !2494
  br i1 %64, label %65, label %69, !dbg !2496

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2497, !tbaa !1013
  %67 = icmp eq i8 %66, 96, !dbg !2498
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.92, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.93, i64 0, i64 0), !dbg !2497
  br label %72, !dbg !2499

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2500
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !2501
  br label %72, !dbg !2502

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2322
  ret i8* %73, !dbg !2503
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2504 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2508 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2514 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2518, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i64 %1, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2520, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8* %0, metadata !2522, metadata !DIExpression()) #27, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()) #27, !dbg !2535
  call void @llvm.dbg.value(metadata i64* null, metadata !2528, metadata !DIExpression()) #27, !dbg !2535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2529, metadata !DIExpression()) #27, !dbg !2535
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2537
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2530, metadata !DIExpression()) #27, !dbg !2535
  %6 = tail call i32* @__errno_location() #31, !dbg !2538
  %7 = load i32, i32* %6, align 4, !dbg !2538, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %7, metadata !2531, metadata !DIExpression()) #27, !dbg !2535
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2539
  %9 = load i32, i32* %8, align 4, !dbg !2539, !tbaa !1738
  %10 = or i32 %9, 1, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %10, metadata !2532, metadata !DIExpression()) #27, !dbg !2535
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2541
  %12 = load i32, i32* %11, align 8, !dbg !2541, !tbaa !1687
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2542
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2543
  %15 = load i8*, i8** %14, align 8, !dbg !2543, !tbaa !1760
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2544
  %17 = load i8*, i8** %16, align 8, !dbg !2544, !tbaa !1763
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2545
  %19 = add i64 %18, 1, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %19, metadata !2533, metadata !DIExpression()) #27, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %19, metadata !2547, metadata !DIExpression()) #27, !dbg !2552
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %20, metadata !2534, metadata !DIExpression()) #27, !dbg !2535
  %21 = load i32, i32* %11, align 8, !dbg !2555, !tbaa !1687
  %22 = load i8*, i8** %14, align 8, !dbg !2556, !tbaa !1760
  %23 = load i8*, i8** %16, align 8, !dbg !2557, !tbaa !1763
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2558
  store i32 %7, i32* %6, align 4, !dbg !2559, !tbaa !971
  ret i8* %20, !dbg !2560
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2523 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2522, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64* %2, metadata !2528, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2529, metadata !DIExpression()), !dbg !2561
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2562
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2562
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2530, metadata !DIExpression()), !dbg !2561
  %7 = tail call i32* @__errno_location() #31, !dbg !2563
  %8 = load i32, i32* %7, align 4, !dbg !2563, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %8, metadata !2531, metadata !DIExpression()), !dbg !2561
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2564
  %10 = load i32, i32* %9, align 4, !dbg !2564, !tbaa !1738
  %11 = icmp eq i64* %2, null, !dbg !2565
  %12 = zext i1 %11 to i32, !dbg !2565
  %13 = or i32 %10, %12, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %13, metadata !2532, metadata !DIExpression()), !dbg !2561
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2567
  %15 = load i32, i32* %14, align 8, !dbg !2567, !tbaa !1687
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2568
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2569
  %18 = load i8*, i8** %17, align 8, !dbg !2569, !tbaa !1760
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2570
  %20 = load i8*, i8** %19, align 8, !dbg !2570, !tbaa !1763
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2571
  %22 = add i64 %21, 1, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %22, metadata !2533, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %22, metadata !2547, metadata !DIExpression()) #27, !dbg !2573
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %23, metadata !2534, metadata !DIExpression()), !dbg !2561
  %24 = load i32, i32* %14, align 8, !dbg !2576, !tbaa !1687
  %25 = load i8*, i8** %17, align 8, !dbg !2577, !tbaa !1760
  %26 = load i8*, i8** %19, align 8, !dbg !2578, !tbaa !1763
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2579
  store i32 %8, i32* %7, align 4, !dbg !2580, !tbaa !971
  br i1 %11, label %29, label %28, !dbg !2581

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2582, !tbaa !2584
  br label %29, !dbg !2585

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2586
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2587 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2591, !tbaa !787
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2589, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 1, metadata !2590, metadata !DIExpression()), !dbg !2592
  %2 = load i32, i32* @nslots, align 4, !dbg !2593, !tbaa !971
  %3 = icmp sgt i32 %2, 1, !dbg !2596
  br i1 %3, label %4, label %12, !dbg !2597

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2596
  br label %6, !dbg !2597

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2590, metadata !DIExpression()), !dbg !2592
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2598
  %9 = load i8*, i8** %8, align 8, !dbg !2598, !tbaa !2599
  tail call void @free(i8* %9) #27, !dbg !2601
  %10 = add nuw nsw i64 %7, 1, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %10, metadata !2590, metadata !DIExpression()), !dbg !2592
  %11 = icmp eq i64 %10, %5, !dbg !2596
  br i1 %11, label %12, label %6, !dbg !2597, !llvm.loop !2603

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2605
  %14 = load i8*, i8** %13, align 8, !dbg !2605, !tbaa !2599
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2607
  br i1 %15, label %17, label %16, !dbg !2608

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2609
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2611, !tbaa !2612
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2613, !tbaa !2599
  br label %17, !dbg !2614

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2615
  br i1 %18, label %21, label %19, !dbg !2617

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2618
  tail call void @free(i8* %20) #27, !dbg !2620
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2621, !tbaa !787
  br label %21, !dbg !2622

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2623, !tbaa !971
  ret void, !dbg !2624
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* %1, metadata !2628, metadata !DIExpression()), !dbg !2629
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2630
  ret i8* %3, !dbg !2631
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2632 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2636, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %1, metadata !2637, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i64 %2, metadata !2638, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2639, metadata !DIExpression()), !dbg !2651
  %5 = tail call i32* @__errno_location() #31, !dbg !2652
  %6 = load i32, i32* %5, align 4, !dbg !2652, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %6, metadata !2640, metadata !DIExpression()), !dbg !2651
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2653, !tbaa !787
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2641, metadata !DIExpression()), !dbg !2651
  %8 = icmp slt i32 %0, 0, !dbg !2654
  br i1 %8, label %9, label %10, !dbg !2656

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2657
  unreachable, !dbg !2657

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2658, !tbaa !971
  %12 = icmp sgt i32 %11, %0, !dbg !2659
  br i1 %12, label %34, label %13, !dbg !2660

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2661
  call void @llvm.dbg.value(metadata i1 %14, metadata !2642, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2662
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2645, metadata !DIExpression()), !dbg !2662
  %15 = icmp eq i32 %0, 2147483647, !dbg !2663
  br i1 %15, label %16, label %17, !dbg !2665

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2666
  unreachable, !dbg !2666

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2667
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2667
  %20 = add nuw nsw i32 %0, 1, !dbg !2668
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2669
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !2670
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2670
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2641, metadata !DIExpression()), !dbg !2651
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2671, !tbaa !787
  br i1 %14, label %25, label %26, !dbg !2672

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2673, !tbaa.struct !2675
  br label %26, !dbg !2676

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2677, !tbaa !971
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2678
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2679
  %31 = sub nsw i32 %20, %27, !dbg !2680
  %32 = sext i32 %31 to i64, !dbg !2681
  %33 = shl nsw i64 %32, 4, !dbg !2682
  call void @llvm.dbg.value(metadata i8* %30, metadata !2074, metadata !DIExpression()) #27, !dbg !2683
  call void @llvm.dbg.value(metadata i32 0, metadata !2080, metadata !DIExpression()) #27, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %33, metadata !2081, metadata !DIExpression()) #27, !dbg !2683
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !2685
  store i32 %20, i32* @nslots, align 4, !dbg !2686, !tbaa !971
  br label %34, !dbg !2687

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2651
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2641, metadata !DIExpression()), !dbg !2651
  %36 = zext i32 %0 to i64, !dbg !2688
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2689
  %38 = load i64, i64* %37, align 8, !dbg !2689, !tbaa !2612
  call void @llvm.dbg.value(metadata i64 %38, metadata !2646, metadata !DIExpression()), !dbg !2690
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2691
  %40 = load i8*, i8** %39, align 8, !dbg !2691, !tbaa !2599
  call void @llvm.dbg.value(metadata i8* %40, metadata !2648, metadata !DIExpression()), !dbg !2690
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2692
  %42 = load i32, i32* %41, align 4, !dbg !2692, !tbaa !1738
  %43 = or i32 %42, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %43, metadata !2649, metadata !DIExpression()), !dbg !2690
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2694
  %45 = load i32, i32* %44, align 8, !dbg !2694, !tbaa !1687
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2695
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2696
  %48 = load i8*, i8** %47, align 8, !dbg !2696, !tbaa !1760
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2697
  %50 = load i8*, i8** %49, align 8, !dbg !2697, !tbaa !1763
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2698
  call void @llvm.dbg.value(metadata i64 %51, metadata !2650, metadata !DIExpression()), !dbg !2690
  %52 = icmp ugt i64 %38, %51, !dbg !2699
  br i1 %52, label %63, label %53, !dbg !2701

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %54, metadata !2646, metadata !DIExpression()), !dbg !2690
  store i64 %54, i64* %37, align 8, !dbg !2704, !tbaa !2612
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2705
  br i1 %55, label %57, label %56, !dbg !2707

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !2708
  br label %57, !dbg !2708

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2547, metadata !DIExpression()) #27, !dbg !2709
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !2711
  call void @llvm.dbg.value(metadata i8* %58, metadata !2648, metadata !DIExpression()), !dbg !2690
  store i8* %58, i8** %39, align 8, !dbg !2712, !tbaa !2599
  %59 = load i32, i32* %44, align 8, !dbg !2713, !tbaa !1687
  %60 = load i8*, i8** %47, align 8, !dbg !2714, !tbaa !1760
  %61 = load i8*, i8** %49, align 8, !dbg !2715, !tbaa !1763
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2716
  br label %63, !dbg !2717

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2690
  call void @llvm.dbg.value(metadata i8* %64, metadata !2648, metadata !DIExpression()), !dbg !2690
  store i32 %6, i32* %5, align 4, !dbg !2718, !tbaa !971
  ret i8* %64, !dbg !2719
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2720 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %1, metadata !2725, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %2, metadata !2726, metadata !DIExpression()), !dbg !2727
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2728
  ret i8* %4, !dbg !2729
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2730 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2732, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 0, metadata !2627, metadata !DIExpression()) #27, !dbg !2734
  call void @llvm.dbg.value(metadata i8* %0, metadata !2628, metadata !DIExpression()) #27, !dbg !2734
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2736
  ret i8* %2, !dbg !2737
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2738 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()) #27, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %0, metadata !2725, metadata !DIExpression()) #27, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %1, metadata !2726, metadata !DIExpression()) #27, !dbg !2745
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2747
  ret i8* %3, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2749 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i32 %1, metadata !2754, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %2, metadata !2755, metadata !DIExpression()), !dbg !2757
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2758
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2756, metadata !DIExpression()), !dbg !2759
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2760), !dbg !2763
  call void @llvm.dbg.value(metadata i32 %1, metadata !2764, metadata !DIExpression()) #27, !dbg !2770
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2769, metadata !DIExpression()) #27, !dbg !2772
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2772, !alias.scope !2760
  %6 = icmp eq i32 %1, 10, !dbg !2773
  br i1 %6, label %7, label %8, !dbg !2775

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2776, !noalias !2760
  unreachable, !dbg !2776

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2777
  store i32 %1, i32* %9, align 8, !dbg !2778, !tbaa !1687, !alias.scope !2760
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2780
  ret i8* %10, !dbg !2781
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2782 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2786, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %1, metadata !2787, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %2, metadata !2788, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %3, metadata !2789, metadata !DIExpression()), !dbg !2791
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2792
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2790, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %1, metadata !2764, metadata !DIExpression()) #27, !dbg !2798
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2769, metadata !DIExpression()) #27, !dbg !2800
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !2800, !alias.scope !2794
  %7 = icmp eq i32 %1, 10, !dbg !2801
  br i1 %7, label %8, label %9, !dbg !2802

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2803, !noalias !2794
  unreachable, !dbg !2803

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2804
  store i32 %1, i32* %10, align 8, !dbg !2805, !tbaa !1687, !alias.scope !2794
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2806
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2807
  ret i8* %11, !dbg !2808
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2809 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* %1, metadata !2814, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 0, metadata !2753, metadata !DIExpression()) #27, !dbg !2816
  call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()) #27, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %1, metadata !2755, metadata !DIExpression()) #27, !dbg !2816
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2818
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2756, metadata !DIExpression()) #27, !dbg !2819
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2820) #27, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %0, metadata !2764, metadata !DIExpression()) #27, !dbg !2824
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2769, metadata !DIExpression()) #27, !dbg !2826
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !2826, !alias.scope !2820
  %5 = icmp eq i32 %0, 10, !dbg !2827
  br i1 %5, label %6, label %7, !dbg !2828

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !2829, !noalias !2820
  unreachable, !dbg !2829

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2830
  store i32 %0, i32* %8, align 8, !dbg !2831, !tbaa !1687, !alias.scope !2820
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2832
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2833
  ret i8* %9, !dbg !2834
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2835 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %1, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %2, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 0, metadata !2786, metadata !DIExpression()) #27, !dbg !2843
  call void @llvm.dbg.value(metadata i32 %0, metadata !2787, metadata !DIExpression()) #27, !dbg !2843
  call void @llvm.dbg.value(metadata i8* %1, metadata !2788, metadata !DIExpression()) #27, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %2, metadata !2789, metadata !DIExpression()) #27, !dbg !2843
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2845
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2790, metadata !DIExpression()) #27, !dbg !2846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2847) #27, !dbg !2850
  call void @llvm.dbg.value(metadata i32 %0, metadata !2764, metadata !DIExpression()) #27, !dbg !2851
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2769, metadata !DIExpression()) #27, !dbg !2853
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2853, !alias.scope !2847
  %6 = icmp eq i32 %0, 10, !dbg !2854
  br i1 %6, label %7, label %8, !dbg !2855

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2856, !noalias !2847
  unreachable, !dbg !2856

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2857
  store i32 %0, i32* %9, align 8, !dbg !2858, !tbaa !1687, !alias.scope !2847
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !2859
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2860
  ret i8* %10, !dbg !2861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2862 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %2, metadata !2868, metadata !DIExpression()), !dbg !2870
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2871
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2871
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2869, metadata !DIExpression()), !dbg !2872
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2873, !tbaa.struct !2874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1705, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 %2, metadata !1706, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 %2, metadata !1708, metadata !DIExpression()), !dbg !2875
  %6 = lshr i8 %2, 5, !dbg !2877
  %7 = zext i8 %6 to i64, !dbg !2877
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2878
  call void @llvm.dbg.value(metadata i32* %8, metadata !1709, metadata !DIExpression()), !dbg !2875
  %9 = and i8 %2, 31, !dbg !2879
  %10 = zext i8 %9 to i32, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %10, metadata !1711, metadata !DIExpression()), !dbg !2875
  %11 = load i32, i32* %8, align 4, !dbg !2880, !tbaa !971
  %12 = lshr i32 %11, %10, !dbg !2881
  %13 = and i32 %12, 1, !dbg !2882
  call void @llvm.dbg.value(metadata i32 %13, metadata !1712, metadata !DIExpression()), !dbg !2875
  %14 = xor i32 %13, 1, !dbg !2883
  %15 = shl i32 %14, %10, !dbg !2884
  %16 = xor i32 %15, %11, !dbg !2885
  store i32 %16, i32* %8, align 4, !dbg !2885, !tbaa !971
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2886
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2887
  ret i8* %17, !dbg !2888
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2889 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 %1, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()) #27, !dbg !2896
  call void @llvm.dbg.value(metadata i64 -1, metadata !2867, metadata !DIExpression()) #27, !dbg !2896
  call void @llvm.dbg.value(metadata i8 %1, metadata !2868, metadata !DIExpression()) #27, !dbg !2896
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2898
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2898
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2869, metadata !DIExpression()) #27, !dbg !2899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2900, !tbaa.struct !2874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1705, metadata !DIExpression()) #27, !dbg !2901
  call void @llvm.dbg.value(metadata i8 %1, metadata !1706, metadata !DIExpression()) #27, !dbg !2901
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()) #27, !dbg !2901
  call void @llvm.dbg.value(metadata i8 %1, metadata !1708, metadata !DIExpression()) #27, !dbg !2901
  %5 = lshr i8 %1, 5, !dbg !2903
  %6 = zext i8 %5 to i64, !dbg !2903
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2904
  call void @llvm.dbg.value(metadata i32* %7, metadata !1709, metadata !DIExpression()) #27, !dbg !2901
  %8 = and i8 %1, 31, !dbg !2905
  %9 = zext i8 %8 to i32, !dbg !2905
  call void @llvm.dbg.value(metadata i32 %9, metadata !1711, metadata !DIExpression()) #27, !dbg !2901
  %10 = load i32, i32* %7, align 4, !dbg !2906, !tbaa !971
  %11 = lshr i32 %10, %9, !dbg !2907
  %12 = and i32 %11, 1, !dbg !2908
  call void @llvm.dbg.value(metadata i32 %12, metadata !1712, metadata !DIExpression()) #27, !dbg !2901
  %13 = xor i32 %12, 1, !dbg !2909
  %14 = shl i32 %13, %9, !dbg !2910
  %15 = xor i32 %14, %10, !dbg !2911
  store i32 %15, i32* %7, align 4, !dbg !2911, !tbaa !971
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2912
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2913
  ret i8* %16, !dbg !2914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2915 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %0, metadata !2893, metadata !DIExpression()) #27, !dbg !2919
  call void @llvm.dbg.value(metadata i8 58, metadata !2894, metadata !DIExpression()) #27, !dbg !2919
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()) #27, !dbg !2921
  call void @llvm.dbg.value(metadata i64 -1, metadata !2867, metadata !DIExpression()) #27, !dbg !2921
  call void @llvm.dbg.value(metadata i8 58, metadata !2868, metadata !DIExpression()) #27, !dbg !2921
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2923
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2923
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2869, metadata !DIExpression()) #27, !dbg !2924
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2925, !tbaa.struct !2874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1705, metadata !DIExpression()) #27, !dbg !2926
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()) #27, !dbg !2926
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()) #27, !dbg !2926
  call void @llvm.dbg.value(metadata i8 58, metadata !1708, metadata !DIExpression()) #27, !dbg !2926
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2928
  call void @llvm.dbg.value(metadata i32* %4, metadata !1709, metadata !DIExpression()) #27, !dbg !2926
  call void @llvm.dbg.value(metadata i32 26, metadata !1711, metadata !DIExpression()) #27, !dbg !2926
  %5 = load i32, i32* %4, align 4, !dbg !2929, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %5, metadata !1712, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2926
  %6 = or i32 %5, 67108864, !dbg !2930
  store i32 %6, i32* %4, align 4, !dbg !2930, !tbaa !971
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !2931
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2932
  ret i8* %7, !dbg !2933
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2934 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2936, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %1, metadata !2937, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8* %0, metadata !2866, metadata !DIExpression()) #27, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %1, metadata !2867, metadata !DIExpression()) #27, !dbg !2939
  call void @llvm.dbg.value(metadata i8 58, metadata !2868, metadata !DIExpression()) #27, !dbg !2939
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2941
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2941
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2869, metadata !DIExpression()) #27, !dbg !2942
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2943, !tbaa.struct !2874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1705, metadata !DIExpression()) #27, !dbg !2944
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()) #27, !dbg !2944
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()) #27, !dbg !2944
  call void @llvm.dbg.value(metadata i8 58, metadata !1708, metadata !DIExpression()) #27, !dbg !2944
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2946
  call void @llvm.dbg.value(metadata i32* %5, metadata !1709, metadata !DIExpression()) #27, !dbg !2944
  call void @llvm.dbg.value(metadata i32 26, metadata !1711, metadata !DIExpression()) #27, !dbg !2944
  %6 = load i32, i32* %5, align 4, !dbg !2947, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %6, metadata !1712, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2944
  %7 = or i32 %6, 67108864, !dbg !2948
  store i32 %7, i32* %5, align 4, !dbg !2948, !tbaa !971
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !2949
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2950
  ret i8* %8, !dbg !2951
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2952 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2958
  call void @llvm.dbg.value(metadata i32 %0, metadata !2954, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 %1, metadata !2955, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %2, metadata !2956, metadata !DIExpression()), !dbg !2960
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2961
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2957, metadata !DIExpression()), !dbg !2962
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2964), !dbg !2963
  call void @llvm.dbg.value(metadata i32 %1, metadata !2764, metadata !DIExpression()) #27, !dbg !2967
  call void @llvm.dbg.value(metadata i32 0, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2967
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2958, !alias.scope !2964
  %8 = icmp eq i32 %1, 10, !dbg !2968
  br i1 %8, label %9, label %10, !dbg !2969

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2970, !noalias !2964
  unreachable, !dbg !2970

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2967
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2963
  store i32 %1, i32* %11, align 8, !dbg !2963, !tbaa.struct !2874
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2963
  %13 = bitcast i32* %12 to i8*, !dbg !2963
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2963, !tbaa.struct !2971
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2963
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1705, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8 58, metadata !1708, metadata !DIExpression()), !dbg !2972
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2974
  call void @llvm.dbg.value(metadata i32* %14, metadata !1709, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i32 26, metadata !1711, metadata !DIExpression()), !dbg !2972
  %15 = load i32, i32* %14, align 4, !dbg !2975, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %15, metadata !1712, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2972
  %16 = or i32 %15, 67108864, !dbg !2976
  store i32 %16, i32* %14, align 4, !dbg !2976, !tbaa !971
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2977
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2978
  ret i8* %17, !dbg !2979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2980 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2984, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %1, metadata !2985, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %2, metadata !2986, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %3, metadata !2987, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i32 %0, metadata !2989, metadata !DIExpression()) #27, !dbg !2999
  call void @llvm.dbg.value(metadata i8* %1, metadata !2994, metadata !DIExpression()) #27, !dbg !2999
  call void @llvm.dbg.value(metadata i8* %2, metadata !2995, metadata !DIExpression()) #27, !dbg !2999
  call void @llvm.dbg.value(metadata i8* %3, metadata !2996, metadata !DIExpression()) #27, !dbg !2999
  call void @llvm.dbg.value(metadata i64 -1, metadata !2997, metadata !DIExpression()) #27, !dbg !2999
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3001
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3001
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2998, metadata !DIExpression()) #27, !dbg !3002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3003, !tbaa.struct !2874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()) #27, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %1, metadata !1746, metadata !DIExpression()) #27, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %2, metadata !1747, metadata !DIExpression()) #27, !dbg !3004
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()) #27, !dbg !3004
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3006
  store i32 10, i32* %7, align 8, !dbg !3007, !tbaa !1687
  %8 = icmp ne i8* %1, null, !dbg !3008
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3009
  br i1 %10, label %12, label %11, !dbg !3009

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3010
  unreachable, !dbg !3010

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3011
  store i8* %1, i8** %13, align 8, !dbg !3012, !tbaa !1760
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3013
  store i8* %2, i8** %14, align 8, !dbg !3014, !tbaa !1763
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !3015
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3016
  ret i8* %15, !dbg !3017
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2990 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2989, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8* %1, metadata !2994, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8* %2, metadata !2995, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8* %3, metadata !2996, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 %4, metadata !2997, metadata !DIExpression()), !dbg !3018
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3019
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3019
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2998, metadata !DIExpression()), !dbg !3020
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3021, !tbaa.struct !2874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1745, metadata !DIExpression()) #27, !dbg !3022
  call void @llvm.dbg.value(metadata i8* %1, metadata !1746, metadata !DIExpression()) #27, !dbg !3022
  call void @llvm.dbg.value(metadata i8* %2, metadata !1747, metadata !DIExpression()) #27, !dbg !3022
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1745, metadata !DIExpression()) #27, !dbg !3022
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3024
  store i32 10, i32* %8, align 8, !dbg !3025, !tbaa !1687
  %9 = icmp ne i8* %1, null, !dbg !3026
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3027
  br i1 %11, label %13, label %12, !dbg !3027

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !3028
  unreachable, !dbg !3028

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3029
  store i8* %1, i8** %14, align 8, !dbg !3030, !tbaa !1760
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3031
  store i8* %2, i8** %15, align 8, !dbg !3032, !tbaa !1763
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3033
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3034
  ret i8* %16, !dbg !3035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3036 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %1, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %2, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 0, metadata !2984, metadata !DIExpression()) #27, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %0, metadata !2985, metadata !DIExpression()) #27, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %1, metadata !2986, metadata !DIExpression()) #27, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %2, metadata !2987, metadata !DIExpression()) #27, !dbg !3044
  call void @llvm.dbg.value(metadata i32 0, metadata !2989, metadata !DIExpression()) #27, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()) #27, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %1, metadata !2995, metadata !DIExpression()) #27, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %2, metadata !2996, metadata !DIExpression()) #27, !dbg !3046
  call void @llvm.dbg.value(metadata i64 -1, metadata !2997, metadata !DIExpression()) #27, !dbg !3046
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3048
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3048
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2998, metadata !DIExpression()) #27, !dbg !3049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3050, !tbaa.struct !2874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1745, metadata !DIExpression()) #27, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %0, metadata !1746, metadata !DIExpression()) #27, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %1, metadata !1747, metadata !DIExpression()) #27, !dbg !3051
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1745, metadata !DIExpression()) #27, !dbg !3051
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3053
  store i32 10, i32* %6, align 8, !dbg !3054, !tbaa !1687
  %7 = icmp ne i8* %0, null, !dbg !3055
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3056
  br i1 %9, label %11, label %10, !dbg !3056

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !3057
  unreachable, !dbg !3057

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3058
  store i8* %0, i8** %12, align 8, !dbg !3059, !tbaa !1760
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3060
  store i8* %1, i8** %13, align 8, !dbg !3061, !tbaa !1763
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !3062
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3063
  ret i8* %14, !dbg !3064
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3065 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3069, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8* %1, metadata !3070, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8* %2, metadata !3071, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %3, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i32 0, metadata !2989, metadata !DIExpression()) #27, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()) #27, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %1, metadata !2995, metadata !DIExpression()) #27, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %2, metadata !2996, metadata !DIExpression()) #27, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %3, metadata !2997, metadata !DIExpression()) #27, !dbg !3074
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3076
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3076
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2998, metadata !DIExpression()) #27, !dbg !3077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3078, !tbaa.struct !2874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()) #27, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %0, metadata !1746, metadata !DIExpression()) #27, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %1, metadata !1747, metadata !DIExpression()) #27, !dbg !3079
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()) #27, !dbg !3079
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3081
  store i32 10, i32* %7, align 8, !dbg !3082, !tbaa !1687
  %8 = icmp ne i8* %0, null, !dbg !3083
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3084
  br i1 %10, label %12, label %11, !dbg !3084

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3085
  unreachable, !dbg !3085

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3086
  store i8* %0, i8** %13, align 8, !dbg !3087, !tbaa !1760
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3088
  store i8* %1, i8** %14, align 8, !dbg !3089, !tbaa !1763
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !3090
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3091
  ret i8* %15, !dbg !3092
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3093 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3097, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* %1, metadata !3098, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %2, metadata !3099, metadata !DIExpression()), !dbg !3100
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3101
  ret i8* %4, !dbg !3102
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 0, metadata !3097, metadata !DIExpression()) #27, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %0, metadata !3098, metadata !DIExpression()) #27, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %1, metadata !3099, metadata !DIExpression()) #27, !dbg !3110
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3112
  ret i8* %3, !dbg !3113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i8* %1, metadata !3119, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %0, metadata !3097, metadata !DIExpression()) #27, !dbg !3121
  call void @llvm.dbg.value(metadata i8* %1, metadata !3098, metadata !DIExpression()) #27, !dbg !3121
  call void @llvm.dbg.value(metadata i64 -1, metadata !3099, metadata !DIExpression()) #27, !dbg !3121
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3123
  ret i8* %3, !dbg !3124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3125 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()) #27, !dbg !3131
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #27, !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !3097, metadata !DIExpression()) #27, !dbg !3133
  call void @llvm.dbg.value(metadata i8* %0, metadata !3098, metadata !DIExpression()) #27, !dbg !3133
  call void @llvm.dbg.value(metadata i64 -1, metadata !3099, metadata !DIExpression()) #27, !dbg !3133
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3135
  ret i8* %2, !dbg !3136
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @parse_user_spec(i8* %0, i32* nocapture %1, i32* %2, i8** %3, i8** %4) local_unnamed_addr #8 !dbg !3137 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3141, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32* %1, metadata !3142, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32* %2, metadata !3143, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8** %3, metadata !3144, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8** %4, metadata !3145, metadata !DIExpression()), !dbg !3151
  %6 = icmp eq i32* %2, null, !dbg !3152
  br i1 %6, label %9, label %7, !dbg !3152

7:                                                ; preds = %5
  %8 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 58) #28, !dbg !3153
  br label %9, !dbg !3152

9:                                                ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !3152
  call void @llvm.dbg.value(metadata i8* %10, metadata !3146, metadata !DIExpression()), !dbg !3151
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !3154
  call void @llvm.dbg.value(metadata i8* %11, metadata !3147, metadata !DIExpression()), !dbg !3151
  %12 = icmp ne i32* %2, null, !dbg !3155
  %13 = icmp eq i8* %10, null
  %14 = and i1 %12, %13, !dbg !3156
  %15 = icmp ne i8* %11, null
  %16 = and i1 %14, %15, !dbg !3156
  br i1 %16, label %17, label %24, !dbg !3156

17:                                               ; preds = %9
  %18 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 46) #28, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %18, metadata !3148, metadata !DIExpression()), !dbg !3158
  %19 = icmp eq i8* %18, null, !dbg !3159
  br i1 %19, label %24, label %20, !dbg !3161

20:                                               ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !3162
  %22 = icmp eq i8* %21, null, !dbg !3162
  %23 = select i1 %22, i8* null, i8* %11, !dbg !3163
  ret i8* %23, !dbg !3163

24:                                               ; preds = %17, %9
  call void @llvm.dbg.value(metadata i8* %11, metadata !3147, metadata !DIExpression()), !dbg !3151
  ret i8* %11, !dbg !3164
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8* %0, i8* %1, i32* nocapture %2, i32* %3, i8** %4, i8** %5) unnamed_addr #8 !dbg !234 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !241, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %1, metadata !242, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32* %2, metadata !243, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32* %3, metadata !244, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8** %4, metadata !245, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8** %5, metadata !246, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* null, metadata !271, metadata !DIExpression()), !dbg !3165
  %10 = load i32, i32* %2, align 4, !dbg !3166, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %10, metadata !272, metadata !DIExpression()), !dbg !3165
  %11 = icmp eq i32* %3, null, !dbg !3167
  br i1 %11, label %14, label %12, !dbg !3167

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3168, !tbaa !971
  br label %14, !dbg !3167

14:                                               ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3167
  call void @llvm.dbg.value(metadata i32 %15, metadata !273, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* null, metadata !247, metadata !DIExpression()), !dbg !3165
  %16 = icmp eq i8** %4, null, !dbg !3169
  br i1 %16, label %18, label %17, !dbg !3171

17:                                               ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3172, !tbaa !787
  br label %18, !dbg !3173

18:                                               ; preds = %17, %14
  %19 = icmp eq i8** %5, null, !dbg !3174
  br i1 %19, label %21, label %20, !dbg !3176

20:                                               ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3177, !tbaa !787
  br label %21, !dbg !3178

21:                                               ; preds = %20, %18
  call void @llvm.dbg.value(metadata i8* null, metadata !269, metadata !DIExpression()), !dbg !3165
  %22 = icmp eq i8* %1, null, !dbg !3179
  br i1 %22, label %23, label %28, !dbg !3180

23:                                               ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3181, !tbaa !1013
  %25 = icmp eq i8 %24, 0, !dbg !3181
  br i1 %25, label %133, label %26, !dbg !3184

26:                                               ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #27, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %27, metadata !269, metadata !DIExpression()), !dbg !3165
  br label %43, !dbg !3186

28:                                               ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3187
  %30 = ptrtoint i8* %0 to i64, !dbg !3187
  %31 = sub i64 %29, %30, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %31, metadata !274, metadata !DIExpression()), !dbg !3188
  %32 = icmp eq i64 %31, 0, !dbg !3189
  br i1 %32, label %37, label %33, !dbg !3191

33:                                               ; preds = %28
  %34 = add i64 %31, 1, !dbg !3192
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #27, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %35, metadata !269, metadata !DIExpression()), !dbg !3165
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3195
  store i8 0, i8* %36, align 1, !dbg !3196, !tbaa !1013
  br label %37, !dbg !3197

37:                                               ; preds = %33, %28
  %38 = phi i8* [ %35, %33 ], [ null, %28 ], !dbg !3165
  call void @llvm.dbg.value(metadata i8* %38, metadata !269, metadata !DIExpression()), !dbg !3165
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3198
  %40 = load i8, i8* %39, align 1, !dbg !3199, !tbaa !1013
  %41 = icmp eq i8 %40, 0, !dbg !3200
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3201
  br label %43, !dbg !3201

43:                                               ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3201
  call void @llvm.dbg.value(metadata i8* %45, metadata !270, metadata !DIExpression()), !dbg !3165
  %46 = icmp eq i8* %44, null, !dbg !3202
  br i1 %46, label %95, label %47, !dbg !3203

47:                                               ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3204, !tbaa !1013
  %49 = icmp eq i8 %48, 43, !dbg !3205
  br i1 %49, label %53, label %50, !dbg !3204

50:                                               ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3206
  call void @llvm.dbg.value(metadata %struct.passwd* %51, metadata !248, metadata !DIExpression()), !dbg !3165
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3207
  br i1 %52, label %53, label %69, !dbg !3208

53:                                               ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3209
  %55 = icmp eq i8* %45, null, !dbg !3210
  %56 = and i1 %54, %55, !dbg !3210
  call void @llvm.dbg.value(metadata i1 %56, metadata !277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3211
  br i1 %56, label %90, label %57, !dbg !3212

57:                                               ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3213
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #27, !dbg !3213
  call void @llvm.dbg.value(metadata i64* %7, metadata !282, metadata !DIExpression(DW_OP_deref)), !dbg !3214
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.100, i64 0, i64 0)) #27, !dbg !3215
  %60 = icmp ne i32 %59, 0, !dbg !3217
  %61 = load i64, i64* %7, align 8
  call void @llvm.dbg.value(metadata i64 %61, metadata !282, metadata !DIExpression()), !dbg !3214
  %62 = icmp ugt i64 %61, 4294967295
  %63 = or i1 %60, %62, !dbg !3218
  %64 = trunc i64 %61 to i32
  %65 = icmp eq i32 %64, -1
  %66 = or i1 %63, %65, !dbg !3218
  %67 = select i1 %66, i32 %10, i32 %64, !dbg !3218
  %68 = select i1 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i64 0, i64 0), i8* null, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %68, metadata !247, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %67, metadata !272, metadata !DIExpression()), !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #27, !dbg !3219
  br label %90

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3220
  %71 = load i32, i32* %70, align 8, !dbg !3220, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %71, metadata !272, metadata !DIExpression()), !dbg !3165
  %72 = icmp eq i8* %45, null, !dbg !3221
  %73 = icmp ne i8* %1, null
  %74 = and i1 %73, %72, !dbg !3222
  br i1 %74, label %75, label %90, !dbg !3222

75:                                               ; preds = %69
  %76 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %76) #27, !dbg !3223
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !285, metadata !DIExpression()), !dbg !3224
  %77 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3225
  %78 = load i32, i32* %77, align 4, !dbg !3225, !tbaa !1044
  call void @llvm.dbg.value(metadata i32 %78, metadata !273, metadata !DIExpression()), !dbg !3165
  %79 = tail call %struct.group* @getgrgid(i32 %78) #27, !dbg !3226
  call void @llvm.dbg.value(metadata %struct.group* %79, metadata !260, metadata !DIExpression()), !dbg !3165
  %80 = icmp eq %struct.group* %79, null, !dbg !3227
  br i1 %80, label %84, label %81, !dbg !3227

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.group, %struct.group* %79, i64 0, i32 0, !dbg !3228
  %83 = load i8*, i8** %82, align 8, !dbg !3228, !tbaa !1246
  br label %87, !dbg !3227

84:                                               ; preds = %75
  %85 = zext i32 %78 to i64, !dbg !3229
  %86 = call i8* @umaxtostr(i64 %85, i8* nonnull %76) #27, !dbg !3230
  br label %87, !dbg !3227

87:                                               ; preds = %84, %81
  %88 = phi i8* [ %83, %81 ], [ %86, %84 ], !dbg !3227
  %89 = call noalias i8* @xstrdup(i8* %88) #27, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %89, metadata !271, metadata !DIExpression()), !dbg !3165
  call void @endgrent() #27, !dbg !3232
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %76) #27, !dbg !3233
  br label %90, !dbg !3234

90:                                               ; preds = %57, %53, %69, %87
  %91 = phi i8* [ %89, %87 ], [ null, %69 ], [ null, %53 ], [ null, %57 ], !dbg !3165
  %92 = phi i32 [ %71, %87 ], [ %71, %69 ], [ %10, %53 ], [ %67, %57 ], !dbg !3165
  %93 = phi i32 [ %78, %87 ], [ %15, %69 ], [ %15, %53 ], [ %15, %57 ], !dbg !3165
  %94 = phi i8* [ null, %87 ], [ null, %69 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.102, i64 0, i64 0), %53 ], [ %68, %57 ], !dbg !3165
  call void @llvm.dbg.value(metadata i8* %94, metadata !247, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %93, metadata !273, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %92, metadata !272, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %91, metadata !271, metadata !DIExpression()), !dbg !3165
  call void @endpwent() #27, !dbg !3235
  br label %95, !dbg !3236

95:                                               ; preds = %90, %43
  %96 = phi i8* [ %91, %90 ], [ null, %43 ], !dbg !3237
  %97 = phi i32 [ %92, %90 ], [ %10, %43 ], !dbg !3238
  %98 = phi i32 [ %93, %90 ], [ %15, %43 ], !dbg !3239
  %99 = phi i8* [ %94, %90 ], [ null, %43 ], !dbg !3165
  call void @llvm.dbg.value(metadata i8* %99, metadata !247, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %98, metadata !273, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %97, metadata !272, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %96, metadata !271, metadata !DIExpression()), !dbg !3165
  %100 = icmp ne i8* %45, null, !dbg !3240
  %101 = icmp eq i8* %99, null
  %102 = and i1 %100, %101, !dbg !3241
  br i1 %102, label %103, label %128, !dbg !3241

103:                                              ; preds = %95
  %104 = load i8, i8* %45, align 1, !dbg !3242, !tbaa !1013
  %105 = icmp eq i8 %104, 43, !dbg !3243
  br i1 %105, label %109, label %106, !dbg !3242

106:                                              ; preds = %103
  %107 = call %struct.group* @getgrnam(i8* nonnull %45) #27, !dbg !3244
  call void @llvm.dbg.value(metadata %struct.group* %107, metadata !260, metadata !DIExpression()), !dbg !3165
  %108 = icmp eq %struct.group* %107, null, !dbg !3245
  br i1 %108, label %109, label %121, !dbg !3246

109:                                              ; preds = %103, %106
  %110 = bitcast i64* %9 to i8*, !dbg !3247
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %110) #27, !dbg !3247
  call void @llvm.dbg.value(metadata i64* %9, metadata !289, metadata !DIExpression(DW_OP_deref)), !dbg !3248
  %111 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.100, i64 0, i64 0)) #27, !dbg !3249
  %112 = icmp ne i32 %111, 0, !dbg !3251
  %113 = load i64, i64* %9, align 8
  call void @llvm.dbg.value(metadata i64 %113, metadata !289, metadata !DIExpression()), !dbg !3248
  %114 = icmp ugt i64 %113, 4294967295
  %115 = or i1 %112, %114, !dbg !3252
  %116 = trunc i64 %113 to i32
  %117 = icmp eq i32 %116, -1
  %118 = or i1 %115, %117, !dbg !3252
  %119 = select i1 %118, i32 %98, i32 %116, !dbg !3252
  %120 = select i1 %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.103, i64 0, i64 0), i8* null, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %120, metadata !247, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %119, metadata !273, metadata !DIExpression()), !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %110) #27, !dbg !3253
  br label %124, !dbg !3254

121:                                              ; preds = %106
  %122 = getelementptr inbounds %struct.group, %struct.group* %107, i64 0, i32 2, !dbg !3255
  %123 = load i32, i32* %122, align 8, !dbg !3255, !tbaa !3256
  call void @llvm.dbg.value(metadata i32 %123, metadata !273, metadata !DIExpression()), !dbg !3165
  br label %124

124:                                              ; preds = %121, %109
  %125 = phi i32 [ %119, %109 ], [ %123, %121 ], !dbg !3257
  %126 = phi i8* [ %120, %109 ], [ null, %121 ], !dbg !3258
  call void @llvm.dbg.value(metadata i8* %126, metadata !247, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %125, metadata !273, metadata !DIExpression()), !dbg !3165
  call void @endgrent() #27, !dbg !3260
  %127 = call noalias i8* @xstrdup(i8* nonnull %45) #27, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %127, metadata !271, metadata !DIExpression()), !dbg !3165
  br label %128, !dbg !3262

128:                                              ; preds = %124, %95
  %129 = phi i8* [ %127, %124 ], [ %96, %95 ], !dbg !3165
  %130 = phi i32 [ %125, %124 ], [ %98, %95 ], !dbg !3165
  %131 = phi i8* [ %126, %124 ], [ %99, %95 ], !dbg !3258
  call void @llvm.dbg.value(metadata i8* %131, metadata !247, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 %130, metadata !273, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %129, metadata !271, metadata !DIExpression()), !dbg !3165
  %132 = icmp eq i8* %131, null, !dbg !3263
  br i1 %132, label %133, label %144, !dbg !3265

133:                                              ; preds = %23, %128
  %134 = phi i32 [ %130, %128 ], [ %15, %23 ]
  %135 = phi i8* [ %129, %128 ], [ null, %23 ]
  %136 = phi i8* [ %44, %128 ], [ null, %23 ]
  %137 = phi i32 [ %97, %128 ], [ %10, %23 ]
  store i32 %137, i32* %2, align 4, !dbg !3266, !tbaa !971
  br i1 %11, label %139, label %138, !dbg !3268

138:                                              ; preds = %133
  store i32 %134, i32* %3, align 4, !dbg !3269, !tbaa !971
  br label %139, !dbg !3271

139:                                              ; preds = %138, %133
  br i1 %16, label %141, label %140, !dbg !3272

140:                                              ; preds = %139
  store i8* %136, i8** %4, align 8, !dbg !3273, !tbaa !787
  call void @llvm.dbg.value(metadata i8* null, metadata !269, metadata !DIExpression()), !dbg !3165
  br label %141, !dbg !3276

141:                                              ; preds = %140, %139
  %142 = phi i8* [ null, %140 ], [ %136, %139 ], !dbg !3165
  call void @llvm.dbg.value(metadata i8* %142, metadata !269, metadata !DIExpression()), !dbg !3165
  br i1 %19, label %144, label %143, !dbg !3277

143:                                              ; preds = %141
  store i8* %135, i8** %5, align 8, !dbg !3278, !tbaa !787
  call void @llvm.dbg.value(metadata i8* null, metadata !271, metadata !DIExpression()), !dbg !3165
  br label %144, !dbg !3281

144:                                              ; preds = %141, %143, %128
  %145 = phi i1 [ true, %143 ], [ true, %141 ], [ false, %128 ]
  %146 = phi i8* [ null, %143 ], [ null, %141 ], [ %131, %128 ]
  %147 = phi i8* [ %142, %143 ], [ %142, %141 ], [ %44, %128 ], !dbg !3165
  %148 = phi i8* [ null, %143 ], [ %135, %141 ], [ %129, %128 ], !dbg !3165
  call void @llvm.dbg.value(metadata i8* %148, metadata !271, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %147, metadata !269, metadata !DIExpression()), !dbg !3165
  call void @free(i8* %147) #27, !dbg !3282
  call void @free(i8* %148) #27, !dbg !3283
  br i1 %145, label %151, label %149, !dbg !3284

149:                                              ; preds = %144
  %150 = call i8* @dcgettext(i8* null, i8* nonnull %146, i32 5) #27, !dbg !3285
  br label %151, !dbg !3284

151:                                              ; preds = %144, %149
  %152 = phi i8* [ %150, %149 ], [ null, %144 ], !dbg !3284
  ret i8* %152, !dbg !3286
}

; Function Attrs: nofree nounwind
declare !dbg !3287 noundef %struct.passwd* @getpwnam(i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !3290 void @endgrent() local_unnamed_addr #3

declare !dbg !3291 void @endpwent() local_unnamed_addr #3

declare !dbg !3292 %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3295 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3335, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* %1, metadata !3336, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* %2, metadata !3337, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* %3, metadata !3338, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8** %4, metadata !3339, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %5, metadata !3340, metadata !DIExpression()), !dbg !3341
  %7 = icmp eq i8* %1, null, !dbg !3342
  br i1 %7, label %10, label %8, !dbg !3344

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !3345
  br label %12, !dbg !3345

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.105, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !3346
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.106, i64 0, i64 0), i32 5) #27, !dbg !3347
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !3347
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3348
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.108, i64 0, i64 0), i32 5) #27, !dbg !3349
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.109, i64 0, i64 0)) #27, !dbg !3349
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3350
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
  ], !dbg !3351

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.110, i64 0, i64 0), i32 5) #27, !dbg !3352
  %21 = load i8*, i8** %4, align 8, !dbg !3352, !tbaa !787
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !3352
  br label %147, !dbg !3354

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.111, i64 0, i64 0), i32 5) #27, !dbg !3355
  %25 = load i8*, i8** %4, align 8, !dbg !3355, !tbaa !787
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3355
  %27 = load i8*, i8** %26, align 8, !dbg !3355, !tbaa !787
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !3355
  br label %147, !dbg !3356

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.112, i64 0, i64 0), i32 5) #27, !dbg !3357
  %31 = load i8*, i8** %4, align 8, !dbg !3357, !tbaa !787
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3357
  %33 = load i8*, i8** %32, align 8, !dbg !3357, !tbaa !787
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3357
  %35 = load i8*, i8** %34, align 8, !dbg !3357, !tbaa !787
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !3357
  br label %147, !dbg !3358

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.113, i64 0, i64 0), i32 5) #27, !dbg !3359
  %39 = load i8*, i8** %4, align 8, !dbg !3359, !tbaa !787
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3359
  %41 = load i8*, i8** %40, align 8, !dbg !3359, !tbaa !787
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3359
  %43 = load i8*, i8** %42, align 8, !dbg !3359, !tbaa !787
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3359
  %45 = load i8*, i8** %44, align 8, !dbg !3359, !tbaa !787
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !3359
  br label %147, !dbg !3360

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.114, i64 0, i64 0), i32 5) #27, !dbg !3361
  %49 = load i8*, i8** %4, align 8, !dbg !3361, !tbaa !787
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3361
  %51 = load i8*, i8** %50, align 8, !dbg !3361, !tbaa !787
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3361
  %53 = load i8*, i8** %52, align 8, !dbg !3361, !tbaa !787
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3361
  %55 = load i8*, i8** %54, align 8, !dbg !3361, !tbaa !787
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3361
  %57 = load i8*, i8** %56, align 8, !dbg !3361, !tbaa !787
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !3361
  br label %147, !dbg !3362

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.115, i64 0, i64 0), i32 5) #27, !dbg !3363
  %61 = load i8*, i8** %4, align 8, !dbg !3363, !tbaa !787
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3363
  %63 = load i8*, i8** %62, align 8, !dbg !3363, !tbaa !787
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3363
  %65 = load i8*, i8** %64, align 8, !dbg !3363, !tbaa !787
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3363
  %67 = load i8*, i8** %66, align 8, !dbg !3363, !tbaa !787
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3363
  %69 = load i8*, i8** %68, align 8, !dbg !3363, !tbaa !787
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3363
  %71 = load i8*, i8** %70, align 8, !dbg !3363, !tbaa !787
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !3363
  br label %147, !dbg !3364

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.116, i64 0, i64 0), i32 5) #27, !dbg !3365
  %75 = load i8*, i8** %4, align 8, !dbg !3365, !tbaa !787
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3365
  %77 = load i8*, i8** %76, align 8, !dbg !3365, !tbaa !787
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3365
  %79 = load i8*, i8** %78, align 8, !dbg !3365, !tbaa !787
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3365
  %81 = load i8*, i8** %80, align 8, !dbg !3365, !tbaa !787
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3365
  %83 = load i8*, i8** %82, align 8, !dbg !3365, !tbaa !787
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3365
  %85 = load i8*, i8** %84, align 8, !dbg !3365, !tbaa !787
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3365
  %87 = load i8*, i8** %86, align 8, !dbg !3365, !tbaa !787
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !3365
  br label %147, !dbg !3366

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.117, i64 0, i64 0), i32 5) #27, !dbg !3367
  %91 = load i8*, i8** %4, align 8, !dbg !3367, !tbaa !787
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3367
  %93 = load i8*, i8** %92, align 8, !dbg !3367, !tbaa !787
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3367
  %95 = load i8*, i8** %94, align 8, !dbg !3367, !tbaa !787
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3367
  %97 = load i8*, i8** %96, align 8, !dbg !3367, !tbaa !787
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3367
  %99 = load i8*, i8** %98, align 8, !dbg !3367, !tbaa !787
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3367
  %101 = load i8*, i8** %100, align 8, !dbg !3367, !tbaa !787
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3367
  %103 = load i8*, i8** %102, align 8, !dbg !3367, !tbaa !787
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3367
  %105 = load i8*, i8** %104, align 8, !dbg !3367, !tbaa !787
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !3367
  br label %147, !dbg !3368

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.118, i64 0, i64 0), i32 5) #27, !dbg !3369
  %109 = load i8*, i8** %4, align 8, !dbg !3369, !tbaa !787
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3369
  %111 = load i8*, i8** %110, align 8, !dbg !3369, !tbaa !787
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3369
  %113 = load i8*, i8** %112, align 8, !dbg !3369, !tbaa !787
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3369
  %115 = load i8*, i8** %114, align 8, !dbg !3369, !tbaa !787
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3369
  %117 = load i8*, i8** %116, align 8, !dbg !3369, !tbaa !787
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3369
  %119 = load i8*, i8** %118, align 8, !dbg !3369, !tbaa !787
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3369
  %121 = load i8*, i8** %120, align 8, !dbg !3369, !tbaa !787
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3369
  %123 = load i8*, i8** %122, align 8, !dbg !3369, !tbaa !787
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3369
  %125 = load i8*, i8** %124, align 8, !dbg !3369, !tbaa !787
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !3369
  br label %147, !dbg !3370

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.119, i64 0, i64 0), i32 5) #27, !dbg !3371
  %129 = load i8*, i8** %4, align 8, !dbg !3371, !tbaa !787
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3371
  %131 = load i8*, i8** %130, align 8, !dbg !3371, !tbaa !787
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3371
  %133 = load i8*, i8** %132, align 8, !dbg !3371, !tbaa !787
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3371
  %135 = load i8*, i8** %134, align 8, !dbg !3371, !tbaa !787
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3371
  %137 = load i8*, i8** %136, align 8, !dbg !3371, !tbaa !787
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3371
  %139 = load i8*, i8** %138, align 8, !dbg !3371, !tbaa !787
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3371
  %141 = load i8*, i8** %140, align 8, !dbg !3371, !tbaa !787
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3371
  %143 = load i8*, i8** %142, align 8, !dbg !3371, !tbaa !787
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3371
  %145 = load i8*, i8** %144, align 8, !dbg !3371, !tbaa !787
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !3371
  br label %147, !dbg !3372

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3374 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3378, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %1, metadata !3379, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %2, metadata !3380, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %3, metadata !3381, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8** %4, metadata !3382, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 0, metadata !3383, metadata !DIExpression()), !dbg !3384
  br label %6, !dbg !3385

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3387
  call void @llvm.dbg.value(metadata i64 %7, metadata !3383, metadata !DIExpression()), !dbg !3384
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3388
  %9 = load i8*, i8** %8, align 8, !dbg !3388, !tbaa !787
  %10 = icmp eq i8* %9, null, !dbg !3390
  %11 = add i64 %7, 1, !dbg !3391
  call void @llvm.dbg.value(metadata i64 %11, metadata !3383, metadata !DIExpression()), !dbg !3384
  br i1 %10, label %12, label %6, !dbg !3390, !llvm.loop !3392

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3394
  ret void, !dbg !3395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3396 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3407, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i8* %1, metadata !3408, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i8* %2, metadata !3409, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i8* %3, metadata !3410, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3411, metadata !DIExpression()), !dbg !3415
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3416
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3416
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3413, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 0, metadata !3412, metadata !DIExpression()), !dbg !3415
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3412, metadata !DIExpression()), !dbg !3415
  %11 = load i32, i32* %8, align 8, !dbg !3418
  %12 = icmp ult i32 %11, 41, !dbg !3418
  br i1 %12, label %13, label %18, !dbg !3418

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3418
  %15 = zext i32 %11 to i64, !dbg !3418
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3418
  %17 = add nuw nsw i32 %11, 8, !dbg !3418
  store i32 %17, i32* %8, align 8, !dbg !3418
  br label %21, !dbg !3418

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3418
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3418
  store i8* %20, i8** %9, align 8, !dbg !3418
  br label %21, !dbg !3418

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3418
  %25 = load i8*, i8** %24, align 8, !dbg !3418
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3421
  store i8* %25, i8** %26, align 16, !dbg !3422, !tbaa !787
  %27 = icmp eq i8* %25, null, !dbg !3423
  br i1 %27, label %30, label %28, !dbg !3424

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3412, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 1, metadata !3412, metadata !DIExpression()), !dbg !3415
  %29 = icmp ult i32 %22, 41, !dbg !3418
  br i1 %29, label %35, label %32, !dbg !3418

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3425
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3426
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3427
  ret void, !dbg !3427

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3418
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3418
  store i8* %34, i8** %9, align 8, !dbg !3418
  br label %40, !dbg !3418

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3418
  %37 = zext i32 %22 to i64, !dbg !3418
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3418
  %39 = add nuw nsw i32 %22, 8, !dbg !3418
  store i32 %39, i32* %8, align 8, !dbg !3418
  br label %40, !dbg !3418

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3418
  %44 = load i8*, i8** %43, align 8, !dbg !3418
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3421
  store i8* %44, i8** %45, align 8, !dbg !3422, !tbaa !787
  %46 = icmp eq i8* %44, null, !dbg !3423
  br i1 %46, label %30, label %47, !dbg !3424

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3412, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 2, metadata !3412, metadata !DIExpression()), !dbg !3415
  %48 = icmp ult i32 %41, 41, !dbg !3418
  br i1 %48, label %52, label %49, !dbg !3418

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3418
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3418
  store i8* %51, i8** %9, align 8, !dbg !3418
  br label %57, !dbg !3418

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3418
  %54 = zext i32 %41 to i64, !dbg !3418
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3418
  %56 = add nuw nsw i32 %41, 8, !dbg !3418
  store i32 %56, i32* %8, align 8, !dbg !3418
  br label %57, !dbg !3418

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3418
  %61 = load i8*, i8** %60, align 8, !dbg !3418
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3421
  store i8* %61, i8** %62, align 16, !dbg !3422, !tbaa !787
  %63 = icmp eq i8* %61, null, !dbg !3423
  br i1 %63, label %30, label %64, !dbg !3424

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3412, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 3, metadata !3412, metadata !DIExpression()), !dbg !3415
  %65 = icmp ult i32 %58, 41, !dbg !3418
  br i1 %65, label %69, label %66, !dbg !3418

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3418
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3418
  store i8* %68, i8** %9, align 8, !dbg !3418
  br label %74, !dbg !3418

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3418
  %71 = zext i32 %58 to i64, !dbg !3418
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3418
  %73 = add nuw nsw i32 %58, 8, !dbg !3418
  store i32 %73, i32* %8, align 8, !dbg !3418
  br label %74, !dbg !3418

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3418
  %78 = load i8*, i8** %77, align 8, !dbg !3418
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3421
  store i8* %78, i8** %79, align 8, !dbg !3422, !tbaa !787
  %80 = icmp eq i8* %78, null, !dbg !3423
  br i1 %80, label %30, label %81, !dbg !3424

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3412, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 4, metadata !3412, metadata !DIExpression()), !dbg !3415
  %82 = icmp ult i32 %75, 41, !dbg !3418
  br i1 %82, label %86, label %83, !dbg !3418

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3418
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3418
  store i8* %85, i8** %9, align 8, !dbg !3418
  br label %91, !dbg !3418

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3418
  %88 = zext i32 %75 to i64, !dbg !3418
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3418
  %90 = add nuw nsw i32 %75, 8, !dbg !3418
  store i32 %90, i32* %8, align 8, !dbg !3418
  br label %91, !dbg !3418

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3418
  %95 = load i8*, i8** %94, align 8, !dbg !3418
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3421
  store i8* %95, i8** %96, align 16, !dbg !3422, !tbaa !787
  %97 = icmp eq i8* %95, null, !dbg !3423
  br i1 %97, label %30, label %98, !dbg !3424

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3412, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 5, metadata !3412, metadata !DIExpression()), !dbg !3415
  %99 = icmp ult i32 %92, 41, !dbg !3418
  br i1 %99, label %103, label %100, !dbg !3418

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3418
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3418
  store i8* %102, i8** %9, align 8, !dbg !3418
  br label %108, !dbg !3418

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3418
  %105 = zext i32 %92 to i64, !dbg !3418
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3418
  %107 = add nuw nsw i32 %92, 8, !dbg !3418
  store i32 %107, i32* %8, align 8, !dbg !3418
  br label %108, !dbg !3418

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3418
  %111 = load i8*, i8** %110, align 8, !dbg !3418
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3421
  store i8* %111, i8** %112, align 8, !dbg !3422, !tbaa !787
  %113 = icmp eq i8* %111, null, !dbg !3423
  br i1 %113, label %30, label %114, !dbg !3424

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3412, metadata !DIExpression()), !dbg !3415
  %115 = load i8*, i8** %9, align 8, !dbg !3418
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3418
  store i8* %116, i8** %9, align 8, !dbg !3418
  %117 = bitcast i8* %115 to i8**, !dbg !3418
  %118 = load i8*, i8** %117, align 8, !dbg !3418
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3421
  store i8* %118, i8** %119, align 16, !dbg !3422, !tbaa !787
  %120 = icmp eq i8* %118, null, !dbg !3423
  br i1 %120, label %30, label %121, !dbg !3424

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3412, metadata !DIExpression()), !dbg !3415
  %122 = load i8*, i8** %9, align 8, !dbg !3418
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3418
  store i8* %123, i8** %9, align 8, !dbg !3418
  %124 = bitcast i8* %122 to i8**, !dbg !3418
  %125 = load i8*, i8** %124, align 8, !dbg !3418
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3421
  store i8* %125, i8** %126, align 8, !dbg !3422, !tbaa !787
  %127 = icmp eq i8* %125, null, !dbg !3423
  br i1 %127, label %30, label %128, !dbg !3424

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3412, metadata !DIExpression()), !dbg !3415
  %129 = load i8*, i8** %9, align 8, !dbg !3418
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3418
  store i8* %130, i8** %9, align 8, !dbg !3418
  %131 = bitcast i8* %129 to i8**, !dbg !3418
  %132 = load i8*, i8** %131, align 8, !dbg !3418
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3421
  store i8* %132, i8** %133, align 16, !dbg !3422, !tbaa !787
  %134 = icmp eq i8* %132, null, !dbg !3423
  br i1 %134, label %30, label %135, !dbg !3424

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3412, metadata !DIExpression()), !dbg !3415
  %136 = load i8*, i8** %9, align 8, !dbg !3418
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3418
  store i8* %137, i8** %9, align 8, !dbg !3418
  %138 = bitcast i8* %136 to i8**, !dbg !3418
  %139 = load i8*, i8** %138, align 8, !dbg !3418
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3421
  store i8* %139, i8** %140, align 8, !dbg !3422, !tbaa !787
  %141 = icmp eq i8* %139, null, !dbg !3423
  %142 = select i1 %141, i64 9, i64 10, !dbg !3424
  br label %30, !dbg !3424
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3428 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3432, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %1, metadata !3433, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %2, metadata !3434, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %3, metadata !3435, metadata !DIExpression()), !dbg !3442
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3443
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3443
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3436, metadata !DIExpression()), !dbg !3444
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3445
  call void @llvm.va_start(i8* nonnull %6), !dbg !3445
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3446
  call void @llvm.va_end(i8* nonnull %6), !dbg !3447
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3448
  ret void, !dbg !3448
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3449 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3450, !tbaa !787
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3450
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.122, i64 0, i64 0), i32 5) #27, !dbg !3451
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.123, i64 0, i64 0)) #27, !dbg !3451
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.124, i64 0, i64 0), i32 5) #27, !dbg !3452
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.125, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.126, i64 0, i64 0)) #27, !dbg !3452
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 5) #27, !dbg !3453
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.127, i64 0, i64 0)) #27, !dbg !3453
  ret void, !dbg !3454
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !3455 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3459, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %1, metadata !3460, metadata !DIExpression()), !dbg !3461
  %3 = udiv i64 9223372036854775807, %1, !dbg !3462
  %4 = icmp ult i64 %3, %0, !dbg !3462
  br i1 %4, label %5, label %6, !dbg !3464

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3465
  unreachable, !dbg !3465

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %7, metadata !3467, metadata !DIExpression()) #27, !dbg !3473
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3475
  call void @llvm.dbg.value(metadata i8* %8, metadata !3472, metadata !DIExpression()) #27, !dbg !3473
  %9 = icmp eq i8* %8, null, !dbg !3476
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3478
  br i1 %11, label %12, label %13, !dbg !3478

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3479
  unreachable, !dbg !3479

13:                                               ; preds = %6
  ret i8* %8, !dbg !3480
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3468 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3467, metadata !DIExpression()), !dbg !3481
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %2, metadata !3472, metadata !DIExpression()), !dbg !3481
  %3 = icmp eq i8* %2, null, !dbg !3483
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3484
  br i1 %5, label %6, label %7, !dbg !3484

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3485
  unreachable, !dbg !3485

7:                                                ; preds = %1
  ret i8* %2, !dbg !3486
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !3487 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3491, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %2, metadata !3493, metadata !DIExpression()), !dbg !3494
  %4 = udiv i64 9223372036854775807, %2, !dbg !3495
  %5 = icmp ult i64 %4, %1, !dbg !3495
  br i1 %5, label %6, label %7, !dbg !3497

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3498
  unreachable, !dbg !3498

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %0, metadata !3500, metadata !DIExpression()) #27, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %8, metadata !3505, metadata !DIExpression()) #27, !dbg !3506
  %9 = icmp eq i64 %8, 0, !dbg !3508
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3510
  br i1 %11, label %12, label %13, !dbg !3510

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3511
  br label %19, !dbg !3513

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3514
  call void @llvm.dbg.value(metadata i8* %14, metadata !3500, metadata !DIExpression()) #27, !dbg !3506
  %15 = icmp eq i8* %14, null, !dbg !3515
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3517
  br i1 %17, label %18, label %19, !dbg !3517

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3518
  unreachable, !dbg !3518

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3506
  ret i8* %20, !dbg !3519
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3501 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3500, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %1, metadata !3505, metadata !DIExpression()), !dbg !3520
  %3 = icmp eq i64 %1, 0, !dbg !3521
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3522
  br i1 %5, label %6, label %7, !dbg !3522

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !3523
  br label %13, !dbg !3524

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %8, metadata !3500, metadata !DIExpression()), !dbg !3520
  %9 = icmp eq i8* %8, null, !dbg !3526
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3527
  br i1 %11, label %12, label %13, !dbg !3527

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3528
  unreachable, !dbg !3528

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3520
  ret i8* %14, !dbg !3529
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !315, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64* %1, metadata !316, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %2, metadata !317, metadata !DIExpression()), !dbg !3530
  %4 = load i64, i64* %1, align 8, !dbg !3531, !tbaa !2584
  call void @llvm.dbg.value(metadata i64 %4, metadata !318, metadata !DIExpression()), !dbg !3530
  %5 = icmp eq i8* %0, null, !dbg !3532
  br i1 %5, label %6, label %20, !dbg !3534

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3535
  br i1 %7, label %8, label %13, !dbg !3538

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %9, metadata !318, metadata !DIExpression()), !dbg !3530
  %10 = icmp ugt i64 %2, 128, !dbg !3541
  %11 = zext i1 %10 to i64, !dbg !3541
  %12 = add nuw nsw i64 %9, %11, !dbg !3542
  call void @llvm.dbg.value(metadata i64 %12, metadata !318, metadata !DIExpression()), !dbg !3530
  br label %13, !dbg !3543

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3530
  call void @llvm.dbg.value(metadata i64 %14, metadata !318, metadata !DIExpression()), !dbg !3530
  %15 = udiv i64 9223372036854775807, %2, !dbg !3544
  %16 = icmp ult i64 %15, %14, !dbg !3544
  br i1 %16, label %19, label %17, !dbg !3546

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !318, metadata !DIExpression()), !dbg !3530
  store i64 %14, i64* %1, align 8, !dbg !3547, !tbaa !2584
  %18 = mul i64 %14, %2, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %0, metadata !3500, metadata !DIExpression()) #27, !dbg !3549
  call void @llvm.dbg.value(metadata i64 %28, metadata !3505, metadata !DIExpression()) #27, !dbg !3549
  br label %31, !dbg !3551

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3552
  unreachable, !dbg !3552

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3553
  %22 = icmp ugt i64 %21, %4, !dbg !3556
  br i1 %22, label %24, label %23, !dbg !3557

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !3558
  unreachable, !dbg !3558

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3559
  %26 = add nuw i64 %4, 1, !dbg !3560
  %27 = add i64 %26, %25, !dbg !3561
  call void @llvm.dbg.value(metadata i64 %27, metadata !318, metadata !DIExpression()), !dbg !3530
  store i64 %27, i64* %1, align 8, !dbg !3547, !tbaa !2584
  %28 = mul i64 %27, %2, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %0, metadata !3500, metadata !DIExpression()) #27, !dbg !3549
  call void @llvm.dbg.value(metadata i64 %28, metadata !3505, metadata !DIExpression()) #27, !dbg !3549
  %29 = icmp eq i64 %28, 0, !dbg !3562
  br i1 %29, label %30, label %31, !dbg !3551

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !3563
  br label %38, !dbg !3564

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %33, metadata !3500, metadata !DIExpression()) #27, !dbg !3549
  %34 = icmp eq i8* %33, null, !dbg !3566
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3567
  br i1 %36, label %37, label %38, !dbg !3567

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !3568
  unreachable, !dbg !3568

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3549
  ret i8* %39, !dbg !3569
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !3570 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %0, metadata !3467, metadata !DIExpression()) #27, !dbg !3574
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %2, metadata !3472, metadata !DIExpression()) #27, !dbg !3574
  %3 = icmp eq i8* %2, null, !dbg !3577
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3578
  br i1 %5, label %6, label %7, !dbg !3578

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3579
  unreachable, !dbg !3579

7:                                                ; preds = %1
  ret i8* %2, !dbg !3580
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3581 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64* %1, metadata !3586, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8* %0, metadata !315, metadata !DIExpression()) #27, !dbg !3588
  call void @llvm.dbg.value(metadata i64* %1, metadata !316, metadata !DIExpression()) #27, !dbg !3588
  call void @llvm.dbg.value(metadata i64 1, metadata !317, metadata !DIExpression()) #27, !dbg !3588
  %3 = load i64, i64* %1, align 8, !dbg !3590, !tbaa !2584
  call void @llvm.dbg.value(metadata i64 %3, metadata !318, metadata !DIExpression()) #27, !dbg !3588
  %4 = icmp eq i8* %0, null, !dbg !3591
  br i1 %4, label %5, label %10, !dbg !3592

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3593
  br i1 %6, label %17, label %7, !dbg !3594

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !318, metadata !DIExpression()) #27, !dbg !3588
  %8 = icmp slt i64 %3, 0, !dbg !3595
  br i1 %8, label %9, label %17, !dbg !3596

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3597
  unreachable, !dbg !3597

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3598
  br i1 %11, label %13, label %12, !dbg !3599

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3600
  unreachable, !dbg !3600

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3601
  %15 = add nuw nsw i64 %3, 1, !dbg !3602
  %16 = add nuw nsw i64 %15, %14, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %16, metadata !318, metadata !DIExpression()) #27, !dbg !3588
  call void @llvm.dbg.value(metadata i8* %0, metadata !3500, metadata !DIExpression()) #27, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %16, metadata !3505, metadata !DIExpression()) #27, !dbg !3604
  br label %17, !dbg !3606

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3607
  store i64 %18, i64* %1, align 8, !dbg !3607, !tbaa !2584
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3608
  call void @llvm.dbg.value(metadata i8* %19, metadata !3500, metadata !DIExpression()) #27, !dbg !3604
  %20 = icmp eq i8* %19, null, !dbg !3609
  br i1 %20, label %21, label %22, !dbg !3610

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3611
  unreachable, !dbg !3611

22:                                               ; preds = %17
  ret i8* %19, !dbg !3612
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3613 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3615, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()) #27, !dbg !3622
  call void @llvm.dbg.value(metadata i64 1, metadata !3620, metadata !DIExpression()) #27, !dbg !3622
  %2 = icmp slt i64 %0, 0, !dbg !3624
  br i1 %2, label %6, label %3, !dbg !3626

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3627
  call void @llvm.dbg.value(metadata i8* %4, metadata !3621, metadata !DIExpression()) #27, !dbg !3622
  %5 = icmp eq i8* %4, null, !dbg !3628
  br i1 %5, label %6, label %7, !dbg !3629

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3630
  unreachable, !dbg !3630

7:                                                ; preds = %3
  ret i8* %4, !dbg !3631
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3618 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3632
  %3 = udiv i64 9223372036854775807, %1, !dbg !3633
  %4 = icmp ult i64 %3, %0, !dbg !3633
  br i1 %4, label %8, label %5, !dbg !3634

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %6, metadata !3621, metadata !DIExpression()), !dbg !3632
  %7 = icmp eq i8* %6, null, !dbg !3636
  br i1 %7, label %8, label %9, !dbg !3637

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3638
  unreachable, !dbg !3638

9:                                                ; preds = %5
  ret i8* %6, !dbg !3639
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3640 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %1, metadata !3647, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %1, metadata !3467, metadata !DIExpression()) #27, !dbg !3649
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3651
  call void @llvm.dbg.value(metadata i8* %3, metadata !3472, metadata !DIExpression()) #27, !dbg !3649
  %4 = icmp eq i8* %3, null, !dbg !3652
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3653
  br i1 %6, label %7, label %8, !dbg !3653

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3654
  unreachable, !dbg !3654

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3655, metadata !DIExpression()) #27, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %0, metadata !3662, metadata !DIExpression()) #27, !dbg !3664
  call void @llvm.dbg.value(metadata i64 %1, metadata !3663, metadata !DIExpression()) #27, !dbg !3664
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3666
  ret i8* %3, !dbg !3667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3668 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3670, metadata !DIExpression()), !dbg !3671
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !3672
  %3 = add i64 %2, 1, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %0, metadata !3646, metadata !DIExpression()) #27, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %3, metadata !3647, metadata !DIExpression()) #27, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %3, metadata !3467, metadata !DIExpression()) #27, !dbg !3676
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !3678
  call void @llvm.dbg.value(metadata i8* %4, metadata !3472, metadata !DIExpression()) #27, !dbg !3676
  %5 = icmp eq i8* %4, null, !dbg !3679
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3680
  br i1 %7, label %8, label %9, !dbg !3680

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3681
  unreachable, !dbg !3681

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3655, metadata !DIExpression()) #27, !dbg !3682
  call void @llvm.dbg.value(metadata i8* %0, metadata !3662, metadata !DIExpression()) #27, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %3, metadata !3663, metadata !DIExpression()) #27, !dbg !3682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !3684
  ret i8* %4, !dbg !3685
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3686 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3687, !tbaa !971
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.140, i64 0, i64 0), i32 5) #27, !dbg !3688
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.141, i64 0, i64 0), i8* %2) #27, !dbg !3689
  tail call void @abort() #29, !dbg !3690
  unreachable, !dbg !3690
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xgetgroups(i8* %0, i32 %1, i32** %2) local_unnamed_addr #8 !dbg !3691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3693, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 %1, metadata !3694, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32** %2, metadata !3695, metadata !DIExpression()), !dbg !3697
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #27, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %4, metadata !3696, metadata !DIExpression()), !dbg !3697
  %5 = icmp eq i32 %4, -1, !dbg !3699
  br i1 %5, label %6, label %11, !dbg !3701

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #31, !dbg !3702
  %8 = load i32, i32* %7, align 4, !dbg !3702, !tbaa !971
  %9 = icmp eq i32 %8, 12, !dbg !3703
  br i1 %9, label %10, label %11, !dbg !3704

10:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3705
  unreachable, !dbg !3705

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3706
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoul(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3707 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3714, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8** %1, metadata !3715, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 %2, metadata !3716, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64* %3, metadata !3717, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %4, metadata !3718, metadata !DIExpression()), !dbg !3732
  %7 = bitcast i8** %6 to i8*, !dbg !3733
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #27, !dbg !3733
  call void @llvm.dbg.value(metadata i32 0, metadata !3722, metadata !DIExpression()), !dbg !3732
  %8 = icmp ult i32 %2, 37, !dbg !3734
  br i1 %8, label %10, label %9, !dbg !3734

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.146, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.147, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #29, !dbg !3734
  unreachable, !dbg !3734

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3737
  call void @llvm.dbg.value(metadata i8** %25, metadata !3720, metadata !DIExpression()), !dbg !3732
  %12 = tail call i32* @__errno_location() #31, !dbg !3738
  store i32 0, i32* %12, align 4, !dbg !3739, !tbaa !971
  call void @llvm.dbg.value(metadata i8* %0, metadata !3723, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8 undef, metadata !3726, metadata !DIExpression()), !dbg !3740
  %13 = tail call i16** @__ctype_b_loc() #31, !dbg !3732
  %14 = load i16*, i16** %13, align 8, !tbaa !787
  br label %15, !dbg !3741

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3740
  %17 = load i8, i8* %16, align 1, !dbg !3740, !tbaa !1013
  call void @llvm.dbg.value(metadata i8 %17, metadata !3726, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8* %16, metadata !3723, metadata !DIExpression()), !dbg !3740
  %18 = zext i8 %17 to i64, !dbg !3742
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3742
  %20 = load i16, i16* %19, align 2, !dbg !3742, !tbaa !2068
  %21 = and i16 %20, 8192, !dbg !3742
  %22 = icmp eq i16 %21, 0, !dbg !3741
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3743
  call void @llvm.dbg.value(metadata i8* %23, metadata !3723, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8 undef, metadata !3726, metadata !DIExpression()), !dbg !3740
  br i1 %22, label %24, label %15, !dbg !3741, !llvm.loop !3744

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3737
  %26 = icmp eq i8 %17, 45, !dbg !3746
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #27, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %28, metadata !3721, metadata !DIExpression()), !dbg !3732
  %29 = load i8*, i8** %25, align 8, !dbg !3749, !tbaa !787
  %30 = icmp eq i8* %29, %0, !dbg !3751
  br i1 %30, label %31, label %40, !dbg !3752

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3753
  br i1 %32, label %285, label %33, !dbg !3756

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3757, !tbaa !1013
  %35 = icmp eq i8 %34, 0, !dbg !3757
  br i1 %35, label %285, label %36, !dbg !3758

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3757
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #28, !dbg !3759
  %39 = icmp eq i8* %38, null, !dbg !3759
  br i1 %39, label %285, label %47, !dbg !3760

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3761, !tbaa !971
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3763

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3722, metadata !DIExpression()), !dbg !3732
  br label %43, !dbg !3764

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3732
  call void @llvm.dbg.value(metadata i32 %44, metadata !3722, metadata !DIExpression()), !dbg !3732
  %45 = icmp eq i8* %4, null, !dbg !3766
  br i1 %45, label %46, label %47, !dbg !3768

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3721, metadata !DIExpression()), !dbg !3732
  store i64 %28, i64* %3, align 8, !dbg !3769, !tbaa !2584
  br label %285, !dbg !3771

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3772, !tbaa !1013
  %51 = sext i8 %50 to i32, !dbg !3772
  %52 = icmp eq i8 %50, 0, !dbg !3773
  br i1 %52, label %282, label %53, !dbg !3774

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3727, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 1, metadata !3730, metadata !DIExpression()), !dbg !3775
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #28, !dbg !3776
  %55 = icmp eq i8* %54, null, !dbg !3776
  br i1 %55, label %56, label %58, !dbg !3778

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3721, metadata !DIExpression()), !dbg !3732
  store i64 %49, i64* %3, align 8, !dbg !3779, !tbaa !2584
  %57 = or i32 %48, 2, !dbg !3781
  br label %285, !dbg !3782

58:                                               ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !3783

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #28, !dbg !3784
  %61 = icmp eq i8* %60, null, !dbg !3784
  br i1 %61, label %72, label %62, !dbg !3787

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3788
  %64 = load i8, i8* %63, align 1, !dbg !3788, !tbaa !1013
  %65 = sext i8 %64 to i32, !dbg !3788
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3789

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3790
  %68 = load i8, i8* %67, align 1, !dbg !3790, !tbaa !1013
  %69 = icmp eq i8 %68, 66, !dbg !3793
  %70 = select i1 %69, i64 3, i64 1, !dbg !3794
  br label %72, !dbg !3794

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3727, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 2, metadata !3730, metadata !DIExpression()), !dbg !3775
  br label %72, !dbg !3795

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3730, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 undef, metadata !3727, metadata !DIExpression()), !dbg !3775
  switch i32 %51, label %265 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %267
    i32 75, label %267
    i32 77, label %230
    i32 109, label %230
    i32 80, label %150
    i32 84, label %240
    i32 116, label %240
    i32 119, label %260
    i32 89, label %110
    i32 90, label %75
  ], !dbg !3796

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 7, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3814
  %76 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3816
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3816
  %78 = mul i64 %49, %73, !dbg !3818
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3818
  call void @llvm.dbg.value(metadata i1 %77, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %77, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3814
  %80 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #27, !dbg !3816
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3816
  %82 = mul i64 %79, %73, !dbg !3818
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3818
  %84 = or i1 %77, %81, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %84, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %84, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3814
  %85 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #27, !dbg !3816
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3816
  %87 = mul i64 %83, %73, !dbg !3818
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3818
  %89 = or i1 %84, %86, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %89, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %89, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3814
  %90 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #27, !dbg !3816
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3816
  %92 = mul i64 %88, %73, !dbg !3818
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3818
  %94 = or i1 %89, %91, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %94, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %94, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3814
  %95 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #27, !dbg !3816
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3816
  %97 = mul i64 %93, %73, !dbg !3818
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3818
  %99 = or i1 %94, %96, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %99, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %99, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3814
  %100 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #27, !dbg !3816
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3816
  %102 = mul i64 %98, %73, !dbg !3818
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3818
  %104 = or i1 %99, %101, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %104, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i1 %104, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3814
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3814
  %105 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #27, !dbg !3816
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3816
  %107 = mul i64 %103, %73, !dbg !3818
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3818
  %109 = or i1 %104, %106, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %109, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3805
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3805
  br label %272, !dbg !3820

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 8, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 7, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3823
  %111 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3825
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3825
  %113 = mul i64 %49, %73, !dbg !3826
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3826
  call void @llvm.dbg.value(metadata i1 %112, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 7, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %112, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 7, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3823
  %115 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #27, !dbg !3825
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3825
  %117 = mul i64 %114, %73, !dbg !3826
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3826
  %119 = or i1 %112, %116, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %119, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %119, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3823
  %120 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #27, !dbg !3825
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3825
  %122 = mul i64 %118, %73, !dbg !3826
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3826
  %124 = or i1 %119, %121, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %124, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %124, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3823
  %125 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #27, !dbg !3825
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3825
  %127 = mul i64 %123, %73, !dbg !3826
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3826
  %129 = or i1 %124, %126, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %129, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %129, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3823
  %130 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #27, !dbg !3825
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3825
  %132 = mul i64 %128, %73, !dbg !3826
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3826
  %134 = or i1 %129, %131, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %134, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %134, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3823
  %135 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #27, !dbg !3825
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3825
  %137 = mul i64 %133, %73, !dbg !3826
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3826
  %139 = or i1 %134, %136, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %139, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %139, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3823
  %140 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #27, !dbg !3825
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3825
  %142 = mul i64 %138, %73, !dbg !3826
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3826
  %144 = or i1 %139, %141, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %144, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %144, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3823
  %145 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #27, !dbg !3825
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3825
  %147 = mul i64 %143, %73, !dbg !3826
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3826
  %149 = or i1 %144, %146, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %149, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3821
  br label %272, !dbg !3820

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3830
  %151 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3832
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3832
  %153 = mul i64 %49, %73, !dbg !3833
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3833
  call void @llvm.dbg.value(metadata i1 %152, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i1 %152, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3830
  %155 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #27, !dbg !3832
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3832
  %157 = mul i64 %154, %73, !dbg !3833
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3833
  %159 = or i1 %152, %156, !dbg !3834
  call void @llvm.dbg.value(metadata i1 %159, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i1 %159, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3830
  %160 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #27, !dbg !3832
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3832
  %162 = mul i64 %158, %73, !dbg !3833
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3833
  %164 = or i1 %159, %161, !dbg !3834
  call void @llvm.dbg.value(metadata i1 %164, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i1 %164, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3830
  %165 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #27, !dbg !3832
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3832
  %167 = mul i64 %163, %73, !dbg !3833
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3833
  %169 = or i1 %164, %166, !dbg !3834
  call void @llvm.dbg.value(metadata i1 %169, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i1 %169, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3830
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3830
  %170 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #27, !dbg !3832
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3832
  %172 = mul i64 %168, %73, !dbg !3833
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3833
  %174 = or i1 %169, %171, !dbg !3834
  call void @llvm.dbg.value(metadata i1 %174, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3828
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3828
  br label %272, !dbg !3820

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 6, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3837
  %176 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3839
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3839
  %178 = mul i64 %49, %73, !dbg !3840
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3840
  call void @llvm.dbg.value(metadata i1 %177, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %177, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 5, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3837
  %180 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #27, !dbg !3839
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3839
  %182 = mul i64 %179, %73, !dbg !3840
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3840
  %184 = or i1 %177, %181, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %184, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %184, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 4, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3837
  %185 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #27, !dbg !3839
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3839
  %187 = mul i64 %183, %73, !dbg !3840
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3840
  %189 = or i1 %184, %186, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %189, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %189, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3837
  %190 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #27, !dbg !3839
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3839
  %192 = mul i64 %188, %73, !dbg !3840
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3840
  %194 = or i1 %189, %191, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %194, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %194, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3837
  %195 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #27, !dbg !3839
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3839
  %197 = mul i64 %193, %73, !dbg !3840
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3840
  %199 = or i1 %194, %196, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %199, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i1 %199, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3837
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3837
  %200 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #27, !dbg !3839
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3839
  %202 = mul i64 %198, %73, !dbg !3840
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3840
  %204 = or i1 %199, %201, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %204, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3835
  br label %272, !dbg !3820

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3842
  call void @llvm.dbg.value(metadata i32 512, metadata !3813, metadata !DIExpression()) #27, !dbg !3842
  %206 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #27, !dbg !3844
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3844
  %208 = shl i64 %49, 9, !dbg !3845
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3845
  call void @llvm.dbg.value(metadata i1 %207, metadata !3731, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  br label %272, !dbg !3846

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3847
  call void @llvm.dbg.value(metadata i32 1024, metadata !3813, metadata !DIExpression()) #27, !dbg !3847
  %211 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #27, !dbg !3849
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3849
  %213 = shl i64 %49, 10, !dbg !3850
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3850
  call void @llvm.dbg.value(metadata i1 %212, metadata !3731, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  br label %272, !dbg !3851

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3802, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 undef, metadata !3803, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3854
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3854
  %216 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3856
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3856
  %218 = mul i64 %49, %73, !dbg !3857
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3857
  call void @llvm.dbg.value(metadata i1 %217, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i1 %217, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3854
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3854
  %220 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #27, !dbg !3856
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3856
  %222 = mul i64 %219, %73, !dbg !3857
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3857
  %224 = or i1 %217, %221, !dbg !3858
  call void @llvm.dbg.value(metadata i1 %224, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i1 %224, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3854
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3854
  %225 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #27, !dbg !3856
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3856
  %227 = mul i64 %223, %73, !dbg !3857
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3857
  %229 = or i1 %224, %226, !dbg !3858
  call void @llvm.dbg.value(metadata i1 %229, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3852
  br label %272, !dbg !3820

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3802, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 undef, metadata !3803, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3861
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3861
  %231 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3863
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3863
  %233 = mul i64 %49, %73, !dbg !3864
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3864
  call void @llvm.dbg.value(metadata i1 %232, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #27, !dbg !3859
  %235 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #27, !dbg !3863
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3863
  %237 = mul i64 %234, %73, !dbg !3864
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3864
  %239 = or i1 %232, %236, !dbg !3865
  call void @llvm.dbg.value(metadata i1 %239, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3859
  br label %272, !dbg !3820

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3802, metadata !DIExpression()) #27, !dbg !3866
  call void @llvm.dbg.value(metadata i32 undef, metadata !3803, metadata !DIExpression()) #27, !dbg !3866
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #27, !dbg !3866
  call void @llvm.dbg.value(metadata i32 3, metadata !3804, metadata !DIExpression()) #27, !dbg !3866
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3868
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3868
  %241 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3870
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3870
  %243 = mul i64 %49, %73, !dbg !3871
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3871
  call void @llvm.dbg.value(metadata i1 %242, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3866
  call void @llvm.dbg.value(metadata i32 2, metadata !3804, metadata !DIExpression()) #27, !dbg !3866
  %245 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #27, !dbg !3870
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3870
  %247 = mul i64 %244, %73, !dbg !3871
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3871
  %249 = or i1 %242, %246, !dbg !3872
  call void @llvm.dbg.value(metadata i1 %249, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3866
  call void @llvm.dbg.value(metadata i32 1, metadata !3804, metadata !DIExpression()) #27, !dbg !3866
  %250 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #27, !dbg !3870
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3870
  %252 = mul i64 %248, %73, !dbg !3871
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3871
  %254 = or i1 %249, %251, !dbg !3872
  call void @llvm.dbg.value(metadata i1 %254, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3866
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression()) #27, !dbg !3866
  %255 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #27, !dbg !3870
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3870
  %257 = mul i64 %253, %73, !dbg !3871
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3871
  %259 = or i1 %254, %256, !dbg !3872
  call void @llvm.dbg.value(metadata i1 %259, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3866
  call void @llvm.dbg.value(metadata i32 0, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3866
  br label %272, !dbg !3820

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3873
  call void @llvm.dbg.value(metadata i32 2, metadata !3813, metadata !DIExpression()) #27, !dbg !3873
  %261 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #27, !dbg !3875
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3875
  %263 = shl i64 %49, 1, !dbg !3876
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3876
  call void @llvm.dbg.value(metadata i1 %262, metadata !3731, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  br label %272, !dbg !3877

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3721, metadata !DIExpression()), !dbg !3732
  store i64 %49, i64* %3, align 8, !dbg !3878, !tbaa !2584
  %266 = or i32 %48, 2, !dbg !3879
  br label %285, !dbg !3880

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3802, metadata !DIExpression()) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3803, metadata !DIExpression()) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i64* undef, metadata !3808, metadata !DIExpression()) #27, !dbg !3883
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()) #27, !dbg !3883
  %268 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3885
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3885
  call void @llvm.dbg.value(metadata i32 undef, metadata !3804, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i1 %269, metadata !3797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3881
  %270 = mul i64 %49, %73, !dbg !3886
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3886
  br label %272, !dbg !3820

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3732
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %275, metadata !3731, metadata !DIExpression()), !dbg !3775
  %276 = or i32 %48, %275, !dbg !3820
  call void @llvm.dbg.value(metadata i32 %276, metadata !3722, metadata !DIExpression()), !dbg !3732
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3888
  store i8* %277, i8** %25, align 8, !dbg !3888, !tbaa !787
  %278 = load i8, i8* %277, align 1, !dbg !3889, !tbaa !1013
  %279 = icmp eq i8 %278, 0, !dbg !3889
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3891
  call void @llvm.dbg.value(metadata i32 %281, metadata !3722, metadata !DIExpression()), !dbg !3732
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3892
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3893
  call void @llvm.dbg.value(metadata i32 %284, metadata !3722, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %283, metadata !3721, metadata !DIExpression()), !dbg !3732
  store i64 %283, i64* %3, align 8, !dbg !3894, !tbaa !2584
  br label %285, !dbg !3895

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3732
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #27, !dbg !3896
  ret i32 %286, !dbg !3896
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #25

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3897 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3899, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 %1, metadata !3900, metadata !DIExpression()), !dbg !3905
  %3 = icmp eq i64 %0, 0, !dbg !3906
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3907
  br i1 %5, label %11, label %6, !dbg !3907

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3902, metadata !DIExpression()), !dbg !3908
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3909
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3909
  br i1 %8, label %9, label %11, !dbg !3911

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !3912
  store i32 12, i32* %10, align 4, !dbg !3914, !tbaa !971
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3899, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 %12, metadata !3900, metadata !DIExpression()), !dbg !3905
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !3915
  call void @llvm.dbg.value(metadata i8* %14, metadata !3901, metadata !DIExpression()), !dbg !3905
  br label %15, !dbg !3916

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3905
  ret i8* %16, !dbg !3917
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3918 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3934, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i8* %1, metadata !3935, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %2, metadata !3936, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3937, metadata !DIExpression()), !dbg !3943
  %6 = bitcast i32* %5 to i8*, !dbg !3944
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3944
  %7 = icmp eq i32* %0, null, !dbg !3945
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3947
  call void @llvm.dbg.value(metadata i32* %8, metadata !3934, metadata !DIExpression()), !dbg !3943
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !3948
  call void @llvm.dbg.value(metadata i64 %9, metadata !3938, metadata !DIExpression()), !dbg !3943
  %10 = icmp ugt i64 %9, -3, !dbg !3949
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3950
  br i1 %12, label %13, label %18, !dbg !3950

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !3951
  br i1 %14, label %18, label %15, !dbg !3952

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3953, !tbaa !1013
  call void @llvm.dbg.value(metadata i8 %16, metadata !3940, metadata !DIExpression()), !dbg !3954
  %17 = zext i8 %16 to i32, !dbg !3955
  store i32 %17, i32* %8, align 4, !dbg !3956, !tbaa !971
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3943
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3957
  ret i64 %19, !dbg !3957
}

; Function Attrs: nounwind
declare !dbg !3958 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3962 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4000, metadata !DIExpression()), !dbg !4005
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !4006
  call void @llvm.dbg.value(metadata i1 undef, metadata !4001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4005
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4007, metadata !DIExpression()), !dbg !4010
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4012
  %4 = load i32, i32* %3, align 8, !dbg !4012, !tbaa !4013
  %5 = and i32 %4, 32, !dbg !4014
  %6 = icmp eq i32 %5, 0, !dbg !4014
  call void @llvm.dbg.value(metadata i1 %6, metadata !4003, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4005
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !4015
  %8 = icmp eq i32 %7, 0, !dbg !4016
  call void @llvm.dbg.value(metadata i1 %8, metadata !4004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4005
  br i1 %6, label %9, label %19, !dbg !4017

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4019
  call void @llvm.dbg.value(metadata i1 %10, metadata !4001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4005
  %11 = or i1 %10, %8, !dbg !4020
  %12 = xor i1 %8, true, !dbg !4020
  %13 = sext i1 %12 to i32, !dbg !4020
  br i1 %11, label %22, label %14, !dbg !4020

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !4021
  %16 = load i32, i32* %15, align 4, !dbg !4021, !tbaa !971
  %17 = icmp ne i32 %16, 9, !dbg !4022
  %18 = sext i1 %17 to i32, !dbg !4023
  br label %22, !dbg !4023

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4024

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !4026
  store i32 0, i32* %21, align 4, !dbg !4028, !tbaa !971
  br label %22, !dbg !4026

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4005
  ret i32 %23, !dbg !4029
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4030 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4034, metadata !DIExpression()), !dbg !4039
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4040
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4040
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4035, metadata !DIExpression()), !dbg !4041
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !4042
  %5 = icmp eq i32 %4, 0, !dbg !4042
  br i1 %5, label %6, label %13, !dbg !4044

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4045
  %8 = load i16, i16* %7, align 16, !dbg !4045
  %9 = icmp eq i16 %8, 67, !dbg !4045
  br i1 %9, label %13, label %10, !dbg !4046

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), i64 6), !dbg !4047
  %12 = icmp ne i32 %11, 0, !dbg !4048
  br label %13, !dbg !4046

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4039
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4049
  ret i1 %14, !dbg !4049
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4050 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !4055
  call void @llvm.dbg.value(metadata i8* %1, metadata !4054, metadata !DIExpression()), !dbg !4056
  %2 = icmp eq i8* %1, null, !dbg !4057
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.159, i64 0, i64 0), i8* %1, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %3, metadata !4054, metadata !DIExpression()), !dbg !4056
  %4 = load i8, i8* %3, align 1, !dbg !4060, !tbaa !1013
  %5 = icmp eq i8 %4, 0, !dbg !4064
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.160, i64 0, i64 0), i8* %3, !dbg !4065
  call void @llvm.dbg.value(metadata i8* %6, metadata !4054, metadata !DIExpression()), !dbg !4056
  ret i8* %6, !dbg !4066
}

; Function Attrs: nounwind
declare !dbg !4067 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mgetgroups(i8* %0, i32 %1, i32** nocapture %2) local_unnamed_addr #8 !dbg !732 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !737, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 %1, metadata !738, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32** %2, metadata !739, metadata !DIExpression()), !dbg !4070
  %5 = bitcast i32* %4 to i8*, !dbg !4071
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #27, !dbg !4071
  %6 = icmp eq i8* %0, null, !dbg !4072
  br i1 %6, label %40, label %7, !dbg !4073

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !740, metadata !DIExpression()), !dbg !4070
  store i32 10, i32* %4, align 4, !dbg !4074, !tbaa !971
  call void @llvm.dbg.value(metadata i32* null, metadata !4075, metadata !DIExpression()) #27, !dbg !4081
  call void @llvm.dbg.value(metadata i64 10, metadata !4080, metadata !DIExpression()) #27, !dbg !4081
  %8 = tail call dereferenceable_or_null(40) i8* @malloc(i64 40), !dbg !4083
  call void @llvm.dbg.value(metadata i8* %8, metadata !742, metadata !DIExpression()), !dbg !4070
  %9 = icmp eq i8* %8, null, !dbg !4084
  br i1 %9, label %141, label %10, !dbg !4086

10:                                               ; preds = %7, %36
  %11 = phi i32 [ %22, %36 ], [ 10, %7 ], !dbg !4087
  %12 = phi i8* [ %29, %36 ], [ %8, %7 ]
  %13 = bitcast i8* %12 to i32*, !dbg !4088
  call void @llvm.dbg.value(metadata i32* %13, metadata !742, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 %11, metadata !747, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32* %4, metadata !740, metadata !DIExpression(DW_OP_deref)), !dbg !4070
  %14 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %13, i32* nonnull %4) #27, !dbg !4090
  call void @llvm.dbg.value(metadata i32 %14, metadata !741, metadata !DIExpression()), !dbg !4070
  %15 = icmp slt i32 %14, 0, !dbg !4091
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %11, %16
  %18 = and i1 %15, %17, !dbg !4093
  call void @llvm.dbg.value(metadata i32 %16, metadata !740, metadata !DIExpression()), !dbg !4070
  br i1 %18, label %19, label %21, !dbg !4093

19:                                               ; preds = %10
  %20 = shl nuw nsw i32 %11, 1, !dbg !4094
  call void @llvm.dbg.value(metadata i32 %20, metadata !740, metadata !DIExpression()), !dbg !4070
  store i32 %20, i32* %4, align 4, !dbg !4094, !tbaa !971
  br label %21, !dbg !4095

21:                                               ; preds = %19, %10
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !4096
  call void @llvm.dbg.value(metadata i32 %22, metadata !740, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %13, metadata !4075, metadata !DIExpression()) #27, !dbg !4097
  call void @llvm.dbg.value(metadata i32 %22, metadata !4080, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !4097
  %23 = icmp slt i32 %22, 0, !dbg !4099
  br i1 %23, label %24, label %26, !dbg !4101

24:                                               ; preds = %21
  %25 = tail call i32* @__errno_location() #31, !dbg !4102
  store i32 12, i32* %25, align 4, !dbg !4104, !tbaa !971
  call void @llvm.dbg.value(metadata i8* %29, metadata !743, metadata !DIExpression()), !dbg !4089
  br label %33, !dbg !4105

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64, !dbg !4096
  call void @llvm.dbg.value(metadata i64 %27, metadata !4080, metadata !DIExpression()) #27, !dbg !4097
  %28 = shl nuw nsw i64 %27, 2, !dbg !4106
  %29 = call i8* @realloc(i8* nonnull %12, i64 %28) #27, !dbg !4107
  call void @llvm.dbg.value(metadata i8* %29, metadata !743, metadata !DIExpression()), !dbg !4089
  %30 = icmp eq i8* %29, null, !dbg !4108
  br i1 %30, label %31, label %36, !dbg !4105

31:                                               ; preds = %26
  %32 = tail call i32* @__errno_location() #31, !dbg !4109
  br label %33, !dbg !4109

33:                                               ; preds = %31, %24
  %34 = phi i32* [ %32, %31 ], [ %25, %24 ], !dbg !4109
  %35 = load i32, i32* %34, align 4, !dbg !4109, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %35, metadata !748, metadata !DIExpression()), !dbg !4110
  call void @free(i8* nonnull %12) #27, !dbg !4111
  store i32 %35, i32* %34, align 4, !dbg !4112, !tbaa !971
  br label %141

36:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %29, metadata !743, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i8* %29, metadata !742, metadata !DIExpression()), !dbg !4070
  %37 = icmp sgt i32 %14, -1, !dbg !4113
  br i1 %37, label %38, label %10, !dbg !4115

38:                                               ; preds = %36
  %39 = bitcast i32** %2 to i8**, !dbg !4116
  store i8* %29, i8** %39, align 8, !dbg !4116, !tbaa !787
  call void @llvm.dbg.value(metadata i32 %22, metadata !740, metadata !DIExpression()), !dbg !4070
  br label %141, !dbg !4118

40:                                               ; preds = %3
  %41 = tail call i32 @getgroups(i32 0, i32* null) #27, !dbg !4119
  call void @llvm.dbg.value(metadata i32 %41, metadata !740, metadata !DIExpression()), !dbg !4070
  store i32 %41, i32* %4, align 4, !dbg !4120, !tbaa !971
  %42 = icmp slt i32 %41, 0, !dbg !4121
  br i1 %42, label %43, label %55, !dbg !4123

43:                                               ; preds = %40
  %44 = tail call i32* @__errno_location() #31, !dbg !4124
  %45 = load i32, i32* %44, align 4, !dbg !4124, !tbaa !971
  %46 = icmp eq i32 %45, 38, !dbg !4127
  br i1 %46, label %47, label %141, !dbg !4128

47:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32* null, metadata !4075, metadata !DIExpression()) #27, !dbg !4129
  call void @llvm.dbg.value(metadata i64 1, metadata !4080, metadata !DIExpression()) #27, !dbg !4129
  %48 = tail call dereferenceable_or_null(4) i8* @malloc(i64 4), !dbg !4131
  call void @llvm.dbg.value(metadata i8* %48, metadata !742, metadata !DIExpression()), !dbg !4070
  %49 = icmp eq i8* %48, null, !dbg !4132
  br i1 %49, label %141, label %50, !dbg !4133

50:                                               ; preds = %47
  %51 = bitcast i8* %48 to i32*, !dbg !4131
  call void @llvm.dbg.value(metadata i32* %51, metadata !742, metadata !DIExpression()), !dbg !4070
  %52 = bitcast i32** %2 to i8**, !dbg !4134
  store i8* %48, i8** %52, align 8, !dbg !4134, !tbaa !787
  store i32 %1, i32* %51, align 4, !dbg !4136, !tbaa !971
  %53 = icmp ne i32 %1, -1, !dbg !4137
  %54 = zext i1 %53 to i32, !dbg !4137
  br label %141, !dbg !4138

55:                                               ; preds = %40
  %56 = icmp ne i32 %41, 0, !dbg !4139
  %57 = icmp eq i32 %1, -1
  %58 = and i1 %57, %56, !dbg !4141
  br i1 %58, label %61, label %59, !dbg !4141

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 %41, metadata !740, metadata !DIExpression()), !dbg !4070
  %60 = add nuw nsw i32 %41, 1, !dbg !4142
  call void @llvm.dbg.value(metadata i32 %60, metadata !740, metadata !DIExpression()), !dbg !4070
  store i32 %60, i32* %4, align 4, !dbg !4142, !tbaa !971
  br label %61, !dbg !4143

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %41, %55 ], [ %60, %59 ], !dbg !4144
  call void @llvm.dbg.value(metadata i32 %62, metadata !740, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* null, metadata !4075, metadata !DIExpression()) #27, !dbg !4145
  call void @llvm.dbg.value(metadata i32 %62, metadata !4080, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !4145
  %63 = zext i32 %62 to i64, !dbg !4144
  call void @llvm.dbg.value(metadata i64 %63, metadata !4080, metadata !DIExpression()) #27, !dbg !4145
  %64 = shl nuw nsw i64 %63, 2, !dbg !4147
  %65 = tail call i8* @malloc(i64 %64), !dbg !4148
  %66 = bitcast i8* %65 to i32*, !dbg !4148
  call void @llvm.dbg.value(metadata i32* %66, metadata !742, metadata !DIExpression()), !dbg !4070
  %67 = icmp eq i8* %65, null, !dbg !4149
  br i1 %67, label %141, label %68, !dbg !4151

68:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 %62, metadata !740, metadata !DIExpression()), !dbg !4070
  %69 = icmp ne i32 %1, -1, !dbg !4152
  %70 = sext i1 %69 to i32, !dbg !4152
  %71 = add nsw i32 %62, %70, !dbg !4153
  %72 = zext i1 %69 to i64, !dbg !4154
  %73 = getelementptr inbounds i32, i32* %66, i64 %72, !dbg !4154
  %74 = tail call i32 @getgroups(i32 %71, i32* nonnull %73) #27, !dbg !4155
  call void @llvm.dbg.value(metadata i32 %74, metadata !741, metadata !DIExpression()), !dbg !4070
  %75 = icmp slt i32 %74, 0, !dbg !4156
  br i1 %75, label %76, label %79, !dbg !4157

76:                                               ; preds = %68
  %77 = tail call i32* @__errno_location() #31, !dbg !4158
  %78 = load i32, i32* %77, align 4, !dbg !4158, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %78, metadata !751, metadata !DIExpression()), !dbg !4159
  tail call void @free(i8* nonnull %65) #27, !dbg !4160
  store i32 %78, i32* %77, align 4, !dbg !4161, !tbaa !971
  br label %141

79:                                               ; preds = %68
  br i1 %57, label %82, label %80, !dbg !4162

80:                                               ; preds = %79
  store i32 %1, i32* %66, align 4, !dbg !4164, !tbaa !971
  %81 = add nuw nsw i32 %74, 1, !dbg !4166
  call void @llvm.dbg.value(metadata i32 %81, metadata !741, metadata !DIExpression()), !dbg !4070
  br label %82, !dbg !4167

82:                                               ; preds = %80, %79
  %83 = phi i32 [ %81, %80 ], [ %74, %79 ], !dbg !4070
  call void @llvm.dbg.value(metadata i32 %83, metadata !741, metadata !DIExpression()), !dbg !4070
  %84 = bitcast i32** %2 to i8**, !dbg !4168
  store i8* %65, i8** %84, align 8, !dbg !4168, !tbaa !787
  %85 = icmp sgt i32 %83, 1, !dbg !4169
  br i1 %85, label %86, label %141, !dbg !4170

86:                                               ; preds = %82
  %87 = load i32, i32* %66, align 4, !dbg !4171, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %87, metadata !754, metadata !DIExpression()), !dbg !4172
  %88 = zext i32 %83 to i64, !dbg !4173
  %89 = getelementptr inbounds i32, i32* %66, i64 %88, !dbg !4173
  call void @llvm.dbg.value(metadata i32* %89, metadata !758, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i32* %66, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4172
  %90 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !4174
  %91 = bitcast i8* %90 to i32*, !dbg !4174
  call void @llvm.dbg.value(metadata i32* %91, metadata !757, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i32 %83, metadata !741, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %66, metadata !742, metadata !DIExpression()), !dbg !4070
  %92 = icmp ugt i32* %89, %91, !dbg !4176
  br i1 %92, label %93, label %141, !dbg !4178

93:                                               ; preds = %86
  %94 = shl nuw nsw i64 %88, 2, !dbg !4178
  %95 = add nsw i64 %94, -5, !dbg !4178
  %96 = and i64 %95, 4, !dbg !4178
  %97 = icmp eq i64 %96, 0, !dbg !4178
  br i1 %97, label %98, label %112, !dbg !4178

98:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i32 %83, metadata !741, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %66, metadata !742, metadata !DIExpression()), !dbg !4070
  %99 = load i32, i32* %91, align 4, !dbg !4179, !tbaa !971
  %100 = icmp eq i32 %99, %87
  br i1 %100, label %104, label %101, !dbg !4182

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !4183
  %103 = bitcast i8* %102 to i32*, !dbg !4183
  call void @llvm.dbg.value(metadata i32* %103, metadata !742, metadata !DIExpression()), !dbg !4070
  store i32 %99, i32* %103, align 4, !dbg !4184, !tbaa !971
  br label %106

104:                                              ; preds = %98
  %105 = add nsw i32 %83, -1, !dbg !4185
  call void @llvm.dbg.value(metadata i32 %105, metadata !741, metadata !DIExpression()), !dbg !4070
  br label %106, !dbg !4186

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %87, %104 ], [ %99, %101 ]
  %108 = phi i32* [ %66, %104 ], [ %103, %101 ], !dbg !4070
  %109 = phi i32 [ %105, %104 ], [ %83, %101 ], !dbg !4070
  call void @llvm.dbg.value(metadata i32 %109, metadata !741, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %108, metadata !742, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %91, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4172
  %110 = getelementptr inbounds i8, i8* %65, i64 8, !dbg !4174
  %111 = bitcast i8* %110 to i32*, !dbg !4174
  call void @llvm.dbg.value(metadata i32* %111, metadata !757, metadata !DIExpression()), !dbg !4172
  br label %112, !dbg !4178

112:                                              ; preds = %106, %93
  %113 = phi i32 [ %87, %93 ], [ %107, %106 ]
  %114 = phi i32* [ %91, %93 ], [ %111, %106 ]
  %115 = phi i32 [ %83, %93 ], [ %109, %106 ]
  %116 = phi i32* [ %66, %93 ], [ %108, %106 ]
  %117 = phi i32 [ undef, %93 ], [ %109, %106 ]
  %118 = icmp eq i64 %95, 3, !dbg !4178
  br i1 %118, label %141, label %119, !dbg !4178

119:                                              ; preds = %112, %147
  %120 = phi i32 [ %148, %147 ], [ %113, %112 ]
  %121 = phi i32* [ %151, %147 ], [ %114, %112 ]
  %122 = phi i32 [ %150, %147 ], [ %115, %112 ]
  %123 = phi i32* [ %149, %147 ], [ %116, %112 ]
  call void @llvm.dbg.value(metadata i32 %122, metadata !741, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %123, metadata !742, metadata !DIExpression()), !dbg !4070
  %124 = load i32, i32* %121, align 4, !dbg !4179, !tbaa !971
  %125 = icmp eq i32 %124, %87, !dbg !4187
  %126 = icmp eq i32 %124, %120
  %127 = or i1 %125, %126, !dbg !4182
  br i1 %127, label %128, label %130, !dbg !4182

128:                                              ; preds = %119
  %129 = add nsw i32 %122, -1, !dbg !4185
  call void @llvm.dbg.value(metadata i32 %129, metadata !741, metadata !DIExpression()), !dbg !4070
  br label %132, !dbg !4186

130:                                              ; preds = %119
  %131 = getelementptr inbounds i32, i32* %123, i64 1, !dbg !4183
  call void @llvm.dbg.value(metadata i32* %131, metadata !742, metadata !DIExpression()), !dbg !4070
  store i32 %124, i32* %131, align 4, !dbg !4184, !tbaa !971
  br label %132

132:                                              ; preds = %128, %130
  %133 = phi i32 [ %120, %128 ], [ %124, %130 ]
  %134 = phi i32* [ %123, %128 ], [ %131, %130 ], !dbg !4070
  %135 = phi i32 [ %129, %128 ], [ %122, %130 ], !dbg !4070
  call void @llvm.dbg.value(metadata i32 %135, metadata !741, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %134, metadata !742, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %121, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4172
  %136 = getelementptr inbounds i32, i32* %121, i64 1, !dbg !4174
  call void @llvm.dbg.value(metadata i32* %136, metadata !757, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i32 %135, metadata !741, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %134, metadata !742, metadata !DIExpression()), !dbg !4070
  %137 = load i32, i32* %136, align 4, !dbg !4179, !tbaa !971
  %138 = icmp eq i32 %137, %87, !dbg !4187
  %139 = icmp eq i32 %137, %133
  %140 = or i1 %138, %139, !dbg !4182
  br i1 %140, label %145, label %143, !dbg !4182

141:                                              ; preds = %112, %147, %86, %33, %38, %82, %61, %43, %47, %7, %76, %50
  %142 = phi i32 [ %54, %50 ], [ -1, %76 ], [ -1, %7 ], [ -1, %47 ], [ -1, %43 ], [ -1, %61 ], [ %83, %82 ], [ -1, %33 ], [ %22, %38 ], [ %83, %86 ], [ %117, %112 ], [ %150, %147 ], !dbg !4070
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #27, !dbg !4188
  ret i32 %142, !dbg !4188

143:                                              ; preds = %132
  %144 = getelementptr inbounds i32, i32* %134, i64 1, !dbg !4183
  call void @llvm.dbg.value(metadata i32* %144, metadata !742, metadata !DIExpression()), !dbg !4070
  store i32 %137, i32* %144, align 4, !dbg !4184, !tbaa !971
  br label %147

145:                                              ; preds = %132
  %146 = add nsw i32 %135, -1, !dbg !4185
  call void @llvm.dbg.value(metadata i32 %146, metadata !741, metadata !DIExpression()), !dbg !4070
  br label %147, !dbg !4186

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %133, %145 ], [ %137, %143 ]
  %149 = phi i32* [ %134, %145 ], [ %144, %143 ], !dbg !4070
  %150 = phi i32 [ %146, %145 ], [ %135, %143 ], !dbg !4070
  call void @llvm.dbg.value(metadata i32 %150, metadata !741, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %149, metadata !742, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32* %136, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4172
  %151 = getelementptr inbounds i32, i32* %121, i64 2, !dbg !4174
  call void @llvm.dbg.value(metadata i32* %151, metadata !757, metadata !DIExpression()), !dbg !4172
  %152 = icmp ult i32* %151, %89, !dbg !4176
  br i1 %152, label %119, label %141, !dbg !4178, !llvm.loop !4189
}

declare !dbg !4191 i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4194 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4198, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i8* %1, metadata !4199, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %2, metadata !4200, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32 %0, metadata !4202, metadata !DIExpression()) #27, !dbg !4211
  call void @llvm.dbg.value(metadata i8* %1, metadata !4205, metadata !DIExpression()) #27, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %2, metadata !4206, metadata !DIExpression()) #27, !dbg !4211
  call void @llvm.dbg.value(metadata i32 %0, metadata !4213, metadata !DIExpression()) #27, !dbg !4219
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4221
  call void @llvm.dbg.value(metadata i8* %4, metadata !4218, metadata !DIExpression()) #27, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %4, metadata !4207, metadata !DIExpression()) #27, !dbg !4211
  %5 = icmp eq i8* %4, null, !dbg !4222
  br i1 %5, label %6, label %9, !dbg !4223

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4224
  br i1 %7, label %19, label %8, !dbg !4227

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4228, !tbaa !1013
  br label %19, !dbg !4229

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !4230
  call void @llvm.dbg.value(metadata i64 %10, metadata !4208, metadata !DIExpression()) #27, !dbg !4231
  %11 = icmp ult i64 %10, %2, !dbg !4232
  br i1 %11, label %12, label %14, !dbg !4234

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4235
  call void @llvm.dbg.value(metadata i8* %1, metadata !4237, metadata !DIExpression()) #27, !dbg !4242
  call void @llvm.dbg.value(metadata i8* %4, metadata !4240, metadata !DIExpression()) #27, !dbg !4242
  call void @llvm.dbg.value(metadata i64 %13, metadata !4241, metadata !DIExpression()) #27, !dbg !4242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !4244
  br label %19, !dbg !4245

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4246
  br i1 %15, label %19, label %16, !dbg !4249

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4250
  call void @llvm.dbg.value(metadata i8* %1, metadata !4237, metadata !DIExpression()) #27, !dbg !4252
  call void @llvm.dbg.value(metadata i8* %4, metadata !4240, metadata !DIExpression()) #27, !dbg !4252
  call void @llvm.dbg.value(metadata i64 %17, metadata !4241, metadata !DIExpression()) #27, !dbg !4252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !4254
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4255
  store i8 0, i8* %18, align 1, !dbg !4256, !tbaa !1013
  br label %19, !dbg !4257

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4258
  ret i32 %20, !dbg !4259
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4262, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 %0, metadata !4213, metadata !DIExpression()) #27, !dbg !4264
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4266
  call void @llvm.dbg.value(metadata i8* %2, metadata !4218, metadata !DIExpression()) #27, !dbg !4264
  ret i8* %2, !dbg !4267
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4268 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4306, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 0, metadata !4307, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 0, metadata !4309, metadata !DIExpression()), !dbg !4310
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4311
  call void @llvm.dbg.value(metadata i32 %2, metadata !4308, metadata !DIExpression()), !dbg !4310
  %3 = icmp slt i32 %2, 0, !dbg !4312
  br i1 %3, label %4, label %6, !dbg !4314

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4315
  br label %24, !dbg !4316

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4317
  %8 = icmp eq i32 %7, 0, !dbg !4317
  br i1 %8, label %13, label %9, !dbg !4319

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4320
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !4321
  %12 = icmp eq i64 %11, -1, !dbg !4322
  br i1 %12, label %16, label %13, !dbg !4323

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !4324
  %15 = icmp eq i32 %14, 0, !dbg !4324
  br i1 %15, label %16, label %18, !dbg !4325

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4307, metadata !DIExpression()), !dbg !4310
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4326
  call void @llvm.dbg.value(metadata i32 %21, metadata !4309, metadata !DIExpression()), !dbg !4310
  br label %24, !dbg !4327

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !4328
  %20 = load i32, i32* %19, align 4, !dbg !4328, !tbaa !971
  call void @llvm.dbg.value(metadata i32 %20, metadata !4307, metadata !DIExpression()), !dbg !4310
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4326
  call void @llvm.dbg.value(metadata i32 %21, metadata !4309, metadata !DIExpression()), !dbg !4310
  %22 = icmp eq i32 %20, 0, !dbg !4329
  br i1 %22, label %24, label %23, !dbg !4327

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4331, !tbaa !971
  call void @llvm.dbg.value(metadata i32 -1, metadata !4309, metadata !DIExpression()), !dbg !4310
  br label %24, !dbg !4333

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4310
  ret i32 %25, !dbg !4334
}

; Function Attrs: nofree nounwind
declare !dbg !4335 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4338 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4339 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4342 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4380, metadata !DIExpression()), !dbg !4381
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4382
  br i1 %2, label %6, label %3, !dbg !4384

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4385
  %5 = icmp eq i32 %4, 0, !dbg !4385
  br i1 %5, label %6, label %8, !dbg !4386

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4387
  br label %17, !dbg !4388

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4389, metadata !DIExpression()) #27, !dbg !4394
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4396
  %10 = load i32, i32* %9, align 8, !dbg !4396, !tbaa !4013
  %11 = and i32 %10, 256, !dbg !4398
  %12 = icmp eq i32 %11, 0, !dbg !4398
  br i1 %12, label %15, label %13, !dbg !4399

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !4400
  br label %15, !dbg !4400

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4401
  br label %17, !dbg !4402

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4381
  ret i32 %18, !dbg !4403
}

; Function Attrs: nofree nounwind
declare !dbg !4404 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4407 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4446, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i64 %1, metadata !4447, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 %2, metadata !4448, metadata !DIExpression()), !dbg !4452
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4453
  %5 = load i8*, i8** %4, align 8, !dbg !4453, !tbaa !4454
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4455
  %7 = load i8*, i8** %6, align 8, !dbg !4455, !tbaa !4456
  %8 = icmp eq i8* %5, %7, !dbg !4457
  br i1 %8, label %9, label %28, !dbg !4458

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4459
  %11 = load i8*, i8** %10, align 8, !dbg !4459, !tbaa !1339
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4460
  %13 = load i8*, i8** %12, align 8, !dbg !4460, !tbaa !4461
  %14 = icmp eq i8* %11, %13, !dbg !4462
  br i1 %14, label %15, label %28, !dbg !4463

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4464
  %17 = load i8*, i8** %16, align 8, !dbg !4464, !tbaa !4465
  %18 = icmp eq i8* %17, null, !dbg !4466
  br i1 %18, label %19, label %28, !dbg !4467

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4468
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !4469
  call void @llvm.dbg.value(metadata i64 %21, metadata !4449, metadata !DIExpression()), !dbg !4470
  %22 = icmp eq i64 %21, -1, !dbg !4471
  br i1 %22, label %30, label %23, !dbg !4473

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4474
  %25 = load i32, i32* %24, align 8, !dbg !4475, !tbaa !4013
  %26 = and i32 %25, -17, !dbg !4475
  store i32 %26, i32* %24, align 8, !dbg !4475, !tbaa !4013
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4476
  store i64 %21, i64* %27, align 8, !dbg !4477, !tbaa !4478
  br label %30, !dbg !4479

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4480
  br label %30, !dbg !4481

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4452
  ret i32 %31, !dbg !4482
}

; Function Attrs: nofree nounwind
declare !dbg !4483 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!2, !93, !101, !106, !113, !213, !119, !125, !219, !298, !207, !305, !322, !324, !326, !330, !332, !335, !337, !339, !728, !762, !764, !766, !768}
!llvm.ident = !{!770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770}
!llvm.module.flags = !{!771, !772, !773, !774, !775}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 75, type: !68, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/id.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11, !18, !20, !24, !0, !26, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !59}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "ruid", scope: !2, file: !3, line: 64, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !14, line: 79, baseType: !15)
!14 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !16, line: 146, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "euid", scope: !2, file: !3, line: 64, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "rgid", scope: !2, file: !3, line: 65, type: !22, isLocal: true, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !14, line: 64, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !16, line: 147, baseType: !17)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "egid", scope: !2, file: !3, line: 65, type: !22, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "just_context", scope: !2, file: !3, line: 45, type: !28, isLocal: true, isDefinition: true)
!28 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "just_group", scope: !2, file: !3, line: 51, type: !28, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "use_name", scope: !2, file: !3, line: 61, type: !28, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "use_real", scope: !2, file: !3, line: 53, type: !28, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "just_user", scope: !2, file: !3, line: 55, type: !28, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "opt_zero", scope: !2, file: !3, line: 47, type: !28, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "just_group_list", scope: !2, file: !3, line: 49, type: !28, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !3, line: 69, type: !6, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "multiple_users", scope: !2, file: !3, line: 59, type: !28, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "ok", scope: !2, file: !3, line: 57, type: !28, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "buf", scope: !49, file: !3, line: 327, type: !56, isLocal: true, isDefinition: true)
!49 = distinct !DISubprogram(name: "uidtostr_ptr", scope: !3, file: !3, line: 325, type: !50, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!50 = !DISubroutineType(types: !51)
!51 = !{!6, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!54 = !{!55}
!55 = !DILocalVariable(name: "uid", arg: 1, scope: !49, file: !3, line: 325, type: !52)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 21)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "buf", scope: !61, file: !3, line: 316, type: !56, isLocal: true, isDefinition: true)
!61 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !3, file: !3, line: 314, type: !62, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!62 = !DISubroutineType(types: !63)
!63 = !{!6, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!66 = !{!67}
!67 = !DILocalVariable(name: "gid", arg: 1, scope: !61, file: !3, line: 314, type: !64)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2560, elements: !81)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !71, line: 50, size: 256, elements: !72)
!71 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!72 = !{!73, !76, !78, !80}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !71, line: 52, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !70, file: !71, line: 55, baseType: !77, size: 32, offset: 64)
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !70, file: !71, line: 56, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !71, line: 57, baseType: !77, size: 32, offset: 192)
!81 = !{!82}
!82 = !DISubrange(count: 10)
!83 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!84 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!85 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!86 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!87 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!88 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "buf", scope: !91, file: !92, line: 96, type: !56, isLocal: true, isDefinition: true)
!91 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !92, file: !92, line: 94, type: !62, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !93, retainedNodes: !97)
!92 = !DIFile(filename: "src/group-list.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !94, globals: !96, splitDebugInlining: false, nameTableKind: None)
!94 = !{!8, !95, !9}
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !{!89}
!97 = !{!98}
!98 = !DILocalVariable(name: "gid", arg: 1, scope: !91, file: !92, line: 94, type: !64)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "Version", scope: !101, file: !102, line: 2, type: !74, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !103, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !{!99}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "file_name", scope: !106, file: !107, line: 46, type: !74, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !108, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!108 = !{!104, !109}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !106, file: !107, line: 56, type: !28, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "exit_failure", scope: !113, file: !114, line: 24, type: !116, isLocal: false, isDefinition: true)
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !115, splitDebugInlining: false, nameTableKind: None)
!114 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!115 = !{!111}
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "program_name", scope: !119, file: !120, line: 33, type: !74, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !121, globals: !122, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!121 = !{!8, !6}
!122 = !{!117}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !125, file: !126, line: 85, type: !201, isLocal: false, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !127, retainedTypes: !162, globals: !166, splitDebugInlining: false, nameTableKind: None)
!126 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!127 = !{!128, !142, !147}
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !129, line: 32, baseType: !17, size: 32, elements: !130)
!129 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!131 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!140 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!141 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !129, line: 242, baseType: !17, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!146 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 46, baseType: !17, size: 32, elements: !149)
!148 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!150 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!151 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!152 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!153 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!154 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!155 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!156 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!157 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!158 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!159 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!160 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!161 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!162 = !{!77, !163, !164, !6}
!163 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 46, baseType: !95)
!165 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!166 = !{!123, !167, !171, !183, !185, !190, !197, !199}
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !125, file: !126, line: 101, type: !169, isLocal: false, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 320, elements: !81)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !125, file: !126, line: 1052, type: !173, isLocal: false, isDefinition: true)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !126, line: 65, size: 448, elements: !174)
!174 = !{!175, !176, !177, !181, !182}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !173, file: !126, line: 68, baseType: !128, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !126, line: 71, baseType: !77, size: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !173, file: !126, line: 75, baseType: !178, size: 256, offset: 64)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !173, file: !126, line: 78, baseType: !74, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !173, file: !126, line: 81, baseType: !74, size: 64, offset: 384)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !125, file: !126, line: 116, type: !173, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "slot0", scope: !125, file: !126, line: 842, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 256)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "slotvec", scope: !125, file: !126, line: 845, type: !192, isLocal: true, isDefinition: true)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !126, line: 834, size: 128, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !193, file: !126, line: 836, baseType: !164, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !193, file: !126, line: 837, baseType: !6, size: 64, offset: 64)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "nslots", scope: !125, file: !126, line: 843, type: !77, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "slotvec0", scope: !125, file: !126, line: 844, type: !193, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 704, elements: !203)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!203 = !{!204}
!204 = !DISubrange(count: 11)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !207, file: !208, line: 26, type: !210, isLocal: false, isDefinition: true)
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !209, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !{!205}
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 47)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !215, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !217, line: 102, baseType: !218)
!217 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !16, line: 73, baseType: !95)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !230, globals: !231, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!221 = !{!222}
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !223, line: 25, baseType: !17, size: 32, elements: !224)
!223 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!224 = !{!225, !226, !227, !228, !229}
!225 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!226 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!227 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!228 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!229 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!230 = !{!8, !13, !22}
!231 = !{!232, !294, !296}
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !234, file: !220, line: 106, type: !74, isLocal: true, isDefinition: true)
!234 = distinct !DISubprogram(name: "parse_with_separator", scope: !220, file: !220, line: 102, type: !235, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !240)
!235 = !DISubroutineType(types: !236)
!236 = !{!74, !74, !74, !237, !238, !239, !239}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !260, !269, !270, !271, !272, !273, !274, !277, !282, !285, !289}
!241 = !DILocalVariable(name: "spec", arg: 1, scope: !234, file: !220, line: 102, type: !74)
!242 = !DILocalVariable(name: "separator", arg: 2, scope: !234, file: !220, line: 102, type: !74)
!243 = !DILocalVariable(name: "uid", arg: 3, scope: !234, file: !220, line: 103, type: !237)
!244 = !DILocalVariable(name: "gid", arg: 4, scope: !234, file: !220, line: 103, type: !238)
!245 = !DILocalVariable(name: "username", arg: 5, scope: !234, file: !220, line: 104, type: !239)
!246 = !DILocalVariable(name: "groupname", arg: 6, scope: !234, file: !220, line: 104, type: !239)
!247 = !DILocalVariable(name: "error_msg", scope: !234, file: !220, line: 110, type: !74)
!248 = !DILocalVariable(name: "pwd", scope: !234, file: !220, line: 111, type: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !251, line: 49, size: 384, elements: !252)
!251 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!252 = !{!253, !254, !255, !256, !257, !258, !259}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !250, file: !251, line: 51, baseType: !6, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !250, file: !251, line: 52, baseType: !6, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !250, file: !251, line: 54, baseType: !15, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !250, file: !251, line: 55, baseType: !23, size: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !250, file: !251, line: 56, baseType: !6, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !250, file: !251, line: 57, baseType: !6, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !250, file: !251, line: 58, baseType: !6, size: 64, offset: 320)
!260 = !DILocalVariable(name: "grp", scope: !234, file: !220, line: 112, type: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !263, line: 42, size: 256, elements: !264)
!263 = !DIFile(filename: "/usr/include/grp.h", directory: "")
!264 = !{!265, !266, !267, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !262, file: !263, line: 44, baseType: !6, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !262, file: !263, line: 45, baseType: !6, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !262, file: !263, line: 46, baseType: !23, size: 32, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !262, file: !263, line: 47, baseType: !239, size: 64, offset: 192)
!269 = !DILocalVariable(name: "u", scope: !234, file: !220, line: 113, type: !6)
!270 = !DILocalVariable(name: "g", scope: !234, file: !220, line: 114, type: !74)
!271 = !DILocalVariable(name: "gname", scope: !234, file: !220, line: 115, type: !6)
!272 = !DILocalVariable(name: "unum", scope: !234, file: !220, line: 116, type: !13)
!273 = !DILocalVariable(name: "gnum", scope: !234, file: !220, line: 117, type: !22)
!274 = !DILocalVariable(name: "ulen", scope: !275, file: !220, line: 137, type: !164)
!275 = distinct !DILexicalBlock(scope: !276, file: !220, line: 136, column: 5)
!276 = distinct !DILexicalBlock(scope: !234, file: !220, line: 130, column: 7)
!277 = !DILocalVariable(name: "use_login_group", scope: !278, file: !220, line: 164, type: !28)
!278 = distinct !DILexicalBlock(scope: !279, file: !220, line: 163, column: 9)
!279 = distinct !DILexicalBlock(scope: !280, file: !220, line: 162, column: 11)
!280 = distinct !DILexicalBlock(scope: !281, file: !220, line: 159, column: 5)
!281 = distinct !DILexicalBlock(scope: !234, file: !220, line: 158, column: 7)
!282 = !DILocalVariable(name: "tmp", scope: !283, file: !220, line: 173, type: !95)
!283 = distinct !DILexicalBlock(scope: !284, file: !220, line: 172, column: 13)
!284 = distinct !DILexicalBlock(scope: !278, file: !220, line: 165, column: 15)
!285 = !DILocalVariable(name: "buf", scope: !286, file: !220, line: 188, type: !56)
!286 = distinct !DILexicalBlock(scope: !287, file: !220, line: 185, column: 13)
!287 = distinct !DILexicalBlock(scope: !288, file: !220, line: 184, column: 15)
!288 = distinct !DILexicalBlock(scope: !279, file: !220, line: 182, column: 9)
!289 = !DILocalVariable(name: "tmp", scope: !290, file: !220, line: 205, type: !95)
!290 = distinct !DILexicalBlock(scope: !291, file: !220, line: 204, column: 9)
!291 = distinct !DILexicalBlock(scope: !292, file: !220, line: 203, column: 11)
!292 = distinct !DILexicalBlock(scope: !293, file: !220, line: 199, column: 5)
!293 = distinct !DILexicalBlock(scope: !234, file: !220, line: 198, column: 7)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !234, file: !220, line: 107, type: !74, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !234, file: !220, line: 108, type: !74, isLocal: true, isDefinition: true)
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !300, retainedTypes: !304, splitDebugInlining: false, nameTableKind: None)
!299 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!300 = !{!301}
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 40, baseType: !17, size: 32, elements: !302)
!302 = !{!303}
!303 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!304 = !{!8}
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !307, retainedTypes: !321, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!307 = !{!308}
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !310, file: !309, line: 186, baseType: !17, size: 32, elements: !319)
!309 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!310 = distinct !DISubprogram(name: "x2nrealloc", scope: !309, file: !309, line: 174, type: !311, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !314)
!311 = !DISubroutineType(types: !312)
!312 = !{!8, !8, !313, !164}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!314 = !{!315, !316, !317, !318}
!315 = !DILocalVariable(name: "p", arg: 1, scope: !310, file: !309, line: 174, type: !8)
!316 = !DILocalVariable(name: "pn", arg: 2, scope: !310, file: !309, line: 174, type: !313)
!317 = !DILocalVariable(name: "s", arg: 3, scope: !310, file: !309, line: 174, type: !164)
!318 = !DILocalVariable(name: "n", scope: !310, file: !309, line: 176, type: !164)
!319 = !{!320}
!320 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!321 = !{!164, !6, !8}
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!324 = distinct !DICompileUnit(language: DW_LANG_C99, file: !325, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!325 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!326 = distinct !DICompileUnit(language: DW_LANG_C99, file: !327, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !328, retainedTypes: !329, splitDebugInlining: false, nameTableKind: None)
!327 = !DIFile(filename: "lib/xstrtoul.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!328 = !{!222, !147}
!329 = !{!77, !163}
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !304, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !334, splitDebugInlining: false, nameTableKind: None)
!333 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!334 = !{!164}
!335 = distinct !DICompileUnit(language: DW_LANG_C99, file: !336, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!336 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!337 = distinct !DICompileUnit(language: DW_LANG_C99, file: !338, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!338 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!339 = distinct !DICompileUnit(language: DW_LANG_C99, file: !340, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !341, retainedTypes: !304, splitDebugInlining: false, nameTableKind: None)
!340 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!341 = !{!342}
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !343, line: 41, baseType: !17, size: 32, elements: !344)
!343 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!345 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!346 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!347 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!348 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!349 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!350 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!351 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!352 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!353 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!354 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!355 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!356 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!357 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!358 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!359 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!360 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!361 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!362 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!363 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!364 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!365 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!366 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!367 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!368 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!369 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!370 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!371 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!372 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!373 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!374 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!375 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!376 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!377 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!378 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!379 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!380 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!381 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!382 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!383 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!384 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!385 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!386 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!387 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!388 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!389 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!390 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!391 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!392 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!393 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!394 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!453 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!456 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!457 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!458 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!459 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!460 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!461 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!462 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!463 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!464 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!465 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!466 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!467 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!540 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!613 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!614 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!615 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!616 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!617 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!618 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!619 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!620 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!621 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!622 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!623 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!624 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!625 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!626 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!627 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!629 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!630 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!631 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!632 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!633 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!634 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!660 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!661 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!662 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!663 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!664 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!669 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!670 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!671 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!672 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!728 = distinct !DICompileUnit(language: DW_LANG_C99, file: !729, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !730, retainedTypes: !761, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!730 = !{!731}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !732, file: !729, line: 83, baseType: !17, size: 32, elements: !759)
!732 = distinct !DISubprogram(name: "mgetgroups", scope: !729, file: !729, line: 66, type: !733, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !736)
!733 = !DISubroutineType(types: !734)
!734 = !{!77, !74, !22, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !747, !748, !751, !754, !757, !758}
!737 = !DILocalVariable(name: "username", arg: 1, scope: !732, file: !729, line: 66, type: !74)
!738 = !DILocalVariable(name: "gid", arg: 2, scope: !732, file: !729, line: 66, type: !22)
!739 = !DILocalVariable(name: "groups", arg: 3, scope: !732, file: !729, line: 66, type: !735)
!740 = !DILocalVariable(name: "max_n_groups", scope: !732, file: !729, line: 68, type: !77)
!741 = !DILocalVariable(name: "ng", scope: !732, file: !729, line: 69, type: !77)
!742 = !DILocalVariable(name: "g", scope: !732, file: !729, line: 70, type: !238)
!743 = !DILocalVariable(name: "h", scope: !744, file: !729, line: 92, type: !238)
!744 = distinct !DILexicalBlock(scope: !745, file: !729, line: 91, column: 9)
!745 = distinct !DILexicalBlock(scope: !746, file: !729, line: 82, column: 5)
!746 = distinct !DILexicalBlock(scope: !732, file: !729, line: 81, column: 7)
!747 = !DILocalVariable(name: "last_n_groups", scope: !744, file: !729, line: 93, type: !77)
!748 = !DILocalVariable(name: "saved_errno", scope: !749, file: !729, line: 105, type: !77)
!749 = distinct !DILexicalBlock(scope: !750, file: !729, line: 104, column: 13)
!750 = distinct !DILexicalBlock(scope: !744, file: !729, line: 103, column: 15)
!751 = !DILocalVariable(name: "saved_errno", scope: !752, file: !729, line: 156, type: !77)
!752 = distinct !DILexicalBlock(scope: !753, file: !729, line: 154, column: 5)
!753 = distinct !DILexicalBlock(scope: !732, file: !729, line: 153, column: 7)
!754 = !DILocalVariable(name: "first", scope: !755, file: !729, line: 187, type: !22)
!755 = distinct !DILexicalBlock(scope: !756, file: !729, line: 186, column: 5)
!756 = distinct !DILexicalBlock(scope: !732, file: !729, line: 185, column: 7)
!757 = !DILocalVariable(name: "next", scope: !755, file: !729, line: 188, type: !238)
!758 = !DILocalVariable(name: "groups_end", scope: !755, file: !729, line: 189, type: !238)
!759 = !{!760}
!760 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!761 = !{!8, !22, !164}
!762 = distinct !DICompileUnit(language: DW_LANG_C99, file: !763, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !304, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!764 = distinct !DICompileUnit(language: DW_LANG_C99, file: !765, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!765 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!766 = distinct !DICompileUnit(language: DW_LANG_C99, file: !767, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !304, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!768 = distinct !DICompileUnit(language: DW_LANG_C99, file: !769, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !304, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!770 = !{!"clang version 12.0.1"}
!771 = !{i32 7, !"Dwarf Version", i32 4}
!772 = !{i32 2, !"Debug Info Version", i32 3}
!773 = !{i32 1, !"wchar_size", i32 4}
!774 = !{i32 7, !"PIC Level", i32 2}
!775 = !{i32 7, !"PIE Level", i32 2}
!776 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 90, type: !777, scopeLine: 91, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !77}
!779 = !{!780}
!780 = !DILocalVariable(name: "status", arg: 1, scope: !776, file: !3, line: 90, type: !77)
!781 = !DILocation(line: 0, scope: !776)
!782 = !DILocation(line: 92, column: 14, scope: !783)
!783 = distinct !DILexicalBlock(scope: !776, file: !3, line: 92, column: 7)
!784 = !DILocation(line: 92, column: 7, scope: !776)
!785 = !DILocation(line: 93, column: 5, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !3, line: 93, column: 5)
!787 = !{!788, !788, i64 0}
!788 = !{!"any pointer", !789, i64 0}
!789 = !{!"omnipotent char", !790, i64 0}
!790 = !{!"Simple C/C++ TBAA"}
!791 = !DILocation(line: 96, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !783, file: !3, line: 95, column: 5)
!793 = !DILocation(line: 97, column: 7, scope: !792)
!794 = !DILocation(line: 102, column: 7, scope: !792)
!795 = !DILocation(line: 113, column: 7, scope: !792)
!796 = !DILocation(line: 114, column: 7, scope: !792)
!797 = !DILocation(line: 115, column: 7, scope: !792)
!798 = !DILocalVariable(name: "program", arg: 1, scope: !799, file: !800, line: 634, type: !74)
!799 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !800, file: !800, line: 634, type: !801, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!800 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!801 = !DISubroutineType(types: !802)
!802 = !{null, !74}
!803 = !{!798, !804, !813, !814, !816}
!804 = !DILocalVariable(name: "infomap", scope: !799, file: !800, line: 636, type: !805)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 896, elements: !811)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !799, file: !800, line: 636, size: 128, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !807, file: !800, line: 636, baseType: !74, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !807, file: !800, line: 636, baseType: !74, size: 64, offset: 64)
!811 = !{!812}
!812 = !DISubrange(count: 7)
!813 = !DILocalVariable(name: "node", scope: !799, file: !800, line: 646, type: !74)
!814 = !DILocalVariable(name: "map_prog", scope: !799, file: !800, line: 647, type: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!816 = !DILocalVariable(name: "lc_messages", scope: !799, file: !800, line: 659, type: !74)
!817 = !DILocation(line: 0, scope: !799, inlinedAt: !818)
!818 = distinct !DILocation(line: 119, column: 7, scope: !792)
!819 = !DILocation(line: 636, column: 3, scope: !799, inlinedAt: !818)
!820 = !DILocation(line: 636, column: 67, scope: !799, inlinedAt: !818)
!821 = !DILocation(line: 647, column: 36, scope: !799, inlinedAt: !818)
!822 = !DILocation(line: 649, column: 3, scope: !799, inlinedAt: !818)
!823 = !DILocation(line: 649, column: 33, scope: !799, inlinedAt: !818)
!824 = !DILocation(line: 650, column: 13, scope: !799, inlinedAt: !818)
!825 = !DILocation(line: 649, column: 20, scope: !799, inlinedAt: !818)
!826 = !{!827, !788, i64 0}
!827 = !{!"infomap", !788, i64 0, !788, i64 8}
!828 = !DILocation(line: 649, column: 10, scope: !799, inlinedAt: !818)
!829 = !DILocation(line: 649, column: 28, scope: !799, inlinedAt: !818)
!830 = distinct !{!830, !822, !824, !831}
!831 = !{!"llvm.loop.mustprogress"}
!832 = !DILocation(line: 652, column: 17, scope: !833, inlinedAt: !818)
!833 = distinct !DILexicalBlock(scope: !799, file: !800, line: 652, column: 7)
!834 = !{!827, !788, i64 8}
!835 = !DILocation(line: 652, column: 7, scope: !833, inlinedAt: !818)
!836 = !DILocation(line: 652, column: 7, scope: !799, inlinedAt: !818)
!837 = !DILocation(line: 655, column: 3, scope: !799, inlinedAt: !818)
!838 = !DILocation(line: 659, column: 29, scope: !799, inlinedAt: !818)
!839 = !DILocation(line: 660, column: 7, scope: !840, inlinedAt: !818)
!840 = distinct !DILexicalBlock(scope: !799, file: !800, line: 660, column: 7)
!841 = !DILocation(line: 660, column: 19, scope: !840, inlinedAt: !818)
!842 = !DILocation(line: 660, column: 22, scope: !840, inlinedAt: !818)
!843 = !DILocation(line: 660, column: 7, scope: !799, inlinedAt: !818)
!844 = !DILocation(line: 666, column: 7, scope: !845, inlinedAt: !818)
!845 = distinct !DILexicalBlock(scope: !840, file: !800, line: 661, column: 5)
!846 = !DILocation(line: 668, column: 5, scope: !845, inlinedAt: !818)
!847 = !DILocation(line: 669, column: 3, scope: !799, inlinedAt: !818)
!848 = !DILocation(line: 671, column: 3, scope: !799, inlinedAt: !818)
!849 = !DILocation(line: 673, column: 1, scope: !799, inlinedAt: !818)
!850 = !DILocation(line: 121, column: 3, scope: !776)
!851 = !DISubprogram(name: "dcgettext", scope: !852, file: !852, line: 51, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!852 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!853 = !DISubroutineType(types: !854)
!854 = !{!6, !74, !74, !77}
!855 = !DISubprogram(name: "fputs_unlocked", scope: !856, file: !856, line: 667, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!856 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!857 = !DISubroutineType(types: !858)
!858 = !{!77, !74, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !861, line: 49, size: 1728, elements: !862)
!861 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!862 = !{!863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !878, !879, !880, !881, !884, !885, !887, !891, !894, !896, !899, !902, !903, !904, !905, !906}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !860, file: !861, line: 51, baseType: !77, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !860, file: !861, line: 54, baseType: !6, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !860, file: !861, line: 55, baseType: !6, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !860, file: !861, line: 56, baseType: !6, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !860, file: !861, line: 57, baseType: !6, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !860, file: !861, line: 58, baseType: !6, size: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !860, file: !861, line: 59, baseType: !6, size: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !860, file: !861, line: 60, baseType: !6, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !860, file: !861, line: 61, baseType: !6, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !860, file: !861, line: 64, baseType: !6, size: 64, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !860, file: !861, line: 65, baseType: !6, size: 64, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !860, file: !861, line: 66, baseType: !6, size: 64, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !860, file: !861, line: 68, baseType: !876, size: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !861, line: 36, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !860, file: !861, line: 70, baseType: !859, size: 64, offset: 832)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !860, file: !861, line: 72, baseType: !77, size: 32, offset: 896)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !860, file: !861, line: 73, baseType: !77, size: 32, offset: 928)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !860, file: !861, line: 74, baseType: !882, size: 64, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 152, baseType: !883)
!883 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !860, file: !861, line: 77, baseType: !163, size: 16, offset: 1024)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !860, file: !861, line: 78, baseType: !886, size: 8, offset: 1040)
!886 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !860, file: !861, line: 79, baseType: !888, size: 8, offset: 1048)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 1)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !860, file: !861, line: 81, baseType: !892, size: 64, offset: 1088)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !861, line: 43, baseType: null)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !860, file: !861, line: 89, baseType: !895, size: 64, offset: 1152)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 153, baseType: !883)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !860, file: !861, line: 91, baseType: !897, size: 64, offset: 1216)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !861, line: 37, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !860, file: !861, line: 92, baseType: !900, size: 64, offset: 1280)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !861, line: 38, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !860, file: !861, line: 93, baseType: !859, size: 64, offset: 1344)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !860, file: !861, line: 94, baseType: !8, size: 64, offset: 1408)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !860, file: !861, line: 95, baseType: !164, size: 64, offset: 1472)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !860, file: !861, line: 96, baseType: !77, size: 32, offset: 1536)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !860, file: !861, line: 98, baseType: !907, size: 160, offset: 1568)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 20)
!910 = !DISubprogram(name: "setlocale", scope: !911, file: !911, line: 122, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!911 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!912 = !DISubroutineType(types: !913)
!913 = !{!6, !77, !74}
!914 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 125, type: !915, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!77, !77, !239}
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925, !926, !942, !943, !945}
!918 = !DILocalVariable(name: "argc", arg: 1, scope: !914, file: !3, line: 125, type: !77)
!919 = !DILocalVariable(name: "argv", arg: 2, scope: !914, file: !3, line: 125, type: !239)
!920 = !DILocalVariable(name: "optc", scope: !914, file: !3, line: 127, type: !77)
!921 = !DILocalVariable(name: "selinux_enabled", scope: !914, file: !3, line: 128, type: !77)
!922 = !DILocalVariable(name: "smack_enabled", scope: !914, file: !3, line: 129, type: !28)
!923 = !DILocalVariable(name: "pw_name", scope: !914, file: !3, line: 130, type: !6)
!924 = !DILocalVariable(name: "n_ids", scope: !914, file: !3, line: 188, type: !164)
!925 = !DILocalVariable(name: "default_format", scope: !914, file: !3, line: 197, type: !28)
!926 = !DILocalVariable(name: "pwd", scope: !927, file: !3, line: 238, type: !932)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 237, column: 9)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 236, column: 7)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 236, column: 7)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 228, column: 5)
!931 = distinct !DILexicalBlock(scope: !914, file: !3, line: 227, column: 7)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !251, line: 49, size: 384, elements: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !941}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !933, file: !251, line: 51, baseType: !6, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !933, file: !251, line: 52, baseType: !6, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !933, file: !251, line: 54, baseType: !15, size: 32, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !933, file: !251, line: 55, baseType: !23, size: 32, offset: 160)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !933, file: !251, line: 56, baseType: !6, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !933, file: !251, line: 57, baseType: !6, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !933, file: !251, line: 58, baseType: !6, size: 64, offset: 320)
!942 = !DILocalVariable(name: "spec", scope: !927, file: !3, line: 239, type: !74)
!943 = !DILocalVariable(name: "NO_UID", scope: !944, file: !3, line: 271, type: !13)
!944 = distinct !DILexicalBlock(scope: !931, file: !3, line: 267, column: 5)
!945 = !DILocalVariable(name: "NO_GID", scope: !944, file: !3, line: 272, type: !22)
!946 = !DILocation(line: 0, scope: !914)
!947 = !DILocation(line: 133, column: 21, scope: !914)
!948 = !DILocation(line: 133, column: 3, scope: !914)
!949 = !DILocation(line: 134, column: 3, scope: !914)
!950 = !DILocation(line: 135, column: 3, scope: !914)
!951 = !DILocation(line: 136, column: 3, scope: !914)
!952 = !DILocation(line: 138, column: 3, scope: !914)
!953 = !DILocation(line: 140, column: 3, scope: !914)
!954 = !DILocation(line: 140, column: 18, scope: !914)
!955 = !DILocation(line: 157, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 156, column: 15)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 143, column: 9)
!958 = distinct !DILexicalBlock(scope: !914, file: !3, line: 141, column: 5)
!959 = !DILocation(line: 168, column: 11, scope: !957)
!960 = !DILocation(line: 171, column: 11, scope: !957)
!961 = !DILocation(line: 174, column: 11, scope: !957)
!962 = !DILocation(line: 177, column: 11, scope: !957)
!963 = !DILocation(line: 180, column: 11, scope: !957)
!964 = !DILocation(line: 181, column: 9, scope: !957)
!965 = !DILocation(line: 182, column: 9, scope: !957)
!966 = !DILocation(line: 184, column: 11, scope: !957)
!967 = !DILocation(line: 0, scope: !957)
!968 = distinct !{!968, !953, !969, !831}
!969 = !DILocation(line: 186, column: 5, scope: !914)
!970 = !DILocation(line: 188, column: 25, scope: !914)
!971 = !{!972, !972, i64 0}
!972 = !{!"int", !789, i64 0}
!973 = !DILocation(line: 188, column: 23, scope: !914)
!974 = !DILocation(line: 188, column: 18, scope: !914)
!975 = !DILocation(line: 194, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !914, file: !3, line: 194, column: 7)
!977 = !DILocation(line: 194, column: 19, scope: !976)
!978 = !DILocation(line: 194, column: 17, scope: !976)
!979 = !DILocation(line: 194, column: 32, scope: !976)
!980 = !DILocation(line: 194, column: 30, scope: !976)
!981 = !DILocation(line: 194, column: 63, scope: !976)
!982 = !DILocation(line: 194, column: 7, scope: !914)
!983 = !DILocation(line: 195, column: 5, scope: !976)
!984 = !DILocation(line: 198, column: 28, scope: !914)
!985 = !DILocation(line: 202, column: 22, scope: !986)
!986 = distinct !DILexicalBlock(scope: !914, file: !3, line: 202, column: 7)
!987 = !DILocation(line: 215, column: 13, scope: !988)
!988 = distinct !DILexicalBlock(scope: !914, file: !3, line: 215, column: 7)
!989 = !DILocation(line: 227, column: 7, scope: !914)
!990 = !DILocation(line: 202, column: 26, scope: !986)
!991 = !DILocation(line: 202, column: 35, scope: !986)
!992 = !DILocation(line: 202, column: 38, scope: !986)
!993 = !DILocation(line: 202, column: 7, scope: !914)
!994 = !DILocation(line: 203, column: 5, scope: !986)
!995 = !DILocation(line: 206, column: 25, scope: !996)
!996 = distinct !DILexicalBlock(scope: !914, file: !3, line: 206, column: 7)
!997 = !DILocation(line: 206, column: 7, scope: !914)
!998 = !DILocation(line: 207, column: 5, scope: !996)
!999 = !DILocation(line: 216, column: 7, scope: !988)
!1000 = !DILocation(line: 217, column: 35, scope: !988)
!1001 = !DILocation(line: 229, column: 30, scope: !930)
!1002 = !DILocation(line: 229, column: 22, scope: !930)
!1003 = !{!1004, !1004, i64 0}
!1004 = !{!"_Bool", !789, i64 0}
!1005 = !DILocation(line: 234, column: 16, scope: !930)
!1006 = !DILocation(line: 234, column: 13, scope: !930)
!1007 = !DILocation(line: 236, column: 21, scope: !928)
!1008 = !DILocation(line: 236, column: 7, scope: !929)
!1009 = !DILocation(line: 0, scope: !927)
!1010 = !DILocation(line: 239, column: 30, scope: !927)
!1011 = !DILocation(line: 243, column: 15, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !927, file: !3, line: 243, column: 15)
!1013 = !{!789, !789, i64 0}
!1014 = !DILocation(line: 243, column: 15, scope: !927)
!1015 = !DILocation(line: 245, column: 19, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 245, column: 19)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 244, column: 13)
!1018 = !DILocation(line: 245, column: 67, scope: !1016)
!1019 = !DILocation(line: 245, column: 19, scope: !1017)
!1020 = !DILocation(line: 250, column: 35, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 246, column: 17)
!1022 = !DILocation(line: 250, column: 25, scope: !1021)
!1023 = !DILocation(line: 253, column: 19, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !927, file: !3, line: 253, column: 15)
!1025 = !DILocation(line: 253, column: 15, scope: !927)
!1026 = !DILocation(line: 255, column: 25, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 254, column: 13)
!1028 = !DILocation(line: 255, column: 32, scope: !1027)
!1029 = !DILocation(line: 255, column: 67, scope: !1027)
!1030 = !DILocation(line: 255, column: 62, scope: !1027)
!1031 = !DILocation(line: 255, column: 55, scope: !1027)
!1032 = !DILocation(line: 255, column: 15, scope: !1027)
!1033 = !DILocation(line: 256, column: 18, scope: !1027)
!1034 = !DILocation(line: 257, column: 15, scope: !1027)
!1035 = !DILocation(line: 259, column: 35, scope: !927)
!1036 = !{!1037, !788, i64 0}
!1037 = !{!"passwd", !788, i64 0, !788, i64 8, !972, i64 16, !972, i64 20, !788, i64 24, !788, i64 32, !788, i64 40}
!1038 = !DILocation(line: 259, column: 21, scope: !927)
!1039 = !DILocation(line: 260, column: 30, scope: !927)
!1040 = !{!1037, !972, i64 16}
!1041 = !DILocation(line: 260, column: 23, scope: !927)
!1042 = !DILocation(line: 260, column: 16, scope: !927)
!1043 = !DILocation(line: 261, column: 30, scope: !927)
!1044 = !{!1037, !972, i64 20}
!1045 = !DILocation(line: 261, column: 23, scope: !927)
!1046 = !DILocation(line: 261, column: 16, scope: !927)
!1047 = !DILocation(line: 262, column: 11, scope: !927)
!1048 = !DILocation(line: 263, column: 11, scope: !927)
!1049 = !DILocation(line: 264, column: 9, scope: !928)
!1050 = !DILocation(line: 236, column: 36, scope: !928)
!1051 = !DILocation(line: 236, column: 14, scope: !928)
!1052 = distinct !{!1052, !1008, !1053, !831}
!1053 = !DILocation(line: 264, column: 9, scope: !929)
!1054 = !DILocation(line: 0, scope: !944)
!1055 = !DILocation(line: 274, column: 11, scope: !944)
!1056 = !DILocation(line: 274, column: 24, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !944, file: !3, line: 274, column: 11)
!1058 = !DILocation(line: 274, column: 11, scope: !1057)
!1059 = !DILocation(line: 275, column: 25, scope: !1057)
!1060 = !DILocation(line: 277, column: 11, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 276, column: 9)
!1062 = !DILocation(line: 277, column: 17, scope: !1061)
!1063 = !DILocation(line: 278, column: 18, scope: !1061)
!1064 = !DILocation(line: 278, column: 16, scope: !1061)
!1065 = !DILocation(line: 279, column: 20, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 279, column: 15)
!1067 = !DILocation(line: 279, column: 30, scope: !1066)
!1068 = !DILocation(line: 279, column: 33, scope: !1066)
!1069 = !DILocation(line: 279, column: 15, scope: !1061)
!1070 = !DILocation(line: 280, column: 13, scope: !1066)
!1071 = !DILocation(line: 283, column: 11, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !944, file: !3, line: 283, column: 11)
!1073 = !DILocation(line: 283, column: 11, scope: !944)
!1074 = !DILocation(line: 283, column: 23, scope: !1072)
!1075 = !DILocation(line: 284, column: 14, scope: !1072)
!1076 = !DILocation(line: 284, column: 25, scope: !1072)
!1077 = !DILocation(line: 294, column: 11, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 293, column: 9)
!1079 = distinct !DILexicalBlock(scope: !944, file: !3, line: 292, column: 11)
!1080 = !DILocation(line: 286, column: 11, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 285, column: 9)
!1082 = !DILocation(line: 286, column: 17, scope: !1081)
!1083 = !DILocation(line: 287, column: 18, scope: !1081)
!1084 = !DILocation(line: 287, column: 16, scope: !1081)
!1085 = !DILocation(line: 288, column: 20, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 288, column: 15)
!1087 = !DILocation(line: 288, column: 30, scope: !1086)
!1088 = !DILocation(line: 288, column: 33, scope: !1086)
!1089 = !DILocation(line: 288, column: 15, scope: !1081)
!1090 = !DILocation(line: 289, column: 13, scope: !1086)
!1091 = !DILocation(line: 292, column: 12, scope: !1079)
!1092 = !DILocation(line: 292, column: 22, scope: !1079)
!1093 = !DILocation(line: 294, column: 17, scope: !1078)
!1094 = !DILocation(line: 295, column: 18, scope: !1078)
!1095 = !DILocation(line: 295, column: 16, scope: !1078)
!1096 = !DILocation(line: 296, column: 20, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 296, column: 15)
!1098 = !DILocation(line: 296, column: 30, scope: !1097)
!1099 = !DILocation(line: 296, column: 33, scope: !1097)
!1100 = !DILocation(line: 296, column: 15, scope: !1078)
!1101 = !DILocation(line: 297, column: 13, scope: !1097)
!1102 = !DILocation(line: 299, column: 17, scope: !1078)
!1103 = !DILocation(line: 300, column: 18, scope: !1078)
!1104 = !DILocation(line: 300, column: 16, scope: !1078)
!1105 = !DILocation(line: 301, column: 20, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 301, column: 15)
!1107 = !DILocation(line: 301, column: 30, scope: !1106)
!1108 = !DILocation(line: 301, column: 33, scope: !1106)
!1109 = !DILocation(line: 301, column: 15, scope: !1078)
!1110 = !DILocation(line: 302, column: 13, scope: !1106)
!1111 = !DILocation(line: 304, column: 9, scope: !944)
!1112 = !DILocation(line: 307, column: 10, scope: !914)
!1113 = !{i8 0, i8 2}
!1114 = !DILocation(line: 308, column: 1, scope: !914)
!1115 = !DISubprogram(name: "bindtextdomain", scope: !852, file: !852, line: 86, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!6, !74, !74}
!1118 = !DISubprogram(name: "textdomain", scope: !852, file: !852, line: 82, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!6, !74}
!1121 = !DISubprogram(name: "atexit", scope: !1122, file: !1122, line: 595, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1122 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!77, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null}
!1128 = !DISubprogram(name: "getopt_long", scope: !71, file: !71, line: 66, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!77, !77, !1131, !74, !1133, !79}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1134 = !DISubprogram(name: "error", scope: !1135, file: !1135, line: 52, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1135 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !77, !77, !74, null}
!1138 = !DISubprogram(name: "getenv", scope: !1122, file: !1122, line: 634, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1139 = !DISubprogram(name: "getpwuid", scope: !251, file: !251, line: 110, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!932, !17}
!1142 = distinct !DISubprogram(name: "print_stuff", scope: !3, file: !3, line: 432, type: !801, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1143)
!1143 = !{!1144}
!1144 = !DILocalVariable(name: "pw_name", arg: 1, scope: !1142, file: !3, line: 432, type: !74)
!1145 = !DILocation(line: 0, scope: !1142)
!1146 = !DILocation(line: 434, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 434, column: 7)
!1148 = !DILocation(line: 434, column: 7, scope: !1142)
!1149 = !DILocation(line: 435, column: 19, scope: !1147)
!1150 = !DILocalVariable(name: "uid", arg: 1, scope: !1151, file: !3, line: 335, type: !13)
!1151 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 335, type: !1152, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1154)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !13}
!1154 = !{!1150, !1155, !1156}
!1155 = !DILocalVariable(name: "pwd", scope: !1151, file: !3, line: 337, type: !932)
!1156 = !DILocalVariable(name: "s", scope: !1151, file: !3, line: 350, type: !6)
!1157 = !DILocation(line: 0, scope: !1151, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 435, column: 7, scope: !1147)
!1159 = !DILocation(line: 339, column: 7, scope: !1160, inlinedAt: !1158)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 339, column: 7)
!1161 = !DILocation(line: 339, column: 7, scope: !1151, inlinedAt: !1158)
!1162 = !DILocation(line: 328, column: 21, scope: !49, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 350, column: 34, scope: !1151, inlinedAt: !1158)
!1164 = !DILocation(line: 341, column: 13, scope: !1165, inlinedAt: !1158)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 340, column: 5)
!1166 = !DILocation(line: 342, column: 15, scope: !1167, inlinedAt: !1158)
!1167 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 342, column: 11)
!1168 = !DILocation(line: 342, column: 11, scope: !1165, inlinedAt: !1158)
!1169 = !DILocation(line: 344, column: 24, scope: !1170, inlinedAt: !1158)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 343, column: 9)
!1171 = !DILocation(line: 0, scope: !49, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 345, column: 18, scope: !1170, inlinedAt: !1158)
!1173 = !DILocation(line: 328, column: 21, scope: !49, inlinedAt: !1172)
!1174 = !DILocation(line: 328, column: 10, scope: !49, inlinedAt: !1172)
!1175 = !DILocation(line: 344, column: 11, scope: !1170, inlinedAt: !1158)
!1176 = !DILocation(line: 346, column: 14, scope: !1170, inlinedAt: !1158)
!1177 = !DILocation(line: 347, column: 9, scope: !1170, inlinedAt: !1158)
!1178 = !DILocation(line: 350, column: 24, scope: !1151, inlinedAt: !1158)
!1179 = !DILocation(line: 350, column: 13, scope: !1151, inlinedAt: !1158)
!1180 = !DILocation(line: 0, scope: !49, inlinedAt: !1163)
!1181 = !DILocation(line: 328, column: 10, scope: !49, inlinedAt: !1163)
!1182 = !DILocation(line: 351, column: 3, scope: !1151, inlinedAt: !1158)
!1183 = !DILocation(line: 435, column: 7, scope: !1147)
!1184 = !DILocation(line: 442, column: 12, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 442, column: 12)
!1186 = !DILocation(line: 442, column: 12, scope: !1147)
!1187 = !DILocation(line: 443, column: 24, scope: !1185)
!1188 = !DILocation(line: 443, column: 48, scope: !1185)
!1189 = !DILocation(line: 443, column: 11, scope: !1185)
!1190 = !DILocation(line: 443, column: 8, scope: !1185)
!1191 = !DILocation(line: 443, column: 5, scope: !1185)
!1192 = !DILocation(line: 444, column: 12, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 444, column: 12)
!1194 = !DILocation(line: 444, column: 12, scope: !1185)
!1195 = !DILocation(line: 445, column: 38, scope: !1193)
!1196 = !DILocation(line: 445, column: 44, scope: !1193)
!1197 = !DILocation(line: 445, column: 50, scope: !1193)
!1198 = !DILocation(line: 446, column: 29, scope: !1193)
!1199 = !DILocation(line: 446, column: 39, scope: !1193)
!1200 = !DILocation(line: 445, column: 11, scope: !1193)
!1201 = !DILocation(line: 445, column: 8, scope: !1193)
!1202 = !DILocation(line: 445, column: 5, scope: !1193)
!1203 = !DILocalVariable(name: "username", arg: 1, scope: !1204, file: !3, line: 357, type: !74)
!1204 = distinct !DISubprogram(name: "print_full_info", scope: !3, file: !3, line: 357, type: !801, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1205 = !{!1203, !1206, !1207, !1215, !1217, !1218, !1219}
!1206 = !DILocalVariable(name: "pwd", scope: !1204, file: !3, line: 359, type: !932)
!1207 = !DILocalVariable(name: "grp", scope: !1204, file: !3, line: 360, type: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !263, line: 42, size: 256, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1209, file: !263, line: 44, baseType: !6, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1209, file: !263, line: 45, baseType: !6, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1209, file: !263, line: 46, baseType: !23, size: 32, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1209, file: !263, line: 47, baseType: !239, size: 64, offset: 192)
!1215 = !DILocalVariable(name: "groups", scope: !1216, file: !3, line: 389, type: !238)
!1216 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 388, column: 3)
!1217 = !DILocalVariable(name: "primary_group", scope: !1216, file: !3, line: 391, type: !22)
!1218 = !DILocalVariable(name: "n_groups", scope: !1216, file: !3, line: 397, type: !77)
!1219 = !DILocalVariable(name: "i", scope: !1220, file: !3, line: 411, type: !77)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 411, column: 5)
!1221 = !DILocation(line: 0, scope: !1204, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 450, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 447, column: 12)
!1224 = !DILocation(line: 362, column: 3, scope: !1204, inlinedAt: !1222)
!1225 = !DILocation(line: 0, scope: !49, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 362, column: 3, scope: !1204, inlinedAt: !1222)
!1227 = !DILocation(line: 328, column: 21, scope: !49, inlinedAt: !1226)
!1228 = !DILocation(line: 328, column: 10, scope: !49, inlinedAt: !1226)
!1229 = !DILocation(line: 363, column: 19, scope: !1204, inlinedAt: !1222)
!1230 = !DILocation(line: 363, column: 9, scope: !1204, inlinedAt: !1222)
!1231 = !DILocation(line: 364, column: 7, scope: !1232, inlinedAt: !1222)
!1232 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 364, column: 7)
!1233 = !DILocation(line: 364, column: 7, scope: !1204, inlinedAt: !1222)
!1234 = !DILocation(line: 365, column: 5, scope: !1232, inlinedAt: !1222)
!1235 = !DILocation(line: 367, column: 3, scope: !1204, inlinedAt: !1222)
!1236 = !DILocation(line: 0, scope: !61, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 367, column: 3, scope: !1204, inlinedAt: !1222)
!1238 = !DILocation(line: 317, column: 21, scope: !61, inlinedAt: !1237)
!1239 = !DILocation(line: 317, column: 10, scope: !61, inlinedAt: !1237)
!1240 = !DILocation(line: 368, column: 19, scope: !1204, inlinedAt: !1222)
!1241 = !DILocation(line: 368, column: 9, scope: !1204, inlinedAt: !1222)
!1242 = !DILocation(line: 369, column: 7, scope: !1243, inlinedAt: !1222)
!1243 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 369, column: 7)
!1244 = !DILocation(line: 369, column: 7, scope: !1204, inlinedAt: !1222)
!1245 = !DILocation(line: 370, column: 5, scope: !1243, inlinedAt: !1222)
!1246 = !{!1247, !788, i64 0}
!1247 = !{!"group", !788, i64 0, !788, i64 8, !972, i64 16, !788, i64 24}
!1248 = !DILocation(line: 372, column: 7, scope: !1249, inlinedAt: !1222)
!1249 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 372, column: 7)
!1250 = !DILocation(line: 372, column: 15, scope: !1249, inlinedAt: !1222)
!1251 = !DILocation(line: 372, column: 12, scope: !1249, inlinedAt: !1222)
!1252 = !DILocation(line: 372, column: 7, scope: !1204, inlinedAt: !1222)
!1253 = !DILocation(line: 374, column: 7, scope: !1254, inlinedAt: !1222)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 373, column: 5)
!1255 = !DILocation(line: 0, scope: !49, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 374, column: 7, scope: !1254, inlinedAt: !1222)
!1257 = !DILocation(line: 328, column: 21, scope: !49, inlinedAt: !1256)
!1258 = !DILocation(line: 328, column: 10, scope: !49, inlinedAt: !1256)
!1259 = !DILocation(line: 375, column: 23, scope: !1254, inlinedAt: !1222)
!1260 = !DILocation(line: 375, column: 13, scope: !1254, inlinedAt: !1222)
!1261 = !DILocation(line: 376, column: 11, scope: !1262, inlinedAt: !1222)
!1262 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 376, column: 11)
!1263 = !DILocation(line: 376, column: 11, scope: !1254, inlinedAt: !1222)
!1264 = !DILocation(line: 377, column: 9, scope: !1262, inlinedAt: !1222)
!1265 = !DILocation(line: 380, column: 7, scope: !1266, inlinedAt: !1222)
!1266 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 380, column: 7)
!1267 = !DILocation(line: 380, column: 15, scope: !1266, inlinedAt: !1222)
!1268 = !DILocation(line: 380, column: 12, scope: !1266, inlinedAt: !1222)
!1269 = !DILocation(line: 380, column: 7, scope: !1204, inlinedAt: !1222)
!1270 = !DILocation(line: 382, column: 7, scope: !1271, inlinedAt: !1222)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 381, column: 5)
!1272 = !DILocation(line: 0, scope: !61, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 382, column: 7, scope: !1271, inlinedAt: !1222)
!1274 = !DILocation(line: 317, column: 21, scope: !61, inlinedAt: !1273)
!1275 = !DILocation(line: 317, column: 10, scope: !61, inlinedAt: !1273)
!1276 = !DILocation(line: 383, column: 23, scope: !1271, inlinedAt: !1222)
!1277 = !DILocation(line: 383, column: 13, scope: !1271, inlinedAt: !1222)
!1278 = !DILocation(line: 384, column: 11, scope: !1279, inlinedAt: !1222)
!1279 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 384, column: 11)
!1280 = !DILocation(line: 384, column: 11, scope: !1271, inlinedAt: !1222)
!1281 = !DILocation(line: 385, column: 9, scope: !1279, inlinedAt: !1222)
!1282 = !DILocation(line: 389, column: 5, scope: !1216, inlinedAt: !1222)
!1283 = !DILocation(line: 392, column: 9, scope: !1284, inlinedAt: !1222)
!1284 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 392, column: 9)
!1285 = !DILocation(line: 392, column: 9, scope: !1216, inlinedAt: !1222)
!1286 = !DILocation(line: 393, column: 23, scope: !1284, inlinedAt: !1222)
!1287 = !DILocation(line: 393, column: 34, scope: !1284, inlinedAt: !1222)
!1288 = !DILocation(line: 0, scope: !1284, inlinedAt: !1222)
!1289 = !DILocation(line: 0, scope: !1216, inlinedAt: !1222)
!1290 = !DILocation(line: 397, column: 20, scope: !1216, inlinedAt: !1222)
!1291 = !DILocation(line: 398, column: 18, scope: !1292, inlinedAt: !1222)
!1292 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 398, column: 9)
!1293 = !DILocation(line: 398, column: 9, scope: !1216, inlinedAt: !1222)
!1294 = !DILocation(line: 395, column: 23, scope: !1284, inlinedAt: !1222)
!1295 = !DILocation(line: 401, column: 21, scope: !1296, inlinedAt: !1222)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 400, column: 13)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 399, column: 7)
!1298 = !DILocation(line: 401, column: 28, scope: !1296, inlinedAt: !1222)
!1299 = !DILocation(line: 402, column: 18, scope: !1296, inlinedAt: !1222)
!1300 = !DILocation(line: 401, column: 11, scope: !1296, inlinedAt: !1222)
!1301 = !DILocation(line: 404, column: 21, scope: !1296, inlinedAt: !1222)
!1302 = !DILocation(line: 404, column: 28, scope: !1296, inlinedAt: !1222)
!1303 = !DILocation(line: 404, column: 11, scope: !1296, inlinedAt: !1222)
!1304 = !DILocation(line: 405, column: 12, scope: !1297, inlinedAt: !1222)
!1305 = !DILocation(line: 406, column: 9, scope: !1297, inlinedAt: !1222)
!1306 = !DILocation(line: 409, column: 18, scope: !1307, inlinedAt: !1222)
!1307 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 409, column: 9)
!1308 = !DILocation(line: 409, column: 9, scope: !1216, inlinedAt: !1222)
!1309 = !DILocation(line: 410, column: 7, scope: !1307, inlinedAt: !1222)
!1310 = !DILocation(line: 0, scope: !1220, inlinedAt: !1222)
!1311 = !DILocation(line: 411, column: 23, scope: !1312, inlinedAt: !1222)
!1312 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 411, column: 5)
!1313 = !DILocation(line: 415, column: 9, scope: !1314, inlinedAt: !1222)
!1314 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 412, column: 7)
!1315 = !DILocation(line: 0, scope: !61, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 415, column: 9, scope: !1314, inlinedAt: !1222)
!1317 = !DILocation(line: 317, column: 21, scope: !61, inlinedAt: !1316)
!1318 = !DILocation(line: 317, column: 10, scope: !61, inlinedAt: !1316)
!1319 = !DILocation(line: 416, column: 25, scope: !1314, inlinedAt: !1222)
!1320 = !DILocation(line: 416, column: 15, scope: !1314, inlinedAt: !1222)
!1321 = !DILocation(line: 417, column: 13, scope: !1322, inlinedAt: !1222)
!1322 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 417, column: 13)
!1323 = !DILocation(line: 417, column: 13, scope: !1314, inlinedAt: !1222)
!1324 = !DILocation(line: 418, column: 11, scope: !1322, inlinedAt: !1222)
!1325 = !DILocation(line: 411, column: 5, scope: !1220, inlinedAt: !1222)
!1326 = !DILocation(line: 420, column: 11, scope: !1216, inlinedAt: !1222)
!1327 = !DILocation(line: 420, column: 5, scope: !1216, inlinedAt: !1222)
!1328 = !DILocation(line: 421, column: 3, scope: !1204, inlinedAt: !1222)
!1329 = !DILocalVariable(name: "__c", arg: 1, scope: !1330, file: !1331, line: 108, type: !77)
!1330 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1331, file: !1331, line: 108, type: !1332, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1334)
!1331 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!77, !77}
!1334 = !{!1329}
!1335 = !DILocation(line: 0, scope: !1330, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 414, column: 11, scope: !1337, inlinedAt: !1222)
!1337 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 413, column: 13)
!1338 = !DILocation(line: 110, column: 10, scope: !1330, inlinedAt: !1336)
!1339 = !{!1340, !788, i64 40}
!1340 = !{!"_IO_FILE", !972, i64 0, !788, i64 8, !788, i64 16, !788, i64 24, !788, i64 32, !788, i64 40, !788, i64 48, !788, i64 56, !788, i64 64, !788, i64 72, !788, i64 80, !788, i64 88, !788, i64 96, !788, i64 104, !972, i64 112, !972, i64 116, !1341, i64 120, !1342, i64 128, !789, i64 130, !789, i64 131, !788, i64 136, !1341, i64 144, !788, i64 152, !788, i64 160, !788, i64 168, !788, i64 176, !1341, i64 184, !972, i64 192, !789, i64 196}
!1341 = !{!"long", !789, i64 0}
!1342 = !{!"short", !789, i64 0}
!1343 = !{!1340, !788, i64 48}
!1344 = !{!"branch_weights", i32 2000, i32 1}
!1345 = !DILocation(line: 411, column: 36, scope: !1312, inlinedAt: !1222)
!1346 = distinct !{!1346, !1325, !1347, !831, !1348}
!1347 = !DILocation(line: 419, column: 7, scope: !1220, inlinedAt: !1222)
!1348 = !{!"llvm.loop.peeled.count", i32 1}
!1349 = !DILocation(line: 455, column: 7, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 455, column: 7)
!1351 = !DILocation(line: 455, column: 16, scope: !1350)
!1352 = !DILocation(line: 455, column: 19, scope: !1350)
!1353 = !DILocation(line: 455, column: 35, scope: !1350)
!1354 = !DILocation(line: 0, scope: !1330, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 457, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 456, column: 5)
!1357 = !DILocation(line: 110, column: 10, scope: !1330, inlinedAt: !1355)
!1358 = !DILocation(line: 0, scope: !1330, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 458, column: 7, scope: !1356)
!1360 = !DILocation(line: 110, column: 10, scope: !1330, inlinedAt: !1359)
!1361 = !DILocation(line: 462, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 461, column: 5)
!1363 = !DILocation(line: 0, scope: !1330, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 462, column: 7, scope: !1362)
!1365 = !DILocation(line: 110, column: 10, scope: !1330, inlinedAt: !1364)
!1366 = !DILocation(line: 464, column: 1, scope: !1142)
!1367 = !DISubprogram(name: "geteuid", scope: !1368, file: !1368, line: 690, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1368 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!17}
!1371 = !DISubprogram(name: "getuid", scope: !1368, file: !1368, line: 687, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1372 = !DISubprogram(name: "getegid", scope: !1368, file: !1368, line: 696, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1373 = !DISubprogram(name: "getgid", scope: !1368, file: !1368, line: 693, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1374 = !DISubprogram(name: "getgrgid", scope: !263, file: !263, line: 101, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1208, !17}
!1377 = distinct !DISubprogram(name: "print_group_list", scope: !92, file: !92, line: 36, type: !1378, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !93, retainedNodes: !1380)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!28, !74, !13, !22, !22, !28, !7}
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1399, !1401, !1402}
!1381 = !DILocalVariable(name: "username", arg: 1, scope: !1377, file: !92, line: 36, type: !74)
!1382 = !DILocalVariable(name: "ruid", arg: 2, scope: !1377, file: !92, line: 37, type: !13)
!1383 = !DILocalVariable(name: "rgid", arg: 3, scope: !1377, file: !92, line: 37, type: !22)
!1384 = !DILocalVariable(name: "egid", arg: 4, scope: !1377, file: !92, line: 37, type: !22)
!1385 = !DILocalVariable(name: "use_names", arg: 5, scope: !1377, file: !92, line: 38, type: !28)
!1386 = !DILocalVariable(name: "delim", arg: 6, scope: !1377, file: !92, line: 38, type: !7)
!1387 = !DILocalVariable(name: "ok", scope: !1377, file: !92, line: 40, type: !28)
!1388 = !DILocalVariable(name: "pwd", scope: !1377, file: !92, line: 41, type: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !251, line: 49, size: 384, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1390, file: !251, line: 51, baseType: !6, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1390, file: !251, line: 52, baseType: !6, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1390, file: !251, line: 54, baseType: !15, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1390, file: !251, line: 55, baseType: !23, size: 32, offset: 160)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1390, file: !251, line: 56, baseType: !6, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1390, file: !251, line: 57, baseType: !6, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1390, file: !251, line: 58, baseType: !6, size: 64, offset: 320)
!1399 = !DILocalVariable(name: "groups", scope: !1400, file: !92, line: 61, type: !238)
!1400 = distinct !DILexicalBlock(scope: !1377, file: !92, line: 60, column: 3)
!1401 = !DILocalVariable(name: "n_groups", scope: !1400, file: !92, line: 63, type: !77)
!1402 = !DILocalVariable(name: "i", scope: !1403, file: !92, line: 78, type: !77)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !92, line: 78, column: 5)
!1404 = !DILocation(line: 0, scope: !1377)
!1405 = !DILocation(line: 43, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1377, file: !92, line: 43, column: 7)
!1407 = !DILocation(line: 43, column: 7, scope: !1377)
!1408 = !DILocation(line: 45, column: 13, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !92, line: 44, column: 5)
!1410 = !DILocation(line: 46, column: 15, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1409, file: !92, line: 46, column: 11)
!1412 = !DILocation(line: 46, column: 11, scope: !1409)
!1413 = !DILocalVariable(name: "gid", arg: 1, scope: !1414, file: !92, line: 103, type: !22)
!1414 = distinct !DISubprogram(name: "print_group", scope: !92, file: !92, line: 103, type: !1415, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !93, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!28, !22, !28}
!1417 = !{!1413, !1418, !1419, !1427, !1428}
!1418 = !DILocalVariable(name: "use_name", arg: 2, scope: !1414, file: !92, line: 103, type: !28)
!1419 = !DILocalVariable(name: "grp", scope: !1414, file: !92, line: 105, type: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !263, line: 42, size: 256, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1421, file: !263, line: 44, baseType: !6, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1421, file: !263, line: 45, baseType: !6, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1421, file: !263, line: 46, baseType: !23, size: 32, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1421, file: !263, line: 47, baseType: !239, size: 64, offset: 192)
!1427 = !DILocalVariable(name: "ok", scope: !1414, file: !92, line: 106, type: !28)
!1428 = !DILocalVariable(name: "s", scope: !1414, file: !92, line: 119, type: !6)
!1429 = !DILocation(line: 0, scope: !1414, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 50, column: 8, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1377, file: !92, line: 50, column: 7)
!1432 = !DILocation(line: 108, column: 7, scope: !1414, inlinedAt: !1430)
!1433 = !DILocation(line: 97, column: 21, scope: !91, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 119, column: 34, scope: !1414, inlinedAt: !1430)
!1435 = !DILocation(line: 110, column: 13, scope: !1436, inlinedAt: !1430)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !92, line: 109, column: 5)
!1437 = distinct !DILexicalBlock(scope: !1414, file: !92, line: 108, column: 7)
!1438 = !DILocation(line: 111, column: 15, scope: !1439, inlinedAt: !1430)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !92, line: 111, column: 11)
!1440 = !DILocation(line: 111, column: 11, scope: !1436, inlinedAt: !1430)
!1441 = !DILocation(line: 113, column: 24, scope: !1442, inlinedAt: !1430)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !92, line: 112, column: 9)
!1443 = !DILocation(line: 114, column: 18, scope: !1442, inlinedAt: !1430)
!1444 = !DILocation(line: 113, column: 11, scope: !1442, inlinedAt: !1430)
!1445 = !DILocation(line: 116, column: 9, scope: !1442, inlinedAt: !1430)
!1446 = !DILocation(line: 119, column: 24, scope: !1414, inlinedAt: !1430)
!1447 = !DILocation(line: 120, column: 3, scope: !1414, inlinedAt: !1430)
!1448 = !DILocation(line: 50, column: 7, scope: !1377)
!1449 = !DILocation(line: 0, scope: !91, inlinedAt: !1434)
!1450 = !DILocation(line: 97, column: 10, scope: !91, inlinedAt: !1434)
!1451 = !DILocation(line: 53, column: 12, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1377, file: !92, line: 53, column: 7)
!1453 = !DILocation(line: 53, column: 7, scope: !1377)
!1454 = !DILocalVariable(name: "__c", arg: 1, scope: !1455, file: !1331, line: 108, type: !77)
!1455 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1331, file: !1331, line: 108, type: !1332, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !93, retainedNodes: !1456)
!1456 = !{!1454}
!1457 = !DILocation(line: 0, scope: !1455, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 55, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1452, file: !92, line: 54, column: 5)
!1460 = !DILocation(line: 110, column: 10, scope: !1455, inlinedAt: !1458)
!1461 = !DILocation(line: 55, column: 7, scope: !1459)
!1462 = !DILocation(line: 0, scope: !1414, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 56, column: 12, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !92, line: 56, column: 11)
!1465 = !DILocation(line: 108, column: 7, scope: !1414, inlinedAt: !1463)
!1466 = !DILocation(line: 97, column: 21, scope: !91, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 119, column: 34, scope: !1414, inlinedAt: !1463)
!1468 = !DILocation(line: 110, column: 13, scope: !1436, inlinedAt: !1463)
!1469 = !DILocation(line: 111, column: 15, scope: !1439, inlinedAt: !1463)
!1470 = !DILocation(line: 111, column: 11, scope: !1436, inlinedAt: !1463)
!1471 = !DILocation(line: 113, column: 24, scope: !1442, inlinedAt: !1463)
!1472 = !DILocation(line: 114, column: 18, scope: !1442, inlinedAt: !1463)
!1473 = !DILocation(line: 113, column: 11, scope: !1442, inlinedAt: !1463)
!1474 = !DILocation(line: 116, column: 9, scope: !1442, inlinedAt: !1463)
!1475 = !DILocation(line: 119, column: 24, scope: !1414, inlinedAt: !1463)
!1476 = !DILocation(line: 120, column: 3, scope: !1414, inlinedAt: !1463)
!1477 = !DILocation(line: 56, column: 11, scope: !1459)
!1478 = !DILocation(line: 0, scope: !91, inlinedAt: !1467)
!1479 = !DILocation(line: 97, column: 10, scope: !91, inlinedAt: !1467)
!1480 = !DILocation(line: 61, column: 5, scope: !1400)
!1481 = !DILocation(line: 63, column: 43, scope: !1400)
!1482 = !DILocation(line: 63, column: 54, scope: !1400)
!1483 = !DILocation(line: 0, scope: !1400)
!1484 = !DILocation(line: 63, column: 20, scope: !1400)
!1485 = !DILocation(line: 64, column: 18, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1400, file: !92, line: 64, column: 9)
!1487 = !DILocation(line: 64, column: 9, scope: !1400)
!1488 = !DILocation(line: 0, scope: !1403)
!1489 = !DILocation(line: 78, column: 23, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1403, file: !92, line: 78, column: 5)
!1491 = !DILocation(line: 78, column: 5, scope: !1403)
!1492 = !DILocation(line: 0, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !92, line: 66, column: 13)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !92, line: 65, column: 7)
!1495 = !DILocation(line: 66, column: 13, scope: !1494)
!1496 = !DILocation(line: 68, column: 30, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !92, line: 67, column: 11)
!1498 = !DILocation(line: 69, column: 20, scope: !1497)
!1499 = !DILocation(line: 68, column: 13, scope: !1497)
!1500 = !DILocation(line: 70, column: 11, scope: !1497)
!1501 = !DILocation(line: 73, column: 30, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !92, line: 72, column: 11)
!1503 = !DILocation(line: 73, column: 13, scope: !1502)
!1504 = !DILocation(line: 47, column: 12, scope: !1411)
!1505 = !DILocation(line: 85, column: 11, scope: !1400)
!1506 = !DILocation(line: 85, column: 5, scope: !1400)
!1507 = !DILocation(line: 86, column: 3, scope: !1377)
!1508 = !DILocation(line: 79, column: 11, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1490, file: !92, line: 79, column: 11)
!1510 = !DILocation(line: 79, column: 21, scope: !1509)
!1511 = !DILocation(line: 79, column: 29, scope: !1509)
!1512 = !DILocation(line: 0, scope: !1455, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 81, column: 11, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !92, line: 80, column: 9)
!1515 = !DILocation(line: 110, column: 10, scope: !1455, inlinedAt: !1513)
!1516 = !DILocation(line: 82, column: 29, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !92, line: 82, column: 15)
!1518 = !DILocation(line: 0, scope: !1414, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 82, column: 16, scope: !1517)
!1520 = !DILocation(line: 108, column: 7, scope: !1414, inlinedAt: !1519)
!1521 = !DILocation(line: 97, column: 21, scope: !91, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 119, column: 34, scope: !1414, inlinedAt: !1519)
!1523 = !DILocation(line: 110, column: 13, scope: !1436, inlinedAt: !1519)
!1524 = !DILocation(line: 111, column: 15, scope: !1439, inlinedAt: !1519)
!1525 = !DILocation(line: 111, column: 11, scope: !1436, inlinedAt: !1519)
!1526 = !DILocation(line: 113, column: 24, scope: !1442, inlinedAt: !1519)
!1527 = !DILocation(line: 114, column: 18, scope: !1442, inlinedAt: !1519)
!1528 = !DILocation(line: 113, column: 11, scope: !1442, inlinedAt: !1519)
!1529 = !DILocation(line: 116, column: 9, scope: !1442, inlinedAt: !1519)
!1530 = !DILocation(line: 119, column: 24, scope: !1414, inlinedAt: !1519)
!1531 = !DILocation(line: 120, column: 3, scope: !1414, inlinedAt: !1519)
!1532 = !DILocation(line: 82, column: 15, scope: !1514)
!1533 = !DILocation(line: 0, scope: !91, inlinedAt: !1522)
!1534 = !DILocation(line: 97, column: 10, scope: !91, inlinedAt: !1522)
!1535 = !DILocation(line: 78, column: 36, scope: !1490)
!1536 = distinct !{!1536, !1491, !1537, !831}
!1537 = !DILocation(line: 84, column: 9, scope: !1403)
!1538 = !DILocation(line: 88, column: 1, scope: !1377)
!1539 = !DILocation(line: 0, scope: !1414)
!1540 = !DILocation(line: 108, column: 7, scope: !1414)
!1541 = !DILocation(line: 97, column: 21, scope: !91, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 119, column: 34, scope: !1414)
!1543 = !DILocation(line: 110, column: 13, scope: !1436)
!1544 = !DILocation(line: 111, column: 15, scope: !1439)
!1545 = !DILocation(line: 111, column: 11, scope: !1436)
!1546 = !DILocation(line: 113, column: 24, scope: !1442)
!1547 = !DILocation(line: 114, column: 18, scope: !1442)
!1548 = !DILocation(line: 113, column: 11, scope: !1442)
!1549 = !DILocation(line: 116, column: 9, scope: !1442)
!1550 = !DILocation(line: 119, column: 24, scope: !1414)
!1551 = !DILocation(line: 119, column: 13, scope: !1414)
!1552 = !DILocation(line: 0, scope: !91, inlinedAt: !1542)
!1553 = !DILocation(line: 97, column: 10, scope: !91, inlinedAt: !1542)
!1554 = !DILocation(line: 120, column: 3, scope: !1414)
!1555 = !DILocation(line: 121, column: 3, scope: !1414)
!1556 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !107, file: !107, line: 51, type: !801, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1557)
!1557 = !{!1558}
!1558 = !DILocalVariable(name: "file", arg: 1, scope: !1556, file: !107, line: 51, type: !74)
!1559 = !DILocation(line: 0, scope: !1556)
!1560 = !DILocation(line: 53, column: 13, scope: !1556)
!1561 = !DILocation(line: 54, column: 1, scope: !1556)
!1562 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !107, file: !107, line: 88, type: !1563, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !28}
!1565 = !{!1566}
!1566 = !DILocalVariable(name: "ignore", arg: 1, scope: !1562, file: !107, line: 88, type: !28)
!1567 = !DILocation(line: 0, scope: !1562)
!1568 = !DILocation(line: 90, column: 16, scope: !1562)
!1569 = !DILocation(line: 91, column: 1, scope: !1562)
!1570 = distinct !DISubprogram(name: "close_stdout", scope: !107, file: !107, line: 117, type: !1126, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1571)
!1571 = !{!1572}
!1572 = !DILocalVariable(name: "write_error", scope: !1573, file: !107, line: 122, type: !74)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !107, line: 121, column: 5)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !107, line: 119, column: 7)
!1575 = !DILocation(line: 119, column: 21, scope: !1574)
!1576 = !DILocation(line: 119, column: 7, scope: !1574)
!1577 = !DILocation(line: 119, column: 29, scope: !1574)
!1578 = !DILocation(line: 120, column: 7, scope: !1574)
!1579 = !DILocation(line: 120, column: 12, scope: !1574)
!1580 = !DILocation(line: 120, column: 25, scope: !1574)
!1581 = !DILocation(line: 120, column: 28, scope: !1574)
!1582 = !DILocation(line: 120, column: 34, scope: !1574)
!1583 = !DILocation(line: 119, column: 7, scope: !1570)
!1584 = !DILocation(line: 122, column: 33, scope: !1573)
!1585 = !DILocation(line: 0, scope: !1573)
!1586 = !DILocation(line: 123, column: 11, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1573, file: !107, line: 123, column: 11)
!1588 = !DILocation(line: 0, scope: !1587)
!1589 = !DILocation(line: 123, column: 11, scope: !1573)
!1590 = !DILocation(line: 124, column: 36, scope: !1587)
!1591 = !DILocation(line: 124, column: 9, scope: !1587)
!1592 = !DILocation(line: 127, column: 9, scope: !1587)
!1593 = !DILocation(line: 129, column: 14, scope: !1573)
!1594 = !DILocation(line: 129, column: 7, scope: !1573)
!1595 = !DILocation(line: 134, column: 42, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1570, file: !107, line: 134, column: 7)
!1597 = !DILocation(line: 134, column: 28, scope: !1596)
!1598 = !DILocation(line: 134, column: 50, scope: !1596)
!1599 = !DILocation(line: 134, column: 7, scope: !1570)
!1600 = !DILocation(line: 135, column: 12, scope: !1596)
!1601 = !DILocation(line: 135, column: 5, scope: !1596)
!1602 = !DILocation(line: 136, column: 1, scope: !1570)
!1603 = distinct !DISubprogram(name: "umaxtostr", scope: !1604, file: !1604, line: 36, type: !1605, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1607)
!1604 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!6, !216, !6}
!1607 = !{!1608, !1609, !1610}
!1608 = !DILocalVariable(name: "i", arg: 1, scope: !1603, file: !1604, line: 36, type: !216)
!1609 = !DILocalVariable(name: "buf", arg: 2, scope: !1603, file: !1604, line: 36, type: !6)
!1610 = !DILocalVariable(name: "p", scope: !1603, file: !1604, line: 38, type: !6)
!1611 = !DILocation(line: 0, scope: !1603)
!1612 = !DILocation(line: 38, column: 17, scope: !1603)
!1613 = !DILocation(line: 39, column: 6, scope: !1603)
!1614 = !DILocation(line: 52, column: 24, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !1604, line: 50, column: 5)
!1616 = distinct !DILexicalBlock(scope: !1603, file: !1604, line: 41, column: 7)
!1617 = !DILocation(line: 52, column: 16, scope: !1615)
!1618 = !DILocation(line: 52, column: 10, scope: !1615)
!1619 = !DILocation(line: 52, column: 14, scope: !1615)
!1620 = !DILocation(line: 53, column: 17, scope: !1615)
!1621 = !DILocation(line: 53, column: 24, scope: !1615)
!1622 = !DILocation(line: 52, column: 9, scope: !1615)
!1623 = distinct !{!1623, !1624, !1625, !831}
!1624 = !DILocation(line: 51, column: 7, scope: !1615)
!1625 = !DILocation(line: 53, column: 28, scope: !1615)
!1626 = !DILocation(line: 56, column: 3, scope: !1603)
!1627 = distinct !DISubprogram(name: "set_program_name", scope: !120, file: !120, line: 39, type: !801, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !1628)
!1628 = !{!1629, !1630, !1631}
!1629 = !DILocalVariable(name: "argv0", arg: 1, scope: !1627, file: !120, line: 39, type: !74)
!1630 = !DILocalVariable(name: "slash", scope: !1627, file: !120, line: 46, type: !74)
!1631 = !DILocalVariable(name: "base", scope: !1627, file: !120, line: 47, type: !74)
!1632 = !DILocation(line: 0, scope: !1627)
!1633 = !DILocation(line: 51, column: 13, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1627, file: !120, line: 51, column: 7)
!1635 = !DILocation(line: 51, column: 7, scope: !1627)
!1636 = !DILocation(line: 55, column: 14, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !120, line: 52, column: 5)
!1638 = !DILocation(line: 54, column: 7, scope: !1637)
!1639 = !DILocation(line: 56, column: 7, scope: !1637)
!1640 = !DILocation(line: 59, column: 11, scope: !1627)
!1641 = !DILocation(line: 60, column: 17, scope: !1627)
!1642 = !DILocation(line: 60, column: 11, scope: !1627)
!1643 = !DILocation(line: 61, column: 12, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1627, file: !120, line: 61, column: 7)
!1645 = !DILocation(line: 61, column: 20, scope: !1644)
!1646 = !DILocation(line: 61, column: 25, scope: !1644)
!1647 = !DILocation(line: 61, column: 42, scope: !1644)
!1648 = !DILocation(line: 61, column: 28, scope: !1644)
!1649 = !DILocation(line: 61, column: 61, scope: !1644)
!1650 = !DILocation(line: 61, column: 7, scope: !1627)
!1651 = !DILocation(line: 64, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !120, line: 64, column: 11)
!1653 = distinct !DILexicalBlock(scope: !1644, file: !120, line: 62, column: 5)
!1654 = !DILocation(line: 64, column: 36, scope: !1652)
!1655 = !DILocation(line: 64, column: 11, scope: !1653)
!1656 = !DILocation(line: 66, column: 24, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !120, line: 65, column: 9)
!1658 = !DILocation(line: 70, column: 41, scope: !1657)
!1659 = !DILocation(line: 72, column: 9, scope: !1657)
!1660 = !DILocation(line: 84, column: 16, scope: !1627)
!1661 = !DILocation(line: 90, column: 27, scope: !1627)
!1662 = !DILocation(line: 92, column: 1, scope: !1627)
!1663 = distinct !DISubprogram(name: "clone_quoting_options", scope: !126, file: !126, line: 122, type: !1664, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1667)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1666, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!1667 = !{!1668, !1669, !1670}
!1668 = !DILocalVariable(name: "o", arg: 1, scope: !1663, file: !126, line: 122, type: !1666)
!1669 = !DILocalVariable(name: "e", scope: !1663, file: !126, line: 124, type: !77)
!1670 = !DILocalVariable(name: "p", scope: !1663, file: !126, line: 125, type: !1666)
!1671 = !DILocation(line: 0, scope: !1663)
!1672 = !DILocation(line: 124, column: 11, scope: !1663)
!1673 = !DILocation(line: 125, column: 40, scope: !1663)
!1674 = !DILocation(line: 125, column: 31, scope: !1663)
!1675 = !DILocation(line: 127, column: 9, scope: !1663)
!1676 = !DILocation(line: 128, column: 3, scope: !1663)
!1677 = distinct !DISubprogram(name: "get_quoting_style", scope: !126, file: !126, line: 133, type: !1678, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1682)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!128, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!1682 = !{!1683}
!1683 = !DILocalVariable(name: "o", arg: 1, scope: !1677, file: !126, line: 133, type: !1680)
!1684 = !DILocation(line: 0, scope: !1677)
!1685 = !DILocation(line: 135, column: 11, scope: !1677)
!1686 = !DILocation(line: 135, column: 46, scope: !1677)
!1687 = !{!1688, !789, i64 0}
!1688 = !{!"quoting_options", !789, i64 0, !972, i64 4, !789, i64 8, !788, i64 40, !788, i64 48}
!1689 = !DILocation(line: 135, column: 3, scope: !1677)
!1690 = distinct !DISubprogram(name: "set_quoting_style", scope: !126, file: !126, line: 141, type: !1691, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1666, !128}
!1693 = !{!1694, !1695}
!1694 = !DILocalVariable(name: "o", arg: 1, scope: !1690, file: !126, line: 141, type: !1666)
!1695 = !DILocalVariable(name: "s", arg: 2, scope: !1690, file: !126, line: 141, type: !128)
!1696 = !DILocation(line: 0, scope: !1690)
!1697 = !DILocation(line: 143, column: 4, scope: !1690)
!1698 = !DILocation(line: 143, column: 39, scope: !1690)
!1699 = !DILocation(line: 143, column: 45, scope: !1690)
!1700 = !DILocation(line: 144, column: 1, scope: !1690)
!1701 = distinct !DISubprogram(name: "set_char_quoting", scope: !126, file: !126, line: 152, type: !1702, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!77, !1666, !7, !77}
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1711, !1712}
!1705 = !DILocalVariable(name: "o", arg: 1, scope: !1701, file: !126, line: 152, type: !1666)
!1706 = !DILocalVariable(name: "c", arg: 2, scope: !1701, file: !126, line: 152, type: !7)
!1707 = !DILocalVariable(name: "i", arg: 3, scope: !1701, file: !126, line: 152, type: !77)
!1708 = !DILocalVariable(name: "uc", scope: !1701, file: !126, line: 154, type: !9)
!1709 = !DILocalVariable(name: "p", scope: !1701, file: !126, line: 155, type: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!1711 = !DILocalVariable(name: "shift", scope: !1701, file: !126, line: 157, type: !77)
!1712 = !DILocalVariable(name: "r", scope: !1701, file: !126, line: 158, type: !77)
!1713 = !DILocation(line: 0, scope: !1701)
!1714 = !DILocation(line: 156, column: 6, scope: !1701)
!1715 = !DILocation(line: 156, column: 62, scope: !1701)
!1716 = !DILocation(line: 156, column: 57, scope: !1701)
!1717 = !DILocation(line: 157, column: 15, scope: !1701)
!1718 = !DILocation(line: 158, column: 12, scope: !1701)
!1719 = !DILocation(line: 158, column: 15, scope: !1701)
!1720 = !DILocation(line: 158, column: 25, scope: !1701)
!1721 = !DILocation(line: 159, column: 13, scope: !1701)
!1722 = !DILocation(line: 159, column: 18, scope: !1701)
!1723 = !DILocation(line: 159, column: 23, scope: !1701)
!1724 = !DILocation(line: 159, column: 6, scope: !1701)
!1725 = !DILocation(line: 160, column: 3, scope: !1701)
!1726 = distinct !DISubprogram(name: "set_quoting_flags", scope: !126, file: !126, line: 168, type: !1727, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!77, !1666, !77}
!1729 = !{!1730, !1731, !1732}
!1730 = !DILocalVariable(name: "o", arg: 1, scope: !1726, file: !126, line: 168, type: !1666)
!1731 = !DILocalVariable(name: "i", arg: 2, scope: !1726, file: !126, line: 168, type: !77)
!1732 = !DILocalVariable(name: "r", scope: !1726, file: !126, line: 170, type: !77)
!1733 = !DILocation(line: 0, scope: !1726)
!1734 = !DILocation(line: 171, column: 8, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1726, file: !126, line: 171, column: 7)
!1736 = !DILocation(line: 171, column: 7, scope: !1726)
!1737 = !DILocation(line: 173, column: 10, scope: !1726)
!1738 = !{!1688, !972, i64 4}
!1739 = !DILocation(line: 174, column: 12, scope: !1726)
!1740 = !DILocation(line: 175, column: 3, scope: !1726)
!1741 = distinct !DISubprogram(name: "set_custom_quoting", scope: !126, file: !126, line: 179, type: !1742, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1666, !74, !74}
!1744 = !{!1745, !1746, !1747}
!1745 = !DILocalVariable(name: "o", arg: 1, scope: !1741, file: !126, line: 179, type: !1666)
!1746 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1741, file: !126, line: 180, type: !74)
!1747 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1741, file: !126, line: 180, type: !74)
!1748 = !DILocation(line: 0, scope: !1741)
!1749 = !DILocation(line: 182, column: 8, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1741, file: !126, line: 182, column: 7)
!1751 = !DILocation(line: 182, column: 7, scope: !1741)
!1752 = !DILocation(line: 184, column: 6, scope: !1741)
!1753 = !DILocation(line: 184, column: 12, scope: !1741)
!1754 = !DILocation(line: 185, column: 8, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1741, file: !126, line: 185, column: 7)
!1756 = !DILocation(line: 185, column: 19, scope: !1755)
!1757 = !DILocation(line: 186, column: 5, scope: !1755)
!1758 = !DILocation(line: 187, column: 6, scope: !1741)
!1759 = !DILocation(line: 187, column: 17, scope: !1741)
!1760 = !{!1688, !788, i64 40}
!1761 = !DILocation(line: 188, column: 6, scope: !1741)
!1762 = !DILocation(line: 188, column: 18, scope: !1741)
!1763 = !{!1688, !788, i64 48}
!1764 = !DILocation(line: 189, column: 1, scope: !1741)
!1765 = distinct !DISubprogram(name: "quotearg_buffer", scope: !126, file: !126, line: 784, type: !1766, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!164, !6, !164, !74, !164, !1680}
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776}
!1769 = !DILocalVariable(name: "buffer", arg: 1, scope: !1765, file: !126, line: 784, type: !6)
!1770 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1765, file: !126, line: 784, type: !164)
!1771 = !DILocalVariable(name: "arg", arg: 3, scope: !1765, file: !126, line: 785, type: !74)
!1772 = !DILocalVariable(name: "argsize", arg: 4, scope: !1765, file: !126, line: 785, type: !164)
!1773 = !DILocalVariable(name: "o", arg: 5, scope: !1765, file: !126, line: 786, type: !1680)
!1774 = !DILocalVariable(name: "p", scope: !1765, file: !126, line: 788, type: !1680)
!1775 = !DILocalVariable(name: "e", scope: !1765, file: !126, line: 789, type: !77)
!1776 = !DILocalVariable(name: "r", scope: !1765, file: !126, line: 790, type: !164)
!1777 = !DILocation(line: 0, scope: !1765)
!1778 = !DILocation(line: 788, column: 37, scope: !1765)
!1779 = !DILocation(line: 789, column: 11, scope: !1765)
!1780 = !DILocation(line: 791, column: 43, scope: !1765)
!1781 = !DILocation(line: 791, column: 53, scope: !1765)
!1782 = !DILocation(line: 791, column: 60, scope: !1765)
!1783 = !DILocation(line: 792, column: 43, scope: !1765)
!1784 = !DILocation(line: 792, column: 58, scope: !1765)
!1785 = !DILocation(line: 790, column: 14, scope: !1765)
!1786 = !DILocation(line: 793, column: 9, scope: !1765)
!1787 = !DILocation(line: 794, column: 3, scope: !1765)
!1788 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !126, file: !126, line: 256, type: !1789, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1793)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!164, !6, !164, !74, !164, !128, !77, !1791, !74, !74}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1818, !1819, !1820, !1821, !1822, !1825, !1826, !1844, !1847, !1848, !1855, !1858, !1859, !1860, !1861, !1862, !1863}
!1794 = !DILocalVariable(name: "buffer", arg: 1, scope: !1788, file: !126, line: 256, type: !6)
!1795 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1788, file: !126, line: 256, type: !164)
!1796 = !DILocalVariable(name: "arg", arg: 3, scope: !1788, file: !126, line: 257, type: !74)
!1797 = !DILocalVariable(name: "argsize", arg: 4, scope: !1788, file: !126, line: 257, type: !164)
!1798 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1788, file: !126, line: 258, type: !128)
!1799 = !DILocalVariable(name: "flags", arg: 6, scope: !1788, file: !126, line: 258, type: !77)
!1800 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1788, file: !126, line: 259, type: !1791)
!1801 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1788, file: !126, line: 260, type: !74)
!1802 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1788, file: !126, line: 261, type: !74)
!1803 = !DILocalVariable(name: "i", scope: !1788, file: !126, line: 263, type: !164)
!1804 = !DILocalVariable(name: "len", scope: !1788, file: !126, line: 264, type: !164)
!1805 = !DILocalVariable(name: "orig_buffersize", scope: !1788, file: !126, line: 265, type: !164)
!1806 = !DILocalVariable(name: "quote_string", scope: !1788, file: !126, line: 266, type: !74)
!1807 = !DILocalVariable(name: "quote_string_len", scope: !1788, file: !126, line: 267, type: !164)
!1808 = !DILocalVariable(name: "backslash_escapes", scope: !1788, file: !126, line: 268, type: !28)
!1809 = !DILocalVariable(name: "unibyte_locale", scope: !1788, file: !126, line: 269, type: !28)
!1810 = !DILocalVariable(name: "elide_outer_quotes", scope: !1788, file: !126, line: 270, type: !28)
!1811 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1788, file: !126, line: 271, type: !28)
!1812 = !DILocalVariable(name: "encountered_single_quote", scope: !1788, file: !126, line: 272, type: !28)
!1813 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1788, file: !126, line: 273, type: !28)
!1814 = !DILocalVariable(name: "c", scope: !1815, file: !126, line: 402, type: !9)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !126, line: 401, column: 5)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !126, line: 400, column: 3)
!1817 = distinct !DILexicalBlock(scope: !1788, file: !126, line: 400, column: 3)
!1818 = !DILocalVariable(name: "esc", scope: !1815, file: !126, line: 403, type: !9)
!1819 = !DILocalVariable(name: "is_right_quote", scope: !1815, file: !126, line: 404, type: !28)
!1820 = !DILocalVariable(name: "escaping", scope: !1815, file: !126, line: 405, type: !28)
!1821 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1815, file: !126, line: 406, type: !28)
!1822 = !DILocalVariable(name: "m", scope: !1823, file: !126, line: 610, type: !164)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 608, column: 11)
!1824 = distinct !DILexicalBlock(scope: !1815, file: !126, line: 426, column: 9)
!1825 = !DILocalVariable(name: "printable", scope: !1823, file: !126, line: 612, type: !28)
!1826 = !DILocalVariable(name: "mbstate", scope: !1827, file: !126, line: 621, type: !1829)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !126, line: 620, column: 15)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !126, line: 614, column: 17)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1830, line: 6, baseType: !1831)
!1830 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1832, line: 21, baseType: !1833)
!1832 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1832, line: 13, size: 64, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1833, file: !1832, line: 15, baseType: !77, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1833, file: !1832, line: 20, baseType: !1837, size: 32, offset: 32)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1833, file: !1832, line: 16, size: 32, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1837, file: !1832, line: 18, baseType: !17, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1837, file: !1832, line: 19, baseType: !1841, size: 32)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1842)
!1842 = !{!1843}
!1843 = !DISubrange(count: 4)
!1844 = !DILocalVariable(name: "w", scope: !1845, file: !126, line: 631, type: !1846)
!1845 = distinct !DILexicalBlock(scope: !1827, file: !126, line: 630, column: 19)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !165, line: 74, baseType: !77)
!1847 = !DILocalVariable(name: "bytes", scope: !1845, file: !126, line: 632, type: !164)
!1848 = !DILocalVariable(name: "j", scope: !1849, file: !126, line: 657, type: !164)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !126, line: 656, column: 27)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !126, line: 654, column: 29)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !126, line: 649, column: 23)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !126, line: 641, column: 30)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !126, line: 636, column: 30)
!1854 = distinct !DILexicalBlock(scope: !1845, file: !126, line: 634, column: 25)
!1855 = !DILocalVariable(name: "ilim", scope: !1856, file: !126, line: 684, type: !164)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !126, line: 681, column: 15)
!1857 = distinct !DILexicalBlock(scope: !1823, file: !126, line: 680, column: 17)
!1858 = !DILabel(scope: !1788, name: "process_input", file: !126, line: 314)
!1859 = !DILabel(scope: !1824, name: "c_and_shell_escape", file: !126, line: 512)
!1860 = !DILabel(scope: !1824, name: "c_escape", file: !126, line: 517)
!1861 = !DILabel(scope: !1815, name: "store_escape", file: !126, line: 719)
!1862 = !DILabel(scope: !1815, name: "store_c", file: !126, line: 722)
!1863 = !DILabel(scope: !1788, name: "force_outer_quoting_style", file: !126, line: 763)
!1864 = !DILocation(line: 0, scope: !1788)
!1865 = !DILocation(line: 269, column: 25, scope: !1788)
!1866 = !DILocation(line: 269, column: 36, scope: !1788)
!1867 = !DILocation(line: 270, column: 8, scope: !1788)
!1868 = !DILocation(line: 273, column: 3, scope: !1788)
!1869 = !DILocation(line: 265, column: 10, scope: !1788)
!1870 = !DILocation(line: 266, column: 15, scope: !1788)
!1871 = !DILocation(line: 267, column: 10, scope: !1788)
!1872 = !DILocation(line: 268, column: 8, scope: !1788)
!1873 = !DILocation(line: 271, column: 8, scope: !1788)
!1874 = !DILocation(line: 272, column: 8, scope: !1788)
!1875 = !DILocation(line: 273, column: 8, scope: !1788)
!1876 = !DILocation(line: 314, column: 2, scope: !1788)
!1877 = !DILocation(line: 316, column: 3, scope: !1788)
!1878 = !DILocation(line: 323, column: 11, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1788, file: !126, line: 317, column: 5)
!1880 = !DILocation(line: 323, column: 12, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1879, file: !126, line: 323, column: 11)
!1882 = !DILocation(line: 324, column: 9, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !126, line: 324, column: 9)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !126, line: 324, column: 9)
!1885 = !DILocation(line: 324, column: 9, scope: !1884)
!1886 = !DILocation(line: 362, column: 26, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !126, line: 340, column: 11)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !126, line: 339, column: 13)
!1889 = distinct !DILexicalBlock(scope: !1879, file: !126, line: 338, column: 7)
!1890 = !DILocation(line: 363, column: 27, scope: !1887)
!1891 = !DILocation(line: 364, column: 11, scope: !1887)
!1892 = !DILocation(line: 365, column: 14, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !126, line: 365, column: 13)
!1894 = !DILocation(line: 365, column: 13, scope: !1889)
!1895 = !DILocation(line: 366, column: 43, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !126, line: 366, column: 11)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !126, line: 366, column: 11)
!1898 = !DILocation(line: 366, column: 11, scope: !1897)
!1899 = !DILocation(line: 367, column: 13, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !126, line: 367, column: 13)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !126, line: 367, column: 13)
!1902 = !DILocation(line: 367, column: 13, scope: !1901)
!1903 = !DILocation(line: 366, column: 70, scope: !1896)
!1904 = distinct !{!1904, !1898, !1905, !831}
!1905 = !DILocation(line: 367, column: 13, scope: !1897)
!1906 = !DILocation(line: 264, column: 10, scope: !1788)
!1907 = !DILocation(line: 370, column: 28, scope: !1889)
!1908 = !DILocation(line: 372, column: 7, scope: !1879)
!1909 = !DILocation(line: 376, column: 7, scope: !1879)
!1910 = !DILocation(line: 379, column: 7, scope: !1879)
!1911 = !DILocation(line: 381, column: 12, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1879, file: !126, line: 381, column: 11)
!1913 = !DILocation(line: 381, column: 11, scope: !1879)
!1914 = !DILocation(line: 386, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1879, file: !126, line: 386, column: 11)
!1916 = !DILocation(line: 386, column: 11, scope: !1879)
!1917 = !DILocation(line: 387, column: 9, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !126, line: 387, column: 9)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !126, line: 387, column: 9)
!1920 = !DILocation(line: 387, column: 9, scope: !1919)
!1921 = !DILocation(line: 394, column: 7, scope: !1879)
!1922 = !DILocation(line: 397, column: 7, scope: !1879)
!1923 = !DILocation(line: 400, column: 8, scope: !1817)
!1924 = !DILocation(line: 0, scope: !1817)
!1925 = !DILocation(line: 400, column: 27, scope: !1816)
!1926 = !DILocation(line: 400, column: 19, scope: !1816)
!1927 = !DILocation(line: 400, column: 41, scope: !1816)
!1928 = !DILocation(line: 400, column: 48, scope: !1816)
!1929 = !DILocation(line: 400, column: 3, scope: !1817)
!1930 = !DILocation(line: 400, column: 60, scope: !1816)
!1931 = !DILocation(line: 0, scope: !1815)
!1932 = !DILocation(line: 409, column: 11, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1815, file: !126, line: 408, column: 11)
!1934 = !DILocation(line: 411, column: 17, scope: !1933)
!1935 = !DILocation(line: 412, column: 39, scope: !1933)
!1936 = !DILocation(line: 416, column: 32, scope: !1933)
!1937 = !DILocation(line: 412, column: 19, scope: !1933)
!1938 = !DILocation(line: 412, column: 15, scope: !1933)
!1939 = !DILocation(line: 417, column: 11, scope: !1933)
!1940 = !DILocation(line: 417, column: 26, scope: !1933)
!1941 = !DILocation(line: 417, column: 14, scope: !1933)
!1942 = !DILocation(line: 417, column: 63, scope: !1933)
!1943 = !DILocation(line: 408, column: 11, scope: !1815)
!1944 = !DILocation(line: 424, column: 11, scope: !1815)
!1945 = !DILocation(line: 425, column: 7, scope: !1815)
!1946 = !DILocation(line: 428, column: 15, scope: !1824)
!1947 = !DILocation(line: 430, column: 15, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !126, line: 430, column: 15)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !126, line: 429, column: 13)
!1950 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 428, column: 15)
!1951 = !DILocation(line: 430, column: 15, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !126, line: 430, column: 15)
!1953 = !DILocation(line: 430, column: 15, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !126, line: 430, column: 15)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !126, line: 430, column: 15)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !126, line: 430, column: 15)
!1957 = !DILocation(line: 430, column: 15, scope: !1955)
!1958 = !DILocation(line: 430, column: 15, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !126, line: 430, column: 15)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !126, line: 430, column: 15)
!1961 = !DILocation(line: 430, column: 15, scope: !1960)
!1962 = !DILocation(line: 430, column: 15, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !126, line: 430, column: 15)
!1964 = distinct !DILexicalBlock(scope: !1956, file: !126, line: 430, column: 15)
!1965 = !DILocation(line: 430, column: 15, scope: !1964)
!1966 = !DILocation(line: 430, column: 15, scope: !1956)
!1967 = !DILocation(line: 430, column: 15, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !126, line: 430, column: 15)
!1969 = distinct !DILexicalBlock(scope: !1948, file: !126, line: 430, column: 15)
!1970 = !DILocation(line: 430, column: 15, scope: !1969)
!1971 = !DILocation(line: 438, column: 19, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1949, file: !126, line: 437, column: 19)
!1973 = !DILocation(line: 438, column: 48, scope: !1972)
!1974 = !DILocation(line: 438, column: 59, scope: !1972)
!1975 = !DILocation(line: 440, column: 19, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !126, line: 440, column: 19)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !126, line: 440, column: 19)
!1978 = distinct !DILexicalBlock(scope: !1972, file: !126, line: 439, column: 17)
!1979 = !DILocation(line: 440, column: 19, scope: !1977)
!1980 = !DILocation(line: 441, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !126, line: 441, column: 19)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !126, line: 441, column: 19)
!1983 = !DILocation(line: 441, column: 19, scope: !1982)
!1984 = !DILocation(line: 442, column: 17, scope: !1978)
!1985 = !DILocation(line: 449, column: 20, scope: !1950)
!1986 = !DILocation(line: 454, column: 11, scope: !1824)
!1987 = !DILocation(line: 457, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 455, column: 13)
!1989 = !DILocation(line: 463, column: 19, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1988, file: !126, line: 462, column: 19)
!1991 = !DILocation(line: 463, column: 47, scope: !1990)
!1992 = !DILocation(line: 463, column: 41, scope: !1990)
!1993 = !DILocation(line: 463, column: 52, scope: !1990)
!1994 = !DILocation(line: 462, column: 19, scope: !1988)
!1995 = !DILocation(line: 464, column: 25, scope: !1990)
!1996 = !DILocation(line: 464, column: 17, scope: !1990)
!1997 = !DILocation(line: 471, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1990, file: !126, line: 465, column: 19)
!1999 = !DILocation(line: 475, column: 21, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !126, line: 475, column: 21)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !126, line: 475, column: 21)
!2002 = !DILocation(line: 475, column: 21, scope: !2001)
!2003 = !DILocation(line: 476, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !126, line: 476, column: 21)
!2005 = distinct !DILexicalBlock(scope: !1998, file: !126, line: 476, column: 21)
!2006 = !DILocation(line: 476, column: 21, scope: !2005)
!2007 = !DILocation(line: 477, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !126, line: 477, column: 21)
!2009 = distinct !DILexicalBlock(scope: !1998, file: !126, line: 477, column: 21)
!2010 = !DILocation(line: 477, column: 21, scope: !2009)
!2011 = !DILocation(line: 478, column: 21, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !126, line: 478, column: 21)
!2013 = distinct !DILexicalBlock(scope: !1998, file: !126, line: 478, column: 21)
!2014 = !DILocation(line: 478, column: 21, scope: !2013)
!2015 = !DILocation(line: 479, column: 21, scope: !1998)
!2016 = !DILocation(line: 492, column: 31, scope: !1824)
!2017 = !DILocation(line: 493, column: 31, scope: !1824)
!2018 = !DILocation(line: 495, column: 31, scope: !1824)
!2019 = !DILocation(line: 496, column: 31, scope: !1824)
!2020 = !DILocation(line: 497, column: 31, scope: !1824)
!2021 = !DILocation(line: 500, column: 15, scope: !1824)
!2022 = !DILocation(line: 502, column: 19, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !126, line: 501, column: 13)
!2024 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 500, column: 15)
!2025 = !DILocation(line: 509, column: 33, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 509, column: 15)
!2027 = !DILocation(line: 0, scope: !1824)
!2028 = !DILocation(line: 512, column: 9, scope: !1824)
!2029 = !DILocation(line: 514, column: 15, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 513, column: 15)
!2031 = !DILocation(line: 517, column: 9, scope: !1824)
!2032 = !DILocation(line: 518, column: 15, scope: !1824)
!2033 = !DILocation(line: 526, column: 15, scope: !1824)
!2034 = !DILocation(line: 526, column: 40, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 526, column: 15)
!2036 = !DILocation(line: 526, column: 47, scope: !2035)
!2037 = !DILocation(line: 526, column: 18, scope: !2035)
!2038 = !DILocation(line: 530, column: 17, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 530, column: 15)
!2040 = !DILocation(line: 530, column: 15, scope: !1824)
!2041 = !DILocation(line: 535, column: 11, scope: !1824)
!2042 = !DILocation(line: 549, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 548, column: 15)
!2044 = !DILocation(line: 556, column: 15, scope: !1824)
!2045 = !DILocation(line: 558, column: 19, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !126, line: 557, column: 13)
!2047 = distinct !DILexicalBlock(scope: !1824, file: !126, line: 556, column: 15)
!2048 = !DILocation(line: 561, column: 19, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !126, line: 561, column: 19)
!2050 = !DILocation(line: 561, column: 30, scope: !2049)
!2051 = !DILocation(line: 570, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !126, line: 570, column: 15)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !126, line: 570, column: 15)
!2054 = !DILocation(line: 570, column: 15, scope: !2053)
!2055 = !DILocation(line: 571, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !126, line: 571, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2046, file: !126, line: 571, column: 15)
!2058 = !DILocation(line: 571, column: 15, scope: !2057)
!2059 = !DILocation(line: 572, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !126, line: 572, column: 15)
!2061 = distinct !DILexicalBlock(scope: !2046, file: !126, line: 572, column: 15)
!2062 = !DILocation(line: 572, column: 15, scope: !2061)
!2063 = !DILocation(line: 574, column: 13, scope: !2046)
!2064 = !DILocation(line: 614, column: 17, scope: !1823)
!2065 = !DILocation(line: 0, scope: !1823)
!2066 = !DILocation(line: 617, column: 29, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1828, file: !126, line: 615, column: 15)
!2068 = !{!1342, !1342, i64 0}
!2069 = !DILocation(line: 617, column: 27, scope: !2067)
!2070 = !DILocation(line: 678, column: 40, scope: !1823)
!2071 = !DILocation(line: 680, column: 23, scope: !1857)
!2072 = !DILocation(line: 621, column: 17, scope: !1827)
!2073 = !DILocation(line: 621, column: 27, scope: !1827)
!2074 = !DILocalVariable(name: "__dest", arg: 1, scope: !2075, file: !2076, line: 57, type: !8)
!2075 = distinct !DISubprogram(name: "memset", scope: !2076, file: !2076, line: 57, type: !2077, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2079)
!2076 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!8, !8, !77, !164}
!2079 = !{!2074, !2080, !2081}
!2080 = !DILocalVariable(name: "__ch", arg: 2, scope: !2075, file: !2076, line: 57, type: !77)
!2081 = !DILocalVariable(name: "__len", arg: 3, scope: !2075, file: !2076, line: 57, type: !164)
!2082 = !DILocation(line: 0, scope: !2075, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 622, column: 17, scope: !1827)
!2084 = !DILocation(line: 59, column: 10, scope: !2075, inlinedAt: !2083)
!2085 = !DILocation(line: 626, column: 29, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1827, file: !126, line: 626, column: 21)
!2087 = !DILocation(line: 626, column: 21, scope: !1827)
!2088 = !DILocation(line: 627, column: 29, scope: !2086)
!2089 = !DILocation(line: 627, column: 19, scope: !2086)
!2090 = !DILocation(line: 629, column: 17, scope: !1827)
!2091 = !DILocation(line: 624, column: 19, scope: !1827)
!2092 = !DILocation(line: 625, column: 27, scope: !1827)
!2093 = !DILocation(line: 631, column: 21, scope: !1845)
!2094 = !DILocation(line: 632, column: 56, scope: !1845)
!2095 = !DILocation(line: 632, column: 50, scope: !1845)
!2096 = !DILocation(line: 633, column: 53, scope: !1845)
!2097 = !DILocation(line: 0, scope: !1845)
!2098 = !DILocation(line: 632, column: 36, scope: !1845)
!2099 = !DILocation(line: 634, column: 25, scope: !1845)
!2100 = !DILocation(line: 644, column: 38, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1852, file: !126, line: 642, column: 23)
!2102 = !DILocation(line: 644, column: 48, scope: !2101)
!2103 = !DILocation(line: 644, column: 25, scope: !2101)
!2104 = !DILocation(line: 644, column: 51, scope: !2101)
!2105 = !DILocation(line: 645, column: 28, scope: !2101)
!2106 = !DILocation(line: 644, column: 34, scope: !2101)
!2107 = distinct !{!2107, !2103, !2105, !831}
!2108 = !DILocation(line: 655, column: 29, scope: !1850)
!2109 = !DILocation(line: 0, scope: !1849)
!2110 = !DILocation(line: 659, column: 49, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !126, line: 658, column: 29)
!2112 = distinct !DILexicalBlock(scope: !1849, file: !126, line: 658, column: 29)
!2113 = !DILocation(line: 659, column: 39, scope: !2111)
!2114 = !DILocation(line: 659, column: 31, scope: !2111)
!2115 = !DILocation(line: 658, column: 53, scope: !2111)
!2116 = !DILocation(line: 658, column: 43, scope: !2111)
!2117 = !DILocation(line: 658, column: 29, scope: !2112)
!2118 = distinct !{!2118, !2117, !2119, !831}
!2119 = !DILocation(line: 667, column: 33, scope: !2112)
!2120 = !DILocation(line: 674, column: 19, scope: !1827)
!2121 = !DILocation(line: 670, column: 41, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1851, file: !126, line: 670, column: 29)
!2123 = !DILocation(line: 670, column: 31, scope: !2122)
!2124 = !DILocation(line: 670, column: 29, scope: !1851)
!2125 = !DILocation(line: 672, column: 27, scope: !1851)
!2126 = !DILocation(line: 675, column: 26, scope: !1827)
!2127 = !DILocation(line: 675, column: 24, scope: !1827)
!2128 = !DILocation(line: 674, column: 19, scope: !1845)
!2129 = distinct !{!2129, !2090, !2130, !831}
!2130 = !DILocation(line: 675, column: 44, scope: !1827)
!2131 = !DILocation(line: 676, column: 15, scope: !1828)
!2132 = !DILocation(line: 680, column: 19, scope: !1857)
!2133 = !DILocation(line: 680, column: 45, scope: !1857)
!2134 = !DILocation(line: 684, column: 33, scope: !1856)
!2135 = !DILocation(line: 0, scope: !1856)
!2136 = !DILocation(line: 686, column: 17, scope: !1856)
!2137 = !DILocation(line: 405, column: 12, scope: !1815)
!2138 = !DILocation(line: 688, column: 43, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !126, line: 688, column: 25)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !126, line: 687, column: 19)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !126, line: 686, column: 17)
!2142 = distinct !DILexicalBlock(scope: !1856, file: !126, line: 686, column: 17)
!2143 = !DILocation(line: 690, column: 25, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !126, line: 690, column: 25)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !126, line: 689, column: 23)
!2146 = !DILocation(line: 690, column: 25, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !126, line: 690, column: 25)
!2148 = !DILocation(line: 690, column: 25, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !126, line: 690, column: 25)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !126, line: 690, column: 25)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !126, line: 690, column: 25)
!2152 = !DILocation(line: 690, column: 25, scope: !2150)
!2153 = !DILocation(line: 690, column: 25, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !126, line: 690, column: 25)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !126, line: 690, column: 25)
!2156 = !DILocation(line: 690, column: 25, scope: !2155)
!2157 = !DILocation(line: 690, column: 25, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !126, line: 690, column: 25)
!2159 = distinct !DILexicalBlock(scope: !2151, file: !126, line: 690, column: 25)
!2160 = !DILocation(line: 690, column: 25, scope: !2159)
!2161 = !DILocation(line: 690, column: 25, scope: !2151)
!2162 = !DILocation(line: 690, column: 25, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !126, line: 690, column: 25)
!2164 = distinct !DILexicalBlock(scope: !2144, file: !126, line: 690, column: 25)
!2165 = !DILocation(line: 690, column: 25, scope: !2164)
!2166 = !DILocation(line: 691, column: 25, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !126, line: 691, column: 25)
!2168 = distinct !DILexicalBlock(scope: !2145, file: !126, line: 691, column: 25)
!2169 = !DILocation(line: 691, column: 25, scope: !2168)
!2170 = !DILocation(line: 692, column: 25, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !126, line: 692, column: 25)
!2172 = distinct !DILexicalBlock(scope: !2145, file: !126, line: 692, column: 25)
!2173 = !DILocation(line: 692, column: 25, scope: !2172)
!2174 = !DILocation(line: 693, column: 38, scope: !2145)
!2175 = !DILocation(line: 693, column: 33, scope: !2145)
!2176 = !DILocation(line: 694, column: 23, scope: !2145)
!2177 = !DILocation(line: 695, column: 30, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2139, file: !126, line: 695, column: 30)
!2179 = !DILocation(line: 695, column: 30, scope: !2139)
!2180 = !DILocation(line: 697, column: 25, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !126, line: 697, column: 25)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !126, line: 697, column: 25)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !126, line: 696, column: 23)
!2184 = !DILocation(line: 697, column: 25, scope: !2182)
!2185 = !DILocation(line: 699, column: 23, scope: !2183)
!2186 = !DILocation(line: 700, column: 35, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2140, file: !126, line: 700, column: 25)
!2188 = !DILocation(line: 700, column: 30, scope: !2187)
!2189 = !DILocation(line: 700, column: 25, scope: !2140)
!2190 = !DILocation(line: 702, column: 21, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !126, line: 702, column: 21)
!2192 = distinct !DILexicalBlock(scope: !2140, file: !126, line: 702, column: 21)
!2193 = !DILocation(line: 702, column: 21, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !126, line: 702, column: 21)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !126, line: 702, column: 21)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !126, line: 702, column: 21)
!2197 = !DILocation(line: 702, column: 21, scope: !2195)
!2198 = !DILocation(line: 702, column: 21, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !126, line: 702, column: 21)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !126, line: 702, column: 21)
!2201 = !DILocation(line: 702, column: 21, scope: !2200)
!2202 = !DILocation(line: 702, column: 21, scope: !2196)
!2203 = !DILocation(line: 0, scope: !2140)
!2204 = !DILocation(line: 703, column: 21, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !126, line: 703, column: 21)
!2206 = distinct !DILexicalBlock(scope: !2140, file: !126, line: 703, column: 21)
!2207 = !DILocation(line: 703, column: 21, scope: !2206)
!2208 = !DILocation(line: 704, column: 25, scope: !2140)
!2209 = !DILocation(line: 686, column: 17, scope: !2141)
!2210 = distinct !{!2210, !2211, !2212}
!2211 = !DILocation(line: 686, column: 17, scope: !2142)
!2212 = !DILocation(line: 705, column: 19, scope: !2142)
!2213 = !DILocation(line: 416, column: 30, scope: !1933)
!2214 = !DILocation(line: 712, column: 34, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !1815, file: !126, line: 712, column: 11)
!2216 = !DILocation(line: 715, column: 35, scope: !2215)
!2217 = !DILocation(line: 715, column: 17, scope: !2215)
!2218 = !DILocation(line: 715, column: 47, scope: !2215)
!2219 = !DILocation(line: 715, column: 65, scope: !2215)
!2220 = !DILocation(line: 716, column: 11, scope: !2215)
!2221 = !DILocation(line: 712, column: 11, scope: !1815)
!2222 = !DILocation(line: 400, column: 10, scope: !1817)
!2223 = !DILocation(line: 719, column: 5, scope: !1815)
!2224 = !DILocation(line: 720, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !1815, file: !126, line: 720, column: 7)
!2226 = !DILocation(line: 720, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2225, file: !126, line: 720, column: 7)
!2228 = !DILocation(line: 720, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !126, line: 720, column: 7)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !126, line: 720, column: 7)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !126, line: 720, column: 7)
!2232 = !DILocation(line: 720, column: 7, scope: !2230)
!2233 = !DILocation(line: 720, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !126, line: 720, column: 7)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !126, line: 720, column: 7)
!2236 = !DILocation(line: 720, column: 7, scope: !2235)
!2237 = !DILocation(line: 720, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !126, line: 720, column: 7)
!2239 = distinct !DILexicalBlock(scope: !2231, file: !126, line: 720, column: 7)
!2240 = !DILocation(line: 720, column: 7, scope: !2239)
!2241 = !DILocation(line: 720, column: 7, scope: !2231)
!2242 = !DILocation(line: 720, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !126, line: 720, column: 7)
!2244 = distinct !DILexicalBlock(scope: !2225, file: !126, line: 720, column: 7)
!2245 = !DILocation(line: 720, column: 7, scope: !2244)
!2246 = !DILocation(line: 722, column: 5, scope: !1815)
!2247 = !DILocation(line: 723, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !126, line: 723, column: 7)
!2249 = distinct !DILexicalBlock(scope: !1815, file: !126, line: 723, column: 7)
!2250 = !DILocation(line: 424, column: 9, scope: !1815)
!2251 = !DILocation(line: 723, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !126, line: 723, column: 7)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !126, line: 723, column: 7)
!2254 = distinct !DILexicalBlock(scope: !2248, file: !126, line: 723, column: 7)
!2255 = !DILocation(line: 723, column: 7, scope: !2253)
!2256 = !DILocation(line: 723, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !126, line: 723, column: 7)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !126, line: 723, column: 7)
!2259 = !DILocation(line: 723, column: 7, scope: !2258)
!2260 = !DILocation(line: 723, column: 7, scope: !2254)
!2261 = !DILocation(line: 724, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !126, line: 724, column: 7)
!2263 = distinct !DILexicalBlock(scope: !1815, file: !126, line: 724, column: 7)
!2264 = !DILocation(line: 724, column: 7, scope: !2263)
!2265 = !DILocation(line: 726, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !1815, file: !126, line: 726, column: 11)
!2267 = !DILocation(line: 726, column: 11, scope: !1815)
!2268 = !DILocation(line: 728, column: 5, scope: !1816)
!2269 = !DILocation(line: 400, column: 75, scope: !1816)
!2270 = !DILocation(line: 400, column: 3, scope: !1816)
!2271 = distinct !{!2271, !1929, !2272, !831}
!2272 = !DILocation(line: 728, column: 5, scope: !1817)
!2273 = !DILocation(line: 730, column: 11, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !1788, file: !126, line: 730, column: 7)
!2275 = !DILocation(line: 730, column: 16, scope: !2274)
!2276 = !DILocation(line: 738, column: 51, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !1788, file: !126, line: 738, column: 7)
!2278 = !DILocation(line: 741, column: 11, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !126, line: 741, column: 11)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !126, line: 740, column: 5)
!2281 = !DILocation(line: 741, column: 11, scope: !2280)
!2282 = !DILocation(line: 742, column: 16, scope: !2279)
!2283 = !DILocation(line: 742, column: 9, scope: !2279)
!2284 = !DILocation(line: 746, column: 18, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2279, file: !126, line: 746, column: 16)
!2286 = !DILocation(line: 746, column: 29, scope: !2285)
!2287 = !DILocation(line: 755, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !1788, file: !126, line: 755, column: 7)
!2289 = !DILocation(line: 755, column: 20, scope: !2288)
!2290 = !DILocation(line: 756, column: 12, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !126, line: 756, column: 5)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !126, line: 756, column: 5)
!2293 = !DILocation(line: 756, column: 5, scope: !2292)
!2294 = !DILocation(line: 757, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !126, line: 757, column: 7)
!2296 = distinct !DILexicalBlock(scope: !2291, file: !126, line: 757, column: 7)
!2297 = !DILocation(line: 757, column: 7, scope: !2296)
!2298 = !DILocation(line: 756, column: 39, scope: !2291)
!2299 = distinct !{!2299, !2293, !2300, !831}
!2300 = !DILocation(line: 757, column: 7, scope: !2292)
!2301 = !DILocation(line: 759, column: 11, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !1788, file: !126, line: 759, column: 7)
!2303 = !DILocation(line: 759, column: 7, scope: !1788)
!2304 = !DILocation(line: 760, column: 5, scope: !2302)
!2305 = !DILocation(line: 760, column: 17, scope: !2302)
!2306 = !DILocation(line: 763, column: 2, scope: !1788)
!2307 = !DILocation(line: 766, column: 51, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !1788, file: !126, line: 766, column: 7)
!2309 = !DILocation(line: 766, column: 21, scope: !2308)
!2310 = !DILocation(line: 770, column: 42, scope: !1788)
!2311 = !DILocation(line: 768, column: 10, scope: !1788)
!2312 = !DILocation(line: 768, column: 3, scope: !1788)
!2313 = !DILocation(line: 772, column: 1, scope: !1788)
!2314 = distinct !DISubprogram(name: "gettext_quote", scope: !126, file: !126, line: 207, type: !2315, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!74, !74, !128}
!2317 = !{!2318, !2319, !2320, !2321}
!2318 = !DILocalVariable(name: "msgid", arg: 1, scope: !2314, file: !126, line: 207, type: !74)
!2319 = !DILocalVariable(name: "s", arg: 2, scope: !2314, file: !126, line: 207, type: !128)
!2320 = !DILocalVariable(name: "translation", scope: !2314, file: !126, line: 209, type: !74)
!2321 = !DILocalVariable(name: "locale_code", scope: !2314, file: !126, line: 210, type: !74)
!2322 = !DILocation(line: 0, scope: !2314)
!2323 = !DILocation(line: 209, column: 29, scope: !2314)
!2324 = !DILocation(line: 212, column: 19, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2314, file: !126, line: 212, column: 7)
!2326 = !DILocation(line: 212, column: 7, scope: !2314)
!2327 = !DILocation(line: 233, column: 17, scope: !2314)
!2328 = !DILocalVariable(name: "s1", arg: 1, scope: !2329, file: !2330, line: 160, type: !74)
!2329 = distinct !DISubprogram(name: "strcaseeq0", scope: !2330, file: !2330, line: 160, type: !2331, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2333)
!2330 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!77, !74, !74, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2333 = !{!2328, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343}
!2334 = !DILocalVariable(name: "s2", arg: 2, scope: !2329, file: !2330, line: 160, type: !74)
!2335 = !DILocalVariable(name: "s20", arg: 3, scope: !2329, file: !2330, line: 160, type: !7)
!2336 = !DILocalVariable(name: "s21", arg: 4, scope: !2329, file: !2330, line: 160, type: !7)
!2337 = !DILocalVariable(name: "s22", arg: 5, scope: !2329, file: !2330, line: 160, type: !7)
!2338 = !DILocalVariable(name: "s23", arg: 6, scope: !2329, file: !2330, line: 160, type: !7)
!2339 = !DILocalVariable(name: "s24", arg: 7, scope: !2329, file: !2330, line: 160, type: !7)
!2340 = !DILocalVariable(name: "s25", arg: 8, scope: !2329, file: !2330, line: 160, type: !7)
!2341 = !DILocalVariable(name: "s26", arg: 9, scope: !2329, file: !2330, line: 160, type: !7)
!2342 = !DILocalVariable(name: "s27", arg: 10, scope: !2329, file: !2330, line: 160, type: !7)
!2343 = !DILocalVariable(name: "s28", arg: 11, scope: !2329, file: !2330, line: 160, type: !7)
!2344 = !DILocation(line: 0, scope: !2329, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 234, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2314, file: !126, line: 234, column: 7)
!2347 = !DILocation(line: 162, column: 7, scope: !2348, inlinedAt: !2345)
!2348 = distinct !DILexicalBlock(scope: !2329, file: !2330, line: 162, column: 7)
!2349 = !DILocalVariable(name: "s1", arg: 1, scope: !2350, file: !2330, line: 146, type: !74)
!2350 = distinct !DISubprogram(name: "strcaseeq1", scope: !2330, file: !2330, line: 146, type: !2351, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!77, !74, !74, !7, !7, !7, !7, !7, !7, !7, !7}
!2353 = !{!2349, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362}
!2354 = !DILocalVariable(name: "s2", arg: 2, scope: !2350, file: !2330, line: 146, type: !74)
!2355 = !DILocalVariable(name: "s21", arg: 3, scope: !2350, file: !2330, line: 146, type: !7)
!2356 = !DILocalVariable(name: "s22", arg: 4, scope: !2350, file: !2330, line: 146, type: !7)
!2357 = !DILocalVariable(name: "s23", arg: 5, scope: !2350, file: !2330, line: 146, type: !7)
!2358 = !DILocalVariable(name: "s24", arg: 6, scope: !2350, file: !2330, line: 146, type: !7)
!2359 = !DILocalVariable(name: "s25", arg: 7, scope: !2350, file: !2330, line: 146, type: !7)
!2360 = !DILocalVariable(name: "s26", arg: 8, scope: !2350, file: !2330, line: 146, type: !7)
!2361 = !DILocalVariable(name: "s27", arg: 9, scope: !2350, file: !2330, line: 146, type: !7)
!2362 = !DILocalVariable(name: "s28", arg: 10, scope: !2350, file: !2330, line: 146, type: !7)
!2363 = !DILocation(line: 0, scope: !2350, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 167, column: 16, scope: !2365, inlinedAt: !2345)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !2330, line: 164, column: 11)
!2366 = distinct !DILexicalBlock(scope: !2348, file: !2330, line: 163, column: 5)
!2367 = !DILocation(line: 148, column: 7, scope: !2368, inlinedAt: !2364)
!2368 = distinct !DILexicalBlock(scope: !2350, file: !2330, line: 148, column: 7)
!2369 = !DILocalVariable(name: "s1", arg: 1, scope: !2370, file: !2330, line: 132, type: !74)
!2370 = distinct !DISubprogram(name: "strcaseeq2", scope: !2330, file: !2330, line: 132, type: !2371, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!77, !74, !74, !7, !7, !7, !7, !7, !7, !7}
!2373 = !{!2369, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!2374 = !DILocalVariable(name: "s2", arg: 2, scope: !2370, file: !2330, line: 132, type: !74)
!2375 = !DILocalVariable(name: "s22", arg: 3, scope: !2370, file: !2330, line: 132, type: !7)
!2376 = !DILocalVariable(name: "s23", arg: 4, scope: !2370, file: !2330, line: 132, type: !7)
!2377 = !DILocalVariable(name: "s24", arg: 5, scope: !2370, file: !2330, line: 132, type: !7)
!2378 = !DILocalVariable(name: "s25", arg: 6, scope: !2370, file: !2330, line: 132, type: !7)
!2379 = !DILocalVariable(name: "s26", arg: 7, scope: !2370, file: !2330, line: 132, type: !7)
!2380 = !DILocalVariable(name: "s27", arg: 8, scope: !2370, file: !2330, line: 132, type: !7)
!2381 = !DILocalVariable(name: "s28", arg: 9, scope: !2370, file: !2330, line: 132, type: !7)
!2382 = !DILocation(line: 0, scope: !2370, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 153, column: 16, scope: !2384, inlinedAt: !2364)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !2330, line: 150, column: 11)
!2385 = distinct !DILexicalBlock(scope: !2368, file: !2330, line: 149, column: 5)
!2386 = !DILocation(line: 134, column: 7, scope: !2387, inlinedAt: !2383)
!2387 = distinct !DILexicalBlock(scope: !2370, file: !2330, line: 134, column: 7)
!2388 = !DILocalVariable(name: "s1", arg: 1, scope: !2389, file: !2330, line: 118, type: !74)
!2389 = distinct !DISubprogram(name: "strcaseeq3", scope: !2330, file: !2330, line: 118, type: !2390, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!77, !74, !74, !7, !7, !7, !7, !7, !7}
!2392 = !{!2388, !2393, !2394, !2395, !2396, !2397, !2398, !2399}
!2393 = !DILocalVariable(name: "s2", arg: 2, scope: !2389, file: !2330, line: 118, type: !74)
!2394 = !DILocalVariable(name: "s23", arg: 3, scope: !2389, file: !2330, line: 118, type: !7)
!2395 = !DILocalVariable(name: "s24", arg: 4, scope: !2389, file: !2330, line: 118, type: !7)
!2396 = !DILocalVariable(name: "s25", arg: 5, scope: !2389, file: !2330, line: 118, type: !7)
!2397 = !DILocalVariable(name: "s26", arg: 6, scope: !2389, file: !2330, line: 118, type: !7)
!2398 = !DILocalVariable(name: "s27", arg: 7, scope: !2389, file: !2330, line: 118, type: !7)
!2399 = !DILocalVariable(name: "s28", arg: 8, scope: !2389, file: !2330, line: 118, type: !7)
!2400 = !DILocation(line: 0, scope: !2389, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 139, column: 16, scope: !2402, inlinedAt: !2383)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !2330, line: 136, column: 11)
!2403 = distinct !DILexicalBlock(scope: !2387, file: !2330, line: 135, column: 5)
!2404 = !DILocation(line: 120, column: 7, scope: !2405, inlinedAt: !2401)
!2405 = distinct !DILexicalBlock(scope: !2389, file: !2330, line: 120, column: 7)
!2406 = !DILocation(line: 120, column: 7, scope: !2389, inlinedAt: !2401)
!2407 = !DILocalVariable(name: "s1", arg: 1, scope: !2408, file: !2330, line: 104, type: !74)
!2408 = distinct !DISubprogram(name: "strcaseeq4", scope: !2330, file: !2330, line: 104, type: !2409, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!77, !74, !74, !7, !7, !7, !7, !7}
!2411 = !{!2407, !2412, !2413, !2414, !2415, !2416, !2417}
!2412 = !DILocalVariable(name: "s2", arg: 2, scope: !2408, file: !2330, line: 104, type: !74)
!2413 = !DILocalVariable(name: "s24", arg: 3, scope: !2408, file: !2330, line: 104, type: !7)
!2414 = !DILocalVariable(name: "s25", arg: 4, scope: !2408, file: !2330, line: 104, type: !7)
!2415 = !DILocalVariable(name: "s26", arg: 5, scope: !2408, file: !2330, line: 104, type: !7)
!2416 = !DILocalVariable(name: "s27", arg: 6, scope: !2408, file: !2330, line: 104, type: !7)
!2417 = !DILocalVariable(name: "s28", arg: 7, scope: !2408, file: !2330, line: 104, type: !7)
!2418 = !DILocation(line: 0, scope: !2408, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 125, column: 16, scope: !2420, inlinedAt: !2401)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !2330, line: 122, column: 11)
!2421 = distinct !DILexicalBlock(scope: !2405, file: !2330, line: 121, column: 5)
!2422 = !DILocation(line: 106, column: 7, scope: !2423, inlinedAt: !2419)
!2423 = distinct !DILexicalBlock(scope: !2408, file: !2330, line: 106, column: 7)
!2424 = !DILocation(line: 106, column: 7, scope: !2408, inlinedAt: !2419)
!2425 = !DILocalVariable(name: "s1", arg: 1, scope: !2426, file: !2330, line: 90, type: !74)
!2426 = distinct !DISubprogram(name: "strcaseeq5", scope: !2330, file: !2330, line: 90, type: !2427, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!77, !74, !74, !7, !7, !7, !7}
!2429 = !{!2425, !2430, !2431, !2432, !2433, !2434}
!2430 = !DILocalVariable(name: "s2", arg: 2, scope: !2426, file: !2330, line: 90, type: !74)
!2431 = !DILocalVariable(name: "s25", arg: 3, scope: !2426, file: !2330, line: 90, type: !7)
!2432 = !DILocalVariable(name: "s26", arg: 4, scope: !2426, file: !2330, line: 90, type: !7)
!2433 = !DILocalVariable(name: "s27", arg: 5, scope: !2426, file: !2330, line: 90, type: !7)
!2434 = !DILocalVariable(name: "s28", arg: 6, scope: !2426, file: !2330, line: 90, type: !7)
!2435 = !DILocation(line: 0, scope: !2426, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 111, column: 16, scope: !2437, inlinedAt: !2419)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !2330, line: 108, column: 11)
!2438 = distinct !DILexicalBlock(scope: !2423, file: !2330, line: 107, column: 5)
!2439 = !DILocation(line: 92, column: 7, scope: !2440, inlinedAt: !2436)
!2440 = distinct !DILexicalBlock(scope: !2426, file: !2330, line: 92, column: 7)
!2441 = !DILocation(line: 92, column: 7, scope: !2426, inlinedAt: !2436)
!2442 = !DILocation(line: 235, column: 12, scope: !2346)
!2443 = !DILocation(line: 235, column: 21, scope: !2346)
!2444 = !DILocation(line: 235, column: 5, scope: !2346)
!2445 = !DILocation(line: 0, scope: !2350, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 167, column: 16, scope: !2365, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 236, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2314, file: !126, line: 236, column: 7)
!2449 = !DILocation(line: 148, column: 7, scope: !2368, inlinedAt: !2446)
!2450 = !DILocation(line: 0, scope: !2370, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 153, column: 16, scope: !2384, inlinedAt: !2446)
!2452 = !DILocation(line: 134, column: 7, scope: !2387, inlinedAt: !2451)
!2453 = !DILocation(line: 134, column: 7, scope: !2370, inlinedAt: !2451)
!2454 = !DILocation(line: 0, scope: !2389, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 139, column: 16, scope: !2402, inlinedAt: !2451)
!2456 = !DILocation(line: 120, column: 7, scope: !2405, inlinedAt: !2455)
!2457 = !DILocation(line: 120, column: 7, scope: !2389, inlinedAt: !2455)
!2458 = !DILocation(line: 0, scope: !2408, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 125, column: 16, scope: !2420, inlinedAt: !2455)
!2460 = !DILocation(line: 106, column: 7, scope: !2423, inlinedAt: !2459)
!2461 = !DILocation(line: 106, column: 7, scope: !2408, inlinedAt: !2459)
!2462 = !DILocation(line: 0, scope: !2426, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 111, column: 16, scope: !2437, inlinedAt: !2459)
!2464 = !DILocation(line: 92, column: 7, scope: !2440, inlinedAt: !2463)
!2465 = !DILocation(line: 92, column: 7, scope: !2426, inlinedAt: !2463)
!2466 = !DILocalVariable(name: "s1", arg: 1, scope: !2467, file: !2330, line: 76, type: !74)
!2467 = distinct !DISubprogram(name: "strcaseeq6", scope: !2330, file: !2330, line: 76, type: !2468, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!77, !74, !74, !7, !7, !7}
!2470 = !{!2466, !2471, !2472, !2473, !2474}
!2471 = !DILocalVariable(name: "s2", arg: 2, scope: !2467, file: !2330, line: 76, type: !74)
!2472 = !DILocalVariable(name: "s26", arg: 3, scope: !2467, file: !2330, line: 76, type: !7)
!2473 = !DILocalVariable(name: "s27", arg: 4, scope: !2467, file: !2330, line: 76, type: !7)
!2474 = !DILocalVariable(name: "s28", arg: 5, scope: !2467, file: !2330, line: 76, type: !7)
!2475 = !DILocation(line: 0, scope: !2467, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 97, column: 16, scope: !2477, inlinedAt: !2463)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !2330, line: 94, column: 11)
!2478 = distinct !DILexicalBlock(scope: !2440, file: !2330, line: 93, column: 5)
!2479 = !DILocation(line: 78, column: 7, scope: !2480, inlinedAt: !2476)
!2480 = distinct !DILexicalBlock(scope: !2467, file: !2330, line: 78, column: 7)
!2481 = !DILocation(line: 78, column: 7, scope: !2467, inlinedAt: !2476)
!2482 = !DILocalVariable(name: "s1", arg: 1, scope: !2483, file: !2330, line: 62, type: !74)
!2483 = distinct !DISubprogram(name: "strcaseeq7", scope: !2330, file: !2330, line: 62, type: !2484, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!77, !74, !74, !7, !7}
!2486 = !{!2482, !2487, !2488, !2489}
!2487 = !DILocalVariable(name: "s2", arg: 2, scope: !2483, file: !2330, line: 62, type: !74)
!2488 = !DILocalVariable(name: "s27", arg: 3, scope: !2483, file: !2330, line: 62, type: !7)
!2489 = !DILocalVariable(name: "s28", arg: 4, scope: !2483, file: !2330, line: 62, type: !7)
!2490 = !DILocation(line: 0, scope: !2483, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 83, column: 16, scope: !2492, inlinedAt: !2476)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !2330, line: 80, column: 11)
!2493 = distinct !DILexicalBlock(scope: !2480, file: !2330, line: 79, column: 5)
!2494 = !DILocation(line: 64, column: 7, scope: !2495, inlinedAt: !2491)
!2495 = distinct !DILexicalBlock(scope: !2483, file: !2330, line: 64, column: 7)
!2496 = !DILocation(line: 236, column: 7, scope: !2314)
!2497 = !DILocation(line: 237, column: 12, scope: !2448)
!2498 = !DILocation(line: 237, column: 21, scope: !2448)
!2499 = !DILocation(line: 237, column: 5, scope: !2448)
!2500 = !DILocation(line: 239, column: 13, scope: !2314)
!2501 = !DILocation(line: 239, column: 11, scope: !2314)
!2502 = !DILocation(line: 239, column: 3, scope: !2314)
!2503 = !DILocation(line: 240, column: 1, scope: !2314)
!2504 = !DISubprogram(name: "iswprint", scope: !2505, file: !2505, line: 120, type: !2506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2505 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!77, !17}
!2508 = !DISubprogram(name: "mbsinit", scope: !2509, file: !2509, line: 292, type: !2510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2509 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!77, !2512}
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!2514 = distinct !DISubprogram(name: "quotearg_alloc", scope: !126, file: !126, line: 799, type: !2515, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!6, !74, !164, !1680}
!2517 = !{!2518, !2519, !2520}
!2518 = !DILocalVariable(name: "arg", arg: 1, scope: !2514, file: !126, line: 799, type: !74)
!2519 = !DILocalVariable(name: "argsize", arg: 2, scope: !2514, file: !126, line: 799, type: !164)
!2520 = !DILocalVariable(name: "o", arg: 3, scope: !2514, file: !126, line: 800, type: !1680)
!2521 = !DILocation(line: 0, scope: !2514)
!2522 = !DILocalVariable(name: "arg", arg: 1, scope: !2523, file: !126, line: 812, type: !74)
!2523 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !126, file: !126, line: 812, type: !2524, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!6, !74, !164, !313, !1680}
!2526 = !{!2522, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2527 = !DILocalVariable(name: "argsize", arg: 2, scope: !2523, file: !126, line: 812, type: !164)
!2528 = !DILocalVariable(name: "size", arg: 3, scope: !2523, file: !126, line: 812, type: !313)
!2529 = !DILocalVariable(name: "o", arg: 4, scope: !2523, file: !126, line: 813, type: !1680)
!2530 = !DILocalVariable(name: "p", scope: !2523, file: !126, line: 815, type: !1680)
!2531 = !DILocalVariable(name: "e", scope: !2523, file: !126, line: 816, type: !77)
!2532 = !DILocalVariable(name: "flags", scope: !2523, file: !126, line: 818, type: !77)
!2533 = !DILocalVariable(name: "bufsize", scope: !2523, file: !126, line: 819, type: !164)
!2534 = !DILocalVariable(name: "buf", scope: !2523, file: !126, line: 823, type: !6)
!2535 = !DILocation(line: 0, scope: !2523, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 802, column: 10, scope: !2514)
!2537 = !DILocation(line: 815, column: 37, scope: !2523, inlinedAt: !2536)
!2538 = !DILocation(line: 816, column: 11, scope: !2523, inlinedAt: !2536)
!2539 = !DILocation(line: 818, column: 18, scope: !2523, inlinedAt: !2536)
!2540 = !DILocation(line: 818, column: 24, scope: !2523, inlinedAt: !2536)
!2541 = !DILocation(line: 819, column: 69, scope: !2523, inlinedAt: !2536)
!2542 = !DILocation(line: 820, column: 53, scope: !2523, inlinedAt: !2536)
!2543 = !DILocation(line: 821, column: 49, scope: !2523, inlinedAt: !2536)
!2544 = !DILocation(line: 822, column: 49, scope: !2523, inlinedAt: !2536)
!2545 = !DILocation(line: 819, column: 20, scope: !2523, inlinedAt: !2536)
!2546 = !DILocation(line: 822, column: 62, scope: !2523, inlinedAt: !2536)
!2547 = !DILocalVariable(name: "n", arg: 1, scope: !2548, file: !309, line: 216, type: !164)
!2548 = distinct !DISubprogram(name: "xcharalloc", scope: !309, file: !309, line: 216, type: !2549, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!6, !164}
!2551 = !{!2547}
!2552 = !DILocation(line: 0, scope: !2548, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 823, column: 15, scope: !2523, inlinedAt: !2536)
!2554 = !DILocation(line: 218, column: 10, scope: !2548, inlinedAt: !2553)
!2555 = !DILocation(line: 824, column: 60, scope: !2523, inlinedAt: !2536)
!2556 = !DILocation(line: 826, column: 32, scope: !2523, inlinedAt: !2536)
!2557 = !DILocation(line: 826, column: 47, scope: !2523, inlinedAt: !2536)
!2558 = !DILocation(line: 824, column: 3, scope: !2523, inlinedAt: !2536)
!2559 = !DILocation(line: 827, column: 9, scope: !2523, inlinedAt: !2536)
!2560 = !DILocation(line: 802, column: 3, scope: !2514)
!2561 = !DILocation(line: 0, scope: !2523)
!2562 = !DILocation(line: 815, column: 37, scope: !2523)
!2563 = !DILocation(line: 816, column: 11, scope: !2523)
!2564 = !DILocation(line: 818, column: 18, scope: !2523)
!2565 = !DILocation(line: 818, column: 27, scope: !2523)
!2566 = !DILocation(line: 818, column: 24, scope: !2523)
!2567 = !DILocation(line: 819, column: 69, scope: !2523)
!2568 = !DILocation(line: 820, column: 53, scope: !2523)
!2569 = !DILocation(line: 821, column: 49, scope: !2523)
!2570 = !DILocation(line: 822, column: 49, scope: !2523)
!2571 = !DILocation(line: 819, column: 20, scope: !2523)
!2572 = !DILocation(line: 822, column: 62, scope: !2523)
!2573 = !DILocation(line: 0, scope: !2548, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 823, column: 15, scope: !2523)
!2575 = !DILocation(line: 218, column: 10, scope: !2548, inlinedAt: !2574)
!2576 = !DILocation(line: 824, column: 60, scope: !2523)
!2577 = !DILocation(line: 826, column: 32, scope: !2523)
!2578 = !DILocation(line: 826, column: 47, scope: !2523)
!2579 = !DILocation(line: 824, column: 3, scope: !2523)
!2580 = !DILocation(line: 827, column: 9, scope: !2523)
!2581 = !DILocation(line: 828, column: 7, scope: !2523)
!2582 = !DILocation(line: 829, column: 11, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2523, file: !126, line: 828, column: 7)
!2584 = !{!1341, !1341, i64 0}
!2585 = !DILocation(line: 829, column: 5, scope: !2583)
!2586 = !DILocation(line: 830, column: 3, scope: !2523)
!2587 = distinct !DISubprogram(name: "quotearg_free", scope: !126, file: !126, line: 848, type: !1126, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2588)
!2588 = !{!2589, !2590}
!2589 = !DILocalVariable(name: "sv", scope: !2587, file: !126, line: 850, type: !192)
!2590 = !DILocalVariable(name: "i", scope: !2587, file: !126, line: 851, type: !77)
!2591 = !DILocation(line: 850, column: 24, scope: !2587)
!2592 = !DILocation(line: 0, scope: !2587)
!2593 = !DILocation(line: 852, column: 19, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !126, line: 852, column: 3)
!2595 = distinct !DILexicalBlock(scope: !2587, file: !126, line: 852, column: 3)
!2596 = !DILocation(line: 852, column: 17, scope: !2594)
!2597 = !DILocation(line: 852, column: 3, scope: !2595)
!2598 = !DILocation(line: 853, column: 17, scope: !2594)
!2599 = !{!2600, !788, i64 8}
!2600 = !{!"slotvec", !1341, i64 0, !788, i64 8}
!2601 = !DILocation(line: 853, column: 5, scope: !2594)
!2602 = !DILocation(line: 852, column: 28, scope: !2594)
!2603 = distinct !{!2603, !2597, !2604, !831}
!2604 = !DILocation(line: 853, column: 20, scope: !2595)
!2605 = !DILocation(line: 854, column: 13, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2587, file: !126, line: 854, column: 7)
!2607 = !DILocation(line: 854, column: 17, scope: !2606)
!2608 = !DILocation(line: 854, column: 7, scope: !2587)
!2609 = !DILocation(line: 856, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !126, line: 855, column: 5)
!2611 = !DILocation(line: 857, column: 21, scope: !2610)
!2612 = !{!2600, !1341, i64 0}
!2613 = !DILocation(line: 858, column: 20, scope: !2610)
!2614 = !DILocation(line: 859, column: 5, scope: !2610)
!2615 = !DILocation(line: 860, column: 10, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2587, file: !126, line: 860, column: 7)
!2617 = !DILocation(line: 860, column: 7, scope: !2587)
!2618 = !DILocation(line: 862, column: 13, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !126, line: 861, column: 5)
!2620 = !DILocation(line: 862, column: 7, scope: !2619)
!2621 = !DILocation(line: 863, column: 15, scope: !2619)
!2622 = !DILocation(line: 864, column: 5, scope: !2619)
!2623 = !DILocation(line: 865, column: 10, scope: !2587)
!2624 = !DILocation(line: 866, column: 1, scope: !2587)
!2625 = distinct !DISubprogram(name: "quotearg_n", scope: !126, file: !126, line: 931, type: !912, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2626)
!2626 = !{!2627, !2628}
!2627 = !DILocalVariable(name: "n", arg: 1, scope: !2625, file: !126, line: 931, type: !77)
!2628 = !DILocalVariable(name: "arg", arg: 2, scope: !2625, file: !126, line: 931, type: !74)
!2629 = !DILocation(line: 0, scope: !2625)
!2630 = !DILocation(line: 933, column: 10, scope: !2625)
!2631 = !DILocation(line: 933, column: 3, scope: !2625)
!2632 = distinct !DISubprogram(name: "quotearg_n_options", scope: !126, file: !126, line: 877, type: !2633, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!6, !77, !74, !164, !1680}
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2642, !2645, !2646, !2648, !2649, !2650}
!2636 = !DILocalVariable(name: "n", arg: 1, scope: !2632, file: !126, line: 877, type: !77)
!2637 = !DILocalVariable(name: "arg", arg: 2, scope: !2632, file: !126, line: 877, type: !74)
!2638 = !DILocalVariable(name: "argsize", arg: 3, scope: !2632, file: !126, line: 877, type: !164)
!2639 = !DILocalVariable(name: "options", arg: 4, scope: !2632, file: !126, line: 878, type: !1680)
!2640 = !DILocalVariable(name: "e", scope: !2632, file: !126, line: 880, type: !77)
!2641 = !DILocalVariable(name: "sv", scope: !2632, file: !126, line: 882, type: !192)
!2642 = !DILocalVariable(name: "preallocated", scope: !2643, file: !126, line: 889, type: !28)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !126, line: 888, column: 5)
!2644 = distinct !DILexicalBlock(scope: !2632, file: !126, line: 887, column: 7)
!2645 = !DILocalVariable(name: "nmax", scope: !2643, file: !126, line: 890, type: !77)
!2646 = !DILocalVariable(name: "size", scope: !2647, file: !126, line: 903, type: !164)
!2647 = distinct !DILexicalBlock(scope: !2632, file: !126, line: 902, column: 3)
!2648 = !DILocalVariable(name: "val", scope: !2647, file: !126, line: 904, type: !6)
!2649 = !DILocalVariable(name: "flags", scope: !2647, file: !126, line: 906, type: !77)
!2650 = !DILocalVariable(name: "qsize", scope: !2647, file: !126, line: 907, type: !164)
!2651 = !DILocation(line: 0, scope: !2632)
!2652 = !DILocation(line: 880, column: 11, scope: !2632)
!2653 = !DILocation(line: 882, column: 24, scope: !2632)
!2654 = !DILocation(line: 884, column: 9, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2632, file: !126, line: 884, column: 7)
!2656 = !DILocation(line: 884, column: 7, scope: !2632)
!2657 = !DILocation(line: 885, column: 5, scope: !2655)
!2658 = !DILocation(line: 887, column: 7, scope: !2644)
!2659 = !DILocation(line: 887, column: 14, scope: !2644)
!2660 = !DILocation(line: 887, column: 7, scope: !2632)
!2661 = !DILocation(line: 889, column: 31, scope: !2643)
!2662 = !DILocation(line: 0, scope: !2643)
!2663 = !DILocation(line: 892, column: 16, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2643, file: !126, line: 892, column: 11)
!2665 = !DILocation(line: 892, column: 11, scope: !2643)
!2666 = !DILocation(line: 893, column: 9, scope: !2664)
!2667 = !DILocation(line: 895, column: 32, scope: !2643)
!2668 = !DILocation(line: 895, column: 61, scope: !2643)
!2669 = !DILocation(line: 895, column: 66, scope: !2643)
!2670 = !DILocation(line: 895, column: 22, scope: !2643)
!2671 = !DILocation(line: 895, column: 15, scope: !2643)
!2672 = !DILocation(line: 896, column: 11, scope: !2643)
!2673 = !DILocation(line: 897, column: 15, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2643, file: !126, line: 896, column: 11)
!2675 = !{i64 0, i64 8, !2584, i64 8, i64 8, !787}
!2676 = !DILocation(line: 897, column: 9, scope: !2674)
!2677 = !DILocation(line: 898, column: 20, scope: !2643)
!2678 = !DILocation(line: 898, column: 18, scope: !2643)
!2679 = !DILocation(line: 898, column: 15, scope: !2643)
!2680 = !DILocation(line: 898, column: 38, scope: !2643)
!2681 = !DILocation(line: 898, column: 31, scope: !2643)
!2682 = !DILocation(line: 898, column: 48, scope: !2643)
!2683 = !DILocation(line: 0, scope: !2075, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 898, column: 7, scope: !2643)
!2685 = !DILocation(line: 59, column: 10, scope: !2075, inlinedAt: !2684)
!2686 = !DILocation(line: 899, column: 14, scope: !2643)
!2687 = !DILocation(line: 900, column: 5, scope: !2643)
!2688 = !DILocation(line: 903, column: 19, scope: !2647)
!2689 = !DILocation(line: 903, column: 25, scope: !2647)
!2690 = !DILocation(line: 0, scope: !2647)
!2691 = !DILocation(line: 904, column: 23, scope: !2647)
!2692 = !DILocation(line: 906, column: 26, scope: !2647)
!2693 = !DILocation(line: 906, column: 32, scope: !2647)
!2694 = !DILocation(line: 908, column: 55, scope: !2647)
!2695 = !DILocation(line: 909, column: 46, scope: !2647)
!2696 = !DILocation(line: 910, column: 55, scope: !2647)
!2697 = !DILocation(line: 911, column: 55, scope: !2647)
!2698 = !DILocation(line: 907, column: 20, scope: !2647)
!2699 = !DILocation(line: 913, column: 14, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2647, file: !126, line: 913, column: 9)
!2701 = !DILocation(line: 913, column: 9, scope: !2647)
!2702 = !DILocation(line: 915, column: 35, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !126, line: 914, column: 7)
!2704 = !DILocation(line: 915, column: 20, scope: !2703)
!2705 = !DILocation(line: 916, column: 17, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !126, line: 916, column: 13)
!2707 = !DILocation(line: 916, column: 13, scope: !2703)
!2708 = !DILocation(line: 917, column: 11, scope: !2706)
!2709 = !DILocation(line: 0, scope: !2548, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 918, column: 27, scope: !2703)
!2711 = !DILocation(line: 218, column: 10, scope: !2548, inlinedAt: !2710)
!2712 = !DILocation(line: 918, column: 19, scope: !2703)
!2713 = !DILocation(line: 919, column: 69, scope: !2703)
!2714 = !DILocation(line: 921, column: 44, scope: !2703)
!2715 = !DILocation(line: 922, column: 44, scope: !2703)
!2716 = !DILocation(line: 919, column: 9, scope: !2703)
!2717 = !DILocation(line: 923, column: 7, scope: !2703)
!2718 = !DILocation(line: 925, column: 11, scope: !2647)
!2719 = !DILocation(line: 926, column: 5, scope: !2647)
!2720 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !126, file: !126, line: 937, type: !2721, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!6, !77, !74, !164}
!2723 = !{!2724, !2725, !2726}
!2724 = !DILocalVariable(name: "n", arg: 1, scope: !2720, file: !126, line: 937, type: !77)
!2725 = !DILocalVariable(name: "arg", arg: 2, scope: !2720, file: !126, line: 937, type: !74)
!2726 = !DILocalVariable(name: "argsize", arg: 3, scope: !2720, file: !126, line: 937, type: !164)
!2727 = !DILocation(line: 0, scope: !2720)
!2728 = !DILocation(line: 939, column: 10, scope: !2720)
!2729 = !DILocation(line: 939, column: 3, scope: !2720)
!2730 = distinct !DISubprogram(name: "quotearg", scope: !126, file: !126, line: 943, type: !1119, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2731)
!2731 = !{!2732}
!2732 = !DILocalVariable(name: "arg", arg: 1, scope: !2730, file: !126, line: 943, type: !74)
!2733 = !DILocation(line: 0, scope: !2730)
!2734 = !DILocation(line: 0, scope: !2625, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 945, column: 10, scope: !2730)
!2736 = !DILocation(line: 933, column: 10, scope: !2625, inlinedAt: !2735)
!2737 = !DILocation(line: 945, column: 3, scope: !2730)
!2738 = distinct !DISubprogram(name: "quotearg_mem", scope: !126, file: !126, line: 949, type: !2739, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!6, !74, !164}
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "arg", arg: 1, scope: !2738, file: !126, line: 949, type: !74)
!2743 = !DILocalVariable(name: "argsize", arg: 2, scope: !2738, file: !126, line: 949, type: !164)
!2744 = !DILocation(line: 0, scope: !2738)
!2745 = !DILocation(line: 0, scope: !2720, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 951, column: 10, scope: !2738)
!2747 = !DILocation(line: 939, column: 10, scope: !2720, inlinedAt: !2746)
!2748 = !DILocation(line: 951, column: 3, scope: !2738)
!2749 = distinct !DISubprogram(name: "quotearg_n_style", scope: !126, file: !126, line: 955, type: !2750, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!6, !77, !128, !74}
!2752 = !{!2753, !2754, !2755, !2756}
!2753 = !DILocalVariable(name: "n", arg: 1, scope: !2749, file: !126, line: 955, type: !77)
!2754 = !DILocalVariable(name: "s", arg: 2, scope: !2749, file: !126, line: 955, type: !128)
!2755 = !DILocalVariable(name: "arg", arg: 3, scope: !2749, file: !126, line: 955, type: !74)
!2756 = !DILocalVariable(name: "o", scope: !2749, file: !126, line: 957, type: !1681)
!2757 = !DILocation(line: 0, scope: !2749)
!2758 = !DILocation(line: 957, column: 3, scope: !2749)
!2759 = !DILocation(line: 957, column: 32, scope: !2749)
!2760 = !{!2761}
!2761 = distinct !{!2761, !2762, !"quoting_options_from_style: argument 0"}
!2762 = distinct !{!2762, !"quoting_options_from_style"}
!2763 = !DILocation(line: 957, column: 36, scope: !2749)
!2764 = !DILocalVariable(name: "style", arg: 1, scope: !2765, file: !126, line: 193, type: !128)
!2765 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !126, file: !126, line: 193, type: !2766, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!173, !128}
!2768 = !{!2764, !2769}
!2769 = !DILocalVariable(name: "o", scope: !2765, file: !126, line: 195, type: !173)
!2770 = !DILocation(line: 0, scope: !2765, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 957, column: 36, scope: !2749)
!2772 = !DILocation(line: 195, column: 26, scope: !2765, inlinedAt: !2771)
!2773 = !DILocation(line: 196, column: 13, scope: !2774, inlinedAt: !2771)
!2774 = distinct !DILexicalBlock(scope: !2765, file: !126, line: 196, column: 7)
!2775 = !DILocation(line: 196, column: 7, scope: !2765, inlinedAt: !2771)
!2776 = !DILocation(line: 197, column: 5, scope: !2774, inlinedAt: !2771)
!2777 = !DILocation(line: 198, column: 5, scope: !2765, inlinedAt: !2771)
!2778 = !DILocation(line: 198, column: 11, scope: !2765, inlinedAt: !2771)
!2779 = !DILocation(line: 958, column: 10, scope: !2749)
!2780 = !DILocation(line: 959, column: 1, scope: !2749)
!2781 = !DILocation(line: 958, column: 3, scope: !2749)
!2782 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !126, file: !126, line: 962, type: !2783, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!6, !77, !128, !74, !164}
!2785 = !{!2786, !2787, !2788, !2789, !2790}
!2786 = !DILocalVariable(name: "n", arg: 1, scope: !2782, file: !126, line: 962, type: !77)
!2787 = !DILocalVariable(name: "s", arg: 2, scope: !2782, file: !126, line: 962, type: !128)
!2788 = !DILocalVariable(name: "arg", arg: 3, scope: !2782, file: !126, line: 963, type: !74)
!2789 = !DILocalVariable(name: "argsize", arg: 4, scope: !2782, file: !126, line: 963, type: !164)
!2790 = !DILocalVariable(name: "o", scope: !2782, file: !126, line: 965, type: !1681)
!2791 = !DILocation(line: 0, scope: !2782)
!2792 = !DILocation(line: 965, column: 3, scope: !2782)
!2793 = !DILocation(line: 965, column: 32, scope: !2782)
!2794 = !{!2795}
!2795 = distinct !{!2795, !2796, !"quoting_options_from_style: argument 0"}
!2796 = distinct !{!2796, !"quoting_options_from_style"}
!2797 = !DILocation(line: 965, column: 36, scope: !2782)
!2798 = !DILocation(line: 0, scope: !2765, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 965, column: 36, scope: !2782)
!2800 = !DILocation(line: 195, column: 26, scope: !2765, inlinedAt: !2799)
!2801 = !DILocation(line: 196, column: 13, scope: !2774, inlinedAt: !2799)
!2802 = !DILocation(line: 196, column: 7, scope: !2765, inlinedAt: !2799)
!2803 = !DILocation(line: 197, column: 5, scope: !2774, inlinedAt: !2799)
!2804 = !DILocation(line: 198, column: 5, scope: !2765, inlinedAt: !2799)
!2805 = !DILocation(line: 198, column: 11, scope: !2765, inlinedAt: !2799)
!2806 = !DILocation(line: 966, column: 10, scope: !2782)
!2807 = !DILocation(line: 967, column: 1, scope: !2782)
!2808 = !DILocation(line: 966, column: 3, scope: !2782)
!2809 = distinct !DISubprogram(name: "quotearg_style", scope: !126, file: !126, line: 970, type: !2810, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!6, !128, !74}
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "s", arg: 1, scope: !2809, file: !126, line: 970, type: !128)
!2814 = !DILocalVariable(name: "arg", arg: 2, scope: !2809, file: !126, line: 970, type: !74)
!2815 = !DILocation(line: 0, scope: !2809)
!2816 = !DILocation(line: 0, scope: !2749, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 972, column: 10, scope: !2809)
!2818 = !DILocation(line: 957, column: 3, scope: !2749, inlinedAt: !2817)
!2819 = !DILocation(line: 957, column: 32, scope: !2749, inlinedAt: !2817)
!2820 = !{!2821}
!2821 = distinct !{!2821, !2822, !"quoting_options_from_style: argument 0"}
!2822 = distinct !{!2822, !"quoting_options_from_style"}
!2823 = !DILocation(line: 957, column: 36, scope: !2749, inlinedAt: !2817)
!2824 = !DILocation(line: 0, scope: !2765, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 957, column: 36, scope: !2749, inlinedAt: !2817)
!2826 = !DILocation(line: 195, column: 26, scope: !2765, inlinedAt: !2825)
!2827 = !DILocation(line: 196, column: 13, scope: !2774, inlinedAt: !2825)
!2828 = !DILocation(line: 196, column: 7, scope: !2765, inlinedAt: !2825)
!2829 = !DILocation(line: 197, column: 5, scope: !2774, inlinedAt: !2825)
!2830 = !DILocation(line: 198, column: 5, scope: !2765, inlinedAt: !2825)
!2831 = !DILocation(line: 198, column: 11, scope: !2765, inlinedAt: !2825)
!2832 = !DILocation(line: 958, column: 10, scope: !2749, inlinedAt: !2817)
!2833 = !DILocation(line: 959, column: 1, scope: !2749, inlinedAt: !2817)
!2834 = !DILocation(line: 972, column: 3, scope: !2809)
!2835 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !126, file: !126, line: 976, type: !2836, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!6, !128, !74, !164}
!2838 = !{!2839, !2840, !2841}
!2839 = !DILocalVariable(name: "s", arg: 1, scope: !2835, file: !126, line: 976, type: !128)
!2840 = !DILocalVariable(name: "arg", arg: 2, scope: !2835, file: !126, line: 976, type: !74)
!2841 = !DILocalVariable(name: "argsize", arg: 3, scope: !2835, file: !126, line: 976, type: !164)
!2842 = !DILocation(line: 0, scope: !2835)
!2843 = !DILocation(line: 0, scope: !2782, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 978, column: 10, scope: !2835)
!2845 = !DILocation(line: 965, column: 3, scope: !2782, inlinedAt: !2844)
!2846 = !DILocation(line: 965, column: 32, scope: !2782, inlinedAt: !2844)
!2847 = !{!2848}
!2848 = distinct !{!2848, !2849, !"quoting_options_from_style: argument 0"}
!2849 = distinct !{!2849, !"quoting_options_from_style"}
!2850 = !DILocation(line: 965, column: 36, scope: !2782, inlinedAt: !2844)
!2851 = !DILocation(line: 0, scope: !2765, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 965, column: 36, scope: !2782, inlinedAt: !2844)
!2853 = !DILocation(line: 195, column: 26, scope: !2765, inlinedAt: !2852)
!2854 = !DILocation(line: 196, column: 13, scope: !2774, inlinedAt: !2852)
!2855 = !DILocation(line: 196, column: 7, scope: !2765, inlinedAt: !2852)
!2856 = !DILocation(line: 197, column: 5, scope: !2774, inlinedAt: !2852)
!2857 = !DILocation(line: 198, column: 5, scope: !2765, inlinedAt: !2852)
!2858 = !DILocation(line: 198, column: 11, scope: !2765, inlinedAt: !2852)
!2859 = !DILocation(line: 966, column: 10, scope: !2782, inlinedAt: !2844)
!2860 = !DILocation(line: 967, column: 1, scope: !2782, inlinedAt: !2844)
!2861 = !DILocation(line: 978, column: 3, scope: !2835)
!2862 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !126, file: !126, line: 982, type: !2863, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!6, !74, !164, !7}
!2865 = !{!2866, !2867, !2868, !2869}
!2866 = !DILocalVariable(name: "arg", arg: 1, scope: !2862, file: !126, line: 982, type: !74)
!2867 = !DILocalVariable(name: "argsize", arg: 2, scope: !2862, file: !126, line: 982, type: !164)
!2868 = !DILocalVariable(name: "ch", arg: 3, scope: !2862, file: !126, line: 982, type: !7)
!2869 = !DILocalVariable(name: "options", scope: !2862, file: !126, line: 984, type: !173)
!2870 = !DILocation(line: 0, scope: !2862)
!2871 = !DILocation(line: 984, column: 3, scope: !2862)
!2872 = !DILocation(line: 984, column: 26, scope: !2862)
!2873 = !DILocation(line: 985, column: 13, scope: !2862)
!2874 = !{i64 0, i64 4, !1013, i64 4, i64 4, !971, i64 8, i64 32, !1013, i64 40, i64 8, !787, i64 48, i64 8, !787}
!2875 = !DILocation(line: 0, scope: !1701, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 986, column: 3, scope: !2862)
!2877 = !DILocation(line: 156, column: 62, scope: !1701, inlinedAt: !2876)
!2878 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2876)
!2879 = !DILocation(line: 157, column: 15, scope: !1701, inlinedAt: !2876)
!2880 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2876)
!2881 = !DILocation(line: 158, column: 15, scope: !1701, inlinedAt: !2876)
!2882 = !DILocation(line: 158, column: 25, scope: !1701, inlinedAt: !2876)
!2883 = !DILocation(line: 159, column: 18, scope: !1701, inlinedAt: !2876)
!2884 = !DILocation(line: 159, column: 23, scope: !1701, inlinedAt: !2876)
!2885 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2876)
!2886 = !DILocation(line: 987, column: 10, scope: !2862)
!2887 = !DILocation(line: 988, column: 1, scope: !2862)
!2888 = !DILocation(line: 987, column: 3, scope: !2862)
!2889 = distinct !DISubprogram(name: "quotearg_char", scope: !126, file: !126, line: 991, type: !2890, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!6, !74, !7}
!2892 = !{!2893, !2894}
!2893 = !DILocalVariable(name: "arg", arg: 1, scope: !2889, file: !126, line: 991, type: !74)
!2894 = !DILocalVariable(name: "ch", arg: 2, scope: !2889, file: !126, line: 991, type: !7)
!2895 = !DILocation(line: 0, scope: !2889)
!2896 = !DILocation(line: 0, scope: !2862, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 993, column: 10, scope: !2889)
!2898 = !DILocation(line: 984, column: 3, scope: !2862, inlinedAt: !2897)
!2899 = !DILocation(line: 984, column: 26, scope: !2862, inlinedAt: !2897)
!2900 = !DILocation(line: 985, column: 13, scope: !2862, inlinedAt: !2897)
!2901 = !DILocation(line: 0, scope: !1701, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 986, column: 3, scope: !2862, inlinedAt: !2897)
!2903 = !DILocation(line: 156, column: 62, scope: !1701, inlinedAt: !2902)
!2904 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2902)
!2905 = !DILocation(line: 157, column: 15, scope: !1701, inlinedAt: !2902)
!2906 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2902)
!2907 = !DILocation(line: 158, column: 15, scope: !1701, inlinedAt: !2902)
!2908 = !DILocation(line: 158, column: 25, scope: !1701, inlinedAt: !2902)
!2909 = !DILocation(line: 159, column: 18, scope: !1701, inlinedAt: !2902)
!2910 = !DILocation(line: 159, column: 23, scope: !1701, inlinedAt: !2902)
!2911 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2902)
!2912 = !DILocation(line: 987, column: 10, scope: !2862, inlinedAt: !2897)
!2913 = !DILocation(line: 988, column: 1, scope: !2862, inlinedAt: !2897)
!2914 = !DILocation(line: 993, column: 3, scope: !2889)
!2915 = distinct !DISubprogram(name: "quotearg_colon", scope: !126, file: !126, line: 997, type: !1119, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2916)
!2916 = !{!2917}
!2917 = !DILocalVariable(name: "arg", arg: 1, scope: !2915, file: !126, line: 997, type: !74)
!2918 = !DILocation(line: 0, scope: !2915)
!2919 = !DILocation(line: 0, scope: !2889, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 999, column: 10, scope: !2915)
!2921 = !DILocation(line: 0, scope: !2862, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 993, column: 10, scope: !2889, inlinedAt: !2920)
!2923 = !DILocation(line: 984, column: 3, scope: !2862, inlinedAt: !2922)
!2924 = !DILocation(line: 984, column: 26, scope: !2862, inlinedAt: !2922)
!2925 = !DILocation(line: 985, column: 13, scope: !2862, inlinedAt: !2922)
!2926 = !DILocation(line: 0, scope: !1701, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 986, column: 3, scope: !2862, inlinedAt: !2922)
!2928 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2927)
!2929 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2927)
!2930 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2927)
!2931 = !DILocation(line: 987, column: 10, scope: !2862, inlinedAt: !2922)
!2932 = !DILocation(line: 988, column: 1, scope: !2862, inlinedAt: !2922)
!2933 = !DILocation(line: 999, column: 3, scope: !2915)
!2934 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !126, file: !126, line: 1003, type: !2739, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2935)
!2935 = !{!2936, !2937}
!2936 = !DILocalVariable(name: "arg", arg: 1, scope: !2934, file: !126, line: 1003, type: !74)
!2937 = !DILocalVariable(name: "argsize", arg: 2, scope: !2934, file: !126, line: 1003, type: !164)
!2938 = !DILocation(line: 0, scope: !2934)
!2939 = !DILocation(line: 0, scope: !2862, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 1005, column: 10, scope: !2934)
!2941 = !DILocation(line: 984, column: 3, scope: !2862, inlinedAt: !2940)
!2942 = !DILocation(line: 984, column: 26, scope: !2862, inlinedAt: !2940)
!2943 = !DILocation(line: 985, column: 13, scope: !2862, inlinedAt: !2940)
!2944 = !DILocation(line: 0, scope: !1701, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 986, column: 3, scope: !2862, inlinedAt: !2940)
!2946 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2945)
!2947 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2945)
!2948 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2945)
!2949 = !DILocation(line: 987, column: 10, scope: !2862, inlinedAt: !2940)
!2950 = !DILocation(line: 988, column: 1, scope: !2862, inlinedAt: !2940)
!2951 = !DILocation(line: 1005, column: 3, scope: !2934)
!2952 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !126, file: !126, line: 1009, type: !2750, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2953)
!2953 = !{!2954, !2955, !2956, !2957}
!2954 = !DILocalVariable(name: "n", arg: 1, scope: !2952, file: !126, line: 1009, type: !77)
!2955 = !DILocalVariable(name: "s", arg: 2, scope: !2952, file: !126, line: 1009, type: !128)
!2956 = !DILocalVariable(name: "arg", arg: 3, scope: !2952, file: !126, line: 1009, type: !74)
!2957 = !DILocalVariable(name: "options", scope: !2952, file: !126, line: 1011, type: !173)
!2958 = !DILocation(line: 195, column: 26, scope: !2765, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 1012, column: 13, scope: !2952)
!2960 = !DILocation(line: 0, scope: !2952)
!2961 = !DILocation(line: 1011, column: 3, scope: !2952)
!2962 = !DILocation(line: 1011, column: 26, scope: !2952)
!2963 = !DILocation(line: 1012, column: 13, scope: !2952)
!2964 = !{!2965}
!2965 = distinct !{!2965, !2966, !"quoting_options_from_style: argument 0"}
!2966 = distinct !{!2966, !"quoting_options_from_style"}
!2967 = !DILocation(line: 0, scope: !2765, inlinedAt: !2959)
!2968 = !DILocation(line: 196, column: 13, scope: !2774, inlinedAt: !2959)
!2969 = !DILocation(line: 196, column: 7, scope: !2765, inlinedAt: !2959)
!2970 = !DILocation(line: 197, column: 5, scope: !2774, inlinedAt: !2959)
!2971 = !{i64 0, i64 4, !971, i64 4, i64 32, !1013, i64 36, i64 8, !787, i64 44, i64 8, !787}
!2972 = !DILocation(line: 0, scope: !1701, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 1013, column: 3, scope: !2952)
!2974 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2973)
!2975 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2973)
!2976 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2973)
!2977 = !DILocation(line: 1014, column: 10, scope: !2952)
!2978 = !DILocation(line: 1015, column: 1, scope: !2952)
!2979 = !DILocation(line: 1014, column: 3, scope: !2952)
!2980 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !126, file: !126, line: 1018, type: !2981, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!6, !77, !74, !74, !74}
!2983 = !{!2984, !2985, !2986, !2987}
!2984 = !DILocalVariable(name: "n", arg: 1, scope: !2980, file: !126, line: 1018, type: !77)
!2985 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2980, file: !126, line: 1018, type: !74)
!2986 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2980, file: !126, line: 1019, type: !74)
!2987 = !DILocalVariable(name: "arg", arg: 4, scope: !2980, file: !126, line: 1019, type: !74)
!2988 = !DILocation(line: 0, scope: !2980)
!2989 = !DILocalVariable(name: "n", arg: 1, scope: !2990, file: !126, line: 1026, type: !77)
!2990 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !126, file: !126, line: 1026, type: !2991, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!6, !77, !74, !74, !74, !164}
!2993 = !{!2989, !2994, !2995, !2996, !2997, !2998}
!2994 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2990, file: !126, line: 1026, type: !74)
!2995 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2990, file: !126, line: 1027, type: !74)
!2996 = !DILocalVariable(name: "arg", arg: 4, scope: !2990, file: !126, line: 1028, type: !74)
!2997 = !DILocalVariable(name: "argsize", arg: 5, scope: !2990, file: !126, line: 1028, type: !164)
!2998 = !DILocalVariable(name: "o", scope: !2990, file: !126, line: 1030, type: !173)
!2999 = !DILocation(line: 0, scope: !2990, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 1021, column: 10, scope: !2980)
!3001 = !DILocation(line: 1030, column: 3, scope: !2990, inlinedAt: !3000)
!3002 = !DILocation(line: 1030, column: 26, scope: !2990, inlinedAt: !3000)
!3003 = !DILocation(line: 1030, column: 30, scope: !2990, inlinedAt: !3000)
!3004 = !DILocation(line: 0, scope: !1741, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 1031, column: 3, scope: !2990, inlinedAt: !3000)
!3006 = !DILocation(line: 184, column: 6, scope: !1741, inlinedAt: !3005)
!3007 = !DILocation(line: 184, column: 12, scope: !1741, inlinedAt: !3005)
!3008 = !DILocation(line: 185, column: 8, scope: !1755, inlinedAt: !3005)
!3009 = !DILocation(line: 185, column: 19, scope: !1755, inlinedAt: !3005)
!3010 = !DILocation(line: 186, column: 5, scope: !1755, inlinedAt: !3005)
!3011 = !DILocation(line: 187, column: 6, scope: !1741, inlinedAt: !3005)
!3012 = !DILocation(line: 187, column: 17, scope: !1741, inlinedAt: !3005)
!3013 = !DILocation(line: 188, column: 6, scope: !1741, inlinedAt: !3005)
!3014 = !DILocation(line: 188, column: 18, scope: !1741, inlinedAt: !3005)
!3015 = !DILocation(line: 1032, column: 10, scope: !2990, inlinedAt: !3000)
!3016 = !DILocation(line: 1033, column: 1, scope: !2990, inlinedAt: !3000)
!3017 = !DILocation(line: 1021, column: 3, scope: !2980)
!3018 = !DILocation(line: 0, scope: !2990)
!3019 = !DILocation(line: 1030, column: 3, scope: !2990)
!3020 = !DILocation(line: 1030, column: 26, scope: !2990)
!3021 = !DILocation(line: 1030, column: 30, scope: !2990)
!3022 = !DILocation(line: 0, scope: !1741, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 1031, column: 3, scope: !2990)
!3024 = !DILocation(line: 184, column: 6, scope: !1741, inlinedAt: !3023)
!3025 = !DILocation(line: 184, column: 12, scope: !1741, inlinedAt: !3023)
!3026 = !DILocation(line: 185, column: 8, scope: !1755, inlinedAt: !3023)
!3027 = !DILocation(line: 185, column: 19, scope: !1755, inlinedAt: !3023)
!3028 = !DILocation(line: 186, column: 5, scope: !1755, inlinedAt: !3023)
!3029 = !DILocation(line: 187, column: 6, scope: !1741, inlinedAt: !3023)
!3030 = !DILocation(line: 187, column: 17, scope: !1741, inlinedAt: !3023)
!3031 = !DILocation(line: 188, column: 6, scope: !1741, inlinedAt: !3023)
!3032 = !DILocation(line: 188, column: 18, scope: !1741, inlinedAt: !3023)
!3033 = !DILocation(line: 1032, column: 10, scope: !2990)
!3034 = !DILocation(line: 1033, column: 1, scope: !2990)
!3035 = !DILocation(line: 1032, column: 3, scope: !2990)
!3036 = distinct !DISubprogram(name: "quotearg_custom", scope: !126, file: !126, line: 1036, type: !3037, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!6, !74, !74, !74}
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3036, file: !126, line: 1036, type: !74)
!3041 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3036, file: !126, line: 1036, type: !74)
!3042 = !DILocalVariable(name: "arg", arg: 3, scope: !3036, file: !126, line: 1037, type: !74)
!3043 = !DILocation(line: 0, scope: !3036)
!3044 = !DILocation(line: 0, scope: !2980, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 1039, column: 10, scope: !3036)
!3046 = !DILocation(line: 0, scope: !2990, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1021, column: 10, scope: !2980, inlinedAt: !3045)
!3048 = !DILocation(line: 1030, column: 3, scope: !2990, inlinedAt: !3047)
!3049 = !DILocation(line: 1030, column: 26, scope: !2990, inlinedAt: !3047)
!3050 = !DILocation(line: 1030, column: 30, scope: !2990, inlinedAt: !3047)
!3051 = !DILocation(line: 0, scope: !1741, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 1031, column: 3, scope: !2990, inlinedAt: !3047)
!3053 = !DILocation(line: 184, column: 6, scope: !1741, inlinedAt: !3052)
!3054 = !DILocation(line: 184, column: 12, scope: !1741, inlinedAt: !3052)
!3055 = !DILocation(line: 185, column: 8, scope: !1755, inlinedAt: !3052)
!3056 = !DILocation(line: 185, column: 19, scope: !1755, inlinedAt: !3052)
!3057 = !DILocation(line: 186, column: 5, scope: !1755, inlinedAt: !3052)
!3058 = !DILocation(line: 187, column: 6, scope: !1741, inlinedAt: !3052)
!3059 = !DILocation(line: 187, column: 17, scope: !1741, inlinedAt: !3052)
!3060 = !DILocation(line: 188, column: 6, scope: !1741, inlinedAt: !3052)
!3061 = !DILocation(line: 188, column: 18, scope: !1741, inlinedAt: !3052)
!3062 = !DILocation(line: 1032, column: 10, scope: !2990, inlinedAt: !3047)
!3063 = !DILocation(line: 1033, column: 1, scope: !2990, inlinedAt: !3047)
!3064 = !DILocation(line: 1039, column: 3, scope: !3036)
!3065 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !126, file: !126, line: 1043, type: !3066, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!6, !74, !74, !74, !164}
!3068 = !{!3069, !3070, !3071, !3072}
!3069 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3065, file: !126, line: 1043, type: !74)
!3070 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3065, file: !126, line: 1043, type: !74)
!3071 = !DILocalVariable(name: "arg", arg: 3, scope: !3065, file: !126, line: 1044, type: !74)
!3072 = !DILocalVariable(name: "argsize", arg: 4, scope: !3065, file: !126, line: 1044, type: !164)
!3073 = !DILocation(line: 0, scope: !3065)
!3074 = !DILocation(line: 0, scope: !2990, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 1046, column: 10, scope: !3065)
!3076 = !DILocation(line: 1030, column: 3, scope: !2990, inlinedAt: !3075)
!3077 = !DILocation(line: 1030, column: 26, scope: !2990, inlinedAt: !3075)
!3078 = !DILocation(line: 1030, column: 30, scope: !2990, inlinedAt: !3075)
!3079 = !DILocation(line: 0, scope: !1741, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 1031, column: 3, scope: !2990, inlinedAt: !3075)
!3081 = !DILocation(line: 184, column: 6, scope: !1741, inlinedAt: !3080)
!3082 = !DILocation(line: 184, column: 12, scope: !1741, inlinedAt: !3080)
!3083 = !DILocation(line: 185, column: 8, scope: !1755, inlinedAt: !3080)
!3084 = !DILocation(line: 185, column: 19, scope: !1755, inlinedAt: !3080)
!3085 = !DILocation(line: 186, column: 5, scope: !1755, inlinedAt: !3080)
!3086 = !DILocation(line: 187, column: 6, scope: !1741, inlinedAt: !3080)
!3087 = !DILocation(line: 187, column: 17, scope: !1741, inlinedAt: !3080)
!3088 = !DILocation(line: 188, column: 6, scope: !1741, inlinedAt: !3080)
!3089 = !DILocation(line: 188, column: 18, scope: !1741, inlinedAt: !3080)
!3090 = !DILocation(line: 1032, column: 10, scope: !2990, inlinedAt: !3075)
!3091 = !DILocation(line: 1033, column: 1, scope: !2990, inlinedAt: !3075)
!3092 = !DILocation(line: 1046, column: 3, scope: !3065)
!3093 = distinct !DISubprogram(name: "quote_n_mem", scope: !126, file: !126, line: 1061, type: !3094, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!74, !77, !74, !164}
!3096 = !{!3097, !3098, !3099}
!3097 = !DILocalVariable(name: "n", arg: 1, scope: !3093, file: !126, line: 1061, type: !77)
!3098 = !DILocalVariable(name: "arg", arg: 2, scope: !3093, file: !126, line: 1061, type: !74)
!3099 = !DILocalVariable(name: "argsize", arg: 3, scope: !3093, file: !126, line: 1061, type: !164)
!3100 = !DILocation(line: 0, scope: !3093)
!3101 = !DILocation(line: 1063, column: 10, scope: !3093)
!3102 = !DILocation(line: 1063, column: 3, scope: !3093)
!3103 = distinct !DISubprogram(name: "quote_mem", scope: !126, file: !126, line: 1067, type: !3104, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!74, !74, !164}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "arg", arg: 1, scope: !3103, file: !126, line: 1067, type: !74)
!3108 = !DILocalVariable(name: "argsize", arg: 2, scope: !3103, file: !126, line: 1067, type: !164)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 0, scope: !3093, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1069, column: 10, scope: !3103)
!3112 = !DILocation(line: 1063, column: 10, scope: !3093, inlinedAt: !3111)
!3113 = !DILocation(line: 1069, column: 3, scope: !3103)
!3114 = distinct !DISubprogram(name: "quote_n", scope: !126, file: !126, line: 1073, type: !3115, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!74, !77, !74}
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !126, line: 1073, type: !77)
!3119 = !DILocalVariable(name: "arg", arg: 2, scope: !3114, file: !126, line: 1073, type: !74)
!3120 = !DILocation(line: 0, scope: !3114)
!3121 = !DILocation(line: 0, scope: !3093, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1075, column: 10, scope: !3114)
!3123 = !DILocation(line: 1063, column: 10, scope: !3093, inlinedAt: !3122)
!3124 = !DILocation(line: 1075, column: 3, scope: !3114)
!3125 = distinct !DISubprogram(name: "quote", scope: !126, file: !126, line: 1079, type: !3126, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!74, !74}
!3128 = !{!3129}
!3129 = !DILocalVariable(name: "arg", arg: 1, scope: !3125, file: !126, line: 1079, type: !74)
!3130 = !DILocation(line: 0, scope: !3125)
!3131 = !DILocation(line: 0, scope: !3114, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1081, column: 10, scope: !3125)
!3133 = !DILocation(line: 0, scope: !3093, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 1075, column: 10, scope: !3114, inlinedAt: !3132)
!3135 = !DILocation(line: 1063, column: 10, scope: !3093, inlinedAt: !3134)
!3136 = !DILocation(line: 1081, column: 3, scope: !3125)
!3137 = distinct !DISubprogram(name: "parse_user_spec", scope: !220, file: !220, line: 259, type: !3138, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!74, !74, !237, !238, !239, !239}
!3140 = !{!3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148}
!3141 = !DILocalVariable(name: "spec", arg: 1, scope: !3137, file: !220, line: 259, type: !74)
!3142 = !DILocalVariable(name: "uid", arg: 2, scope: !3137, file: !220, line: 259, type: !237)
!3143 = !DILocalVariable(name: "gid", arg: 3, scope: !3137, file: !220, line: 259, type: !238)
!3144 = !DILocalVariable(name: "username", arg: 4, scope: !3137, file: !220, line: 260, type: !239)
!3145 = !DILocalVariable(name: "groupname", arg: 5, scope: !3137, file: !220, line: 260, type: !239)
!3146 = !DILocalVariable(name: "colon", scope: !3137, file: !220, line: 262, type: !74)
!3147 = !DILocalVariable(name: "error_msg", scope: !3137, file: !220, line: 263, type: !74)
!3148 = !DILocalVariable(name: "dot", scope: !3149, file: !220, line: 274, type: !74)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !220, line: 267, column: 5)
!3150 = distinct !DILexicalBlock(scope: !3137, file: !220, line: 266, column: 7)
!3151 = !DILocation(line: 0, scope: !3137)
!3152 = !DILocation(line: 262, column: 23, scope: !3137)
!3153 = !DILocation(line: 262, column: 29, scope: !3137)
!3154 = !DILocation(line: 264, column: 5, scope: !3137)
!3155 = !DILocation(line: 266, column: 7, scope: !3150)
!3156 = !DILocation(line: 266, column: 11, scope: !3150)
!3157 = !DILocation(line: 274, column: 25, scope: !3149)
!3158 = !DILocation(line: 0, scope: !3149)
!3159 = !DILocation(line: 275, column: 11, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3149, file: !220, line: 275, column: 11)
!3161 = !DILocation(line: 276, column: 11, scope: !3160)
!3162 = !DILocation(line: 276, column: 16, scope: !3160)
!3163 = !DILocation(line: 275, column: 11, scope: !3149)
!3164 = !DILocation(line: 280, column: 3, scope: !3137)
!3165 = !DILocation(line: 0, scope: !234)
!3166 = !DILocation(line: 116, column: 16, scope: !234)
!3167 = !DILocation(line: 117, column: 16, scope: !234)
!3168 = !DILocation(line: 117, column: 22, scope: !234)
!3169 = !DILocation(line: 120, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !234, file: !220, line: 120, column: 7)
!3171 = !DILocation(line: 120, column: 7, scope: !234)
!3172 = !DILocation(line: 121, column: 15, scope: !3170)
!3173 = !DILocation(line: 121, column: 5, scope: !3170)
!3174 = !DILocation(line: 122, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !234, file: !220, line: 122, column: 7)
!3176 = !DILocation(line: 122, column: 7, scope: !234)
!3177 = !DILocation(line: 123, column: 16, scope: !3175)
!3178 = !DILocation(line: 123, column: 5, scope: !3175)
!3179 = !DILocation(line: 130, column: 17, scope: !276)
!3180 = !DILocation(line: 130, column: 7, scope: !234)
!3181 = !DILocation(line: 132, column: 11, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !220, line: 132, column: 11)
!3183 = distinct !DILexicalBlock(scope: !276, file: !220, line: 131, column: 5)
!3184 = !DILocation(line: 132, column: 11, scope: !3183)
!3185 = !DILocation(line: 133, column: 13, scope: !3182)
!3186 = !DILocation(line: 133, column: 9, scope: !3182)
!3187 = !DILocation(line: 137, column: 31, scope: !275)
!3188 = !DILocation(line: 0, scope: !275)
!3189 = !DILocation(line: 138, column: 16, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !275, file: !220, line: 138, column: 11)
!3191 = !DILocation(line: 138, column: 11, scope: !275)
!3192 = !DILocation(line: 140, column: 35, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3190, file: !220, line: 139, column: 9)
!3194 = !DILocation(line: 140, column: 15, scope: !3193)
!3195 = !DILocation(line: 141, column: 11, scope: !3193)
!3196 = !DILocation(line: 141, column: 19, scope: !3193)
!3197 = !DILocation(line: 142, column: 9, scope: !3193)
!3198 = !DILocation(line: 145, column: 41, scope: !234)
!3199 = !DILocation(line: 145, column: 29, scope: !234)
!3200 = !DILocation(line: 145, column: 46, scope: !234)
!3201 = !DILocation(line: 145, column: 8, scope: !234)
!3202 = !DILocation(line: 158, column: 9, scope: !281)
!3203 = !DILocation(line: 158, column: 7, scope: !234)
!3204 = !DILocation(line: 161, column: 14, scope: !280)
!3205 = !DILocation(line: 161, column: 17, scope: !280)
!3206 = !DILocation(line: 161, column: 33, scope: !280)
!3207 = !DILocation(line: 162, column: 15, scope: !279)
!3208 = !DILocation(line: 162, column: 11, scope: !280)
!3209 = !DILocation(line: 164, column: 45, scope: !278)
!3210 = !DILocation(line: 164, column: 53, scope: !278)
!3211 = !DILocation(line: 0, scope: !278)
!3212 = !DILocation(line: 165, column: 15, scope: !278)
!3213 = !DILocation(line: 173, column: 15, scope: !283)
!3214 = !DILocation(line: 0, scope: !283)
!3215 = !DILocation(line: 174, column: 19, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !283, file: !220, line: 174, column: 19)
!3217 = !DILocation(line: 174, column: 52, scope: !3216)
!3218 = !DILocation(line: 175, column: 19, scope: !3216)
!3219 = !DILocation(line: 179, column: 13, scope: !284)
!3220 = !DILocation(line: 183, column: 23, scope: !288)
!3221 = !DILocation(line: 184, column: 17, scope: !287)
!3222 = !DILocation(line: 184, column: 25, scope: !287)
!3223 = !DILocation(line: 188, column: 15, scope: !286)
!3224 = !DILocation(line: 188, column: 20, scope: !286)
!3225 = !DILocation(line: 189, column: 27, scope: !286)
!3226 = !DILocation(line: 190, column: 21, scope: !286)
!3227 = !DILocation(line: 191, column: 32, scope: !286)
!3228 = !DILocation(line: 191, column: 43, scope: !286)
!3229 = !DILocation(line: 191, column: 64, scope: !286)
!3230 = !DILocation(line: 191, column: 53, scope: !286)
!3231 = !DILocation(line: 191, column: 23, scope: !286)
!3232 = !DILocation(line: 192, column: 15, scope: !286)
!3233 = !DILocation(line: 193, column: 13, scope: !287)
!3234 = !DILocation(line: 193, column: 13, scope: !286)
!3235 = !DILocation(line: 195, column: 7, scope: !280)
!3236 = !DILocation(line: 196, column: 5, scope: !280)
!3237 = !DILocation(line: 115, column: 9, scope: !234)
!3238 = !DILocation(line: 116, column: 9, scope: !234)
!3239 = !DILocation(line: 117, column: 9, scope: !234)
!3240 = !DILocation(line: 198, column: 9, scope: !293)
!3241 = !DILocation(line: 198, column: 17, scope: !293)
!3242 = !DILocation(line: 202, column: 14, scope: !292)
!3243 = !DILocation(line: 202, column: 17, scope: !292)
!3244 = !DILocation(line: 202, column: 33, scope: !292)
!3245 = !DILocation(line: 203, column: 15, scope: !291)
!3246 = !DILocation(line: 203, column: 11, scope: !292)
!3247 = !DILocation(line: 205, column: 11, scope: !290)
!3248 = !DILocation(line: 0, scope: !290)
!3249 = !DILocation(line: 206, column: 15, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !290, file: !220, line: 206, column: 15)
!3251 = !DILocation(line: 206, column: 48, scope: !3250)
!3252 = !DILocation(line: 207, column: 15, scope: !3250)
!3253 = !DILocation(line: 211, column: 9, scope: !291)
!3254 = !DILocation(line: 211, column: 9, scope: !290)
!3255 = !DILocation(line: 213, column: 21, scope: !291)
!3256 = !{!1247, !972, i64 16}
!3257 = !DILocation(line: 0, scope: !291)
!3258 = !DILocation(line: 169, column: 25, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !284, file: !220, line: 166, column: 13)
!3260 = !DILocation(line: 214, column: 7, scope: !292)
!3261 = !DILocation(line: 215, column: 15, scope: !292)
!3262 = !DILocation(line: 216, column: 5, scope: !292)
!3263 = !DILocation(line: 218, column: 17, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !234, file: !220, line: 218, column: 7)
!3265 = !DILocation(line: 218, column: 7, scope: !234)
!3266 = !DILocation(line: 220, column: 12, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3264, file: !220, line: 219, column: 5)
!3268 = !DILocation(line: 221, column: 11, scope: !3267)
!3269 = !DILocation(line: 222, column: 14, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3267, file: !220, line: 221, column: 11)
!3271 = !DILocation(line: 222, column: 9, scope: !3270)
!3272 = !DILocation(line: 223, column: 11, scope: !3267)
!3273 = !DILocation(line: 225, column: 21, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !220, line: 224, column: 9)
!3275 = distinct !DILexicalBlock(scope: !3267, file: !220, line: 223, column: 11)
!3276 = !DILocation(line: 227, column: 9, scope: !3274)
!3277 = !DILocation(line: 228, column: 11, scope: !3267)
!3278 = !DILocation(line: 230, column: 22, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !220, line: 229, column: 9)
!3280 = distinct !DILexicalBlock(scope: !3267, file: !220, line: 228, column: 11)
!3281 = !DILocation(line: 232, column: 9, scope: !3279)
!3282 = !DILocation(line: 235, column: 3, scope: !234)
!3283 = !DILocation(line: 236, column: 3, scope: !234)
!3284 = !DILocation(line: 237, column: 10, scope: !234)
!3285 = !DILocation(line: 237, column: 22, scope: !234)
!3286 = !DILocation(line: 237, column: 3, scope: !234)
!3287 = !DISubprogram(name: "getpwnam", scope: !251, file: !251, line: 116, type: !3288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!249, !74}
!3290 = !DISubprogram(name: "endgrent", scope: !263, file: !263, line: 67, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3291 = !DISubprogram(name: "endpwent", scope: !251, file: !251, line: 78, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3292 = !DISubprogram(name: "getgrnam", scope: !263, file: !263, line: 107, type: !3293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!261, !74}
!3295 = distinct !DISubprogram(name: "version_etc_arn", scope: !299, file: !299, line: 61, type: !3296, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !3334)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{null, !3298, !74, !74, !74, !3333, !164}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3300, line: 7, baseType: !3301)
!3300 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !861, line: 49, size: 1728, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3301, file: !861, line: 51, baseType: !77, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3301, file: !861, line: 54, baseType: !6, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3301, file: !861, line: 55, baseType: !6, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3301, file: !861, line: 56, baseType: !6, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3301, file: !861, line: 57, baseType: !6, size: 64, offset: 256)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3301, file: !861, line: 58, baseType: !6, size: 64, offset: 320)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3301, file: !861, line: 59, baseType: !6, size: 64, offset: 384)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3301, file: !861, line: 60, baseType: !6, size: 64, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3301, file: !861, line: 61, baseType: !6, size: 64, offset: 512)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3301, file: !861, line: 64, baseType: !6, size: 64, offset: 576)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3301, file: !861, line: 65, baseType: !6, size: 64, offset: 640)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3301, file: !861, line: 66, baseType: !6, size: 64, offset: 704)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3301, file: !861, line: 68, baseType: !876, size: 64, offset: 768)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3301, file: !861, line: 70, baseType: !3317, size: 64, offset: 832)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3301, file: !861, line: 72, baseType: !77, size: 32, offset: 896)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3301, file: !861, line: 73, baseType: !77, size: 32, offset: 928)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3301, file: !861, line: 74, baseType: !882, size: 64, offset: 960)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3301, file: !861, line: 77, baseType: !163, size: 16, offset: 1024)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3301, file: !861, line: 78, baseType: !886, size: 8, offset: 1040)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3301, file: !861, line: 79, baseType: !888, size: 8, offset: 1048)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3301, file: !861, line: 81, baseType: !892, size: 64, offset: 1088)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3301, file: !861, line: 89, baseType: !895, size: 64, offset: 1152)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3301, file: !861, line: 91, baseType: !897, size: 64, offset: 1216)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3301, file: !861, line: 92, baseType: !900, size: 64, offset: 1280)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3301, file: !861, line: 93, baseType: !3317, size: 64, offset: 1344)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3301, file: !861, line: 94, baseType: !8, size: 64, offset: 1408)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3301, file: !861, line: 95, baseType: !164, size: 64, offset: 1472)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3301, file: !861, line: 96, baseType: !77, size: 32, offset: 1536)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3301, file: !861, line: 98, baseType: !907, size: 160, offset: 1568)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340}
!3335 = !DILocalVariable(name: "stream", arg: 1, scope: !3295, file: !299, line: 61, type: !3298)
!3336 = !DILocalVariable(name: "command_name", arg: 2, scope: !3295, file: !299, line: 62, type: !74)
!3337 = !DILocalVariable(name: "package", arg: 3, scope: !3295, file: !299, line: 62, type: !74)
!3338 = !DILocalVariable(name: "version", arg: 4, scope: !3295, file: !299, line: 63, type: !74)
!3339 = !DILocalVariable(name: "authors", arg: 5, scope: !3295, file: !299, line: 64, type: !3333)
!3340 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3295, file: !299, line: 64, type: !164)
!3341 = !DILocation(line: 0, scope: !3295)
!3342 = !DILocation(line: 66, column: 7, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3295, file: !299, line: 66, column: 7)
!3344 = !DILocation(line: 66, column: 7, scope: !3295)
!3345 = !DILocation(line: 67, column: 5, scope: !3343)
!3346 = !DILocation(line: 69, column: 5, scope: !3343)
!3347 = !DILocation(line: 83, column: 3, scope: !3295)
!3348 = !DILocation(line: 85, column: 3, scope: !3295)
!3349 = !DILocation(line: 88, column: 3, scope: !3295)
!3350 = !DILocation(line: 95, column: 3, scope: !3295)
!3351 = !DILocation(line: 97, column: 3, scope: !3295)
!3352 = !DILocation(line: 105, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3295, file: !299, line: 98, column: 5)
!3354 = !DILocation(line: 106, column: 7, scope: !3353)
!3355 = !DILocation(line: 109, column: 7, scope: !3353)
!3356 = !DILocation(line: 110, column: 7, scope: !3353)
!3357 = !DILocation(line: 113, column: 7, scope: !3353)
!3358 = !DILocation(line: 115, column: 7, scope: !3353)
!3359 = !DILocation(line: 120, column: 7, scope: !3353)
!3360 = !DILocation(line: 122, column: 7, scope: !3353)
!3361 = !DILocation(line: 127, column: 7, scope: !3353)
!3362 = !DILocation(line: 129, column: 7, scope: !3353)
!3363 = !DILocation(line: 134, column: 7, scope: !3353)
!3364 = !DILocation(line: 137, column: 7, scope: !3353)
!3365 = !DILocation(line: 142, column: 7, scope: !3353)
!3366 = !DILocation(line: 145, column: 7, scope: !3353)
!3367 = !DILocation(line: 150, column: 7, scope: !3353)
!3368 = !DILocation(line: 154, column: 7, scope: !3353)
!3369 = !DILocation(line: 159, column: 7, scope: !3353)
!3370 = !DILocation(line: 163, column: 7, scope: !3353)
!3371 = !DILocation(line: 170, column: 7, scope: !3353)
!3372 = !DILocation(line: 174, column: 7, scope: !3353)
!3373 = !DILocation(line: 176, column: 1, scope: !3295)
!3374 = distinct !DISubprogram(name: "version_etc_ar", scope: !299, file: !299, line: 183, type: !3375, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !3298, !74, !74, !74, !3333}
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3383}
!3378 = !DILocalVariable(name: "stream", arg: 1, scope: !3374, file: !299, line: 183, type: !3298)
!3379 = !DILocalVariable(name: "command_name", arg: 2, scope: !3374, file: !299, line: 184, type: !74)
!3380 = !DILocalVariable(name: "package", arg: 3, scope: !3374, file: !299, line: 184, type: !74)
!3381 = !DILocalVariable(name: "version", arg: 4, scope: !3374, file: !299, line: 185, type: !74)
!3382 = !DILocalVariable(name: "authors", arg: 5, scope: !3374, file: !299, line: 185, type: !3333)
!3383 = !DILocalVariable(name: "n_authors", scope: !3374, file: !299, line: 187, type: !164)
!3384 = !DILocation(line: 0, scope: !3374)
!3385 = !DILocation(line: 189, column: 8, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3374, file: !299, line: 189, column: 3)
!3387 = !DILocation(line: 0, scope: !3386)
!3388 = !DILocation(line: 189, column: 23, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3386, file: !299, line: 189, column: 3)
!3390 = !DILocation(line: 189, column: 3, scope: !3386)
!3391 = !DILocation(line: 189, column: 52, scope: !3389)
!3392 = distinct !{!3392, !3390, !3393, !831}
!3393 = !DILocation(line: 190, column: 5, scope: !3386)
!3394 = !DILocation(line: 191, column: 3, scope: !3374)
!3395 = !DILocation(line: 192, column: 1, scope: !3374)
!3396 = distinct !DISubprogram(name: "version_etc_va", scope: !299, file: !299, line: 199, type: !3397, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !3406)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !3298, !74, !74, !74, !3399}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3401)
!3401 = !{!3402, !3403, !3404, !3405}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3400, file: !299, line: 192, baseType: !17, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3400, file: !299, line: 192, baseType: !17, size: 32, offset: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3400, file: !299, line: 192, baseType: !8, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3400, file: !299, line: 192, baseType: !8, size: 64, offset: 128)
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412, !3413}
!3407 = !DILocalVariable(name: "stream", arg: 1, scope: !3396, file: !299, line: 199, type: !3298)
!3408 = !DILocalVariable(name: "command_name", arg: 2, scope: !3396, file: !299, line: 200, type: !74)
!3409 = !DILocalVariable(name: "package", arg: 3, scope: !3396, file: !299, line: 200, type: !74)
!3410 = !DILocalVariable(name: "version", arg: 4, scope: !3396, file: !299, line: 201, type: !74)
!3411 = !DILocalVariable(name: "authors", arg: 5, scope: !3396, file: !299, line: 201, type: !3399)
!3412 = !DILocalVariable(name: "n_authors", scope: !3396, file: !299, line: 203, type: !164)
!3413 = !DILocalVariable(name: "authtab", scope: !3396, file: !299, line: 204, type: !3414)
!3414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !81)
!3415 = !DILocation(line: 0, scope: !3396)
!3416 = !DILocation(line: 204, column: 3, scope: !3396)
!3417 = !DILocation(line: 204, column: 15, scope: !3396)
!3418 = !DILocation(line: 208, column: 35, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !299, line: 206, column: 3)
!3420 = distinct !DILexicalBlock(scope: !3396, file: !299, line: 206, column: 3)
!3421 = !DILocation(line: 208, column: 14, scope: !3419)
!3422 = !DILocation(line: 208, column: 33, scope: !3419)
!3423 = !DILocation(line: 208, column: 67, scope: !3419)
!3424 = !DILocation(line: 206, column: 3, scope: !3420)
!3425 = !DILocation(line: 0, scope: !3420)
!3426 = !DILocation(line: 211, column: 3, scope: !3396)
!3427 = !DILocation(line: 213, column: 1, scope: !3396)
!3428 = distinct !DISubprogram(name: "version_etc", scope: !299, file: !299, line: 230, type: !3429, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3298, !74, !74, !74, null}
!3431 = !{!3432, !3433, !3434, !3435, !3436}
!3432 = !DILocalVariable(name: "stream", arg: 1, scope: !3428, file: !299, line: 230, type: !3298)
!3433 = !DILocalVariable(name: "command_name", arg: 2, scope: !3428, file: !299, line: 231, type: !74)
!3434 = !DILocalVariable(name: "package", arg: 3, scope: !3428, file: !299, line: 231, type: !74)
!3435 = !DILocalVariable(name: "version", arg: 4, scope: !3428, file: !299, line: 232, type: !74)
!3436 = !DILocalVariable(name: "authors", scope: !3428, file: !299, line: 234, type: !3437)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !856, line: 52, baseType: !3438)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3439, line: 32, baseType: !3440)
!3439 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !299, baseType: !3441)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3400, size: 192, elements: !889)
!3442 = !DILocation(line: 0, scope: !3428)
!3443 = !DILocation(line: 234, column: 3, scope: !3428)
!3444 = !DILocation(line: 234, column: 11, scope: !3428)
!3445 = !DILocation(line: 236, column: 3, scope: !3428)
!3446 = !DILocation(line: 237, column: 3, scope: !3428)
!3447 = !DILocation(line: 238, column: 3, scope: !3428)
!3448 = !DILocation(line: 239, column: 1, scope: !3428)
!3449 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !299, file: !299, line: 242, type: !1126, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !4)
!3450 = !DILocation(line: 244, column: 3, scope: !3449)
!3451 = !DILocation(line: 249, column: 3, scope: !3449)
!3452 = !DILocation(line: 255, column: 3, scope: !3449)
!3453 = !DILocation(line: 260, column: 3, scope: !3449)
!3454 = !DILocation(line: 262, column: 1, scope: !3449)
!3455 = distinct !DISubprogram(name: "xnmalloc", scope: !309, file: !309, line: 99, type: !3456, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!8, !164, !164}
!3458 = !{!3459, !3460}
!3459 = !DILocalVariable(name: "n", arg: 1, scope: !3455, file: !309, line: 99, type: !164)
!3460 = !DILocalVariable(name: "s", arg: 2, scope: !3455, file: !309, line: 99, type: !164)
!3461 = !DILocation(line: 0, scope: !3455)
!3462 = !DILocation(line: 101, column: 7, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3455, file: !309, line: 101, column: 7)
!3464 = !DILocation(line: 101, column: 7, scope: !3455)
!3465 = !DILocation(line: 102, column: 5, scope: !3463)
!3466 = !DILocation(line: 103, column: 21, scope: !3455)
!3467 = !DILocalVariable(name: "n", arg: 1, scope: !3468, file: !306, line: 39, type: !164)
!3468 = distinct !DISubprogram(name: "xmalloc", scope: !306, file: !306, line: 39, type: !3469, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!8, !164}
!3471 = !{!3467, !3472}
!3472 = !DILocalVariable(name: "p", scope: !3468, file: !306, line: 41, type: !8)
!3473 = !DILocation(line: 0, scope: !3468, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 103, column: 10, scope: !3455)
!3475 = !DILocation(line: 41, column: 13, scope: !3468, inlinedAt: !3474)
!3476 = !DILocation(line: 42, column: 8, scope: !3477, inlinedAt: !3474)
!3477 = distinct !DILexicalBlock(scope: !3468, file: !306, line: 42, column: 7)
!3478 = !DILocation(line: 42, column: 10, scope: !3477, inlinedAt: !3474)
!3479 = !DILocation(line: 43, column: 5, scope: !3477, inlinedAt: !3474)
!3480 = !DILocation(line: 103, column: 3, scope: !3455)
!3481 = !DILocation(line: 0, scope: !3468)
!3482 = !DILocation(line: 41, column: 13, scope: !3468)
!3483 = !DILocation(line: 42, column: 8, scope: !3477)
!3484 = !DILocation(line: 42, column: 10, scope: !3477)
!3485 = !DILocation(line: 43, column: 5, scope: !3477)
!3486 = !DILocation(line: 44, column: 3, scope: !3468)
!3487 = distinct !DISubprogram(name: "xnrealloc", scope: !309, file: !309, line: 112, type: !3488, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!8, !8, !164, !164}
!3490 = !{!3491, !3492, !3493}
!3491 = !DILocalVariable(name: "p", arg: 1, scope: !3487, file: !309, line: 112, type: !8)
!3492 = !DILocalVariable(name: "n", arg: 2, scope: !3487, file: !309, line: 112, type: !164)
!3493 = !DILocalVariable(name: "s", arg: 3, scope: !3487, file: !309, line: 112, type: !164)
!3494 = !DILocation(line: 0, scope: !3487)
!3495 = !DILocation(line: 114, column: 7, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3487, file: !309, line: 114, column: 7)
!3497 = !DILocation(line: 114, column: 7, scope: !3487)
!3498 = !DILocation(line: 115, column: 5, scope: !3496)
!3499 = !DILocation(line: 116, column: 25, scope: !3487)
!3500 = !DILocalVariable(name: "p", arg: 1, scope: !3501, file: !306, line: 51, type: !8)
!3501 = distinct !DISubprogram(name: "xrealloc", scope: !306, file: !306, line: 51, type: !3502, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!8, !8, !164}
!3504 = !{!3500, !3505}
!3505 = !DILocalVariable(name: "n", arg: 2, scope: !3501, file: !306, line: 51, type: !164)
!3506 = !DILocation(line: 0, scope: !3501, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 116, column: 10, scope: !3487)
!3508 = !DILocation(line: 53, column: 8, scope: !3509, inlinedAt: !3507)
!3509 = distinct !DILexicalBlock(scope: !3501, file: !306, line: 53, column: 7)
!3510 = !DILocation(line: 53, column: 10, scope: !3509, inlinedAt: !3507)
!3511 = !DILocation(line: 57, column: 7, scope: !3512, inlinedAt: !3507)
!3512 = distinct !DILexicalBlock(scope: !3509, file: !306, line: 54, column: 5)
!3513 = !DILocation(line: 58, column: 7, scope: !3512, inlinedAt: !3507)
!3514 = !DILocation(line: 61, column: 7, scope: !3501, inlinedAt: !3507)
!3515 = !DILocation(line: 62, column: 8, scope: !3516, inlinedAt: !3507)
!3516 = distinct !DILexicalBlock(scope: !3501, file: !306, line: 62, column: 7)
!3517 = !DILocation(line: 62, column: 10, scope: !3516, inlinedAt: !3507)
!3518 = !DILocation(line: 63, column: 5, scope: !3516, inlinedAt: !3507)
!3519 = !DILocation(line: 116, column: 3, scope: !3487)
!3520 = !DILocation(line: 0, scope: !3501)
!3521 = !DILocation(line: 53, column: 8, scope: !3509)
!3522 = !DILocation(line: 53, column: 10, scope: !3509)
!3523 = !DILocation(line: 57, column: 7, scope: !3512)
!3524 = !DILocation(line: 58, column: 7, scope: !3512)
!3525 = !DILocation(line: 61, column: 7, scope: !3501)
!3526 = !DILocation(line: 62, column: 8, scope: !3516)
!3527 = !DILocation(line: 62, column: 10, scope: !3516)
!3528 = !DILocation(line: 63, column: 5, scope: !3516)
!3529 = !DILocation(line: 65, column: 1, scope: !3501)
!3530 = !DILocation(line: 0, scope: !310)
!3531 = !DILocation(line: 176, column: 14, scope: !310)
!3532 = !DILocation(line: 178, column: 9, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !310, file: !309, line: 178, column: 7)
!3534 = !DILocation(line: 178, column: 7, scope: !310)
!3535 = !DILocation(line: 180, column: 13, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !309, line: 180, column: 11)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !309, line: 179, column: 5)
!3538 = !DILocation(line: 180, column: 11, scope: !3537)
!3539 = !DILocation(line: 188, column: 30, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !309, line: 181, column: 9)
!3541 = !DILocation(line: 189, column: 16, scope: !3540)
!3542 = !DILocation(line: 189, column: 13, scope: !3540)
!3543 = !DILocation(line: 190, column: 9, scope: !3540)
!3544 = !DILocation(line: 191, column: 11, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3537, file: !309, line: 191, column: 11)
!3546 = !DILocation(line: 191, column: 11, scope: !3537)
!3547 = !DILocation(line: 206, column: 7, scope: !310)
!3548 = !DILocation(line: 207, column: 25, scope: !310)
!3549 = !DILocation(line: 0, scope: !3501, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 207, column: 10, scope: !310)
!3551 = !DILocation(line: 53, column: 10, scope: !3509, inlinedAt: !3550)
!3552 = !DILocation(line: 192, column: 9, scope: !3545)
!3553 = !DILocation(line: 200, column: 69, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !309, line: 200, column: 11)
!3555 = distinct !DILexicalBlock(scope: !3533, file: !309, line: 195, column: 5)
!3556 = !DILocation(line: 201, column: 11, scope: !3554)
!3557 = !DILocation(line: 200, column: 11, scope: !3555)
!3558 = !DILocation(line: 202, column: 9, scope: !3554)
!3559 = !DILocation(line: 203, column: 14, scope: !3555)
!3560 = !DILocation(line: 203, column: 18, scope: !3555)
!3561 = !DILocation(line: 203, column: 9, scope: !3555)
!3562 = !DILocation(line: 53, column: 8, scope: !3509, inlinedAt: !3550)
!3563 = !DILocation(line: 57, column: 7, scope: !3512, inlinedAt: !3550)
!3564 = !DILocation(line: 58, column: 7, scope: !3512, inlinedAt: !3550)
!3565 = !DILocation(line: 61, column: 7, scope: !3501, inlinedAt: !3550)
!3566 = !DILocation(line: 62, column: 8, scope: !3516, inlinedAt: !3550)
!3567 = !DILocation(line: 62, column: 10, scope: !3516, inlinedAt: !3550)
!3568 = !DILocation(line: 63, column: 5, scope: !3516, inlinedAt: !3550)
!3569 = !DILocation(line: 207, column: 3, scope: !310)
!3570 = distinct !DISubprogram(name: "xcharalloc", scope: !309, file: !309, line: 216, type: !2549, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3571)
!3571 = !{!3572}
!3572 = !DILocalVariable(name: "n", arg: 1, scope: !3570, file: !309, line: 216, type: !164)
!3573 = !DILocation(line: 0, scope: !3570)
!3574 = !DILocation(line: 0, scope: !3468, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 218, column: 10, scope: !3570)
!3576 = !DILocation(line: 41, column: 13, scope: !3468, inlinedAt: !3575)
!3577 = !DILocation(line: 42, column: 8, scope: !3477, inlinedAt: !3575)
!3578 = !DILocation(line: 42, column: 10, scope: !3477, inlinedAt: !3575)
!3579 = !DILocation(line: 43, column: 5, scope: !3477, inlinedAt: !3575)
!3580 = !DILocation(line: 218, column: 3, scope: !3570)
!3581 = distinct !DISubprogram(name: "x2realloc", scope: !306, file: !306, line: 74, type: !3582, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!8, !8, !313}
!3584 = !{!3585, !3586}
!3585 = !DILocalVariable(name: "p", arg: 1, scope: !3581, file: !306, line: 74, type: !8)
!3586 = !DILocalVariable(name: "pn", arg: 2, scope: !3581, file: !306, line: 74, type: !313)
!3587 = !DILocation(line: 0, scope: !3581)
!3588 = !DILocation(line: 0, scope: !310, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 76, column: 10, scope: !3581)
!3590 = !DILocation(line: 176, column: 14, scope: !310, inlinedAt: !3589)
!3591 = !DILocation(line: 178, column: 9, scope: !3533, inlinedAt: !3589)
!3592 = !DILocation(line: 178, column: 7, scope: !310, inlinedAt: !3589)
!3593 = !DILocation(line: 180, column: 13, scope: !3536, inlinedAt: !3589)
!3594 = !DILocation(line: 180, column: 11, scope: !3537, inlinedAt: !3589)
!3595 = !DILocation(line: 191, column: 11, scope: !3545, inlinedAt: !3589)
!3596 = !DILocation(line: 191, column: 11, scope: !3537, inlinedAt: !3589)
!3597 = !DILocation(line: 192, column: 9, scope: !3545, inlinedAt: !3589)
!3598 = !DILocation(line: 201, column: 11, scope: !3554, inlinedAt: !3589)
!3599 = !DILocation(line: 200, column: 11, scope: !3555, inlinedAt: !3589)
!3600 = !DILocation(line: 202, column: 9, scope: !3554, inlinedAt: !3589)
!3601 = !DILocation(line: 203, column: 14, scope: !3555, inlinedAt: !3589)
!3602 = !DILocation(line: 203, column: 18, scope: !3555, inlinedAt: !3589)
!3603 = !DILocation(line: 203, column: 9, scope: !3555, inlinedAt: !3589)
!3604 = !DILocation(line: 0, scope: !3501, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 207, column: 10, scope: !310, inlinedAt: !3589)
!3606 = !DILocation(line: 53, column: 10, scope: !3509, inlinedAt: !3605)
!3607 = !DILocation(line: 206, column: 7, scope: !310, inlinedAt: !3589)
!3608 = !DILocation(line: 61, column: 7, scope: !3501, inlinedAt: !3605)
!3609 = !DILocation(line: 62, column: 8, scope: !3516, inlinedAt: !3605)
!3610 = !DILocation(line: 62, column: 10, scope: !3516, inlinedAt: !3605)
!3611 = !DILocation(line: 63, column: 5, scope: !3516, inlinedAt: !3605)
!3612 = !DILocation(line: 76, column: 3, scope: !3581)
!3613 = distinct !DISubprogram(name: "xzalloc", scope: !306, file: !306, line: 84, type: !3469, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3614)
!3614 = !{!3615}
!3615 = !DILocalVariable(name: "n", arg: 1, scope: !3613, file: !306, line: 84, type: !164)
!3616 = !DILocation(line: 0, scope: !3613)
!3617 = !DILocalVariable(name: "n", arg: 1, scope: !3618, file: !306, line: 93, type: !164)
!3618 = distinct !DISubprogram(name: "xcalloc", scope: !306, file: !306, line: 93, type: !3456, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3619)
!3619 = !{!3617, !3620, !3621}
!3620 = !DILocalVariable(name: "s", arg: 2, scope: !3618, file: !306, line: 93, type: !164)
!3621 = !DILocalVariable(name: "p", scope: !3618, file: !306, line: 95, type: !8)
!3622 = !DILocation(line: 0, scope: !3618, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 86, column: 10, scope: !3613)
!3624 = !DILocation(line: 100, column: 7, scope: !3625, inlinedAt: !3623)
!3625 = distinct !DILexicalBlock(scope: !3618, file: !306, line: 100, column: 7)
!3626 = !DILocation(line: 101, column: 7, scope: !3625, inlinedAt: !3623)
!3627 = !DILocation(line: 101, column: 18, scope: !3625, inlinedAt: !3623)
!3628 = !DILocation(line: 101, column: 16, scope: !3625, inlinedAt: !3623)
!3629 = !DILocation(line: 100, column: 7, scope: !3618, inlinedAt: !3623)
!3630 = !DILocation(line: 102, column: 5, scope: !3625, inlinedAt: !3623)
!3631 = !DILocation(line: 86, column: 3, scope: !3613)
!3632 = !DILocation(line: 0, scope: !3618)
!3633 = !DILocation(line: 100, column: 7, scope: !3625)
!3634 = !DILocation(line: 101, column: 7, scope: !3625)
!3635 = !DILocation(line: 101, column: 18, scope: !3625)
!3636 = !DILocation(line: 101, column: 16, scope: !3625)
!3637 = !DILocation(line: 100, column: 7, scope: !3618)
!3638 = !DILocation(line: 102, column: 5, scope: !3625)
!3639 = !DILocation(line: 103, column: 3, scope: !3618)
!3640 = distinct !DISubprogram(name: "xmemdup", scope: !306, file: !306, line: 111, type: !3641, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3645)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!8, !3643, !164}
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "p", arg: 1, scope: !3640, file: !306, line: 111, type: !3643)
!3647 = !DILocalVariable(name: "s", arg: 2, scope: !3640, file: !306, line: 111, type: !164)
!3648 = !DILocation(line: 0, scope: !3640)
!3649 = !DILocation(line: 0, scope: !3468, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 113, column: 18, scope: !3640)
!3651 = !DILocation(line: 41, column: 13, scope: !3468, inlinedAt: !3650)
!3652 = !DILocation(line: 42, column: 8, scope: !3477, inlinedAt: !3650)
!3653 = !DILocation(line: 42, column: 10, scope: !3477, inlinedAt: !3650)
!3654 = !DILocation(line: 43, column: 5, scope: !3477, inlinedAt: !3650)
!3655 = !DILocalVariable(name: "__dest", arg: 1, scope: !3656, file: !2076, line: 26, type: !3659)
!3656 = distinct !DISubprogram(name: "memcpy", scope: !2076, file: !2076, line: 26, type: !3657, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3661)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!8, !3659, !3660, !164}
!3659 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!3660 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3643)
!3661 = !{!3655, !3662, !3663}
!3662 = !DILocalVariable(name: "__src", arg: 2, scope: !3656, file: !2076, line: 26, type: !3660)
!3663 = !DILocalVariable(name: "__len", arg: 3, scope: !3656, file: !2076, line: 26, type: !164)
!3664 = !DILocation(line: 0, scope: !3656, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 113, column: 10, scope: !3640)
!3666 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3665)
!3667 = !DILocation(line: 113, column: 3, scope: !3640)
!3668 = distinct !DISubprogram(name: "xstrdup", scope: !306, file: !306, line: 119, type: !1119, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !3669)
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "string", arg: 1, scope: !3668, file: !306, line: 119, type: !74)
!3671 = !DILocation(line: 0, scope: !3668)
!3672 = !DILocation(line: 121, column: 27, scope: !3668)
!3673 = !DILocation(line: 121, column: 43, scope: !3668)
!3674 = !DILocation(line: 0, scope: !3640, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 121, column: 10, scope: !3668)
!3676 = !DILocation(line: 0, scope: !3468, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 113, column: 18, scope: !3640, inlinedAt: !3675)
!3678 = !DILocation(line: 41, column: 13, scope: !3468, inlinedAt: !3677)
!3679 = !DILocation(line: 42, column: 8, scope: !3477, inlinedAt: !3677)
!3680 = !DILocation(line: 42, column: 10, scope: !3477, inlinedAt: !3677)
!3681 = !DILocation(line: 43, column: 5, scope: !3477, inlinedAt: !3677)
!3682 = !DILocation(line: 0, scope: !3656, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 113, column: 10, scope: !3640, inlinedAt: !3675)
!3684 = !DILocation(line: 29, column: 10, scope: !3656, inlinedAt: !3683)
!3685 = !DILocation(line: 121, column: 3, scope: !3668)
!3686 = distinct !DISubprogram(name: "xalloc_die", scope: !323, file: !323, line: 32, type: !1126, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !4)
!3687 = !DILocation(line: 34, column: 10, scope: !3686)
!3688 = !DILocation(line: 34, column: 33, scope: !3686)
!3689 = !DILocation(line: 34, column: 3, scope: !3686)
!3690 = !DILocation(line: 40, column: 3, scope: !3686)
!3691 = distinct !DISubprogram(name: "xgetgroups", scope: !325, file: !325, line: 31, type: !733, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !3692)
!3692 = !{!3693, !3694, !3695, !3696}
!3693 = !DILocalVariable(name: "username", arg: 1, scope: !3691, file: !325, line: 31, type: !74)
!3694 = !DILocalVariable(name: "gid", arg: 2, scope: !3691, file: !325, line: 31, type: !22)
!3695 = !DILocalVariable(name: "groups", arg: 3, scope: !3691, file: !325, line: 31, type: !735)
!3696 = !DILocalVariable(name: "result", scope: !3691, file: !325, line: 33, type: !77)
!3697 = !DILocation(line: 0, scope: !3691)
!3698 = !DILocation(line: 33, column: 16, scope: !3691)
!3699 = !DILocation(line: 34, column: 14, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3691, file: !325, line: 34, column: 7)
!3701 = !DILocation(line: 34, column: 20, scope: !3700)
!3702 = !DILocation(line: 34, column: 23, scope: !3700)
!3703 = !DILocation(line: 34, column: 29, scope: !3700)
!3704 = !DILocation(line: 34, column: 7, scope: !3691)
!3705 = !DILocation(line: 35, column: 5, scope: !3700)
!3706 = !DILocation(line: 36, column: 3, scope: !3691)
!3707 = distinct !DISubprogram(name: "xstrtoul", scope: !3708, file: !3708, line: 76, type: !3709, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3713)
!3708 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!3711, !74, !239, !77, !3712, !74}
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !223, line: 38, baseType: !222)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3726, !3727, !3730, !3731}
!3714 = !DILocalVariable(name: "s", arg: 1, scope: !3707, file: !3708, line: 76, type: !74)
!3715 = !DILocalVariable(name: "ptr", arg: 2, scope: !3707, file: !3708, line: 76, type: !239)
!3716 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3707, file: !3708, line: 76, type: !77)
!3717 = !DILocalVariable(name: "val", arg: 4, scope: !3707, file: !3708, line: 77, type: !3712)
!3718 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3707, file: !3708, line: 77, type: !74)
!3719 = !DILocalVariable(name: "t_ptr", scope: !3707, file: !3708, line: 79, type: !6)
!3720 = !DILocalVariable(name: "p", scope: !3707, file: !3708, line: 80, type: !239)
!3721 = !DILocalVariable(name: "tmp", scope: !3707, file: !3708, line: 81, type: !95)
!3722 = !DILocalVariable(name: "err", scope: !3707, file: !3708, line: 82, type: !3711)
!3723 = !DILocalVariable(name: "q", scope: !3724, file: !3708, line: 92, type: !74)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !3708, line: 91, column: 5)
!3725 = distinct !DILexicalBlock(scope: !3707, file: !3708, line: 90, column: 7)
!3726 = !DILocalVariable(name: "ch", scope: !3724, file: !3708, line: 93, type: !9)
!3727 = !DILocalVariable(name: "base", scope: !3728, file: !3708, line: 129, type: !77)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !3708, line: 128, column: 5)
!3729 = distinct !DILexicalBlock(scope: !3707, file: !3708, line: 127, column: 7)
!3730 = !DILocalVariable(name: "suffixes", scope: !3728, file: !3708, line: 130, type: !77)
!3731 = !DILocalVariable(name: "overflow", scope: !3728, file: !3708, line: 131, type: !3711)
!3732 = !DILocation(line: 0, scope: !3707)
!3733 = !DILocation(line: 79, column: 3, scope: !3707)
!3734 = !DILocation(line: 84, column: 3, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !3708, line: 84, column: 3)
!3736 = distinct !DILexicalBlock(scope: !3707, file: !3708, line: 84, column: 3)
!3737 = !DILocation(line: 86, column: 8, scope: !3707)
!3738 = !DILocation(line: 88, column: 3, scope: !3707)
!3739 = !DILocation(line: 88, column: 9, scope: !3707)
!3740 = !DILocation(line: 0, scope: !3724)
!3741 = !DILocation(line: 94, column: 7, scope: !3724)
!3742 = !DILocation(line: 94, column: 14, scope: !3724)
!3743 = !DILocation(line: 95, column: 15, scope: !3724)
!3744 = distinct !{!3744, !3741, !3745, !831}
!3745 = !DILocation(line: 95, column: 17, scope: !3724)
!3746 = !DILocation(line: 96, column: 14, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3724, file: !3708, line: 96, column: 11)
!3748 = !DILocation(line: 100, column: 9, scope: !3707)
!3749 = !DILocation(line: 102, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3707, file: !3708, line: 102, column: 7)
!3751 = !DILocation(line: 102, column: 10, scope: !3750)
!3752 = !DILocation(line: 102, column: 7, scope: !3707)
!3753 = !DILocation(line: 106, column: 11, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !3708, line: 106, column: 11)
!3755 = distinct !DILexicalBlock(scope: !3750, file: !3708, line: 103, column: 5)
!3756 = !DILocation(line: 106, column: 26, scope: !3754)
!3757 = !DILocation(line: 106, column: 29, scope: !3754)
!3758 = !DILocation(line: 106, column: 33, scope: !3754)
!3759 = !DILocation(line: 106, column: 36, scope: !3754)
!3760 = !DILocation(line: 106, column: 11, scope: !3755)
!3761 = !DILocation(line: 111, column: 12, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3750, file: !3708, line: 111, column: 12)
!3763 = !DILocation(line: 111, column: 12, scope: !3750)
!3764 = !DILocation(line: 116, column: 5, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !3708, line: 112, column: 5)
!3766 = !DILocation(line: 121, column: 8, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3707, file: !3708, line: 121, column: 7)
!3768 = !DILocation(line: 121, column: 7, scope: !3707)
!3769 = !DILocation(line: 123, column: 12, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !3708, line: 122, column: 5)
!3771 = !DILocation(line: 124, column: 7, scope: !3770)
!3772 = !DILocation(line: 127, column: 7, scope: !3729)
!3773 = !DILocation(line: 127, column: 11, scope: !3729)
!3774 = !DILocation(line: 127, column: 7, scope: !3707)
!3775 = !DILocation(line: 0, scope: !3728)
!3776 = !DILocation(line: 133, column: 12, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3728, file: !3708, line: 133, column: 11)
!3778 = !DILocation(line: 133, column: 11, scope: !3728)
!3779 = !DILocation(line: 135, column: 16, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !3708, line: 134, column: 9)
!3781 = !DILocation(line: 136, column: 22, scope: !3780)
!3782 = !DILocation(line: 136, column: 11, scope: !3780)
!3783 = !DILocation(line: 139, column: 7, scope: !3728)
!3784 = !DILocation(line: 151, column: 15, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !3708, line: 151, column: 15)
!3786 = distinct !DILexicalBlock(scope: !3728, file: !3708, line: 140, column: 9)
!3787 = !DILocation(line: 151, column: 15, scope: !3786)
!3788 = !DILocation(line: 152, column: 21, scope: !3785)
!3789 = !DILocation(line: 152, column: 13, scope: !3785)
!3790 = !DILocation(line: 155, column: 21, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !3708, line: 155, column: 21)
!3792 = distinct !DILexicalBlock(scope: !3785, file: !3708, line: 153, column: 15)
!3793 = !DILocation(line: 155, column: 29, scope: !3791)
!3794 = !DILocation(line: 155, column: 21, scope: !3792)
!3795 = !DILocation(line: 163, column: 17, scope: !3792)
!3796 = !DILocation(line: 167, column: 7, scope: !3728)
!3797 = !DILocalVariable(name: "err", scope: !3798, file: !3708, line: 67, type: !3711)
!3798 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3708, file: !3708, line: 65, type: !3799, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!3711, !3712, !77, !77}
!3801 = !{!3802, !3803, !3804, !3797}
!3802 = !DILocalVariable(name: "x", arg: 1, scope: !3798, file: !3708, line: 65, type: !3712)
!3803 = !DILocalVariable(name: "base", arg: 2, scope: !3798, file: !3708, line: 65, type: !77)
!3804 = !DILocalVariable(name: "power", arg: 3, scope: !3798, file: !3708, line: 65, type: !77)
!3805 = !DILocation(line: 0, scope: !3798, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 221, column: 22, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3728, file: !3708, line: 168, column: 9)
!3808 = !DILocalVariable(name: "x", arg: 1, scope: !3809, file: !3708, line: 48, type: !3712)
!3809 = distinct !DISubprogram(name: "bkm_scale", scope: !3708, file: !3708, line: 48, type: !3810, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!3711, !3712, !77}
!3812 = !{!3808, !3813}
!3813 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3809, file: !3708, line: 48, type: !77)
!3814 = !DILocation(line: 0, scope: !3809, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3806)
!3816 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3815)
!3817 = distinct !DILexicalBlock(scope: !3809, file: !3708, line: 55, column: 7)
!3818 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3815)
!3819 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3806)
!3820 = !DILocation(line: 229, column: 11, scope: !3728)
!3821 = !DILocation(line: 0, scope: !3798, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 217, column: 22, scope: !3807)
!3823 = !DILocation(line: 0, scope: !3809, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3822)
!3825 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3824)
!3826 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3824)
!3827 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3822)
!3828 = !DILocation(line: 0, scope: !3798, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 204, column: 22, scope: !3807)
!3830 = !DILocation(line: 0, scope: !3809, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3829)
!3832 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3831)
!3833 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3831)
!3834 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3829)
!3835 = !DILocation(line: 0, scope: !3798, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 185, column: 22, scope: !3807)
!3837 = !DILocation(line: 0, scope: !3809, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3836)
!3839 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3838)
!3840 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3838)
!3841 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3836)
!3842 = !DILocation(line: 0, scope: !3809, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 170, column: 22, scope: !3807)
!3844 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3843)
!3845 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3843)
!3846 = !DILocation(line: 171, column: 11, scope: !3807)
!3847 = !DILocation(line: 0, scope: !3809, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 177, column: 22, scope: !3807)
!3849 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3848)
!3850 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3848)
!3851 = !DILocation(line: 178, column: 11, scope: !3807)
!3852 = !DILocation(line: 0, scope: !3798, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 190, column: 22, scope: !3807)
!3854 = !DILocation(line: 0, scope: !3809, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3853)
!3856 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3855)
!3857 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3855)
!3858 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3853)
!3859 = !DILocation(line: 0, scope: !3798, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 200, column: 22, scope: !3807)
!3861 = !DILocation(line: 0, scope: !3809, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3860)
!3863 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3862)
!3864 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3862)
!3865 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3860)
!3866 = !DILocation(line: 0, scope: !3798, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 209, column: 22, scope: !3807)
!3868 = !DILocation(line: 0, scope: !3809, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3867)
!3870 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3869)
!3871 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3869)
!3872 = !DILocation(line: 69, column: 9, scope: !3798, inlinedAt: !3867)
!3873 = !DILocation(line: 0, scope: !3809, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 213, column: 22, scope: !3807)
!3875 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3874)
!3876 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3874)
!3877 = !DILocation(line: 214, column: 11, scope: !3807)
!3878 = !DILocation(line: 225, column: 16, scope: !3807)
!3879 = !DILocation(line: 226, column: 22, scope: !3807)
!3880 = !DILocation(line: 226, column: 11, scope: !3807)
!3881 = !DILocation(line: 0, scope: !3798, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 195, column: 22, scope: !3807)
!3883 = !DILocation(line: 0, scope: !3809, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 69, column: 12, scope: !3798, inlinedAt: !3882)
!3885 = !DILocation(line: 55, column: 39, scope: !3817, inlinedAt: !3884)
!3886 = !DILocation(line: 55, column: 7, scope: !3809, inlinedAt: !3884)
!3887 = !DILocation(line: 0, scope: !3807)
!3888 = !DILocation(line: 230, column: 10, scope: !3728)
!3889 = !DILocation(line: 231, column: 11, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3728, file: !3708, line: 231, column: 11)
!3891 = !DILocation(line: 231, column: 11, scope: !3728)
!3892 = !DILocation(line: 107, column: 13, scope: !3754)
!3893 = !DILocation(line: 82, column: 16, scope: !3707)
!3894 = !DILocation(line: 235, column: 8, scope: !3707)
!3895 = !DILocation(line: 236, column: 3, scope: !3707)
!3896 = !DILocation(line: 237, column: 1, scope: !3707)
!3897 = distinct !DISubprogram(name: "rpl_calloc", scope: !331, file: !331, line: 42, type: !3456, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !3898)
!3898 = !{!3899, !3900, !3901, !3902}
!3899 = !DILocalVariable(name: "n", arg: 1, scope: !3897, file: !331, line: 42, type: !164)
!3900 = !DILocalVariable(name: "s", arg: 2, scope: !3897, file: !331, line: 42, type: !164)
!3901 = !DILocalVariable(name: "result", scope: !3897, file: !331, line: 44, type: !8)
!3902 = !DILocalVariable(name: "bytes", scope: !3903, file: !331, line: 56, type: !164)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !331, line: 53, column: 5)
!3904 = distinct !DILexicalBlock(scope: !3897, file: !331, line: 47, column: 7)
!3905 = !DILocation(line: 0, scope: !3897)
!3906 = !DILocation(line: 47, column: 9, scope: !3904)
!3907 = !DILocation(line: 47, column: 14, scope: !3904)
!3908 = !DILocation(line: 0, scope: !3903)
!3909 = !DILocation(line: 57, column: 21, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3903, file: !331, line: 57, column: 11)
!3911 = !DILocation(line: 57, column: 11, scope: !3903)
!3912 = !DILocation(line: 59, column: 11, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3910, file: !331, line: 58, column: 9)
!3914 = !DILocation(line: 59, column: 17, scope: !3913)
!3915 = !DILocation(line: 65, column: 12, scope: !3897)
!3916 = !DILocation(line: 72, column: 3, scope: !3897)
!3917 = !DILocation(line: 73, column: 1, scope: !3897)
!3918 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !333, file: !333, line: 86, type: !3919, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3933)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!164, !3921, !74, !164, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1830, line: 6, baseType: !3924)
!3924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1832, line: 21, baseType: !3925)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1832, line: 13, size: 64, elements: !3926)
!3926 = !{!3927, !3928}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3925, file: !1832, line: 15, baseType: !77, size: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3925, file: !1832, line: 20, baseType: !3929, size: 32, offset: 32)
!3929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3925, file: !1832, line: 16, size: 32, elements: !3930)
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3929, file: !1832, line: 18, baseType: !17, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3929, file: !1832, line: 19, baseType: !1841, size: 32)
!3933 = !{!3934, !3935, !3936, !3937, !3938, !3939, !3940}
!3934 = !DILocalVariable(name: "pwc", arg: 1, scope: !3918, file: !333, line: 86, type: !3921)
!3935 = !DILocalVariable(name: "s", arg: 2, scope: !3918, file: !333, line: 86, type: !74)
!3936 = !DILocalVariable(name: "n", arg: 3, scope: !3918, file: !333, line: 86, type: !164)
!3937 = !DILocalVariable(name: "ps", arg: 4, scope: !3918, file: !333, line: 86, type: !3922)
!3938 = !DILocalVariable(name: "ret", scope: !3918, file: !333, line: 88, type: !164)
!3939 = !DILocalVariable(name: "wc", scope: !3918, file: !333, line: 89, type: !1846)
!3940 = !DILocalVariable(name: "uc", scope: !3941, file: !333, line: 156, type: !9)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !333, line: 155, column: 5)
!3942 = distinct !DILexicalBlock(scope: !3918, file: !333, line: 154, column: 7)
!3943 = !DILocation(line: 0, scope: !3918)
!3944 = !DILocation(line: 89, column: 3, scope: !3918)
!3945 = !DILocation(line: 105, column: 9, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3918, file: !333, line: 105, column: 7)
!3947 = !DILocation(line: 105, column: 7, scope: !3918)
!3948 = !DILocation(line: 145, column: 9, scope: !3918)
!3949 = !DILocation(line: 154, column: 19, scope: !3942)
!3950 = !DILocation(line: 154, column: 26, scope: !3942)
!3951 = !DILocation(line: 154, column: 41, scope: !3942)
!3952 = !DILocation(line: 154, column: 7, scope: !3918)
!3953 = !DILocation(line: 156, column: 26, scope: !3941)
!3954 = !DILocation(line: 0, scope: !3941)
!3955 = !DILocation(line: 157, column: 14, scope: !3941)
!3956 = !DILocation(line: 157, column: 12, scope: !3941)
!3957 = !DILocation(line: 163, column: 1, scope: !3918)
!3958 = !DISubprogram(name: "mbrtowc", scope: !2509, file: !2509, line: 296, type: !3959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!95, !79, !74, !95, !3961}
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3962 = distinct !DISubprogram(name: "close_stream", scope: !336, file: !336, line: 56, type: !3963, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !3999)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!77, !3965}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3300, line: 7, baseType: !3967)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !861, line: 49, size: 1728, elements: !3968)
!3968 = !{!3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3967, file: !861, line: 51, baseType: !77, size: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3967, file: !861, line: 54, baseType: !6, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3967, file: !861, line: 55, baseType: !6, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3967, file: !861, line: 56, baseType: !6, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3967, file: !861, line: 57, baseType: !6, size: 64, offset: 256)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3967, file: !861, line: 58, baseType: !6, size: 64, offset: 320)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3967, file: !861, line: 59, baseType: !6, size: 64, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3967, file: !861, line: 60, baseType: !6, size: 64, offset: 448)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3967, file: !861, line: 61, baseType: !6, size: 64, offset: 512)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3967, file: !861, line: 64, baseType: !6, size: 64, offset: 576)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3967, file: !861, line: 65, baseType: !6, size: 64, offset: 640)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3967, file: !861, line: 66, baseType: !6, size: 64, offset: 704)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3967, file: !861, line: 68, baseType: !876, size: 64, offset: 768)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3967, file: !861, line: 70, baseType: !3983, size: 64, offset: 832)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3967, file: !861, line: 72, baseType: !77, size: 32, offset: 896)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3967, file: !861, line: 73, baseType: !77, size: 32, offset: 928)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3967, file: !861, line: 74, baseType: !882, size: 64, offset: 960)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3967, file: !861, line: 77, baseType: !163, size: 16, offset: 1024)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3967, file: !861, line: 78, baseType: !886, size: 8, offset: 1040)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3967, file: !861, line: 79, baseType: !888, size: 8, offset: 1048)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3967, file: !861, line: 81, baseType: !892, size: 64, offset: 1088)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3967, file: !861, line: 89, baseType: !895, size: 64, offset: 1152)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3967, file: !861, line: 91, baseType: !897, size: 64, offset: 1216)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3967, file: !861, line: 92, baseType: !900, size: 64, offset: 1280)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3967, file: !861, line: 93, baseType: !3983, size: 64, offset: 1344)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3967, file: !861, line: 94, baseType: !8, size: 64, offset: 1408)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3967, file: !861, line: 95, baseType: !164, size: 64, offset: 1472)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3967, file: !861, line: 96, baseType: !77, size: 32, offset: 1536)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3967, file: !861, line: 98, baseType: !907, size: 160, offset: 1568)
!3999 = !{!4000, !4001, !4003, !4004}
!4000 = !DILocalVariable(name: "stream", arg: 1, scope: !3962, file: !336, line: 56, type: !3965)
!4001 = !DILocalVariable(name: "some_pending", scope: !3962, file: !336, line: 58, type: !4002)
!4002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!4003 = !DILocalVariable(name: "prev_fail", scope: !3962, file: !336, line: 59, type: !4002)
!4004 = !DILocalVariable(name: "fclose_fail", scope: !3962, file: !336, line: 60, type: !4002)
!4005 = !DILocation(line: 0, scope: !3962)
!4006 = !DILocation(line: 58, column: 30, scope: !3962)
!4007 = !DILocalVariable(name: "__stream", arg: 1, scope: !4008, file: !1331, line: 135, type: !3965)
!4008 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1331, file: !1331, line: 135, type: !3963, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !4009)
!4009 = !{!4007}
!4010 = !DILocation(line: 0, scope: !4008, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 59, column: 27, scope: !3962)
!4012 = !DILocation(line: 137, column: 10, scope: !4008, inlinedAt: !4011)
!4013 = !{!1340, !972, i64 0}
!4014 = !DILocation(line: 59, column: 43, scope: !3962)
!4015 = !DILocation(line: 60, column: 29, scope: !3962)
!4016 = !DILocation(line: 60, column: 45, scope: !3962)
!4017 = !DILocation(line: 70, column: 17, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3962, file: !336, line: 70, column: 7)
!4019 = !DILocation(line: 58, column: 50, scope: !3962)
!4020 = !DILocation(line: 70, column: 33, scope: !4018)
!4021 = !DILocation(line: 70, column: 53, scope: !4018)
!4022 = !DILocation(line: 70, column: 59, scope: !4018)
!4023 = !DILocation(line: 70, column: 7, scope: !3962)
!4024 = !DILocation(line: 72, column: 11, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4018, file: !336, line: 71, column: 5)
!4026 = !DILocation(line: 73, column: 9, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4025, file: !336, line: 72, column: 11)
!4028 = !DILocation(line: 73, column: 15, scope: !4027)
!4029 = !DILocation(line: 78, column: 1, scope: !3962)
!4030 = distinct !DISubprogram(name: "hard_locale", scope: !338, file: !338, line: 27, type: !4031, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4033)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!28, !77}
!4033 = !{!4034, !4035}
!4034 = !DILocalVariable(name: "category", arg: 1, scope: !4030, file: !338, line: 27, type: !77)
!4035 = !DILocalVariable(name: "locale", scope: !4030, file: !338, line: 29, type: !4036)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2056, elements: !4037)
!4037 = !{!4038}
!4038 = !DISubrange(count: 257)
!4039 = !DILocation(line: 0, scope: !4030)
!4040 = !DILocation(line: 29, column: 3, scope: !4030)
!4041 = !DILocation(line: 29, column: 8, scope: !4030)
!4042 = !DILocation(line: 31, column: 7, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4030, file: !338, line: 31, column: 7)
!4044 = !DILocation(line: 31, column: 7, scope: !4030)
!4045 = !DILocation(line: 34, column: 12, scope: !4030)
!4046 = !DILocation(line: 34, column: 38, scope: !4030)
!4047 = !DILocation(line: 34, column: 41, scope: !4030)
!4048 = !DILocation(line: 34, column: 66, scope: !4030)
!4049 = !DILocation(line: 35, column: 1, scope: !4030)
!4050 = distinct !DISubprogram(name: "locale_charset", scope: !340, file: !340, line: 831, type: !4051, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !339, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!74}
!4053 = !{!4054}
!4054 = !DILocalVariable(name: "codeset", scope: !4050, file: !340, line: 833, type: !74)
!4055 = !DILocation(line: 847, column: 13, scope: !4050)
!4056 = !DILocation(line: 0, scope: !4050)
!4057 = !DILocation(line: 911, column: 15, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4050, file: !340, line: 911, column: 7)
!4059 = !DILocation(line: 911, column: 7, scope: !4050)
!4060 = !DILocation(line: 1070, column: 13, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !340, line: 1070, column: 13)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !340, line: 1060, column: 7)
!4063 = distinct !DILexicalBlock(scope: !4050, file: !340, line: 1019, column: 3)
!4064 = !DILocation(line: 1070, column: 24, scope: !4061)
!4065 = !DILocation(line: 1070, column: 13, scope: !4062)
!4066 = !DILocation(line: 1158, column: 3, scope: !4050)
!4067 = !DISubprogram(name: "nl_langinfo", scope: !343, file: !343, line: 661, type: !4068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!6, !77}
!4070 = !DILocation(line: 0, scope: !732)
!4071 = !DILocation(line: 68, column: 3, scope: !732)
!4072 = !DILocation(line: 81, column: 7, scope: !746)
!4073 = !DILocation(line: 81, column: 7, scope: !732)
!4074 = !DILocation(line: 84, column: 20, scope: !745)
!4075 = !DILocalVariable(name: "g", arg: 1, scope: !4076, file: !729, line: 43, type: !238)
!4076 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !729, file: !729, line: 43, type: !4077, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!238, !238, !164}
!4079 = !{!4075, !4080}
!4080 = !DILocalVariable(name: "num", arg: 2, scope: !4076, file: !729, line: 43, type: !164)
!4081 = !DILocation(line: 0, scope: !4076, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 86, column: 11, scope: !745)
!4083 = !DILocation(line: 51, column: 10, scope: !4076, inlinedAt: !4082)
!4084 = !DILocation(line: 87, column: 13, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !745, file: !729, line: 87, column: 11)
!4086 = !DILocation(line: 87, column: 11, scope: !745)
!4087 = !DILocation(line: 93, column: 31, scope: !744)
!4088 = !DILocation(line: 86, column: 9, scope: !745)
!4089 = !DILocation(line: 0, scope: !744)
!4090 = !DILocation(line: 96, column: 16, scope: !744)
!4091 = !DILocation(line: 100, column: 18, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !744, file: !729, line: 100, column: 15)
!4093 = !DILocation(line: 100, column: 22, scope: !4092)
!4094 = !DILocation(line: 101, column: 26, scope: !4092)
!4095 = !DILocation(line: 101, column: 13, scope: !4092)
!4096 = !DILocation(line: 103, column: 41, scope: !750)
!4097 = !DILocation(line: 0, scope: !4076, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 103, column: 20, scope: !750)
!4099 = !DILocation(line: 45, column: 7, scope: !4100, inlinedAt: !4098)
!4100 = distinct !DILexicalBlock(scope: !4076, file: !729, line: 45, column: 7)
!4101 = !DILocation(line: 45, column: 7, scope: !4076, inlinedAt: !4098)
!4102 = !DILocation(line: 47, column: 7, scope: !4103, inlinedAt: !4098)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !729, line: 46, column: 5)
!4104 = !DILocation(line: 47, column: 13, scope: !4103, inlinedAt: !4098)
!4105 = !DILocation(line: 103, column: 15, scope: !744)
!4106 = !DILocation(line: 51, column: 26, scope: !4076, inlinedAt: !4098)
!4107 = !DILocation(line: 51, column: 10, scope: !4076, inlinedAt: !4098)
!4108 = !DILocation(line: 103, column: 56, scope: !750)
!4109 = !DILocation(line: 105, column: 33, scope: !749)
!4110 = !DILocation(line: 0, scope: !749)
!4111 = !DILocation(line: 106, column: 15, scope: !749)
!4112 = !DILocation(line: 107, column: 21, scope: !749)
!4113 = !DILocation(line: 112, column: 17, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !744, file: !729, line: 112, column: 15)
!4115 = !DILocation(line: 112, column: 15, scope: !744)
!4116 = !DILocation(line: 114, column: 23, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4114, file: !729, line: 113, column: 13)
!4118 = !DILocation(line: 117, column: 15, scope: !4117)
!4119 = !DILocation(line: 126, column: 21, scope: !732)
!4120 = !DILocation(line: 124, column: 16, scope: !732)
!4121 = !DILocation(line: 131, column: 20, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !732, file: !729, line: 131, column: 7)
!4123 = !DILocation(line: 131, column: 7, scope: !732)
!4124 = !DILocation(line: 133, column: 11, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !729, line: 133, column: 11)
!4126 = distinct !DILexicalBlock(scope: !4122, file: !729, line: 132, column: 5)
!4127 = !DILocation(line: 133, column: 17, scope: !4125)
!4128 = !DILocation(line: 133, column: 27, scope: !4125)
!4129 = !DILocation(line: 0, scope: !4076, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 133, column: 35, scope: !4125)
!4131 = !DILocation(line: 51, column: 10, scope: !4076, inlinedAt: !4130)
!4132 = !DILocation(line: 133, column: 33, scope: !4125)
!4133 = !DILocation(line: 133, column: 11, scope: !4126)
!4134 = !DILocation(line: 135, column: 19, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4125, file: !729, line: 134, column: 9)
!4136 = !DILocation(line: 136, column: 14, scope: !4135)
!4137 = !DILocation(line: 137, column: 22, scope: !4135)
!4138 = !DILocation(line: 137, column: 11, scope: !4135)
!4139 = !DILocation(line: 142, column: 20, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !732, file: !729, line: 142, column: 7)
!4141 = !DILocation(line: 142, column: 25, scope: !4140)
!4142 = !DILocation(line: 143, column: 17, scope: !4140)
!4143 = !DILocation(line: 143, column: 5, scope: !4140)
!4144 = !DILocation(line: 144, column: 31, scope: !732)
!4145 = !DILocation(line: 0, scope: !4076, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 144, column: 7, scope: !732)
!4147 = !DILocation(line: 51, column: 26, scope: !4076, inlinedAt: !4146)
!4148 = !DILocation(line: 51, column: 10, scope: !4076, inlinedAt: !4146)
!4149 = !DILocation(line: 145, column: 9, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !732, file: !729, line: 145, column: 7)
!4151 = !DILocation(line: 145, column: 7, scope: !732)
!4152 = !DILocation(line: 150, column: 42, scope: !732)
!4153 = !DILocation(line: 150, column: 35, scope: !732)
!4154 = !DILocation(line: 151, column: 35, scope: !732)
!4155 = !DILocation(line: 150, column: 11, scope: !732)
!4156 = !DILocation(line: 153, column: 10, scope: !753)
!4157 = !DILocation(line: 153, column: 7, scope: !732)
!4158 = !DILocation(line: 156, column: 25, scope: !752)
!4159 = !DILocation(line: 0, scope: !752)
!4160 = !DILocation(line: 157, column: 7, scope: !752)
!4161 = !DILocation(line: 158, column: 13, scope: !752)
!4162 = !DILocation(line: 162, column: 17, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !732, file: !729, line: 162, column: 7)
!4164 = !DILocation(line: 164, column: 10, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4163, file: !729, line: 163, column: 5)
!4166 = !DILocation(line: 165, column: 9, scope: !4165)
!4167 = !DILocation(line: 166, column: 5, scope: !4165)
!4168 = !DILocation(line: 167, column: 11, scope: !732)
!4169 = !DILocation(line: 185, column: 9, scope: !756)
!4170 = !DILocation(line: 185, column: 7, scope: !732)
!4171 = !DILocation(line: 187, column: 21, scope: !755)
!4172 = !DILocation(line: 0, scope: !755)
!4173 = !DILocation(line: 189, column: 29, scope: !755)
!4174 = !DILocation(line: 0, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !755, file: !729, line: 191, column: 7)
!4176 = !DILocation(line: 191, column: 31, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4175, file: !729, line: 191, column: 7)
!4178 = !DILocation(line: 191, column: 7, scope: !4175)
!4179 = !DILocation(line: 193, column: 15, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4181, file: !729, line: 193, column: 15)
!4181 = distinct !DILexicalBlock(scope: !4177, file: !729, line: 192, column: 9)
!4182 = !DILocation(line: 193, column: 30, scope: !4180)
!4183 = !DILocation(line: 196, column: 14, scope: !4180)
!4184 = !DILocation(line: 196, column: 18, scope: !4180)
!4185 = !DILocation(line: 194, column: 15, scope: !4180)
!4186 = !DILocation(line: 194, column: 13, scope: !4180)
!4187 = !DILocation(line: 193, column: 21, scope: !4180)
!4188 = !DILocation(line: 201, column: 1, scope: !732)
!4189 = distinct !{!4189, !4178, !4190, !831}
!4190 = !DILocation(line: 197, column: 9, scope: !4175)
!4191 = !DISubprogram(name: "getgrouplist", scope: !263, file: !263, line: 186, type: !4192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!77, !74, !17, !1710, !79}
!4194 = distinct !DISubprogram(name: "setlocale_null_r", scope: !763, file: !763, line: 269, type: !4195, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !4197)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!77, !77, !6, !164}
!4197 = !{!4198, !4199, !4200}
!4198 = !DILocalVariable(name: "category", arg: 1, scope: !4194, file: !763, line: 269, type: !77)
!4199 = !DILocalVariable(name: "buf", arg: 2, scope: !4194, file: !763, line: 269, type: !6)
!4200 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4194, file: !763, line: 269, type: !164)
!4201 = !DILocation(line: 0, scope: !4194)
!4202 = !DILocalVariable(name: "category", arg: 1, scope: !4203, file: !763, line: 91, type: !77)
!4203 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !763, file: !763, line: 91, type: !4195, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !4204)
!4204 = !{!4202, !4205, !4206, !4207, !4208}
!4205 = !DILocalVariable(name: "buf", arg: 2, scope: !4203, file: !763, line: 91, type: !6)
!4206 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4203, file: !763, line: 91, type: !164)
!4207 = !DILocalVariable(name: "result", scope: !4203, file: !763, line: 140, type: !74)
!4208 = !DILocalVariable(name: "length", scope: !4209, file: !763, line: 154, type: !164)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !763, line: 153, column: 5)
!4210 = distinct !DILexicalBlock(scope: !4203, file: !763, line: 142, column: 7)
!4211 = !DILocation(line: 0, scope: !4203, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 274, column: 10, scope: !4194)
!4213 = !DILocalVariable(name: "category", arg: 1, scope: !4214, file: !763, line: 60, type: !77)
!4214 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !763, file: !763, line: 60, type: !4215, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!74, !77}
!4217 = !{!4213, !4218}
!4218 = !DILocalVariable(name: "result", scope: !4214, file: !763, line: 62, type: !74)
!4219 = !DILocation(line: 0, scope: !4214, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 140, column: 24, scope: !4203, inlinedAt: !4212)
!4221 = !DILocation(line: 62, column: 24, scope: !4214, inlinedAt: !4220)
!4222 = !DILocation(line: 142, column: 14, scope: !4210, inlinedAt: !4212)
!4223 = !DILocation(line: 142, column: 7, scope: !4203, inlinedAt: !4212)
!4224 = !DILocation(line: 145, column: 19, scope: !4225, inlinedAt: !4212)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !763, line: 145, column: 11)
!4226 = distinct !DILexicalBlock(scope: !4210, file: !763, line: 143, column: 5)
!4227 = !DILocation(line: 145, column: 11, scope: !4226, inlinedAt: !4212)
!4228 = !DILocation(line: 149, column: 16, scope: !4225, inlinedAt: !4212)
!4229 = !DILocation(line: 149, column: 9, scope: !4225, inlinedAt: !4212)
!4230 = !DILocation(line: 154, column: 23, scope: !4209, inlinedAt: !4212)
!4231 = !DILocation(line: 0, scope: !4209, inlinedAt: !4212)
!4232 = !DILocation(line: 155, column: 18, scope: !4233, inlinedAt: !4212)
!4233 = distinct !DILexicalBlock(scope: !4209, file: !763, line: 155, column: 11)
!4234 = !DILocation(line: 155, column: 11, scope: !4209, inlinedAt: !4212)
!4235 = !DILocation(line: 157, column: 39, scope: !4236, inlinedAt: !4212)
!4236 = distinct !DILexicalBlock(scope: !4233, file: !763, line: 156, column: 9)
!4237 = !DILocalVariable(name: "__dest", arg: 1, scope: !4238, file: !2076, line: 26, type: !3659)
!4238 = distinct !DISubprogram(name: "memcpy", scope: !2076, file: !2076, line: 26, type: !3657, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !4239)
!4239 = !{!4237, !4240, !4241}
!4240 = !DILocalVariable(name: "__src", arg: 2, scope: !4238, file: !2076, line: 26, type: !3660)
!4241 = !DILocalVariable(name: "__len", arg: 3, scope: !4238, file: !2076, line: 26, type: !164)
!4242 = !DILocation(line: 0, scope: !4238, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 157, column: 11, scope: !4236, inlinedAt: !4212)
!4244 = !DILocation(line: 29, column: 10, scope: !4238, inlinedAt: !4243)
!4245 = !DILocation(line: 158, column: 11, scope: !4236, inlinedAt: !4212)
!4246 = !DILocation(line: 162, column: 23, scope: !4247, inlinedAt: !4212)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !763, line: 162, column: 15)
!4248 = distinct !DILexicalBlock(scope: !4233, file: !763, line: 161, column: 9)
!4249 = !DILocation(line: 162, column: 15, scope: !4248, inlinedAt: !4212)
!4250 = !DILocation(line: 167, column: 44, scope: !4251, inlinedAt: !4212)
!4251 = distinct !DILexicalBlock(scope: !4247, file: !763, line: 163, column: 13)
!4252 = !DILocation(line: 0, scope: !4238, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 167, column: 15, scope: !4251, inlinedAt: !4212)
!4254 = !DILocation(line: 29, column: 10, scope: !4238, inlinedAt: !4253)
!4255 = !DILocation(line: 168, column: 15, scope: !4251, inlinedAt: !4212)
!4256 = !DILocation(line: 168, column: 32, scope: !4251, inlinedAt: !4212)
!4257 = !DILocation(line: 169, column: 13, scope: !4251, inlinedAt: !4212)
!4258 = !DILocation(line: 0, scope: !4210, inlinedAt: !4212)
!4259 = !DILocation(line: 274, column: 3, scope: !4194)
!4260 = distinct !DISubprogram(name: "setlocale_null", scope: !763, file: !763, line: 301, type: !4215, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !4261)
!4261 = !{!4262}
!4262 = !DILocalVariable(name: "category", arg: 1, scope: !4260, file: !763, line: 301, type: !77)
!4263 = !DILocation(line: 0, scope: !4260)
!4264 = !DILocation(line: 0, scope: !4214, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 304, column: 10, scope: !4260)
!4266 = !DILocation(line: 62, column: 24, scope: !4214, inlinedAt: !4265)
!4267 = !DILocation(line: 304, column: 3, scope: !4260)
!4268 = distinct !DISubprogram(name: "rpl_fclose", scope: !765, file: !765, line: 58, type: !4269, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !4305)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!77, !4271}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3300, line: 7, baseType: !4273)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !861, line: 49, size: 1728, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4273, file: !861, line: 51, baseType: !77, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4273, file: !861, line: 54, baseType: !6, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4273, file: !861, line: 55, baseType: !6, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4273, file: !861, line: 56, baseType: !6, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4273, file: !861, line: 57, baseType: !6, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4273, file: !861, line: 58, baseType: !6, size: 64, offset: 320)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4273, file: !861, line: 59, baseType: !6, size: 64, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4273, file: !861, line: 60, baseType: !6, size: 64, offset: 448)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4273, file: !861, line: 61, baseType: !6, size: 64, offset: 512)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4273, file: !861, line: 64, baseType: !6, size: 64, offset: 576)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4273, file: !861, line: 65, baseType: !6, size: 64, offset: 640)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4273, file: !861, line: 66, baseType: !6, size: 64, offset: 704)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4273, file: !861, line: 68, baseType: !876, size: 64, offset: 768)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4273, file: !861, line: 70, baseType: !4289, size: 64, offset: 832)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4273, file: !861, line: 72, baseType: !77, size: 32, offset: 896)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4273, file: !861, line: 73, baseType: !77, size: 32, offset: 928)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4273, file: !861, line: 74, baseType: !882, size: 64, offset: 960)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4273, file: !861, line: 77, baseType: !163, size: 16, offset: 1024)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4273, file: !861, line: 78, baseType: !886, size: 8, offset: 1040)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4273, file: !861, line: 79, baseType: !888, size: 8, offset: 1048)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4273, file: !861, line: 81, baseType: !892, size: 64, offset: 1088)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4273, file: !861, line: 89, baseType: !895, size: 64, offset: 1152)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4273, file: !861, line: 91, baseType: !897, size: 64, offset: 1216)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4273, file: !861, line: 92, baseType: !900, size: 64, offset: 1280)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4273, file: !861, line: 93, baseType: !4289, size: 64, offset: 1344)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4273, file: !861, line: 94, baseType: !8, size: 64, offset: 1408)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4273, file: !861, line: 95, baseType: !164, size: 64, offset: 1472)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4273, file: !861, line: 96, baseType: !77, size: 32, offset: 1536)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4273, file: !861, line: 98, baseType: !907, size: 160, offset: 1568)
!4305 = !{!4306, !4307, !4308, !4309}
!4306 = !DILocalVariable(name: "fp", arg: 1, scope: !4268, file: !765, line: 58, type: !4271)
!4307 = !DILocalVariable(name: "saved_errno", scope: !4268, file: !765, line: 60, type: !77)
!4308 = !DILocalVariable(name: "fd", scope: !4268, file: !765, line: 61, type: !77)
!4309 = !DILocalVariable(name: "result", scope: !4268, file: !765, line: 62, type: !77)
!4310 = !DILocation(line: 0, scope: !4268)
!4311 = !DILocation(line: 65, column: 8, scope: !4268)
!4312 = !DILocation(line: 66, column: 10, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4268, file: !765, line: 66, column: 7)
!4314 = !DILocation(line: 66, column: 7, scope: !4268)
!4315 = !DILocation(line: 67, column: 12, scope: !4313)
!4316 = !DILocation(line: 67, column: 5, scope: !4313)
!4317 = !DILocation(line: 72, column: 9, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4268, file: !765, line: 72, column: 7)
!4319 = !DILocation(line: 72, column: 23, scope: !4318)
!4320 = !DILocation(line: 72, column: 33, scope: !4318)
!4321 = !DILocation(line: 72, column: 26, scope: !4318)
!4322 = !DILocation(line: 72, column: 59, scope: !4318)
!4323 = !DILocation(line: 73, column: 7, scope: !4318)
!4324 = !DILocation(line: 73, column: 10, scope: !4318)
!4325 = !DILocation(line: 72, column: 7, scope: !4268)
!4326 = !DILocation(line: 100, column: 12, scope: !4268)
!4327 = !DILocation(line: 105, column: 7, scope: !4268)
!4328 = !DILocation(line: 74, column: 19, scope: !4318)
!4329 = !DILocation(line: 105, column: 19, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4268, file: !765, line: 105, column: 7)
!4331 = !DILocation(line: 107, column: 13, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4330, file: !765, line: 106, column: 5)
!4333 = !DILocation(line: 109, column: 5, scope: !4332)
!4334 = !DILocation(line: 112, column: 1, scope: !4268)
!4335 = !DISubprogram(name: "fileno", scope: !856, file: !856, line: 785, type: !4336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!77, !4289}
!4338 = !DISubprogram(name: "fclose", scope: !856, file: !856, line: 213, type: !4336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4339 = !DISubprogram(name: "lseek", scope: !1368, file: !1368, line: 334, type: !4340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!883, !77, !883, !77}
!4342 = distinct !DISubprogram(name: "rpl_fflush", scope: !767, file: !767, line: 129, type: !4343, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !4379)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!77, !4345}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3300, line: 7, baseType: !4347)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !861, line: 49, size: 1728, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4347, file: !861, line: 51, baseType: !77, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4347, file: !861, line: 54, baseType: !6, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4347, file: !861, line: 55, baseType: !6, size: 64, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4347, file: !861, line: 56, baseType: !6, size: 64, offset: 192)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4347, file: !861, line: 57, baseType: !6, size: 64, offset: 256)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4347, file: !861, line: 58, baseType: !6, size: 64, offset: 320)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4347, file: !861, line: 59, baseType: !6, size: 64, offset: 384)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4347, file: !861, line: 60, baseType: !6, size: 64, offset: 448)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4347, file: !861, line: 61, baseType: !6, size: 64, offset: 512)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4347, file: !861, line: 64, baseType: !6, size: 64, offset: 576)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4347, file: !861, line: 65, baseType: !6, size: 64, offset: 640)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4347, file: !861, line: 66, baseType: !6, size: 64, offset: 704)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4347, file: !861, line: 68, baseType: !876, size: 64, offset: 768)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4347, file: !861, line: 70, baseType: !4363, size: 64, offset: 832)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4347, file: !861, line: 72, baseType: !77, size: 32, offset: 896)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4347, file: !861, line: 73, baseType: !77, size: 32, offset: 928)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4347, file: !861, line: 74, baseType: !882, size: 64, offset: 960)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4347, file: !861, line: 77, baseType: !163, size: 16, offset: 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4347, file: !861, line: 78, baseType: !886, size: 8, offset: 1040)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4347, file: !861, line: 79, baseType: !888, size: 8, offset: 1048)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4347, file: !861, line: 81, baseType: !892, size: 64, offset: 1088)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4347, file: !861, line: 89, baseType: !895, size: 64, offset: 1152)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4347, file: !861, line: 91, baseType: !897, size: 64, offset: 1216)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4347, file: !861, line: 92, baseType: !900, size: 64, offset: 1280)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4347, file: !861, line: 93, baseType: !4363, size: 64, offset: 1344)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4347, file: !861, line: 94, baseType: !8, size: 64, offset: 1408)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4347, file: !861, line: 95, baseType: !164, size: 64, offset: 1472)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4347, file: !861, line: 96, baseType: !77, size: 32, offset: 1536)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4347, file: !861, line: 98, baseType: !907, size: 160, offset: 1568)
!4379 = !{!4380}
!4380 = !DILocalVariable(name: "stream", arg: 1, scope: !4342, file: !767, line: 129, type: !4345)
!4381 = !DILocation(line: 0, scope: !4342)
!4382 = !DILocation(line: 150, column: 14, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4342, file: !767, line: 150, column: 7)
!4384 = !DILocation(line: 150, column: 22, scope: !4383)
!4385 = !DILocation(line: 150, column: 27, scope: !4383)
!4386 = !DILocation(line: 150, column: 7, scope: !4342)
!4387 = !DILocation(line: 151, column: 12, scope: !4383)
!4388 = !DILocation(line: 151, column: 5, scope: !4383)
!4389 = !DILocalVariable(name: "fp", arg: 1, scope: !4390, file: !767, line: 41, type: !4345)
!4390 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !767, file: !767, line: 41, type: !4391, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !4393)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{null, !4345}
!4393 = !{!4389}
!4394 = !DILocation(line: 0, scope: !4390, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 156, column: 3, scope: !4342)
!4396 = !DILocation(line: 43, column: 11, scope: !4397, inlinedAt: !4395)
!4397 = distinct !DILexicalBlock(scope: !4390, file: !767, line: 43, column: 7)
!4398 = !DILocation(line: 43, column: 18, scope: !4397, inlinedAt: !4395)
!4399 = !DILocation(line: 43, column: 7, scope: !4390, inlinedAt: !4395)
!4400 = !DILocation(line: 45, column: 5, scope: !4397, inlinedAt: !4395)
!4401 = !DILocation(line: 158, column: 10, scope: !4342)
!4402 = !DILocation(line: 158, column: 3, scope: !4342)
!4403 = !DILocation(line: 235, column: 1, scope: !4342)
!4404 = !DISubprogram(name: "fflush", scope: !856, file: !856, line: 218, type: !4405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!77, !4363}
!4407 = distinct !DISubprogram(name: "rpl_fseeko", scope: !769, file: !769, line: 28, type: !4408, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4445)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!77, !4410, !4444, !77}
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3300, line: 7, baseType: !4412)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !861, line: 49, size: 1728, elements: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4412, file: !861, line: 51, baseType: !77, size: 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4412, file: !861, line: 54, baseType: !6, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4412, file: !861, line: 55, baseType: !6, size: 64, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4412, file: !861, line: 56, baseType: !6, size: 64, offset: 192)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4412, file: !861, line: 57, baseType: !6, size: 64, offset: 256)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4412, file: !861, line: 58, baseType: !6, size: 64, offset: 320)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4412, file: !861, line: 59, baseType: !6, size: 64, offset: 384)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4412, file: !861, line: 60, baseType: !6, size: 64, offset: 448)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4412, file: !861, line: 61, baseType: !6, size: 64, offset: 512)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4412, file: !861, line: 64, baseType: !6, size: 64, offset: 576)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4412, file: !861, line: 65, baseType: !6, size: 64, offset: 640)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4412, file: !861, line: 66, baseType: !6, size: 64, offset: 704)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4412, file: !861, line: 68, baseType: !876, size: 64, offset: 768)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4412, file: !861, line: 70, baseType: !4428, size: 64, offset: 832)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4412, file: !861, line: 72, baseType: !77, size: 32, offset: 896)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4412, file: !861, line: 73, baseType: !77, size: 32, offset: 928)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4412, file: !861, line: 74, baseType: !882, size: 64, offset: 960)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4412, file: !861, line: 77, baseType: !163, size: 16, offset: 1024)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4412, file: !861, line: 78, baseType: !886, size: 8, offset: 1040)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4412, file: !861, line: 79, baseType: !888, size: 8, offset: 1048)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4412, file: !861, line: 81, baseType: !892, size: 64, offset: 1088)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4412, file: !861, line: 89, baseType: !895, size: 64, offset: 1152)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4412, file: !861, line: 91, baseType: !897, size: 64, offset: 1216)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4412, file: !861, line: 92, baseType: !900, size: 64, offset: 1280)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4412, file: !861, line: 93, baseType: !4428, size: 64, offset: 1344)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4412, file: !861, line: 94, baseType: !8, size: 64, offset: 1408)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4412, file: !861, line: 95, baseType: !164, size: 64, offset: 1472)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4412, file: !861, line: 96, baseType: !77, size: 32, offset: 1536)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4412, file: !861, line: 98, baseType: !907, size: 160, offset: 1568)
!4444 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !856, line: 63, baseType: !882)
!4445 = !{!4446, !4447, !4448, !4449}
!4446 = !DILocalVariable(name: "fp", arg: 1, scope: !4407, file: !769, line: 28, type: !4410)
!4447 = !DILocalVariable(name: "offset", arg: 2, scope: !4407, file: !769, line: 28, type: !4444)
!4448 = !DILocalVariable(name: "whence", arg: 3, scope: !4407, file: !769, line: 28, type: !77)
!4449 = !DILocalVariable(name: "pos", scope: !4450, file: !769, line: 117, type: !4444)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !769, line: 113, column: 5)
!4451 = distinct !DILexicalBlock(scope: !4407, file: !769, line: 52, column: 7)
!4452 = !DILocation(line: 0, scope: !4407)
!4453 = !DILocation(line: 52, column: 11, scope: !4451)
!4454 = !{!1340, !788, i64 16}
!4455 = !DILocation(line: 52, column: 31, scope: !4451)
!4456 = !{!1340, !788, i64 8}
!4457 = !DILocation(line: 52, column: 24, scope: !4451)
!4458 = !DILocation(line: 53, column: 7, scope: !4451)
!4459 = !DILocation(line: 53, column: 14, scope: !4451)
!4460 = !DILocation(line: 53, column: 35, scope: !4451)
!4461 = !{!1340, !788, i64 32}
!4462 = !DILocation(line: 53, column: 28, scope: !4451)
!4463 = !DILocation(line: 54, column: 7, scope: !4451)
!4464 = !DILocation(line: 54, column: 14, scope: !4451)
!4465 = !{!1340, !788, i64 72}
!4466 = !DILocation(line: 54, column: 28, scope: !4451)
!4467 = !DILocation(line: 52, column: 7, scope: !4407)
!4468 = !DILocation(line: 117, column: 26, scope: !4450)
!4469 = !DILocation(line: 117, column: 19, scope: !4450)
!4470 = !DILocation(line: 0, scope: !4450)
!4471 = !DILocation(line: 118, column: 15, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4450, file: !769, line: 118, column: 11)
!4473 = !DILocation(line: 118, column: 11, scope: !4450)
!4474 = !DILocation(line: 129, column: 11, scope: !4450)
!4475 = !DILocation(line: 129, column: 18, scope: !4450)
!4476 = !DILocation(line: 130, column: 11, scope: !4450)
!4477 = !DILocation(line: 130, column: 19, scope: !4450)
!4478 = !{!1340, !1341, i64 144}
!4479 = !DILocation(line: 161, column: 7, scope: !4450)
!4480 = !DILocation(line: 163, column: 10, scope: !4407)
!4481 = !DILocation(line: 163, column: 3, scope: !4407)
!4482 = !DILocation(line: 164, column: 1, scope: !4407)
!4483 = !DISubprogram(name: "fseeko", scope: !856, file: !856, line: 712, type: !4484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!77, !4428, !883, !77}
