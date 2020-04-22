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
@just_group_list = internal unnamed_addr global i1 false, align 1, !dbg !245
@opt_zero = internal unnamed_addr global i1 false, align 1, !dbg !246
@just_user = internal unnamed_addr global i1 false, align 1, !dbg !247
@use_real = internal unnamed_addr global i1 false, align 1, !dbg !248
@use_name = internal unnamed_addr global i1 false, align 1, !dbg !249
@just_group = internal unnamed_addr global i1 false, align 1, !dbg !250
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [44 x i8] c"cannot print \22only\22 of more than one choice\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"cannot print only names or real IDs in default format\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"option --zero not permitted in default format\00", align 1
@multiple_users = internal unnamed_addr global i8 0, align 1, !dbg !217
@euid = internal global i32 0, align 4, !dbg !194
@.str.22 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@ok = internal unnamed_addr global i8 1, align 1, !dbg !219
@ruid = internal unnamed_addr global i32 0, align 4, !dbg !190
@egid = internal unnamed_addr global i32 0, align 4, !dbg !199
@rgid = internal unnamed_addr global i32 0, align 4, !dbg !196
@.str.23 = private unnamed_addr constant [25 x i8] c"cannot get effective UID\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"cannot find name for user ID %s\00", align 1
@uidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !221
@.str.52 = private unnamed_addr constant [7 x i8] c"uid=%s\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c" gid=%s\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !233
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
@gidtostr_ptr.buf.3 = internal global [21 x i8] zeroinitializer, align 16, !dbg !251
@.str.2.4 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.17 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), align 8, !dbg !318
@.str.60 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !323
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !367
@.str.63 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !369
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !375
@.str.74 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.75 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.76 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.80, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.81, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.86, i32 0, i32 0), i8* null], align 16, !dbg !416
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !522
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !526
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !528
@.str.11.87 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.89 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.90 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.91 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.92 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.93 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !535
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !542
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !530
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !544
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
@.str.20 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.126 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !550
@.str.1.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.145 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.146 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.1.155 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.158 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1364 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1369, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %0, metadata !1368, metadata !DIExpression()), !dbg !1390
  %3 = icmp eq i32 %0, 0, !dbg !1391
  br i1 %3, label %9, label %4, !dbg !1392

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1393, !tbaa !1395
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1393
  %7 = load i8*, i8** @program_name, align 8, !dbg !1393, !tbaa !1395
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1393
  br label %64, !dbg !1393

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1399
  %11 = load i8*, i8** @program_name, align 8, !dbg !1399, !tbaa !1395
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1399
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1400
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1400, !tbaa !1395
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1400
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([521 x i8], [521 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1401
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1401, !tbaa !1395
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1401
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1402
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1402, !tbaa !1395
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1402
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1403
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1403, !tbaa !1395
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1403
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1404
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !1395
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1404
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), metadata !1373, metadata !DIExpression()) #18, !dbg !1405
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1406
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #18, !dbg !1406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1386
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), metadata !1374, metadata !DIExpression()) #18, !dbg !1405
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1375, metadata !DIExpression()) #18, !dbg !1405
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1407
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1375, metadata !DIExpression()) #18, !dbg !1405
  br label %30, !dbg !1408

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1375, metadata !DIExpression()) #18, !dbg !1405
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #21, !dbg !1409
  %34 = icmp eq i32 %33, 0, !dbg !1409
  br i1 %34, label %40, label %35, !dbg !1408

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !1410
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !1375, metadata !DIExpression()) #18, !dbg !1405
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !1411
  %38 = load i8*, i8** %37, align 8, !dbg !1411, !tbaa !1412
  %39 = icmp eq i8* %38, null, !dbg !1414
  br i1 %39, label %40, label %30, !dbg !1415, !llvm.loop !1416

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1375, metadata !DIExpression()) #18, !dbg !1405
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1375, metadata !DIExpression()) #18, !dbg !1405
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !1417
  %43 = load i8*, i8** %42, align 8, !dbg !1417, !tbaa !1419
  %44 = icmp eq i8* %43, null, !dbg !1420
  %45 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %45, metadata !1374, metadata !DIExpression()) #18, !dbg !1405
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #18, !dbg !1422
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0)) #18, !dbg !1422
  %48 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1423
  call void @llvm.dbg.value(metadata i8* %48, metadata !1382, metadata !DIExpression()) #18, !dbg !1405
  %49 = icmp eq i8* %48, null, !dbg !1424
  br i1 %49, label %57, label %50, !dbg !1426

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #21, !dbg !1427
  %52 = icmp eq i32 %51, 0, !dbg !1427
  br i1 %52, label %57, label %53, !dbg !1428

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.38, i64 0, i64 0), i32 5) #18, !dbg !1429
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1429, !tbaa !1395
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #18, !dbg !1429
  br label %57, !dbg !1431

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 5) #18, !dbg !1432
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1432
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #18, !dbg !1433
  %61 = icmp eq i8* %45, getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), !dbg !1433
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1433
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #18, !dbg !1433
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #18, !dbg !1434
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #22, !dbg !1435
  unreachable, !dbg !1435
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !6 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !15 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !80 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1440, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8** %1, metadata !1441, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, metadata !1443, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8 0, metadata !1444, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8* null, metadata !1445, metadata !DIExpression()), !dbg !1458
  %3 = load i8*, i8** %1, align 8, !dbg !1459, !tbaa !1395
  tail call void @set_program_name(i8* %3) #18, !dbg !1460
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1461
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1462
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1463
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1464
  br label %8, !dbg !1465

8:                                                ; preds = %24, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %9, metadata !1442, metadata !DIExpression()), !dbg !1458
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
  ], !dbg !1465

10:                                               ; preds = %8
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1467
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %11) #18, !dbg !1467
  unreachable, !dbg !1467

12:                                               ; preds = %8
  br label %22, !dbg !1471

13:                                               ; preds = %8
  br label %22, !dbg !1472

14:                                               ; preds = %8
  br label %22, !dbg !1473

15:                                               ; preds = %8
  br label %22, !dbg !1474

16:                                               ; preds = %8
  br label %22, !dbg !1475

17:                                               ; preds = %8
  tail call void @usage(i32 0) #23, !dbg !1476
  unreachable, !dbg !1476

18:                                               ; preds = %8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1477, !tbaa !1395
  %20 = load i8*, i8** @Version, align 8, !dbg !1477, !tbaa !1395
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #18, !dbg !1477
  tail call void @exit(i32 0) #22, !dbg !1477
  unreachable, !dbg !1477

21:                                               ; preds = %8
  tail call void @usage(i32 1) #23, !dbg !1478
  unreachable, !dbg !1478

22:                                               ; preds = %8, %12, %13, %14, %15, %16
  %23 = phi i1* [ @just_group_list, %16 ], [ @opt_zero, %15 ], [ @just_user, %14 ], [ @use_real, %13 ], [ @use_name, %12 ], [ @just_group, %8 ]
  store i1 true, i1* %23, align 1, !dbg !1479
  br label %24, !dbg !1465

24:                                               ; preds = %22, %8
  br label %8, !dbg !1466, !llvm.loop !1480

25:                                               ; preds = %8
  %26 = load i32, i32* @optind, align 4, !dbg !1482, !tbaa !1483
  %27 = sub nsw i32 %0, %26, !dbg !1485
  %28 = sext i32 %27 to i64, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %28, metadata !1446, metadata !DIExpression()), !dbg !1458
  %29 = load i1, i1* @just_user, align 1, !dbg !1487
  %30 = zext i1 %29 to i32, !dbg !1487
  %31 = load i1, i1* @just_group, align 1, !dbg !1489
  %32 = zext i1 %31 to i32, !dbg !1489
  %33 = add nuw nsw i32 %32, %30, !dbg !1490
  %34 = load i1, i1* @just_group_list, align 1, !dbg !1491
  %35 = zext i1 %34 to i32, !dbg !1491
  %36 = add nuw nsw i32 %33, %35, !dbg !1492
  %37 = icmp ugt i32 %36, 1, !dbg !1493
  br i1 %37, label %38, label %40, !dbg !1494

38:                                               ; preds = %25
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 5) #18, !dbg !1495
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %39) #18, !dbg !1495
  unreachable, !dbg !1495

40:                                               ; preds = %25
  %41 = or i1 %29, %31, !dbg !1496
  %42 = or i1 %41, %34, !dbg !1496
  call void @llvm.dbg.value(metadata i1 %42, metadata !1447, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !1458
  br i1 %42, label %53, label %43, !dbg !1497

43:                                               ; preds = %40
  %44 = load i1, i1* @use_real, align 1, !dbg !1499
  br i1 %44, label %47, label %45, !dbg !1500

45:                                               ; preds = %43
  %46 = load i1, i1* @use_name, align 1, !dbg !1501
  br i1 %46, label %47, label %49, !dbg !1502

47:                                               ; preds = %45, %43
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i32 5) #18, !dbg !1503
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48) #18, !dbg !1503
  unreachable, !dbg !1503

49:                                               ; preds = %45
  %50 = load i1, i1* @opt_zero, align 1, !dbg !1504
  br i1 %50, label %51, label %53, !dbg !1506

51:                                               ; preds = %49
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i32 5) #18, !dbg !1507
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %52) #18, !dbg !1507
  unreachable, !dbg !1507

53:                                               ; preds = %40, %49
  %54 = icmp eq i32 %27, 0, !dbg !1508
  br i1 %54, label %96, label %55, !dbg !1510

55:                                               ; preds = %53
  %56 = icmp ne i32 %27, 1, !dbg !1511
  %57 = zext i1 %56 to i8, !dbg !1512
  store i8 %57, i8* @multiple_users, align 1, !dbg !1512, !tbaa !1513
  %58 = sext i32 %26 to i64, !dbg !1515
  %59 = add nsw i64 %28, %58, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %59, metadata !1446, metadata !DIExpression()), !dbg !1458
  %60 = icmp ugt i64 %59, %58, !dbg !1517
  br i1 %60, label %61, label %147, !dbg !1518

61:                                               ; preds = %55, %91
  %62 = phi i64 [ %94, %91 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1448, metadata !DIExpression()), !dbg !1519
  %63 = getelementptr inbounds i8*, i8** %1, i64 %62, !dbg !1520
  %64 = load i8*, i8** %63, align 8, !dbg !1520, !tbaa !1395
  call void @llvm.dbg.value(metadata i8* %64, metadata !1454, metadata !DIExpression()), !dbg !1519
  %65 = load i8, i8* %64, align 1, !dbg !1521, !tbaa !1523
  %66 = icmp eq i8 %65, 0, !dbg !1521
  br i1 %66, label %74, label %67, !dbg !1524

67:                                               ; preds = %61
  %68 = tail call i8* @parse_user_spec(i8* nonnull %64, i32* nonnull @euid, i32* null, i8** null, i8** null) #18, !dbg !1525
  %69 = icmp eq i8* %68, null, !dbg !1528
  br i1 %69, label %70, label %74, !dbg !1529

70:                                               ; preds = %67
  %71 = load i32, i32* @euid, align 4, !dbg !1530, !tbaa !1483
  %72 = tail call %struct.passwd* @getpwuid(i32 %71) #18, !dbg !1532
  call void @llvm.dbg.value(metadata %struct.passwd* %72, metadata !1448, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata %struct.passwd* %72, metadata !1448, metadata !DIExpression()), !dbg !1519
  %73 = icmp eq %struct.passwd* %72, null, !dbg !1533
  br i1 %73, label %74, label %83, !dbg !1535

74:                                               ; preds = %61, %67, %70
  %75 = tail call i32* @__errno_location() #24, !dbg !1536
  %76 = load i32, i32* %75, align 4, !dbg !1536, !tbaa !1483
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 5) #18, !dbg !1538
  %78 = load i32, i32* @optind, align 4, !dbg !1539, !tbaa !1483
  %79 = sext i32 %78 to i64, !dbg !1540
  %80 = getelementptr inbounds i8*, i8** %1, i64 %79, !dbg !1540
  %81 = load i8*, i8** %80, align 8, !dbg !1540, !tbaa !1395
  %82 = tail call i8* @quote(i8* %81) #18, !dbg !1541
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %76, i8* %77, i8* %82) #18, !dbg !1542
  store i8 0, i8* @ok, align 1, !dbg !1543, !tbaa !1513
  br label %91, !dbg !1544

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.passwd, %struct.passwd* %72, i64 0, i32 0, !dbg !1545
  %85 = load i8*, i8** %84, align 8, !dbg !1545, !tbaa !1546
  %86 = tail call noalias i8* @xstrdup(i8* %85) #18, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %86, metadata !1445, metadata !DIExpression()), !dbg !1458
  %87 = getelementptr inbounds %struct.passwd, %struct.passwd* %72, i64 0, i32 2, !dbg !1549
  %88 = load i32, i32* %87, align 8, !dbg !1549, !tbaa !1550
  store i32 %88, i32* @euid, align 4, !dbg !1551, !tbaa !1483
  store i32 %88, i32* @ruid, align 4, !dbg !1552, !tbaa !1483
  %89 = getelementptr inbounds %struct.passwd, %struct.passwd* %72, i64 0, i32 3, !dbg !1553
  %90 = load i32, i32* %89, align 4, !dbg !1553, !tbaa !1554
  store i32 %90, i32* @egid, align 4, !dbg !1555, !tbaa !1483
  store i32 %90, i32* @rgid, align 4, !dbg !1556, !tbaa !1483
  tail call fastcc void @print_stuff(i8* %86), !dbg !1557
  tail call void @free(i8* %86) #18, !dbg !1558
  br label %91, !dbg !1559

91:                                               ; preds = %83, %74
  %92 = load i32, i32* @optind, align 4, !dbg !1560, !tbaa !1483
  %93 = add nsw i32 %92, 1, !dbg !1560
  store i32 %93, i32* @optind, align 4, !dbg !1560, !tbaa !1483
  %94 = sext i32 %93 to i64, !dbg !1561
  %95 = icmp ugt i64 %59, %94, !dbg !1517
  br i1 %95, label %61, label %147, !dbg !1518, !llvm.loop !1562

96:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 -1, metadata !1455, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 -1, metadata !1457, metadata !DIExpression()), !dbg !1564
  br i1 %29, label %97, label %99, !dbg !1565

97:                                               ; preds = %96
  %98 = load i1, i1* @use_real, align 1, !dbg !1566
  br i1 %98, label %110, label %101, !dbg !1568

99:                                               ; preds = %96
  %100 = or i1 %31, %34, !dbg !1569
  br i1 %100, label %110, label %101, !dbg !1569

101:                                              ; preds = %99, %97
  %102 = tail call i32* @__errno_location() #24, !dbg !1570
  store i32 0, i32* %102, align 4, !dbg !1572, !tbaa !1483
  %103 = tail call i32 @geteuid() #18, !dbg !1573
  store i32 %103, i32* @euid, align 4, !dbg !1574, !tbaa !1483
  %104 = icmp eq i32 %103, -1, !dbg !1575
  br i1 %104, label %105, label %110, !dbg !1577

105:                                              ; preds = %101
  %106 = load i32, i32* %102, align 4, !dbg !1578, !tbaa !1483
  %107 = icmp eq i32 %106, 0, !dbg !1578
  br i1 %107, label %110, label %108, !dbg !1579

108:                                              ; preds = %105
  %109 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 5) #18, !dbg !1580
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %106, i8* %109) #18, !dbg !1580
  unreachable, !dbg !1580

110:                                              ; preds = %99, %105, %101, %97
  %111 = load i1, i1* @just_user, align 1, !dbg !1581
  br i1 %111, label %112, label %114, !dbg !1583

112:                                              ; preds = %110
  %113 = load i1, i1* @use_real, align 1, !dbg !1584
  br i1 %113, label %118, label %146, !dbg !1581

114:                                              ; preds = %110
  %115 = load i1, i1* @just_group, align 1, !dbg !1585
  br i1 %115, label %116, label %118, !dbg !1586

116:                                              ; preds = %114
  %117 = tail call i32* @__errno_location() #24, !dbg !1587
  br label %129, !dbg !1586

118:                                              ; preds = %114, %112
  %119 = tail call i32* @__errno_location() #24, !dbg !1590
  store i32 0, i32* %119, align 4, !dbg !1592, !tbaa !1483
  %120 = tail call i32 @getuid() #18, !dbg !1593
  store i32 %120, i32* @ruid, align 4, !dbg !1594, !tbaa !1483
  %121 = icmp eq i32 %120, -1, !dbg !1595
  br i1 %121, label %122, label %127, !dbg !1597

122:                                              ; preds = %118
  %123 = load i32, i32* %119, align 4, !dbg !1598, !tbaa !1483
  %124 = icmp eq i32 %123, 0, !dbg !1598
  br i1 %124, label %127, label %125, !dbg !1599

125:                                              ; preds = %122
  %126 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 5) #18, !dbg !1600
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %123, i8* %126) #18, !dbg !1600
  unreachable, !dbg !1600

127:                                              ; preds = %122, %118
  %128 = load i1, i1* @just_user, align 1, !dbg !1601
  br i1 %128, label %146, label %129, !dbg !1602

129:                                              ; preds = %116, %127
  %130 = phi i32* [ %117, %116 ], [ %119, %127 ], !dbg !1587
  store i32 0, i32* %130, align 4, !dbg !1603, !tbaa !1483
  %131 = tail call i32 @getegid() #18, !dbg !1604
  store i32 %131, i32* @egid, align 4, !dbg !1605, !tbaa !1483
  %132 = icmp eq i32 %131, -1, !dbg !1606
  br i1 %132, label %133, label %138, !dbg !1608

133:                                              ; preds = %129
  %134 = load i32, i32* %130, align 4, !dbg !1609, !tbaa !1483
  %135 = icmp eq i32 %134, 0, !dbg !1609
  br i1 %135, label %138, label %136, !dbg !1610

136:                                              ; preds = %133
  %137 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 5) #18, !dbg !1611
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %134, i8* %137) #18, !dbg !1611
  unreachable, !dbg !1611

138:                                              ; preds = %133, %129
  store i32 0, i32* %130, align 4, !dbg !1612, !tbaa !1483
  %139 = tail call i32 @getgid() #18, !dbg !1613
  store i32 %139, i32* @rgid, align 4, !dbg !1614, !tbaa !1483
  %140 = icmp eq i32 %139, -1, !dbg !1615
  br i1 %140, label %141, label %146, !dbg !1617

141:                                              ; preds = %138
  %142 = load i32, i32* %130, align 4, !dbg !1618, !tbaa !1483
  %143 = icmp eq i32 %142, 0, !dbg !1618
  br i1 %143, label %146, label %144, !dbg !1619

144:                                              ; preds = %141
  %145 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 5) #18, !dbg !1620
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %142, i8* %145) #18, !dbg !1620
  unreachable, !dbg !1620

146:                                              ; preds = %112, %141, %138, %127
  tail call fastcc void @print_stuff(i8* null), !dbg !1621
  br label %147

147:                                              ; preds = %91, %55, %146
  %148 = load i8, i8* @ok, align 1, !dbg !1622, !tbaa !1513, !range !1623
  %149 = xor i8 %148, 1, !dbg !1622
  %150 = zext i8 %149 to i32, !dbg !1622
  ret i32 %150, !dbg !1624
}

; Function Attrs: nounwind
declare !dbg !84 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !87 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !90 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !97 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !112 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare !dbg !128 %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_stuff(i8* %0) unnamed_addr #8 !dbg !1625 {
  %2 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1627, metadata !DIExpression()), !dbg !1628
  %3 = load i1, i1* @just_user, align 1, !dbg !1629
  br i1 %3, label %4, label %29, !dbg !1631

4:                                                ; preds = %1
  %5 = load i1, i1* @use_real, align 1, !dbg !1632
  %6 = load i32, i32* @ruid, align 4, !dbg !1632
  %7 = load i32, i32* @euid, align 4, !dbg !1632
  %8 = select i1 %5, i32 %6, i32 %7, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %8, metadata !1633, metadata !DIExpression()) #18, !dbg !1640
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1638, metadata !DIExpression()) #18, !dbg !1640
  %9 = load i1, i1* @use_name, align 1, !dbg !1642
  br i1 %9, label %12, label %10, !dbg !1644

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64, !dbg !1645
  br label %22, !dbg !1644

12:                                               ; preds = %4
  %13 = tail call %struct.passwd* @getpwuid(i32 %8) #18, !dbg !1647
  call void @llvm.dbg.value(metadata %struct.passwd* %13, metadata !1638, metadata !DIExpression()) #18, !dbg !1640
  %14 = icmp eq %struct.passwd* %13, null, !dbg !1649
  br i1 %14, label %15, label %19, !dbg !1651

15:                                               ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i64 0, i64 0), i32 5) #18, !dbg !1652
  %17 = zext i32 %8 to i64, !dbg !1654
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1656
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %18) #18, !dbg !1657
  store i8 0, i8* @ok, align 1, !dbg !1658, !tbaa !1513
  br label %22, !dbg !1659

19:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %struct.passwd* %13, metadata !1638, metadata !DIExpression()) #18, !dbg !1640
  %20 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i64 0, i32 0, !dbg !1660
  %21 = load i8*, i8** %20, align 8, !dbg !1660, !tbaa !1546
  br label %25, !dbg !1661

22:                                               ; preds = %15, %10
  %23 = phi i64 [ %11, %10 ], [ %17, %15 ], !dbg !1645
  %24 = tail call i8* @umaxtostr(i64 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1662
  br label %25, !dbg !1661

25:                                               ; preds = %19, %22
  %26 = phi i8* [ %21, %19 ], [ %24, %22 ], !dbg !1661
  call void @llvm.dbg.value(metadata i8* %26, metadata !1639, metadata !DIExpression()) #18, !dbg !1640
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1663, !tbaa !1395
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #18, !dbg !1663
  br label %196, !dbg !1664

29:                                               ; preds = %1
  %30 = load i1, i1* @just_group, align 1, !dbg !1665
  br i1 %30, label %31, label %41, !dbg !1667

31:                                               ; preds = %29
  %32 = load i1, i1* @use_real, align 1, !dbg !1668
  %33 = load i32, i32* @rgid, align 4, !dbg !1668
  %34 = load i32, i32* @egid, align 4, !dbg !1668
  %35 = select i1 %32, i32 %33, i32 %34, !dbg !1668
  %36 = load i1, i1* @use_name, align 1, !dbg !1669
  %37 = tail call zeroext i1 @print_group(i32 %35, i1 zeroext %36) #18, !dbg !1670
  %38 = zext i1 %37 to i8, !dbg !1670
  %39 = load i8, i8* @ok, align 1, !dbg !1671, !tbaa !1513, !range !1623
  %40 = and i8 %39, %38, !dbg !1671
  store i8 %40, i8* @ok, align 1, !dbg !1671, !tbaa !1513
  br label %196, !dbg !1672

41:                                               ; preds = %29
  %42 = load i1, i1* @just_group_list, align 1, !dbg !1673
  br i1 %42, label %43, label %54, !dbg !1675

43:                                               ; preds = %41
  %44 = load i32, i32* @ruid, align 4, !dbg !1676, !tbaa !1483
  %45 = load i32, i32* @rgid, align 4, !dbg !1677, !tbaa !1483
  %46 = load i32, i32* @egid, align 4, !dbg !1678, !tbaa !1483
  %47 = load i1, i1* @use_name, align 1, !dbg !1679
  %48 = load i1, i1* @opt_zero, align 1, !dbg !1680
  %49 = select i1 %48, i8 0, i8 32, !dbg !1680
  %50 = tail call zeroext i1 @print_group_list(i8* %0, i32 %44, i32 %45, i32 %46, i1 zeroext %47, i8 signext %49) #18, !dbg !1681
  %51 = zext i1 %50 to i8, !dbg !1681
  %52 = load i8, i8* @ok, align 1, !dbg !1682, !tbaa !1513, !range !1623
  %53 = and i8 %52, %51, !dbg !1682
  store i8 %53, i8* @ok, align 1, !dbg !1682, !tbaa !1513
  br label %196, !dbg !1683

54:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %0, metadata !1684, metadata !DIExpression()) #18, !dbg !1695
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i32 5) #18, !dbg !1698
  call void @llvm.dbg.value(metadata i32* @ruid, metadata !229, metadata !DIExpression()) #18, !dbg !1699
  %56 = load i32, i32* @ruid, align 4, !dbg !1701, !tbaa !1483
  %57 = zext i32 %56 to i64, !dbg !1701
  %58 = tail call i8* @umaxtostr(i64 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1702
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* %58) #18, !dbg !1698
  %60 = load i32, i32* @ruid, align 4, !dbg !1703, !tbaa !1483
  %61 = tail call %struct.passwd* @getpwuid(i32 %60) #18, !dbg !1704
  call void @llvm.dbg.value(metadata %struct.passwd* %61, metadata !1687, metadata !DIExpression()) #18, !dbg !1695
  %62 = icmp eq %struct.passwd* %61, null, !dbg !1705
  br i1 %62, label %67, label %63, !dbg !1707

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.passwd, %struct.passwd* %61, i64 0, i32 0, !dbg !1708
  %65 = load i8*, i8** %64, align 8, !dbg !1708, !tbaa !1546
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %65) #18, !dbg !1708
  br label %67, !dbg !1708

67:                                               ; preds = %63, %54
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i32 5) #18, !dbg !1709
  call void @llvm.dbg.value(metadata i32* @rgid, metadata !241, metadata !DIExpression()) #18, !dbg !1710
  %69 = load i32, i32* @rgid, align 4, !dbg !1712, !tbaa !1483
  %70 = zext i32 %69 to i64, !dbg !1712
  %71 = tail call i8* @umaxtostr(i64 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1713
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* %71) #18, !dbg !1709
  %73 = load i32, i32* @rgid, align 4, !dbg !1714, !tbaa !1483
  %74 = tail call %struct.group* @getgrgid(i32 %73) #18, !dbg !1715
  call void @llvm.dbg.value(metadata %struct.group* %74, metadata !1688, metadata !DIExpression()) #18, !dbg !1695
  %75 = icmp eq %struct.group* %74, null, !dbg !1716
  br i1 %75, label %80, label %76, !dbg !1718

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.group, %struct.group* %74, i64 0, i32 0, !dbg !1719
  %78 = load i8*, i8** %77, align 8, !dbg !1719, !tbaa !1720
  %79 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %78) #18, !dbg !1719
  br label %80, !dbg !1719

80:                                               ; preds = %76, %67
  %81 = load i32, i32* @euid, align 4, !dbg !1722, !tbaa !1483
  %82 = load i32, i32* @ruid, align 4, !dbg !1724, !tbaa !1483
  %83 = icmp eq i32 %81, %82, !dbg !1725
  br i1 %83, label %97, label %84, !dbg !1726

84:                                               ; preds = %80
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i32 5) #18, !dbg !1727
  call void @llvm.dbg.value(metadata i32* @euid, metadata !229, metadata !DIExpression()) #18, !dbg !1729
  %86 = load i32, i32* @euid, align 4, !dbg !1731, !tbaa !1483
  %87 = zext i32 %86 to i64, !dbg !1731
  %88 = tail call i8* @umaxtostr(i64 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1732
  %89 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %85, i8* %88) #18, !dbg !1727
  %90 = load i32, i32* @euid, align 4, !dbg !1733, !tbaa !1483
  %91 = tail call %struct.passwd* @getpwuid(i32 %90) #18, !dbg !1734
  call void @llvm.dbg.value(metadata %struct.passwd* %91, metadata !1687, metadata !DIExpression()) #18, !dbg !1695
  %92 = icmp eq %struct.passwd* %91, null, !dbg !1735
  br i1 %92, label %97, label %93, !dbg !1737

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.passwd, %struct.passwd* %91, i64 0, i32 0, !dbg !1738
  %95 = load i8*, i8** %94, align 8, !dbg !1738, !tbaa !1546
  %96 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %95) #18, !dbg !1738
  br label %97, !dbg !1738

97:                                               ; preds = %93, %84, %80
  %98 = phi %struct.passwd* [ %91, %93 ], [ null, %84 ], [ %61, %80 ], !dbg !1695
  call void @llvm.dbg.value(metadata %struct.passwd* %98, metadata !1687, metadata !DIExpression()) #18, !dbg !1695
  %99 = load i32, i32* @egid, align 4, !dbg !1739, !tbaa !1483
  %100 = load i32, i32* @rgid, align 4, !dbg !1741, !tbaa !1483
  %101 = icmp eq i32 %99, %100, !dbg !1742
  br i1 %101, label %115, label %102, !dbg !1743

102:                                              ; preds = %97
  %103 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i32 5) #18, !dbg !1744
  call void @llvm.dbg.value(metadata i32* @egid, metadata !241, metadata !DIExpression()) #18, !dbg !1746
  %104 = load i32, i32* @egid, align 4, !dbg !1748, !tbaa !1483
  %105 = zext i32 %104 to i64, !dbg !1748
  %106 = tail call i8* @umaxtostr(i64 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1749
  %107 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %103, i8* %106) #18, !dbg !1744
  %108 = load i32, i32* @egid, align 4, !dbg !1750, !tbaa !1483
  %109 = tail call %struct.group* @getgrgid(i32 %108) #18, !dbg !1751
  call void @llvm.dbg.value(metadata %struct.group* %109, metadata !1688, metadata !DIExpression()) #18, !dbg !1695
  %110 = icmp eq %struct.group* %109, null, !dbg !1752
  br i1 %110, label %115, label %111, !dbg !1754

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.group, %struct.group* %109, i64 0, i32 0, !dbg !1755
  %113 = load i8*, i8** %112, align 8, !dbg !1755, !tbaa !1720
  %114 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %113) #18, !dbg !1755
  br label %115, !dbg !1755

115:                                              ; preds = %111, %102, %97
  %116 = bitcast i32** %2 to i8*, !dbg !1756
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %116) #18, !dbg !1756
  %117 = icmp ne i8* %0, null, !dbg !1757
  br i1 %117, label %118, label %123, !dbg !1759

118:                                              ; preds = %115
  %119 = icmp eq %struct.passwd* %98, null, !dbg !1760
  br i1 %119, label %125, label %120, !dbg !1760

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.passwd, %struct.passwd* %98, i64 0, i32 3, !dbg !1761
  %122 = load i32, i32* %121, align 4, !dbg !1761, !tbaa !1554
  br label %125, !dbg !1760

123:                                              ; preds = %115
  %124 = load i32, i32* @egid, align 4, !dbg !1762, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %124, metadata !1691, metadata !DIExpression()) #18, !dbg !1763
  br label %125

125:                                              ; preds = %123, %120, %118
  %126 = phi i32 [ %124, %123 ], [ %122, %120 ], [ -1, %118 ], !dbg !1764
  call void @llvm.dbg.value(metadata i32 %126, metadata !1691, metadata !DIExpression()) #18, !dbg !1763
  call void @llvm.dbg.value(metadata i32** %2, metadata !1689, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1763
  %127 = call i32 @xgetgroups(i8* %0, i32 %126, i32** nonnull %2) #18, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %127, metadata !1692, metadata !DIExpression()) #18, !dbg !1763
  %128 = icmp slt i32 %127, 0, !dbg !1766
  br i1 %128, label %129, label %138, !dbg !1768

129:                                              ; preds = %125
  %130 = tail call i32* @__errno_location() #24, !dbg !1769
  %131 = load i32, i32* %130, align 4, !dbg !1769, !tbaa !1483
  br i1 %117, label %132, label %135, !dbg !1772

132:                                              ; preds = %129
  %133 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0), i32 5) #18, !dbg !1773
  %134 = call i8* @quote(i8* nonnull %0) #18, !dbg !1774
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %131, i8* %133, i8* %134) #18, !dbg !1775
  br label %137, !dbg !1775

135:                                              ; preds = %129
  %136 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i32 5) #18, !dbg !1776
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %131, i8* %136) #18, !dbg !1777
  br label %137

137:                                              ; preds = %135, %132
  store i8 0, i8* @ok, align 1, !dbg !1778, !tbaa !1513
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #18, !dbg !1779
  br label %196

138:                                              ; preds = %125
  %139 = icmp eq i32 %127, 0, !dbg !1780
  br i1 %139, label %161, label %140, !dbg !1782

140:                                              ; preds = %138
  %141 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i32 5) #18, !dbg !1783
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1783, !tbaa !1395
  %143 = call i32 @fputs_unlocked(i8* %141, %struct._IO_FILE* %142) #18, !dbg !1783
  call void @llvm.dbg.value(metadata i32 0, metadata !1693, metadata !DIExpression()) #18, !dbg !1784
  %144 = zext i32 %127 to i64, !dbg !1785
  call void @llvm.dbg.value(metadata i64 0, metadata !1693, metadata !DIExpression()) #18, !dbg !1784
  %145 = load i32*, i32** %2, align 8, !dbg !1787, !tbaa !1395
  call void @llvm.dbg.value(metadata i32* %145, metadata !1689, metadata !DIExpression()) #18, !dbg !1763
  call void @llvm.dbg.value(metadata i32* %145, metadata !241, metadata !DIExpression()) #18, !dbg !1789
  %146 = load i32, i32* %145, align 4, !dbg !1791, !tbaa !1483
  %147 = zext i32 %146 to i64, !dbg !1791
  %148 = call i8* @umaxtostr(i64 %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1792
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1787, !tbaa !1395
  %150 = call i32 @fputs_unlocked(i8* %148, %struct._IO_FILE* %149) #18, !dbg !1787
  %151 = load i32*, i32** %2, align 8, !dbg !1793, !tbaa !1395
  call void @llvm.dbg.value(metadata i32* %151, metadata !1689, metadata !DIExpression()) #18, !dbg !1763
  %152 = load i32, i32* %151, align 4, !dbg !1793, !tbaa !1483
  %153 = call %struct.group* @getgrgid(i32 %152) #18, !dbg !1794
  call void @llvm.dbg.value(metadata %struct.group* %153, metadata !1688, metadata !DIExpression()) #18, !dbg !1695
  %154 = icmp eq %struct.group* %153, null, !dbg !1795
  br i1 %154, label %159, label %155, !dbg !1797

155:                                              ; preds = %140
  %156 = getelementptr inbounds %struct.group, %struct.group* %153, i64 0, i32 0, !dbg !1798
  %157 = load i8*, i8** %156, align 8, !dbg !1798, !tbaa !1720
  %158 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %157) #18, !dbg !1798
  br label %159, !dbg !1798

159:                                              ; preds = %155, %140
  call void @llvm.dbg.value(metadata i64 1, metadata !1693, metadata !DIExpression()) #18, !dbg !1784
  %160 = icmp eq i32 %127, 1, !dbg !1785
  br i1 %160, label %161, label %164, !dbg !1799

161:                                              ; preds = %159, %193, %138
  %162 = bitcast i32** %2 to i8**, !dbg !1800
  %163 = load i8*, i8** %162, align 8, !dbg !1800, !tbaa !1395
  call void @llvm.dbg.value(metadata i32* undef, metadata !1689, metadata !DIExpression()) #18, !dbg !1763
  call void @free(i8* %163) #18, !dbg !1801
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #18, !dbg !1779
  br label %196, !dbg !1802

164:                                              ; preds = %159, %193
  %165 = phi i64 [ %194, %193 ], [ 1, %159 ]
  call void @llvm.dbg.value(metadata i64 %165, metadata !1693, metadata !DIExpression()) #18, !dbg !1784
  call void @llvm.dbg.value(metadata i32 44, metadata !1803, metadata !DIExpression()) #18, !dbg !1809
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1812, !tbaa !1395
  %167 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %166, i64 0, i32 5, !dbg !1812
  %168 = load i8*, i8** %167, align 8, !dbg !1812, !tbaa !1813
  %169 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %166, i64 0, i32 6, !dbg !1812
  %170 = load i8*, i8** %169, align 8, !dbg !1812, !tbaa !1817
  %171 = icmp ult i8* %168, %170, !dbg !1812
  br i1 %171, label %174, label %172, !dbg !1812, !prof !1818, !misexpect !1819

172:                                              ; preds = %164
  %173 = call i32 @__overflow(%struct._IO_FILE* %166, i32 44) #18, !dbg !1812
  br label %176, !dbg !1812

174:                                              ; preds = %164
  %175 = getelementptr inbounds i8, i8* %168, i64 1, !dbg !1812
  store i8* %175, i8** %167, align 8, !dbg !1812, !tbaa !1813
  store i8 44, i8* %168, align 1, !dbg !1812, !tbaa !1523
  br label %176, !dbg !1812

176:                                              ; preds = %174, %172
  %177 = load i32*, i32** %2, align 8, !dbg !1787, !tbaa !1395
  call void @llvm.dbg.value(metadata i32* %177, metadata !1689, metadata !DIExpression()) #18, !dbg !1763
  %178 = getelementptr inbounds i32, i32* %177, i64 %165, !dbg !1787
  call void @llvm.dbg.value(metadata i32* %178, metadata !241, metadata !DIExpression()) #18, !dbg !1789
  %179 = load i32, i32* %178, align 4, !dbg !1791, !tbaa !1483
  %180 = zext i32 %179 to i64, !dbg !1791
  %181 = call i8* @umaxtostr(i64 %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1792
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1787, !tbaa !1395
  %183 = call i32 @fputs_unlocked(i8* %181, %struct._IO_FILE* %182) #18, !dbg !1787
  %184 = load i32*, i32** %2, align 8, !dbg !1793, !tbaa !1395
  call void @llvm.dbg.value(metadata i32* %184, metadata !1689, metadata !DIExpression()) #18, !dbg !1763
  %185 = getelementptr inbounds i32, i32* %184, i64 %165, !dbg !1793
  %186 = load i32, i32* %185, align 4, !dbg !1793, !tbaa !1483
  %187 = call %struct.group* @getgrgid(i32 %186) #18, !dbg !1794
  call void @llvm.dbg.value(metadata %struct.group* %187, metadata !1688, metadata !DIExpression()) #18, !dbg !1695
  %188 = icmp eq %struct.group* %187, null, !dbg !1795
  br i1 %188, label %193, label %189, !dbg !1797

189:                                              ; preds = %176
  %190 = getelementptr inbounds %struct.group, %struct.group* %187, i64 0, i32 0, !dbg !1798
  %191 = load i8*, i8** %190, align 8, !dbg !1798, !tbaa !1720
  %192 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %191) #18, !dbg !1798
  br label %193, !dbg !1798

193:                                              ; preds = %189, %176
  %194 = add nuw nsw i64 %165, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %194, metadata !1693, metadata !DIExpression()) #18, !dbg !1784
  %195 = icmp eq i64 %194, %144, !dbg !1785
  br i1 %195, label %161, label %164, !dbg !1799, !llvm.loop !1821

196:                                              ; preds = %161, %137, %31, %43, %25
  %197 = load i1, i1* @opt_zero, align 1, !dbg !1824
  br i1 %197, label %198, label %226, !dbg !1826

198:                                              ; preds = %196
  %199 = load i1, i1* @just_group_list, align 1, !dbg !1827
  %200 = xor i1 %199, true, !dbg !1828
  %201 = load i8, i8* @multiple_users, align 1, !dbg !1829
  %202 = icmp eq i8 %201, 0, !dbg !1829
  %203 = or i1 %202, %200, !dbg !1828
  br i1 %203, label %226, label %204, !dbg !1828

204:                                              ; preds = %198
  call void @llvm.dbg.value(metadata i32 0, metadata !1803, metadata !DIExpression()) #18, !dbg !1830
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1833, !tbaa !1395
  %206 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %205, i64 0, i32 5, !dbg !1833
  %207 = load i8*, i8** %206, align 8, !dbg !1833, !tbaa !1813
  %208 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %205, i64 0, i32 6, !dbg !1833
  %209 = load i8*, i8** %208, align 8, !dbg !1833, !tbaa !1817
  %210 = icmp ult i8* %207, %209, !dbg !1833
  br i1 %210, label %213, label %211, !dbg !1833, !prof !1818, !misexpect !1819

211:                                              ; preds = %204
  %212 = call i32 @__overflow(%struct._IO_FILE* %205, i32 0) #18, !dbg !1833
  br label %215, !dbg !1833

213:                                              ; preds = %204
  %214 = getelementptr inbounds i8, i8* %207, i64 1, !dbg !1833
  store i8* %214, i8** %206, align 8, !dbg !1833, !tbaa !1813
  store i8 0, i8* %207, align 1, !dbg !1833, !tbaa !1523
  br label %215, !dbg !1833

215:                                              ; preds = %211, %213
  call void @llvm.dbg.value(metadata i32 0, metadata !1803, metadata !DIExpression()) #18, !dbg !1834
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1836, !tbaa !1395
  %217 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %216, i64 0, i32 5, !dbg !1836
  %218 = load i8*, i8** %217, align 8, !dbg !1836, !tbaa !1813
  %219 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %216, i64 0, i32 6, !dbg !1836
  %220 = load i8*, i8** %219, align 8, !dbg !1836, !tbaa !1817
  %221 = icmp ult i8* %218, %220, !dbg !1836
  br i1 %221, label %224, label %222, !dbg !1836, !prof !1818, !misexpect !1819

222:                                              ; preds = %215
  %223 = call i32 @__overflow(%struct._IO_FILE* %216, i32 0) #18, !dbg !1836
  br label %239, !dbg !1836

224:                                              ; preds = %215
  %225 = getelementptr inbounds i8, i8* %218, i64 1, !dbg !1836
  store i8* %225, i8** %217, align 8, !dbg !1836, !tbaa !1813
  store i8 0, i8* %218, align 1, !dbg !1836, !tbaa !1523
  br label %239, !dbg !1836

226:                                              ; preds = %198, %196
  %227 = select i1 %197, i32 0, i32 10, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %227, metadata !1803, metadata !DIExpression()) #18, !dbg !1839
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1841, !tbaa !1395
  %229 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %228, i64 0, i32 5, !dbg !1841
  %230 = load i8*, i8** %229, align 8, !dbg !1841, !tbaa !1813
  %231 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %228, i64 0, i32 6, !dbg !1841
  %232 = load i8*, i8** %231, align 8, !dbg !1841, !tbaa !1817
  %233 = icmp ult i8* %230, %232, !dbg !1841
  br i1 %233, label %236, label %234, !dbg !1841, !prof !1818, !misexpect !1819

234:                                              ; preds = %226
  %235 = call i32 @__overflow(%struct._IO_FILE* %228, i32 %227) #18, !dbg !1841
  br label %239, !dbg !1841

236:                                              ; preds = %226
  %237 = trunc i32 %227 to i8, !dbg !1841
  %238 = getelementptr inbounds i8, i8* %230, i64 1, !dbg !1841
  store i8* %238, i8** %229, align 8, !dbg !1841, !tbaa !1813
  store i8 %237, i8* %230, align 1, !dbg !1841, !tbaa !1523
  br label %239, !dbg !1841

239:                                              ; preds = %236, %234, %224, %222
  ret void, !dbg !1842
}

; Function Attrs: nounwind
declare !dbg !150 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !153 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !157 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !158 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !159 i32 @getgid() local_unnamed_addr #2

declare !dbg !172 %struct.group* @getgrgid(i32) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group_list(i8* %0, i32 %1, i32 %2, i32 %3, i1 zeroext %4, i8 signext %5) local_unnamed_addr #8 !dbg !1843 {
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1847, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %1, metadata !1848, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %2, metadata !1849, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %3, metadata !1850, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i1 %4, metadata !1851, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %5, metadata !1852, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 1, metadata !1853, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1854, metadata !DIExpression()), !dbg !1860
  %8 = icmp ne i8* %0, null, !dbg !1861
  br i1 %8, label %9, label %13, !dbg !1863

9:                                                ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #18, !dbg !1864
  call void @llvm.dbg.value(metadata %struct.passwd* %10, metadata !1854, metadata !DIExpression()), !dbg !1860
  %11 = icmp ne %struct.passwd* %10, null, !dbg !1866
  %12 = zext i1 %11 to i8, !dbg !1868
  br label %13, !dbg !1868

13:                                               ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !1860
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ], !dbg !1860
  call void @llvm.dbg.value(metadata %struct.passwd* %15, metadata !1854, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %14, metadata !1853, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 %2, metadata !1869, metadata !DIExpression()) #18, !dbg !1878
  call void @llvm.dbg.value(metadata i1 %4, metadata !1874, metadata !DIExpression()) #18, !dbg !1878
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1875, metadata !DIExpression()) #18, !dbg !1878
  call void @llvm.dbg.value(metadata i8 1, metadata !1876, metadata !DIExpression()) #18, !dbg !1878
  br i1 %4, label %19, label %16, !dbg !1881

16:                                               ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1882
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()) #18, !dbg !1878
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #18, !dbg !1884
  call void @llvm.dbg.value(metadata i8* %25, metadata !1877, metadata !DIExpression()) #18, !dbg !1878
  br label %29, !dbg !1885

19:                                               ; preds = %13
  %20 = tail call %struct.group* @getgrgid(i32 %2) #18, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.group* %20, metadata !1875, metadata !DIExpression()) #18, !dbg !1878
  %21 = icmp eq %struct.group* %20, null, !dbg !1889
  br i1 %21, label %22, label %26, !dbg !1891

22:                                               ; preds = %19
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #18, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %2, metadata !1869, metadata !DIExpression()) #18, !dbg !1878
  %24 = zext i32 %2 to i64, !dbg !1894
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %23, i64 %24) #18, !dbg !1895
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()) #18, !dbg !1878
  %25 = tail call i8* @umaxtostr(i64 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #18, !dbg !1884
  call void @llvm.dbg.value(metadata i8* %25, metadata !1877, metadata !DIExpression()) #18, !dbg !1878
  br label %29, !dbg !1885

26:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.group* %20, metadata !1875, metadata !DIExpression()) #18, !dbg !1878
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()) #18, !dbg !1878
  %27 = getelementptr inbounds %struct.group, %struct.group* %20, i64 0, i32 0, !dbg !1896
  %28 = load i8*, i8** %27, align 8, !dbg !1896, !tbaa !1720
  call void @llvm.dbg.value(metadata i8* %25, metadata !1877, metadata !DIExpression()) #18, !dbg !1878
  br label %29, !dbg !1885

29:                                               ; preds = %26, %16, %22
  %30 = phi i8* [ %28, %26 ], [ %18, %16 ], [ %25, %22 ]
  %31 = phi i8 [ %14, %26 ], [ %14, %16 ], [ 0, %22 ]
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1897, !tbaa !1395
  %33 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %32) #18, !dbg !1897
  call void @llvm.dbg.value(metadata i8 %31, metadata !1853, metadata !DIExpression()), !dbg !1860
  %34 = icmp eq i32 %3, %2, !dbg !1898
  br i1 %34, label %66, label %35, !dbg !1900

35:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8 %5, metadata !1901, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1904
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1907, !tbaa !1395
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1907
  %38 = load i8*, i8** %37, align 8, !dbg !1907, !tbaa !1813
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1907
  %40 = load i8*, i8** %39, align 8, !dbg !1907, !tbaa !1817
  %41 = icmp ult i8* %38, %40, !dbg !1907
  br i1 %41, label %45, label %42, !dbg !1907, !prof !1818, !misexpect !1819

42:                                               ; preds = %35
  %43 = zext i8 %5 to i32, !dbg !1908
  call void @llvm.dbg.value(metadata i8 %5, metadata !1901, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1904
  %44 = tail call i32 @__overflow(%struct._IO_FILE* %36, i32 %43) #18, !dbg !1907
  br label %47, !dbg !1907

45:                                               ; preds = %35
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1907
  store i8* %46, i8** %37, align 8, !dbg !1907, !tbaa !1813
  store i8 %5, i8* %38, align 1, !dbg !1907, !tbaa !1523
  br label %47, !dbg !1907

47:                                               ; preds = %42, %45
  call void @llvm.dbg.value(metadata i32 %3, metadata !1869, metadata !DIExpression()) #18, !dbg !1909
  call void @llvm.dbg.value(metadata i1 %4, metadata !1874, metadata !DIExpression()) #18, !dbg !1909
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1875, metadata !DIExpression()) #18, !dbg !1909
  call void @llvm.dbg.value(metadata i8 1, metadata !1876, metadata !DIExpression()) #18, !dbg !1909
  br i1 %4, label %51, label %48, !dbg !1912

48:                                               ; preds = %47
  %49 = zext i32 %3 to i64, !dbg !1913
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()) #18, !dbg !1909
  %50 = tail call i8* @umaxtostr(i64 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #18, !dbg !1915
  call void @llvm.dbg.value(metadata i8* %57, metadata !1877, metadata !DIExpression()) #18, !dbg !1909
  br label %61, !dbg !1916

51:                                               ; preds = %47
  %52 = tail call %struct.group* @getgrgid(i32 %3) #18, !dbg !1917
  call void @llvm.dbg.value(metadata %struct.group* %52, metadata !1875, metadata !DIExpression()) #18, !dbg !1909
  %53 = icmp eq %struct.group* %52, null, !dbg !1918
  br i1 %53, label %54, label %58, !dbg !1919

54:                                               ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #18, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %3, metadata !1869, metadata !DIExpression()) #18, !dbg !1909
  %56 = zext i32 %3 to i64, !dbg !1921
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55, i64 %56) #18, !dbg !1922
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()) #18, !dbg !1909
  %57 = tail call i8* @umaxtostr(i64 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #18, !dbg !1915
  call void @llvm.dbg.value(metadata i8* %57, metadata !1877, metadata !DIExpression()) #18, !dbg !1909
  br label %61, !dbg !1916

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata %struct.group* %52, metadata !1875, metadata !DIExpression()) #18, !dbg !1909
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()) #18, !dbg !1909
  %59 = getelementptr inbounds %struct.group, %struct.group* %52, i64 0, i32 0, !dbg !1923
  %60 = load i8*, i8** %59, align 8, !dbg !1923, !tbaa !1720
  call void @llvm.dbg.value(metadata i8* %57, metadata !1877, metadata !DIExpression()) #18, !dbg !1909
  br label %61, !dbg !1916

61:                                               ; preds = %54, %48, %58
  %62 = phi i8* [ %60, %58 ], [ %50, %48 ], [ %57, %54 ]
  %63 = phi i8 [ %31, %58 ], [ %31, %48 ], [ 0, %54 ]
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1924, !tbaa !1395
  %65 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %64) #18, !dbg !1924
  br label %66, !dbg !1925

66:                                               ; preds = %61, %29
  %67 = phi i8 [ %31, %29 ], [ %63, %61 ], !dbg !1860
  call void @llvm.dbg.value(metadata i8 %67, metadata !1853, metadata !DIExpression()), !dbg !1860
  %68 = bitcast i32** %7 to i8*, !dbg !1925
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #18, !dbg !1925
  %69 = icmp eq %struct.passwd* %15, null, !dbg !1926
  br i1 %69, label %73, label %70, !dbg !1926

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !1927
  %72 = load i32, i32* %71, align 4, !dbg !1927, !tbaa !1554
  br label %73, !dbg !1926

73:                                               ; preds = %66, %70
  %74 = phi i32 [ %72, %70 ], [ %3, %66 ], !dbg !1926
  call void @llvm.dbg.value(metadata i32** %7, metadata !1855, metadata !DIExpression(DW_OP_deref)), !dbg !1928
  %75 = call i32 @xgetgroups(i8* %0, i32 %74, i32** nonnull %7) #18, !dbg !1929
  call void @llvm.dbg.value(metadata i32 %75, metadata !1857, metadata !DIExpression()), !dbg !1928
  %76 = icmp slt i32 %75, 0, !dbg !1930
  br i1 %76, label %82, label %77, !dbg !1932

77:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i32 0, metadata !1858, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %67, metadata !1853, metadata !DIExpression()), !dbg !1860
  %78 = icmp eq i32 %75, 0, !dbg !1934
  br i1 %78, label %137, label %79, !dbg !1936

79:                                               ; preds = %77
  %80 = zext i8 %5 to i32, !dbg !1937
  %81 = zext i32 %75 to i64, !dbg !1934
  br label %90, !dbg !1936

82:                                               ; preds = %73
  %83 = tail call i32* @__errno_location() #24, !dbg !1940
  %84 = load i32, i32* %83, align 4, !dbg !1940, !tbaa !1483
  br i1 %8, label %85, label %88, !dbg !1943

85:                                               ; preds = %82
  %86 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 5) #18, !dbg !1944
  %87 = call i8* @quote(i8* nonnull %0) #18, !dbg !1946
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %84, i8* %86, i8* %87) #18, !dbg !1947
  br label %136, !dbg !1948

88:                                               ; preds = %82
  %89 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.17, i64 0, i64 0), i32 5) #18, !dbg !1949
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %84, i8* %89) #18, !dbg !1951
  br label %136

90:                                               ; preds = %132, %79
  %91 = phi i64 [ 0, %79 ], [ %134, %132 ]
  %92 = phi i8 [ %67, %79 ], [ %133, %132 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !1858, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 %92, metadata !1853, metadata !DIExpression()), !dbg !1860
  %93 = load i32*, i32** %7, align 8, !dbg !1952, !tbaa !1395
  call void @llvm.dbg.value(metadata i32* %93, metadata !1855, metadata !DIExpression()), !dbg !1928
  %94 = getelementptr inbounds i32, i32* %93, i64 %91, !dbg !1952
  %95 = load i32, i32* %94, align 4, !dbg !1952, !tbaa !1483
  %96 = icmp eq i32 %95, %2, !dbg !1953
  %97 = icmp eq i32 %95, %3, !dbg !1954
  %98 = or i1 %96, %97, !dbg !1955
  br i1 %98, label %132, label %99, !dbg !1955

99:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i8 %5, metadata !1901, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1956
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1958, !tbaa !1395
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 5, !dbg !1958
  %102 = load i8*, i8** %101, align 8, !dbg !1958, !tbaa !1813
  %103 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 6, !dbg !1958
  %104 = load i8*, i8** %103, align 8, !dbg !1958, !tbaa !1817
  %105 = icmp ult i8* %102, %104, !dbg !1958
  br i1 %105, label %108, label %106, !dbg !1958, !prof !1818, !misexpect !1819

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %5, metadata !1901, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1956
  %107 = call i32 @__overflow(%struct._IO_FILE* %100, i32 %80) #18, !dbg !1958
  br label %110, !dbg !1958

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !1958
  store i8* %109, i8** %101, align 8, !dbg !1958, !tbaa !1813
  store i8 %5, i8* %102, align 1, !dbg !1958, !tbaa !1523
  br label %110, !dbg !1958

110:                                              ; preds = %106, %108
  %111 = load i32*, i32** %7, align 8, !dbg !1959, !tbaa !1395
  call void @llvm.dbg.value(metadata i32* %111, metadata !1855, metadata !DIExpression()), !dbg !1928
  %112 = getelementptr inbounds i32, i32* %111, i64 %91, !dbg !1959
  %113 = load i32, i32* %112, align 4, !dbg !1959, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %113, metadata !1869, metadata !DIExpression()) #18, !dbg !1961
  call void @llvm.dbg.value(metadata i1 %4, metadata !1874, metadata !DIExpression()) #18, !dbg !1961
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1875, metadata !DIExpression()) #18, !dbg !1961
  call void @llvm.dbg.value(metadata i8 1, metadata !1876, metadata !DIExpression()) #18, !dbg !1961
  br i1 %4, label %117, label %114, !dbg !1963

114:                                              ; preds = %110
  %115 = zext i32 %113 to i64, !dbg !1964
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()) #18, !dbg !1961
  %116 = call i8* @umaxtostr(i64 %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #18, !dbg !1966
  call void @llvm.dbg.value(metadata i8* %123, metadata !1877, metadata !DIExpression()) #18, !dbg !1961
  br label %127, !dbg !1967

117:                                              ; preds = %110
  %118 = call %struct.group* @getgrgid(i32 %113) #18, !dbg !1968
  call void @llvm.dbg.value(metadata %struct.group* %118, metadata !1875, metadata !DIExpression()) #18, !dbg !1961
  %119 = icmp eq %struct.group* %118, null, !dbg !1969
  br i1 %119, label %120, label %124, !dbg !1970

120:                                              ; preds = %117
  %121 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #18, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %113, metadata !1869, metadata !DIExpression()) #18, !dbg !1961
  %122 = zext i32 %113 to i64, !dbg !1972
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %121, i64 %122) #18, !dbg !1973
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()) #18, !dbg !1961
  %123 = call i8* @umaxtostr(i64 %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #18, !dbg !1966
  call void @llvm.dbg.value(metadata i8* %123, metadata !1877, metadata !DIExpression()) #18, !dbg !1961
  br label %127, !dbg !1967

124:                                              ; preds = %117
  call void @llvm.dbg.value(metadata %struct.group* %118, metadata !1875, metadata !DIExpression()) #18, !dbg !1961
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()) #18, !dbg !1961
  %125 = getelementptr inbounds %struct.group, %struct.group* %118, i64 0, i32 0, !dbg !1974
  %126 = load i8*, i8** %125, align 8, !dbg !1974, !tbaa !1720
  call void @llvm.dbg.value(metadata i8* %123, metadata !1877, metadata !DIExpression()) #18, !dbg !1961
  br label %127, !dbg !1967

127:                                              ; preds = %120, %114, %124
  %128 = phi i8* [ %126, %124 ], [ %116, %114 ], [ %123, %120 ]
  %129 = phi i8 [ %92, %124 ], [ %92, %114 ], [ 0, %120 ]
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1975, !tbaa !1395
  %131 = call i32 @fputs_unlocked(i8* %128, %struct._IO_FILE* %130) #18, !dbg !1975
  br label %132, !dbg !1976

132:                                              ; preds = %127, %90
  %133 = phi i8 [ %92, %90 ], [ %129, %127 ], !dbg !1860
  call void @llvm.dbg.value(metadata i8 %133, metadata !1853, metadata !DIExpression()), !dbg !1860
  %134 = add nuw nsw i64 %91, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %134, metadata !1858, metadata !DIExpression()), !dbg !1933
  %135 = icmp eq i64 %134, %81, !dbg !1934
  br i1 %135, label %137, label %90, !dbg !1936, !llvm.loop !1977

136:                                              ; preds = %88, %85
  call void @llvm.dbg.value(metadata i8 %138, metadata !1853, metadata !DIExpression()), !dbg !1860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #18, !dbg !1979
  br label %143

137:                                              ; preds = %132, %77
  %138 = phi i8 [ %67, %77 ], [ %133, %132 ], !dbg !1980
  call void @llvm.dbg.value(metadata i8 %138, metadata !1853, metadata !DIExpression()), !dbg !1860
  %139 = bitcast i32** %7 to i8**, !dbg !1981
  %140 = load i8*, i8** %139, align 8, !dbg !1981, !tbaa !1395
  call void @llvm.dbg.value(metadata i32* undef, metadata !1855, metadata !DIExpression()), !dbg !1928
  call void @free(i8* %140) #18, !dbg !1982
  call void @llvm.dbg.value(metadata i8 %138, metadata !1853, metadata !DIExpression()), !dbg !1860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #18, !dbg !1979
  %141 = and i8 %138, 1
  %142 = icmp ne i8 %141, 0
  br label %143

143:                                              ; preds = %136, %137
  %144 = phi i1 [ %142, %137 ], [ false, %136 ]
  ret i1 %144, !dbg !1983
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group(i32 %0, i1 zeroext %1) local_unnamed_addr #8 !dbg !1870 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1869, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i1 %1, metadata !1874, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1875, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 1, metadata !1876, metadata !DIExpression()), !dbg !1984
  br i1 %1, label %5, label %3, !dbg !1985

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1986
  br label %14, !dbg !1985

5:                                                ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #18, !dbg !1988
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1875, metadata !DIExpression()), !dbg !1984
  %7 = icmp eq %struct.group* %6, null, !dbg !1989
  br i1 %7, label %8, label %11, !dbg !1990

8:                                                ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #18, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %0, metadata !1869, metadata !DIExpression()), !dbg !1984
  %10 = zext i32 %0 to i64, !dbg !1992
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #18, !dbg !1993
  call void @llvm.dbg.value(metadata i8 0, metadata !1876, metadata !DIExpression()), !dbg !1984
  br label %14, !dbg !1994

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1875, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()), !dbg !1984
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1995
  %13 = load i8*, i8** %12, align 8, !dbg !1995, !tbaa !1720
  br label %18, !dbg !1996

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !1986
  %16 = phi i1 [ true, %3 ], [ false, %8 ]
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1875, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 undef, metadata !1876, metadata !DIExpression()), !dbg !1984
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #18, !dbg !1997
  br label %18, !dbg !1996

18:                                               ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8* %20, metadata !1877, metadata !DIExpression()), !dbg !1984
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1998, !tbaa !1395
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21), !dbg !1998
  ret i1 %19, !dbg !1999
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !2000 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2002, metadata !DIExpression()), !dbg !2003
  store i8* %0, i8** @file_name, align 8, !dbg !2004, !tbaa !1395
  ret void, !dbg !2005
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !2006 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2010, metadata !DIExpression()), !dbg !2011
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2012, !tbaa !1513
  ret void, !dbg !2013
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2014 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2019, !tbaa !1395
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !2020
  %3 = icmp eq i32 %2, 0, !dbg !2021
  br i1 %3, label %22, label %4, !dbg !2022

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2023, !tbaa !1513, !range !1623
  %6 = icmp eq i8 %5, 0, !dbg !2023
  br i1 %6, label %11, label %7, !dbg !2024

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !2025
  %9 = load i32, i32* %8, align 4, !dbg !2025, !tbaa !1483
  %10 = icmp eq i32 %9, 32, !dbg !2026
  br i1 %10, label %22, label %11, !dbg !2027

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i32 5) #18, !dbg !2028
  call void @llvm.dbg.value(metadata i8* %12, metadata !2016, metadata !DIExpression()), !dbg !2029
  %13 = load i8*, i8** @file_name, align 8, !dbg !2030, !tbaa !1395
  %14 = icmp eq i8* %13, null, !dbg !2030
  %15 = tail call i32* @__errno_location() #24, !dbg !2032
  %16 = load i32, i32* %15, align 4, !dbg !2032, !tbaa !1483
  br i1 %14, label %19, label %17, !dbg !2033

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !2034
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !2035
  br label %20, !dbg !2035

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.65, i64 0, i64 0), i8* %12) #18, !dbg !2036
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2037, !tbaa !1483
  tail call void @_exit(i32 %21) #22, !dbg !2038
  unreachable, !dbg !2038

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2039, !tbaa !1395
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !2041
  %25 = icmp eq i32 %24, 0, !dbg !2042
  br i1 %25, label %28, label %26, !dbg !2043

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2044, !tbaa !1483
  tail call void @_exit(i32 %27) #22, !dbg !2045
  unreachable, !dbg !2045

28:                                               ; preds = %22
  ret void, !dbg !2046
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #10 !dbg !2047 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2052, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %1, metadata !2053, metadata !DIExpression()), !dbg !2055
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2056
  call void @llvm.dbg.value(metadata i8* %3, metadata !2054, metadata !DIExpression()), !dbg !2055
  store i8 0, i8* %3, align 1, !dbg !2057, !tbaa !1523
  br label %4, !dbg !2058

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2055
  call void @llvm.dbg.value(metadata i8* %6, metadata !2054, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %5, metadata !2052, metadata !DIExpression()), !dbg !2055
  %7 = urem i64 %5, 10, !dbg !2059
  %8 = trunc i64 %7 to i8, !dbg !2062
  %9 = or i8 %8, 48, !dbg !2062
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2063
  call void @llvm.dbg.value(metadata i8* %10, metadata !2054, metadata !DIExpression()), !dbg !2055
  store i8 %9, i8* %10, align 1, !dbg !2064, !tbaa !1523
  %11 = udiv i64 %5, 10, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %11, metadata !2052, metadata !DIExpression()), !dbg !2055
  %12 = icmp ugt i64 %5, 9, !dbg !2066
  br i1 %12, label %4, label %13, !dbg !2067, !llvm.loop !2068

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2054, metadata !DIExpression()), !dbg !2055
  ret i8* %10, !dbg !2071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2072 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2074, metadata !DIExpression()), !dbg !2077
  %2 = icmp eq i8* %0, null, !dbg !2078
  br i1 %2, label %3, label %6, !dbg !2080

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2081, !tbaa !1395
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !2083
  tail call void @abort() #22, !dbg !2084
  unreachable, !dbg !2084

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %7, metadata !2075, metadata !DIExpression()), !dbg !2077
  %8 = icmp eq i8* %7, null, !dbg !2086
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2087
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2087
  call void @llvm.dbg.value(metadata i8* %10, metadata !2076, metadata !DIExpression()), !dbg !2077
  %11 = ptrtoint i8* %10 to i64, !dbg !2088
  %12 = ptrtoint i8* %0 to i64, !dbg !2088
  %13 = sub i64 %11, %12, !dbg !2088
  %14 = icmp sgt i64 %13, 6, !dbg !2090
  br i1 %14, label %15, label %24, !dbg !2091

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2092
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.75, i64 0, i64 0), i64 7) #21, !dbg !2093
  %18 = icmp eq i32 %17, 0, !dbg !2094
  br i1 %18, label %19, label %24, !dbg !2095

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2074, metadata !DIExpression()), !dbg !2077
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i64 3) #21, !dbg !2096
  %21 = icmp eq i32 %20, 0, !dbg !2099
  br i1 %21, label %22, label %24, !dbg !2100

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %23, metadata !2074, metadata !DIExpression()), !dbg !2077
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2103, !tbaa !1395
  br label %24, !dbg !2104

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2074, metadata !DIExpression()), !dbg !2077
  store i8* %25, i8** @program_name, align 8, !dbg !2105, !tbaa !1395
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2106, !tbaa !1395
  ret void, !dbg !2107
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2108 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2113, metadata !DIExpression()), !dbg !2116
  %2 = tail call i32* @__errno_location() #24, !dbg !2117
  %3 = load i32, i32* %2, align 4, !dbg !2117, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %3, metadata !2114, metadata !DIExpression()), !dbg !2116
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2118
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2118
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2118
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !2119
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2119
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2115, metadata !DIExpression()), !dbg !2116
  store i32 %3, i32* %2, align 4, !dbg !2120, !tbaa !1483
  ret %struct.quoting_options* %8, !dbg !2121
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !2122 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2126, metadata !DIExpression()), !dbg !2127
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2128
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2128
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2129
  %5 = load i32, i32* %4, align 8, !dbg !2129, !tbaa !2130
  ret i32 %5, !dbg !2132
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !2133 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i32 %1, metadata !2138, metadata !DIExpression()), !dbg !2139
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2140
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2140
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2141
  store i32 %1, i32* %5, align 8, !dbg !2142, !tbaa !2130
  ret void, !dbg !2143
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !2144 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2148, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %1, metadata !2149, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %2, metadata !2150, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %1, metadata !2151, metadata !DIExpression()), !dbg !2155
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2156
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2156
  %6 = lshr i8 %1, 5, !dbg !2157
  %7 = zext i8 %6 to i64, !dbg !2157
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2158
  call void @llvm.dbg.value(metadata i32* %8, metadata !2152, metadata !DIExpression()), !dbg !2155
  %9 = and i8 %1, 31, !dbg !2159
  %10 = zext i8 %9 to i32, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %10, metadata !2153, metadata !DIExpression()), !dbg !2155
  %11 = load i32, i32* %8, align 4, !dbg !2160, !tbaa !1483
  %12 = lshr i32 %11, %10, !dbg !2161
  %13 = and i32 %12, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %13, metadata !2154, metadata !DIExpression()), !dbg !2155
  %14 = and i32 %2, 1, !dbg !2163
  %15 = xor i32 %13, %14, !dbg !2164
  %16 = shl i32 %15, %10, !dbg !2165
  %17 = xor i32 %16, %11, !dbg !2166
  store i32 %17, i32* %8, align 4, !dbg !2166, !tbaa !1483
  ret i32 %13, !dbg !2167
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !2168 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2172, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i32 %1, metadata !2173, metadata !DIExpression()), !dbg !2175
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2176
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2172, metadata !DIExpression()), !dbg !2175
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2179
  %6 = load i32, i32* %5, align 4, !dbg !2179, !tbaa !2180
  call void @llvm.dbg.value(metadata i32 %6, metadata !2174, metadata !DIExpression()), !dbg !2175
  store i32 %1, i32* %5, align 4, !dbg !2181, !tbaa !2180
  ret i32 %6, !dbg !2182
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2183 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2187, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8* %1, metadata !2188, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8* %2, metadata !2189, metadata !DIExpression()), !dbg !2190
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2191
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2187, metadata !DIExpression()), !dbg !2190
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2194
  store i32 10, i32* %6, align 8, !dbg !2195, !tbaa !2130
  %7 = icmp ne i8* %1, null, !dbg !2196
  %8 = icmp ne i8* %2, null, !dbg !2198
  %9 = and i1 %7, %8, !dbg !2199
  br i1 %9, label %11, label %10, !dbg !2199

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2200
  unreachable, !dbg !2200

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2201
  store i8* %1, i8** %12, align 8, !dbg !2202, !tbaa !2203
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2204
  store i8* %2, i8** %13, align 8, !dbg !2205, !tbaa !2206
  ret void, !dbg !2207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %1, metadata !2213, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8* %2, metadata !2214, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %3, metadata !2215, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2216, metadata !DIExpression()), !dbg !2220
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2221
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2217, metadata !DIExpression()), !dbg !2220
  %8 = tail call i32* @__errno_location() #24, !dbg !2222
  %9 = load i32, i32* %8, align 4, !dbg !2222, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %9, metadata !2218, metadata !DIExpression()), !dbg !2220
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2223
  %11 = load i32, i32* %10, align 8, !dbg !2223, !tbaa !2130
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2224
  %13 = load i32, i32* %12, align 4, !dbg !2224, !tbaa !2180
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2225
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2226
  %16 = load i8*, i8** %15, align 8, !dbg !2226, !tbaa !2203
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2227
  %18 = load i8*, i8** %17, align 8, !dbg !2227, !tbaa !2206
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2228
  call void @llvm.dbg.value(metadata i64 %19, metadata !2219, metadata !DIExpression()), !dbg !2220
  store i32 %9, i32* %8, align 4, !dbg !2229, !tbaa !1483
  ret i64 %19, !dbg !2230
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2231 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2237, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %1, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %2, metadata !2239, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %3, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %4, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %5, metadata !2242, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32* %6, metadata !2243, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %7, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %8, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 0, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 0, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* null, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 0, metadata !2250, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 0, metadata !2251, metadata !DIExpression()), !dbg !2295
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !2296
  %14 = icmp eq i64 %13, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i1 %14, metadata !2252, metadata !DIExpression()), !dbg !2295
  %15 = lshr i32 %5, 1, !dbg !2298
  %16 = trunc i32 %15 to i8, !dbg !2298
  %17 = and i8 %16, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i8 %17, metadata !2253, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 0, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 0, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, metadata !2256, metadata !DIExpression()), !dbg !2295
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2299
  %19 = and i32 %5, 4, !dbg !2301
  %20 = icmp eq i32 %19, 0, !dbg !2301
  %21 = and i32 %5, 1, !dbg !2304
  %22 = icmp eq i32 %21, 0, !dbg !2304
  %23 = bitcast i64* %10 to i8*, !dbg !2307
  %24 = bitcast i32* %12 to i8*, !dbg !2308
  %25 = icmp eq i32* %6, null, !dbg !2309
  br label %26, !dbg !2311

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2312
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2313
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2314
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2315
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2295
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2316
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2317
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2318
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %38, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %37, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %36, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %35, metadata !2253, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %34, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %33, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %32, metadata !2250, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %31, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %30, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 0, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %29, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %28, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %27, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.label(metadata !2289), !dbg !2319
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
  ], !dbg !2320

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, metadata !2253, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %35, metadata !2253, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 5, metadata !2241, metadata !DIExpression()), !dbg !2295
  br label %92, !dbg !2321

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2253, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 5, metadata !2241, metadata !DIExpression()), !dbg !2295
  %42 = and i8 %35, 1, !dbg !2323
  %43 = icmp eq i8 %42, 0, !dbg !2323
  br i1 %43, label %44, label %92, !dbg !2321

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2325
  br i1 %45, label %92, label %46, !dbg !2328

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2325, !tbaa !1523
  br label %92, !dbg !2325

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.87, i64 0, i64 0), i32 %27), !dbg !2329
  call void @llvm.dbg.value(metadata i8* %48, metadata !2244, metadata !DIExpression()), !dbg !2295
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), i32 %27), !dbg !2333
  call void @llvm.dbg.value(metadata i8* %49, metadata !2245, metadata !DIExpression()), !dbg !2295
  br label %50, !dbg !2334

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %51, metadata !2244, metadata !DIExpression()), !dbg !2295
  %53 = and i8 %35, 1, !dbg !2335
  %54 = icmp eq i8 %53, 0, !dbg !2335
  br i1 %54, label %55, label %70, !dbg !2337

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 0, metadata !2247, metadata !DIExpression()), !dbg !2295
  %56 = load i8, i8* %51, align 1, !dbg !2338, !tbaa !1523
  %57 = icmp eq i8 %56, 0, !dbg !2341
  br i1 %57, label %70, label %58, !dbg !2341

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %61, metadata !2247, metadata !DIExpression()), !dbg !2295
  %62 = icmp ult i64 %61, %39, !dbg !2342
  br i1 %62, label %63, label %65, !dbg !2345

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2342
  store i8 %59, i8* %64, align 1, !dbg !2342, !tbaa !1523
  br label %65, !dbg !2342

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %66, metadata !2247, metadata !DIExpression()), !dbg !2295
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %67, metadata !2249, metadata !DIExpression()), !dbg !2295
  %68 = load i8, i8* %67, align 1, !dbg !2338, !tbaa !1523
  %69 = icmp eq i8 %68, 0, !dbg !2341
  br i1 %69, label %70, label %58, !dbg !2341, !llvm.loop !2347

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2349
  call void @llvm.dbg.value(metadata i64 %71, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %52, metadata !2249, metadata !DIExpression()), !dbg !2295
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %72, metadata !2250, metadata !DIExpression()), !dbg !2295
  br label %92, !dbg !2351

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2251, metadata !DIExpression()), !dbg !2295
  br label %74, !dbg !2352

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8 %75, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, metadata !2253, metadata !DIExpression()), !dbg !2295
  br label %76, !dbg !2353

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2315
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8 %78, metadata !2253, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %77, metadata !2251, metadata !DIExpression()), !dbg !2295
  %79 = and i8 %78, 1, !dbg !2354
  %80 = icmp eq i8 %79, 0, !dbg !2354
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2356
  br label %82, !dbg !2356

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2295
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2298
  call void @llvm.dbg.value(metadata i8 %84, metadata !2253, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %83, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  %85 = and i8 %84, 1, !dbg !2357
  %86 = icmp eq i8 %85, 0, !dbg !2357
  br i1 %86, label %87, label %92, !dbg !2359

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2360
  br i1 %88, label %92, label %89, !dbg !2363

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2360, !tbaa !1523
  br label %92, !dbg !2360

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2295
  br label %92, !dbg !2364

91:                                               ; preds = %26
  call void @abort() #22, !dbg !2365
  unreachable, !dbg !2365

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2349
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %40 ], !dbg !2295
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2295
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2295
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8 %100, metadata !2253, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %98, metadata !2250, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %96, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %93, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 0, metadata !2246, metadata !DIExpression()), !dbg !2295
  %101 = and i8 %99, 1, !dbg !2366
  %102 = icmp ne i8 %101, 0, !dbg !2366
  %103 = icmp ne i32 %93, 2, !dbg !2366
  %104 = and i1 %103, %102, !dbg !2366
  %105 = icmp ne i64 %98, 0, !dbg !2366
  %106 = and i1 %105, %104, !dbg !2366
  %107 = icmp ugt i64 %98, 1, !dbg !2366
  %108 = and i8 %100, 1, !dbg !2368
  %109 = icmp eq i8 %108, 0, !dbg !2368
  %110 = icmp eq i32 %93, 2, !dbg !2371
  %111 = or i1 %103, %109, !dbg !2373
  %112 = icmp ne i8 %108, 0, !dbg !2375
  %113 = and i1 %110, %112, !dbg !2375
  %114 = xor i1 %102, true, !dbg !2376
  %115 = xor i1 %104, true, !dbg !2309
  %116 = and i1 %109, %115, !dbg !2309
  %117 = or i1 %25, %116, !dbg !2309
  %118 = and i8 %99, %100, !dbg !2377
  %119 = and i8 %118, 1, !dbg !2377
  %120 = icmp ne i8 %119, 0, !dbg !2377
  %121 = and i1 %120, %105, !dbg !2377
  br label %122, !dbg !2379

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2380
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2349
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2312
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2316
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2317
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2318
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %126, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %123, metadata !2246, metadata !DIExpression()), !dbg !2295
  %131 = icmp eq i64 %126, -1, !dbg !2381
  br i1 %131, label %132, label %136, !dbg !2382

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2383
  %134 = load i8, i8* %133, align 1, !dbg !2383, !tbaa !1523
  %135 = icmp eq i8 %134, 0, !dbg !2384
  br i1 %135, label %581, label %138, !dbg !2385

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2386
  br i1 %137, label %581, label %138, !dbg !2385

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2262, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 0, metadata !2263, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 0, metadata !2264, metadata !DIExpression()), !dbg !2387
  br i1 %106, label %139, label %154, !dbg !2388

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2389
  %141 = and i1 %107, %131, !dbg !2390
  br i1 %141, label %142, label %144, !dbg !2390

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %143, metadata !2240, metadata !DIExpression()), !dbg !2295
  br label %144, !dbg !2392

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2240, metadata !DIExpression()), !dbg !2295
  %146 = icmp ugt i64 %140, %145, !dbg !2393
  br i1 %146, label %154, label %147, !dbg !2394

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2395
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2396
  %150 = icmp ne i32 %149, 0, !dbg !2397
  %151 = or i1 %150, %109, !dbg !2398
  %152 = xor i1 %150, true, !dbg !2398
  %153 = zext i1 %152 to i8, !dbg !2398
  br i1 %151, label %154, label %639, !dbg !2398

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2387
  call void @llvm.dbg.value(metadata i8 %156, metadata !2262, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i64 %155, metadata !2240, metadata !DIExpression()), !dbg !2295
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2399
  %158 = load i8, i8* %157, align 1, !dbg !2399, !tbaa !1523
  call void @llvm.dbg.value(metadata i8 %158, metadata !2257, metadata !DIExpression()), !dbg !2387
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
  ], !dbg !2400

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2401

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2402

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2263, metadata !DIExpression()), !dbg !2387
  %162 = and i8 %127, 1, !dbg !2405
  %163 = icmp eq i8 %162, 0, !dbg !2405
  %164 = and i1 %110, %163, !dbg !2405
  br i1 %164, label %165, label %181, !dbg !2405

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2407
  br i1 %166, label %167, label %169, !dbg !2411

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2407
  store i8 39, i8* %168, align 1, !dbg !2407, !tbaa !1523
  br label %169, !dbg !2407

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %170, metadata !2247, metadata !DIExpression()), !dbg !2295
  %171 = icmp ult i64 %170, %130, !dbg !2412
  br i1 %171, label %172, label %174, !dbg !2415

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2412
  store i8 36, i8* %173, align 1, !dbg !2412, !tbaa !1523
  br label %174, !dbg !2412

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %175, metadata !2247, metadata !DIExpression()), !dbg !2295
  %176 = icmp ult i64 %175, %130, !dbg !2416
  br i1 %176, label %177, label %179, !dbg !2419

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2416
  store i8 39, i8* %178, align 1, !dbg !2416, !tbaa !1523
  br label %179, !dbg !2416

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %180, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, metadata !2254, metadata !DIExpression()), !dbg !2295
  br label %181, !dbg !2420

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2295
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8 %183, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %182, metadata !2247, metadata !DIExpression()), !dbg !2295
  %184 = icmp ult i64 %182, %130, !dbg !2421
  br i1 %184, label %185, label %187, !dbg !2424

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2421
  store i8 92, i8* %186, align 1, !dbg !2421, !tbaa !1523
  br label %187, !dbg !2421

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %188, metadata !2247, metadata !DIExpression()), !dbg !2295
  br i1 %103, label %189, label %463, !dbg !2425

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2427
  %191 = icmp ult i64 %190, %155, !dbg !2428
  br i1 %191, label %192, label %463, !dbg !2429

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2430
  %194 = load i8, i8* %193, align 1, !dbg !2430, !tbaa !1523
  %195 = add i8 %194, -48, !dbg !2431
  %196 = icmp ult i8 %195, 10, !dbg !2431
  br i1 %196, label %197, label %463, !dbg !2431

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2432
  br i1 %198, label %199, label %201, !dbg !2436

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2432
  store i8 48, i8* %200, align 1, !dbg !2432, !tbaa !1523
  br label %201, !dbg !2432

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %202, metadata !2247, metadata !DIExpression()), !dbg !2295
  %203 = icmp ult i64 %202, %130, !dbg !2437
  br i1 %203, label %204, label %206, !dbg !2440

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2437
  store i8 48, i8* %205, align 1, !dbg !2437, !tbaa !1523
  br label %206, !dbg !2437

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %207, metadata !2247, metadata !DIExpression()), !dbg !2295
  br label %463, !dbg !2441

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2442

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2443

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2444

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2445

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2446
  %214 = icmp ult i64 %213, %155, !dbg !2447
  br i1 %214, label %215, label %463, !dbg !2448

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2449
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2450
  %218 = load i8, i8* %217, align 1, !dbg !2450, !tbaa !1523
  %219 = icmp eq i8 %218, 63, !dbg !2451
  br i1 %219, label %220, label %463, !dbg !2452

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2453
  %222 = load i8, i8* %221, align 1, !dbg !2453, !tbaa !1523
  %223 = sext i8 %222 to i32, !dbg !2453
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
  ], !dbg !2454

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2455

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2257, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i64 %213, metadata !2246, metadata !DIExpression()), !dbg !2295
  %226 = icmp ult i64 %124, %130, !dbg !2457
  br i1 %226, label %227, label %229, !dbg !2460

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2457
  store i8 63, i8* %228, align 1, !dbg !2457, !tbaa !1523
  br label %229, !dbg !2457

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %230, metadata !2247, metadata !DIExpression()), !dbg !2295
  %231 = icmp ult i64 %230, %130, !dbg !2461
  br i1 %231, label %232, label %234, !dbg !2464

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2461
  store i8 34, i8* %233, align 1, !dbg !2461, !tbaa !1523
  br label %234, !dbg !2461

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %235, metadata !2247, metadata !DIExpression()), !dbg !2295
  %236 = icmp ult i64 %235, %130, !dbg !2465
  br i1 %236, label %237, label %239, !dbg !2468

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2465
  store i8 34, i8* %238, align 1, !dbg !2465, !tbaa !1523
  br label %239, !dbg !2465

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %240, metadata !2247, metadata !DIExpression()), !dbg !2295
  %241 = icmp ult i64 %240, %130, !dbg !2469
  br i1 %241, label %242, label %244, !dbg !2472

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2469
  store i8 63, i8* %243, align 1, !dbg !2469, !tbaa !1523
  br label %244, !dbg !2469

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %245, metadata !2247, metadata !DIExpression()), !dbg !2295
  br label %463, !dbg !2473

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2261, metadata !DIExpression()), !dbg !2387
  br label %256, !dbg !2474

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2261, metadata !DIExpression()), !dbg !2387
  br label %256, !dbg !2475

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2261, metadata !DIExpression()), !dbg !2387
  br label %254, !dbg !2476

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2261, metadata !DIExpression()), !dbg !2387
  br label %254, !dbg !2477

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2261, metadata !DIExpression()), !dbg !2387
  br label %256, !dbg !2478

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2261, metadata !DIExpression()), !dbg !2387
  br i1 %110, label %252, label %253, !dbg !2479

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2480

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2483

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2484
  call void @llvm.dbg.value(metadata i8 %255, metadata !2261, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.label(metadata !2290), !dbg !2485
  br i1 %111, label %256, label %625, !dbg !2486

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2484
  call void @llvm.dbg.value(metadata i8 %257, metadata !2261, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.label(metadata !2291), !dbg !2488
  br i1 %102, label %488, label %463, !dbg !2489

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2490

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2491, !tbaa !1523
  %261 = icmp eq i8 %260, 0, !dbg !2492
  br i1 %261, label %262, label %463, !dbg !2493

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2494
  br i1 %263, label %264, label %463, !dbg !2496

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2264, metadata !DIExpression()), !dbg !2387
  br label %265, !dbg !2497

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2387
  call void @llvm.dbg.value(metadata i8 %266, metadata !2264, metadata !DIExpression()), !dbg !2387
  br i1 %111, label %463, label %625, !dbg !2498

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, metadata !2264, metadata !DIExpression()), !dbg !2387
  br i1 %110, label %268, label %463, !dbg !2499

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2500

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2502
  %271 = icmp ne i64 %125, 0, !dbg !2504
  %272 = or i1 %271, %270, !dbg !2505
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2505
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %274, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %273, metadata !2248, metadata !DIExpression()), !dbg !2295
  %275 = icmp ult i64 %124, %274, !dbg !2506
  br i1 %275, label %276, label %278, !dbg !2509

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2506
  store i8 39, i8* %277, align 1, !dbg !2506, !tbaa !1523
  br label %278, !dbg !2506

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %279, metadata !2247, metadata !DIExpression()), !dbg !2295
  %280 = icmp ult i64 %279, %274, !dbg !2510
  br i1 %280, label %281, label %283, !dbg !2513

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2510
  store i8 92, i8* %282, align 1, !dbg !2510, !tbaa !1523
  br label %283, !dbg !2510

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %284, metadata !2247, metadata !DIExpression()), !dbg !2295
  %285 = icmp ult i64 %284, %274, !dbg !2514
  br i1 %285, label %286, label %288, !dbg !2517

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2514
  store i8 39, i8* %287, align 1, !dbg !2514, !tbaa !1523
  br label %288, !dbg !2514

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %289, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 0, metadata !2254, metadata !DIExpression()), !dbg !2295
  br label %463, !dbg !2518

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2519

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2265, metadata !DIExpression()), !dbg !2520
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2521
  %293 = load i16*, i16** %292, align 8, !dbg !2521, !tbaa !1395
  %294 = zext i8 %158 to i64, !dbg !2521
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2521
  %296 = load i16, i16* %295, align 2, !dbg !2521, !tbaa !2523
  %297 = lshr i16 %296, 14, !dbg !2524
  %298 = trunc i16 %297 to i8, !dbg !2524
  %299 = and i8 %298, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i8 %299, metadata !2268, metadata !DIExpression()), !dbg !2520
  br label %355, !dbg !2525

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2526
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2269, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* %23, metadata !2528, metadata !DIExpression()) #18, !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2534, metadata !DIExpression()) #18, !dbg !2536
  call void @llvm.dbg.value(metadata i64 8, metadata !2535, metadata !DIExpression()) #18, !dbg !2536
  store i64 0, i64* %10, align 8, !dbg !2538
  call void @llvm.dbg.value(metadata i64 0, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 1, metadata !2268, metadata !DIExpression()), !dbg !2520
  %301 = icmp eq i64 %155, -1, !dbg !2539
  br i1 %301, label %302, label %304, !dbg !2541

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %303, metadata !2240, metadata !DIExpression()), !dbg !2295
  br label %304, !dbg !2543

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2387
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  br label %306, !dbg !2544

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2545
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2546
  call void @llvm.dbg.value(metadata i8 %308, metadata !2268, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %307, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2547
  %309 = add i64 %307, %123, !dbg !2548
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2549
  %311 = sub i64 %305, %309, !dbg !2550
  call void @llvm.dbg.value(metadata i32* %12, metadata !2275, metadata !DIExpression(DW_OP_deref)), !dbg !2308
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2551
  call void @llvm.dbg.value(metadata i64 %312, metadata !2278, metadata !DIExpression()), !dbg !2308
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2552

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %307, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %307, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %307, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %307, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %307, metadata !2265, metadata !DIExpression()), !dbg !2520
  %314 = icmp ugt i64 %305, %309, !dbg !2553
  br i1 %314, label %315, label %340, !dbg !2555

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2556
  br label %317, !dbg !2556

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2265, metadata !DIExpression()), !dbg !2520
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2557
  %321 = load i8, i8* %320, align 1, !dbg !2557, !tbaa !1523
  %322 = icmp eq i8 %321, 0, !dbg !2555
  br i1 %322, label %340, label %323, !dbg !2556

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %324, metadata !2265, metadata !DIExpression()), !dbg !2520
  %325 = add i64 %324, %123, !dbg !2559
  %326 = icmp ult i64 %325, %305, !dbg !2553
  br i1 %326, label %317, label %340, !dbg !2555, !llvm.loop !2560

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2561
  %329 = and i1 %113, %328, !dbg !2564
  call void @llvm.dbg.value(metadata i64 1, metadata !2279, metadata !DIExpression()), !dbg !2565
  br i1 %329, label %330, label %343, !dbg !2564

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2279, metadata !DIExpression()), !dbg !2565
  %332 = add i64 %331, %309, !dbg !2566
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2567
  %334 = load i8, i8* %333, align 1, !dbg !2567, !tbaa !1523
  %335 = sext i8 %334 to i32, !dbg !2567
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2568

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %337, metadata !2279, metadata !DIExpression()), !dbg !2565
  %338 = icmp eq i64 %337, %312, !dbg !2561
  br i1 %338, label %343, label %330, !dbg !2570, !llvm.loop !2571

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 %308, metadata !2268, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %307, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 %308, metadata !2268, metadata !DIExpression()), !dbg !2520
  br label %340, !dbg !2573

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2573
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2574, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %344, metadata !2275, metadata !DIExpression()), !dbg !2308
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2576
  %346 = icmp eq i32 %345, 0, !dbg !2576
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2577
  call void @llvm.dbg.value(metadata i8 %347, metadata !2268, metadata !DIExpression()), !dbg !2520
  %348 = add i64 %312, %307, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %348, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 %347, metadata !2268, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %348, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2573
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2579
  %350 = icmp eq i32 %349, 0, !dbg !2580
  br i1 %350, label %306, label %351, !dbg !2581, !llvm.loop !2582

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2584
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 2, metadata !2241, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %99, metadata !2251, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %305, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2573
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2584
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2387
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2585
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2585
  call void @llvm.dbg.value(metadata i8 %358, metadata !2268, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %357, metadata !2265, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %356, metadata !2240, metadata !DIExpression()), !dbg !2295
  %359 = and i8 %358, 1, !dbg !2586
  %360 = icmp ne i8 %359, 0, !dbg !2586
  call void @llvm.dbg.value(metadata i8 %359, metadata !2264, metadata !DIExpression()), !dbg !2387
  %361 = icmp ult i64 %357, 2, !dbg !2587
  %362 = or i1 %360, %114, !dbg !2588
  %363 = and i1 %361, %362, !dbg !2589
  br i1 %363, label %463, label %364, !dbg !2589

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %365, metadata !2286, metadata !DIExpression()), !dbg !2591
  br label %366, !dbg !2592

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2380
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2295
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2316
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2387
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2387
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2593
  call void @llvm.dbg.value(metadata i8 %372, metadata !2263, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %371, metadata !2262, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %370, metadata !2257, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %369, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %368, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %367, metadata !2246, metadata !DIExpression()), !dbg !2295
  br i1 %362, label %419, label %373, !dbg !2594

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2599

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2263, metadata !DIExpression()), !dbg !2387
  %375 = and i8 %369, 1, !dbg !2602
  %376 = icmp eq i8 %375, 0, !dbg !2602
  %377 = and i1 %110, %376, !dbg !2602
  br i1 %377, label %378, label %394, !dbg !2602

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2604
  br i1 %379, label %380, label %382, !dbg !2608

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2604
  store i8 39, i8* %381, align 1, !dbg !2604, !tbaa !1523
  br label %382, !dbg !2604

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2608
  call void @llvm.dbg.value(metadata i64 %383, metadata !2247, metadata !DIExpression()), !dbg !2295
  %384 = icmp ult i64 %383, %130, !dbg !2609
  br i1 %384, label %385, label %387, !dbg !2612

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2609
  store i8 36, i8* %386, align 1, !dbg !2609, !tbaa !1523
  br label %387, !dbg !2609

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %388, metadata !2247, metadata !DIExpression()), !dbg !2295
  %389 = icmp ult i64 %388, %130, !dbg !2613
  br i1 %389, label %390, label %392, !dbg !2616

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2613
  store i8 39, i8* %391, align 1, !dbg !2613, !tbaa !1523
  br label %392, !dbg !2613

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %393, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, metadata !2254, metadata !DIExpression()), !dbg !2295
  br label %394, !dbg !2617

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2295
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8 %396, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %395, metadata !2247, metadata !DIExpression()), !dbg !2295
  %397 = icmp ult i64 %395, %130, !dbg !2618
  br i1 %397, label %398, label %400, !dbg !2621

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2618
  store i8 92, i8* %399, align 1, !dbg !2618, !tbaa !1523
  br label %400, !dbg !2618

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %401, metadata !2247, metadata !DIExpression()), !dbg !2295
  %402 = icmp ult i64 %401, %130, !dbg !2622
  br i1 %402, label %403, label %407, !dbg !2625

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2622
  %405 = or i8 %404, 48, !dbg !2622
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2622
  store i8 %405, i8* %406, align 1, !dbg !2622, !tbaa !1523
  br label %407, !dbg !2622

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %408, metadata !2247, metadata !DIExpression()), !dbg !2295
  %409 = icmp ult i64 %408, %130, !dbg !2626
  br i1 %409, label %410, label %415, !dbg !2629

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2626
  %412 = and i8 %411, 7, !dbg !2626
  %413 = or i8 %412, 48, !dbg !2626
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2626
  store i8 %413, i8* %414, align 1, !dbg !2626, !tbaa !1523
  br label %415, !dbg !2626

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %416, metadata !2247, metadata !DIExpression()), !dbg !2295
  %417 = and i8 %370, 7, !dbg !2630
  %418 = or i8 %417, 48, !dbg !2631
  call void @llvm.dbg.value(metadata i8 %418, metadata !2257, metadata !DIExpression()), !dbg !2387
  br label %428, !dbg !2632

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2633
  %421 = icmp eq i8 %420, 0, !dbg !2633
  br i1 %421, label %428, label %422, !dbg !2635

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2636
  br i1 %423, label %424, label %426, !dbg !2640

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2636
  store i8 92, i8* %425, align 1, !dbg !2636, !tbaa !1523
  br label %426, !dbg !2636

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %427, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 0, metadata !2262, metadata !DIExpression()), !dbg !2387
  br label %428, !dbg !2641

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2295
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2316
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2387
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2387
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2387
  call void @llvm.dbg.value(metadata i8 %433, metadata !2263, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %432, metadata !2262, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %431, metadata !2257, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %430, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %429, metadata !2247, metadata !DIExpression()), !dbg !2295
  %434 = add i64 %367, 1, !dbg !2642
  %435 = icmp ugt i64 %365, %434, !dbg !2644
  br i1 %435, label %436, label %526, !dbg !2645

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2646
  %438 = icmp ne i8 %437, 0, !dbg !2646
  %439 = and i8 %433, 1, !dbg !2646
  %440 = icmp eq i8 %439, 0, !dbg !2646
  %441 = and i1 %438, %440, !dbg !2646
  br i1 %441, label %442, label %453, !dbg !2646

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2649
  br i1 %443, label %444, label %446, !dbg !2653

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2649
  store i8 39, i8* %445, align 1, !dbg !2649, !tbaa !1523
  br label %446, !dbg !2649

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2653
  call void @llvm.dbg.value(metadata i64 %447, metadata !2247, metadata !DIExpression()), !dbg !2295
  %448 = icmp ult i64 %447, %130, !dbg !2654
  br i1 %448, label %449, label %451, !dbg !2657

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2654
  store i8 39, i8* %450, align 1, !dbg !2654, !tbaa !1523
  br label %451, !dbg !2654

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %452, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 0, metadata !2254, metadata !DIExpression()), !dbg !2295
  br label %453, !dbg !2658

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2659
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8 %455, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %454, metadata !2247, metadata !DIExpression()), !dbg !2295
  %456 = icmp ult i64 %454, %130, !dbg !2660
  br i1 %456, label %457, label %459, !dbg !2663

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2660
  store i8 %431, i8* %458, align 1, !dbg !2660, !tbaa !1523
  br label %459, !dbg !2660

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %460, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %434, metadata !2246, metadata !DIExpression()), !dbg !2295
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2664
  %462 = load i8, i8* %461, align 1, !dbg !2664, !tbaa !1523
  call void @llvm.dbg.value(metadata i8 %462, metadata !2257, metadata !DIExpression()), !dbg !2387
  br label %366, !dbg !2665, !llvm.loop !2666

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2380
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2295
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2312
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2669
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2295
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2295
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2387
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2387
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2387
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %472, metadata !2264, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %471, metadata !2263, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %156, metadata !2262, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %470, metadata !2257, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %469, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %468, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %467, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %466, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %465, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %464, metadata !2246, metadata !DIExpression()), !dbg !2295
  br i1 %117, label %486, label %474, !dbg !2670

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2671
  %476 = zext i8 %475 to i64, !dbg !2671
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2672
  %478 = load i32, i32* %477, align 4, !dbg !2672, !tbaa !1483
  %479 = and i8 %470, 31, !dbg !2673
  %480 = zext i8 %479 to i32, !dbg !2673
  %481 = shl nuw i32 1, %480, !dbg !2674
  %482 = and i32 %478, %481, !dbg !2674
  %483 = icmp eq i32 %482, 0, !dbg !2674
  %484 = icmp eq i8 %156, 0, !dbg !2675
  %485 = and i1 %484, %483, !dbg !2676
  br i1 %485, label %526, label %488, !dbg !2676

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2675
  br i1 %487, label %526, label %488, !dbg !2677

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2678
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2295
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2312
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2669
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2316
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2317
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2387
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2387
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %496, metadata !2264, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %495, metadata !2257, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %494, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %493, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %492, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %491, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %490, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %489, metadata !2246, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.label(metadata !2292), !dbg !2679
  br i1 %109, label %498, label %629, !dbg !2680

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2263, metadata !DIExpression()), !dbg !2387
  %499 = and i8 %493, 1, !dbg !2682
  %500 = icmp eq i8 %499, 0, !dbg !2682
  %501 = and i1 %110, %500, !dbg !2682
  br i1 %501, label %502, label %518, !dbg !2682

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2684
  br i1 %503, label %504, label %506, !dbg !2688

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2684
  store i8 39, i8* %505, align 1, !dbg !2684, !tbaa !1523
  br label %506, !dbg !2684

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %507, metadata !2247, metadata !DIExpression()), !dbg !2295
  %508 = icmp ult i64 %507, %497, !dbg !2689
  br i1 %508, label %509, label %511, !dbg !2692

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2689
  store i8 36, i8* %510, align 1, !dbg !2689, !tbaa !1523
  br label %511, !dbg !2689

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %512, metadata !2247, metadata !DIExpression()), !dbg !2295
  %513 = icmp ult i64 %512, %497, !dbg !2693
  br i1 %513, label %514, label %516, !dbg !2696

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2693
  store i8 39, i8* %515, align 1, !dbg !2693, !tbaa !1523
  br label %516, !dbg !2693

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %517, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 1, metadata !2254, metadata !DIExpression()), !dbg !2295
  br label %518, !dbg !2697

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2387
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8 %520, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %519, metadata !2247, metadata !DIExpression()), !dbg !2295
  %521 = icmp ult i64 %519, %497, !dbg !2698
  br i1 %521, label %522, label %524, !dbg !2701

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2698
  store i8 92, i8* %523, align 1, !dbg !2698, !tbaa !1523
  br label %524, !dbg !2698

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %525, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %536, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %535, metadata !2264, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %534, metadata !2263, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %533, metadata !2257, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %532, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %531, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %530, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %529, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %528, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %527, metadata !2246, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.label(metadata !2293), !dbg !2702
  br label %553, !dbg !2703

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2678
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2295
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2312
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2669
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2316
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2317
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2706
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2387
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2387
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %535, metadata !2264, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %534, metadata !2263, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %533, metadata !2257, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 %532, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %531, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %530, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %529, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %528, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %527, metadata !2246, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.label(metadata !2293), !dbg !2702
  %537 = and i8 %531, 1, !dbg !2703
  %538 = icmp ne i8 %537, 0, !dbg !2703
  %539 = and i8 %534, 1, !dbg !2703
  %540 = icmp eq i8 %539, 0, !dbg !2703
  %541 = and i1 %538, %540, !dbg !2703
  br i1 %541, label %542, label %553, !dbg !2703

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2707
  br i1 %543, label %544, label %546, !dbg !2711

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2707
  store i8 39, i8* %545, align 1, !dbg !2707, !tbaa !1523
  br label %546, !dbg !2707

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %547, metadata !2247, metadata !DIExpression()), !dbg !2295
  %548 = icmp ult i64 %547, %536, !dbg !2712
  br i1 %548, label %549, label %551, !dbg !2715

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2712
  store i8 39, i8* %550, align 1, !dbg !2712, !tbaa !1523
  br label %551, !dbg !2712

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %552, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 0, metadata !2254, metadata !DIExpression()), !dbg !2295
  br label %553, !dbg !2716

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2387
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8 %562, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %561, metadata !2247, metadata !DIExpression()), !dbg !2295
  %563 = icmp ult i64 %561, %554, !dbg !2717
  br i1 %563, label %564, label %566, !dbg !2720

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2717
  store i8 %556, i8* %565, align 1, !dbg !2717, !tbaa !1523
  br label %566, !dbg !2717

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2720
  call void @llvm.dbg.value(metadata i64 %567, metadata !2247, metadata !DIExpression()), !dbg !2295
  %568 = and i8 %555, 1, !dbg !2721
  %569 = icmp eq i8 %568, 0, !dbg !2721
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2723
  call void @llvm.dbg.value(metadata i8 %570, metadata !2256, metadata !DIExpression()), !dbg !2295
  br label %571, !dbg !2724

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2678
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2295
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2312
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2669
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2316
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2295
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2318
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %578, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %577, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %576, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %575, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %574, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %573, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %572, metadata !2246, metadata !DIExpression()), !dbg !2295
  %580 = add i64 %572, 1, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %580, metadata !2246, metadata !DIExpression()), !dbg !2295
  br label %122, !dbg !2726, !llvm.loop !2727

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %127, metadata !2254, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %128, metadata !2255, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %129, metadata !2256, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  %583 = icmp eq i64 %124, 0, !dbg !2729
  %584 = and i1 %110, %583, !dbg !2731
  %585 = xor i1 %584, true, !dbg !2731
  %586 = or i1 %109, %585, !dbg !2731
  br i1 %586, label %587, label %629, !dbg !2731

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2732
  %589 = xor i1 %588, true, !dbg !2732
  %590 = and i8 %128, 1, !dbg !2734
  %591 = icmp eq i8 %590, 0, !dbg !2734
  %592 = or i1 %591, %589, !dbg !2732
  br i1 %592, label %602, label %593, !dbg !2732

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2735
  %595 = icmp eq i8 %594, 0, !dbg !2735
  br i1 %595, label %598, label %596, !dbg !2738

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %94, metadata !2244, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %95, metadata !2245, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %125, metadata !2248, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %582, metadata !2240, metadata !DIExpression()), !dbg !2295
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2739
  br label %645, !dbg !2740

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2741
  %600 = icmp ne i64 %125, 0, !dbg !2743
  %601 = and i1 %600, %599, !dbg !2744
  br i1 %601, label %26, label %602, !dbg !2744

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %130, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  %603 = icmp ne i8* %97, null, !dbg !2745
  %604 = and i1 %603, %109, !dbg !2747
  br i1 %604, label %605, label %620, !dbg !2747

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %124, metadata !2247, metadata !DIExpression()), !dbg !2295
  %606 = load i8, i8* %97, align 1, !dbg !2748, !tbaa !1523
  %607 = icmp eq i8 %606, 0, !dbg !2751
  br i1 %607, label %620, label %608, !dbg !2751

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2249, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %611, metadata !2247, metadata !DIExpression()), !dbg !2295
  %612 = icmp ult i64 %611, %130, !dbg !2752
  br i1 %612, label %613, label %615, !dbg !2755

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2752
  store i8 %609, i8* %614, align 1, !dbg !2752, !tbaa !1523
  br label %615, !dbg !2752

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %616, metadata !2247, metadata !DIExpression()), !dbg !2295
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %617, metadata !2249, metadata !DIExpression()), !dbg !2295
  %618 = load i8, i8* %617, align 1, !dbg !2748, !tbaa !1523
  %619 = icmp eq i8 %618, 0, !dbg !2751
  br i1 %619, label %620, label %608, !dbg !2751, !llvm.loop !2757

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2349
  call void @llvm.dbg.value(metadata i64 %621, metadata !2247, metadata !DIExpression()), !dbg !2295
  %622 = icmp ult i64 %621, %130, !dbg !2759
  br i1 %622, label %623, label %645, !dbg !2761

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2762
  store i8 0, i8* %624, align 1, !dbg !2763, !tbaa !1523
  br label %645, !dbg !2762

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %630, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.label(metadata !2294), !dbg !2764
  %627 = icmp eq i8 %101, 0, !dbg !2765
  %628 = select i1 %627, i32 2, i32 4, !dbg !2765
  br label %635, !dbg !2765

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2238, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %630, metadata !2240, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.label(metadata !2294), !dbg !2764
  %632 = icmp eq i32 %93, 2, !dbg !2767
  %633 = icmp eq i8 %101, 0, !dbg !2765
  %634 = select i1 %633, i32 2, i32 4, !dbg !2765
  br i1 %632, label %635, label %639, !dbg !2765

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2765

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2241, metadata !DIExpression()), !dbg !2295
  %643 = and i32 %5, -3, !dbg !2768
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2769
  br label %645, !dbg !2770

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2771
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2772 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2776, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 %1, metadata !2777, metadata !DIExpression()), !dbg !2780
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %3, metadata !2778, metadata !DIExpression()), !dbg !2780
  %4 = icmp eq i8* %3, %0, !dbg !2782
  br i1 %4, label %5, label %71, !dbg !2784

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2785
  call void @llvm.dbg.value(metadata i8* %6, metadata !2779, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %6, metadata !2786, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8* undef, metadata !2792, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 85, metadata !2793, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 84, metadata !2794, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 70, metadata !2795, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 45, metadata !2796, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 56, metadata !2797, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 0, metadata !2798, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 0, metadata !2799, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 0, metadata !2800, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 0, metadata !2801, metadata !DIExpression()), !dbg !2802
  %7 = load i8, i8* %6, align 1, !dbg !2805, !tbaa !1523
  %8 = and i8 %7, -33, !dbg !2805
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2805

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2807, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* undef, metadata !2812, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 84, metadata !2813, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 70, metadata !2814, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 45, metadata !2815, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 56, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2820, metadata !DIExpression()), !dbg !2821
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2825
  %11 = load i8, i8* %10, align 1, !dbg !2825, !tbaa !1523
  %12 = and i8 %11, -33, !dbg !2825
  %13 = icmp eq i8 %12, 84, !dbg !2825
  br i1 %13, label %14, label %68, !dbg !2825

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2827, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* undef, metadata !2832, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 70, metadata !2833, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 45, metadata !2834, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 56, metadata !2835, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2836, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2839, metadata !DIExpression()), !dbg !2840
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2844
  %16 = load i8, i8* %15, align 1, !dbg !2844, !tbaa !1523
  %17 = and i8 %16, -33, !dbg !2844
  %18 = icmp eq i8 %17, 70, !dbg !2844
  br i1 %18, label %19, label %68, !dbg !2844

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2846, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8* undef, metadata !2851, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8 45, metadata !2852, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8 56, metadata !2853, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8 0, metadata !2856, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8 0, metadata !2857, metadata !DIExpression()), !dbg !2858
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2862
  %21 = load i8, i8* %20, align 1, !dbg !2862, !tbaa !1523
  %22 = icmp eq i8 %21, 45, !dbg !2862
  br i1 %22, label %23, label %68, !dbg !2864

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2865, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* undef, metadata !2870, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 56, metadata !2871, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 0, metadata !2872, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 0, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 0, metadata !2874, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8 0, metadata !2875, metadata !DIExpression()), !dbg !2876
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2880
  %25 = load i8, i8* %24, align 1, !dbg !2880, !tbaa !1523
  %26 = icmp eq i8 %25, 56, !dbg !2880
  br i1 %26, label %27, label %68, !dbg !2882

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2883, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8* undef, metadata !2888, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 0, metadata !2889, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 0, metadata !2890, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 0, metadata !2891, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2893
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2897
  %29 = load i8, i8* %28, align 1, !dbg !2897, !tbaa !1523
  %30 = icmp eq i8 %29, 0, !dbg !2897
  br i1 %30, label %31, label %68, !dbg !2899

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2900, !tbaa !1523
  %33 = icmp eq i8 %32, 96, !dbg !2901
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.90, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.91, i64 0, i64 0), !dbg !2900
  br label %71, !dbg !2902

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2807, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8* undef, metadata !2812, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 66, metadata !2813, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 49, metadata !2814, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 56, metadata !2815, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 48, metadata !2816, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 51, metadata !2817, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 48, metadata !2818, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 0, metadata !2819, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8 0, metadata !2820, metadata !DIExpression()), !dbg !2903
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2907
  %37 = load i8, i8* %36, align 1, !dbg !2907, !tbaa !1523
  %38 = and i8 %37, -33, !dbg !2907
  %39 = icmp eq i8 %38, 66, !dbg !2907
  br i1 %39, label %40, label %68, !dbg !2907

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2827, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* undef, metadata !2832, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 49, metadata !2833, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 56, metadata !2834, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 48, metadata !2835, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 51, metadata !2836, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 48, metadata !2837, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 0, metadata !2838, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 0, metadata !2839, metadata !DIExpression()), !dbg !2908
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2910
  %42 = load i8, i8* %41, align 1, !dbg !2910, !tbaa !1523
  %43 = icmp eq i8 %42, 49, !dbg !2910
  br i1 %43, label %44, label %68, !dbg !2911

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2846, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* undef, metadata !2851, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 56, metadata !2852, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 48, metadata !2853, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 51, metadata !2854, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 48, metadata !2855, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 0, metadata !2856, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 0, metadata !2857, metadata !DIExpression()), !dbg !2912
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2914
  %46 = load i8, i8* %45, align 1, !dbg !2914, !tbaa !1523
  %47 = icmp eq i8 %46, 56, !dbg !2914
  br i1 %47, label %48, label %68, !dbg !2915

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2865, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8* undef, metadata !2870, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 48, metadata !2871, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 51, metadata !2872, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 48, metadata !2873, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 0, metadata !2874, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 0, metadata !2875, metadata !DIExpression()), !dbg !2916
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2918
  %50 = load i8, i8* %49, align 1, !dbg !2918, !tbaa !1523
  %51 = icmp eq i8 %50, 48, !dbg !2918
  br i1 %51, label %52, label %68, !dbg !2919

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2883, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8* undef, metadata !2888, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 51, metadata !2889, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 48, metadata !2890, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 0, metadata !2891, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2920
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2922
  %54 = load i8, i8* %53, align 1, !dbg !2922, !tbaa !1523
  %55 = icmp eq i8 %54, 51, !dbg !2922
  br i1 %55, label %56, label %68, !dbg !2923

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2924, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* undef, metadata !2929, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 48, metadata !2930, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 0, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 0, metadata !2932, metadata !DIExpression()), !dbg !2933
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2937
  %58 = load i8, i8* %57, align 1, !dbg !2937, !tbaa !1523
  %59 = icmp eq i8 %58, 48, !dbg !2937
  br i1 %59, label %60, label %68, !dbg !2939

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2940, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* undef, metadata !2945, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 0, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 0, metadata !2947, metadata !DIExpression()), !dbg !2948
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2952
  %62 = load i8, i8* %61, align 1, !dbg !2952, !tbaa !1523
  %63 = icmp eq i8 %62, 0, !dbg !2952
  br i1 %63, label %64, label %68, !dbg !2954

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2955, !tbaa !1523
  %66 = icmp eq i8 %65, 96, !dbg !2956
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.92, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.93, i64 0, i64 0), !dbg !2955
  br label %71, !dbg !2957

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2958
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !2959
  br label %71, !dbg !2960

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2780
  ret i8* %72, !dbg !2961
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !496 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !500 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2962 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2968, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()) #18, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()) #18, !dbg !2983
  call void @llvm.dbg.value(metadata i64* null, metadata !2976, metadata !DIExpression()) #18, !dbg !2983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2977, metadata !DIExpression()) #18, !dbg !2983
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2985
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2985
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2978, metadata !DIExpression()) #18, !dbg !2983
  %6 = tail call i32* @__errno_location() #24, !dbg !2986
  %7 = load i32, i32* %6, align 4, !dbg !2986, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %7, metadata !2979, metadata !DIExpression()) #18, !dbg !2983
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2987
  %9 = load i32, i32* %8, align 4, !dbg !2987, !tbaa !2180
  %10 = or i32 %9, 1, !dbg !2988
  call void @llvm.dbg.value(metadata i32 %10, metadata !2980, metadata !DIExpression()) #18, !dbg !2983
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2989
  %12 = load i32, i32* %11, align 8, !dbg !2989, !tbaa !2130
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2990
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2991
  %15 = load i8*, i8** %14, align 8, !dbg !2991, !tbaa !2203
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2992
  %17 = load i8*, i8** %16, align 8, !dbg !2992, !tbaa !2206
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2993
  %19 = add i64 %18, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %19, metadata !2981, metadata !DIExpression()) #18, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %19, metadata !2995, metadata !DIExpression()) #18, !dbg !3000
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %20, metadata !2982, metadata !DIExpression()) #18, !dbg !2983
  %21 = load i32, i32* %11, align 8, !dbg !3003, !tbaa !2130
  %22 = load i8*, i8** %14, align 8, !dbg !3004, !tbaa !2203
  %23 = load i8*, i8** %16, align 8, !dbg !3005, !tbaa !2206
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !3006
  store i32 %7, i32* %6, align 4, !dbg !3007, !tbaa !1483
  ret i8* %20, !dbg !3008
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2971 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64* %2, metadata !2976, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2977, metadata !DIExpression()), !dbg !3009
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3010
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3010
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2978, metadata !DIExpression()), !dbg !3009
  %7 = tail call i32* @__errno_location() #24, !dbg !3011
  %8 = load i32, i32* %7, align 4, !dbg !3011, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %8, metadata !2979, metadata !DIExpression()), !dbg !3009
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3012
  %10 = load i32, i32* %9, align 4, !dbg !3012, !tbaa !2180
  %11 = icmp ne i64* %2, null, !dbg !3013
  %12 = xor i1 %11, true, !dbg !3013
  %13 = zext i1 %12 to i32, !dbg !3013
  %14 = or i32 %10, %13, !dbg !3014
  call void @llvm.dbg.value(metadata i32 %14, metadata !2980, metadata !DIExpression()), !dbg !3009
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3015
  %16 = load i32, i32* %15, align 8, !dbg !3015, !tbaa !2130
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3016
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3017
  %19 = load i8*, i8** %18, align 8, !dbg !3017, !tbaa !2203
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3018
  %21 = load i8*, i8** %20, align 8, !dbg !3018, !tbaa !2206
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3019
  %23 = add i64 %22, 1, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %23, metadata !2981, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %23, metadata !2995, metadata !DIExpression()) #18, !dbg !3021
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %24, metadata !2982, metadata !DIExpression()), !dbg !3009
  %25 = load i32, i32* %15, align 8, !dbg !3024, !tbaa !2130
  %26 = load i8*, i8** %18, align 8, !dbg !3025, !tbaa !2203
  %27 = load i8*, i8** %20, align 8, !dbg !3026, !tbaa !2206
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3027
  store i32 %8, i32* %7, align 4, !dbg !3028, !tbaa !1483
  br i1 %11, label %29, label %30, !dbg !3029

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3030, !tbaa !3032
  br label %30, !dbg !3033

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3035 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3039, !tbaa !1395
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 1, metadata !3038, metadata !DIExpression()), !dbg !3040
  %2 = load i32, i32* @nslots, align 4, !dbg !3041, !tbaa !1483
  %3 = icmp sgt i32 %2, 1, !dbg !3044
  br i1 %3, label %4, label %12, !dbg !3045

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3038, metadata !DIExpression()), !dbg !3040
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3046
  %7 = load i8*, i8** %6, align 8, !dbg !3046, !tbaa !3047
  tail call void @free(i8* %7) #18, !dbg !3049
  %8 = add nuw nsw i64 %5, 1, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %8, metadata !3038, metadata !DIExpression()), !dbg !3040
  %9 = load i32, i32* @nslots, align 4, !dbg !3041, !tbaa !1483
  %10 = sext i32 %9 to i64, !dbg !3044
  %11 = icmp slt i64 %8, %10, !dbg !3044
  br i1 %11, label %4, label %12, !dbg !3045, !llvm.loop !3051

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3053
  %14 = load i8*, i8** %13, align 8, !dbg !3053, !tbaa !3047
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3055
  br i1 %15, label %17, label %16, !dbg !3056

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !3057
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3059, !tbaa !3060
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3061, !tbaa !3047
  br label %17, !dbg !3062

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3063
  br i1 %18, label %21, label %19, !dbg !3065

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3066
  tail call void @free(i8* %20) #18, !dbg !3068
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3069, !tbaa !1395
  br label %21, !dbg !3070

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3071, !tbaa !1483
  ret void, !dbg !3072
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3073 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8* %1, metadata !3076, metadata !DIExpression()), !dbg !3077
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3078
  ret i8* %3, !dbg !3079
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3080 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3084, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8* %1, metadata !3085, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %2, metadata !3086, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3087, metadata !DIExpression()), !dbg !3099
  %5 = tail call i32* @__errno_location() #24, !dbg !3100
  %6 = load i32, i32* %5, align 4, !dbg !3100, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %6, metadata !3088, metadata !DIExpression()), !dbg !3099
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3101, !tbaa !1395
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3089, metadata !DIExpression()), !dbg !3099
  %8 = icmp slt i32 %0, 0, !dbg !3102
  br i1 %8, label %9, label %10, !dbg !3104

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3105
  unreachable, !dbg !3105

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3106, !tbaa !1483
  %12 = icmp sgt i32 %11, %0, !dbg !3107
  br i1 %12, label %34, label %13, !dbg !3108

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3109
  call void @llvm.dbg.value(metadata i1 %14, metadata !3090, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3093, metadata !DIExpression()), !dbg !3110
  %15 = icmp eq i32 %0, 2147483647, !dbg !3111
  br i1 %15, label %16, label %17, !dbg !3113

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3114
  unreachable, !dbg !3114

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3115
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3115
  %20 = add nuw nsw i32 %0, 1, !dbg !3116
  %21 = sext i32 %20 to i64, !dbg !3117
  %22 = shl nuw nsw i64 %21, 4, !dbg !3118
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !3119
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3119
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3089, metadata !DIExpression()), !dbg !3099
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3120, !tbaa !1395
  br i1 %14, label %25, label %26, !dbg !3121

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3122, !tbaa.struct !3124
  br label %26, !dbg !3125

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3126, !tbaa !1483
  %28 = sext i32 %27 to i64, !dbg !3127
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3127
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3128
  %31 = sub nsw i32 %20, %27, !dbg !3129
  %32 = sext i32 %31 to i64, !dbg !3130
  %33 = shl nsw i64 %32, 4, !dbg !3131
  call void @llvm.dbg.value(metadata i8* %30, metadata !2528, metadata !DIExpression()) #18, !dbg !3132
  call void @llvm.dbg.value(metadata i32 0, metadata !2534, metadata !DIExpression()) #18, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %33, metadata !2535, metadata !DIExpression()) #18, !dbg !3132
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !3134
  store i32 %20, i32* @nslots, align 4, !dbg !3135, !tbaa !1483
  br label %34, !dbg !3136

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3099
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3089, metadata !DIExpression()), !dbg !3099
  %36 = zext i32 %0 to i64, !dbg !3137
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3138
  %38 = load i64, i64* %37, align 8, !dbg !3138, !tbaa !3060
  call void @llvm.dbg.value(metadata i64 %38, metadata !3094, metadata !DIExpression()), !dbg !3139
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3140
  %40 = load i8*, i8** %39, align 8, !dbg !3140, !tbaa !3047
  call void @llvm.dbg.value(metadata i8* %40, metadata !3096, metadata !DIExpression()), !dbg !3139
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3141
  %42 = load i32, i32* %41, align 4, !dbg !3141, !tbaa !2180
  %43 = or i32 %42, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i32 %43, metadata !3097, metadata !DIExpression()), !dbg !3139
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3143
  %45 = load i32, i32* %44, align 8, !dbg !3143, !tbaa !2130
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3144
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3145
  %48 = load i8*, i8** %47, align 8, !dbg !3145, !tbaa !2203
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3146
  %50 = load i8*, i8** %49, align 8, !dbg !3146, !tbaa !2206
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %51, metadata !3098, metadata !DIExpression()), !dbg !3139
  %52 = icmp ugt i64 %38, %51, !dbg !3148
  br i1 %52, label %63, label %53, !dbg !3150

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %54, metadata !3094, metadata !DIExpression()), !dbg !3139
  store i64 %54, i64* %37, align 8, !dbg !3153, !tbaa !3060
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3154
  br i1 %55, label %57, label %56, !dbg !3156

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !3157
  br label %57, !dbg !3157

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2995, metadata !DIExpression()) #18, !dbg !3158
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %58, metadata !3096, metadata !DIExpression()), !dbg !3139
  store i8* %58, i8** %39, align 8, !dbg !3161, !tbaa !3047
  %59 = load i32, i32* %44, align 8, !dbg !3162, !tbaa !2130
  %60 = load i8*, i8** %47, align 8, !dbg !3163, !tbaa !2203
  %61 = load i8*, i8** %49, align 8, !dbg !3164, !tbaa !2206
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3165
  br label %63, !dbg !3166

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3139
  call void @llvm.dbg.value(metadata i8* %64, metadata !3096, metadata !DIExpression()), !dbg !3139
  store i32 %6, i32* %5, align 4, !dbg !3167, !tbaa !1483
  ret i8* %64, !dbg !3168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %1, metadata !3174, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %2, metadata !3175, metadata !DIExpression()), !dbg !3176
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3177
  ret i8* %4, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3075, metadata !DIExpression()) #18, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %0, metadata !3076, metadata !DIExpression()) #18, !dbg !3183
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !3185
  ret i8* %2, !dbg !3186
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3187 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3191, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3192, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 0, metadata !3173, metadata !DIExpression()) #18, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %0, metadata !3174, metadata !DIExpression()) #18, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %1, metadata !3175, metadata !DIExpression()) #18, !dbg !3194
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !3196
  ret i8* %3, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3198 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3202, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %1, metadata !3203, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8* %2, metadata !3204, metadata !DIExpression()), !dbg !3206
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3207
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3207
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3205, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %1, metadata !3209, metadata !DIExpression()) #18, !dbg !3215
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3214, metadata !DIExpression()) #18, !dbg !3217
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3217, !alias.scope !3218
  %6 = icmp eq i32 %1, 10, !dbg !3221
  br i1 %6, label %7, label %8, !dbg !3223

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3224, !noalias !3218
  unreachable, !dbg !3224

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3225
  store i32 %1, i32* %9, align 8, !dbg !3226, !tbaa !2130, !alias.scope !3218
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3228
  ret i8* %10, !dbg !3229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3230 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3234, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 %1, metadata !3235, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8* %2, metadata !3236, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %3, metadata !3237, metadata !DIExpression()), !dbg !3239
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3240
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3240
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3238, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %1, metadata !3209, metadata !DIExpression()) #18, !dbg !3242
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3214, metadata !DIExpression()) #18, !dbg !3244
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !3244, !alias.scope !3245
  %7 = icmp eq i32 %1, 10, !dbg !3248
  br i1 %7, label %8, label %9, !dbg !3249

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3250, !noalias !3245
  unreachable, !dbg !3250

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3251
  store i32 %1, i32* %10, align 8, !dbg !3252, !tbaa !2130, !alias.scope !3245
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3253
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3254
  ret i8* %11, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3256 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3214, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3205, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %0, metadata !3260, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8* %1, metadata !3261, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32 0, metadata !3202, metadata !DIExpression()) #18, !dbg !3267
  call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()) #18, !dbg !3267
  call void @llvm.dbg.value(metadata i8* %1, metadata !3204, metadata !DIExpression()) #18, !dbg !3267
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3268
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3268
  call void @llvm.dbg.value(metadata i32 %0, metadata !3209, metadata !DIExpression()) #18, !dbg !3269
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !3262, !alias.scope !3270
  %5 = icmp eq i32 %0, 10, !dbg !3273
  br i1 %5, label %6, label %7, !dbg !3274

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !3275, !noalias !3270
  unreachable, !dbg !3275

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3276
  store i32 %0, i32* %8, align 8, !dbg !3277, !tbaa !2130, !alias.scope !3270
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3278
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3279
  ret i8* %9, !dbg !3280
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3281 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3214, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3238, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !3286, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %2, metadata !3287, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !3234, metadata !DIExpression()) #18, !dbg !3293
  call void @llvm.dbg.value(metadata i32 %0, metadata !3235, metadata !DIExpression()) #18, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %1, metadata !3236, metadata !DIExpression()) #18, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %2, metadata !3237, metadata !DIExpression()) #18, !dbg !3293
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3294
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3294
  call void @llvm.dbg.value(metadata i32 %0, metadata !3209, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3288, !alias.scope !3296
  %6 = icmp eq i32 %0, 10, !dbg !3299
  br i1 %6, label %7, label %8, !dbg !3300

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3301, !noalias !3296
  unreachable, !dbg !3301

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3302
  store i32 %0, i32* %9, align 8, !dbg !3303, !tbaa !2130, !alias.scope !3296
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !3304
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3305
  ret i8* %10, !dbg !3306
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3307 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8 %2, metadata !3313, metadata !DIExpression()), !dbg !3315
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3316
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3316
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3318, !tbaa.struct !3319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2148, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8 %2, metadata !2149, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 1, metadata !2150, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8 %2, metadata !2151, metadata !DIExpression()), !dbg !3320
  %6 = lshr i8 %2, 5, !dbg !3322
  %7 = zext i8 %6 to i64, !dbg !3322
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3323
  call void @llvm.dbg.value(metadata i32* %8, metadata !2152, metadata !DIExpression()), !dbg !3320
  %9 = and i8 %2, 31, !dbg !3324
  %10 = zext i8 %9 to i32, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %10, metadata !2153, metadata !DIExpression()), !dbg !3320
  %11 = load i32, i32* %8, align 4, !dbg !3325, !tbaa !1483
  %12 = lshr i32 %11, %10, !dbg !3326
  %13 = and i32 %12, 1, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %13, metadata !2154, metadata !DIExpression()), !dbg !3320
  %14 = xor i32 %13, 1, !dbg !3328
  %15 = shl i32 %14, %10, !dbg !3329
  %16 = xor i32 %15, %11, !dbg !3330
  store i32 %16, i32* %8, align 4, !dbg !3330, !tbaa !1483
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3331
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3332
  ret i8* %17, !dbg !3333
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3334 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3314, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8* %0, metadata !3338, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i8 %1, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()) #18, !dbg !3343
  call void @llvm.dbg.value(metadata i64 -1, metadata !3312, metadata !DIExpression()) #18, !dbg !3343
  call void @llvm.dbg.value(metadata i8 %1, metadata !3313, metadata !DIExpression()) #18, !dbg !3343
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3344
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3344
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3345, !tbaa.struct !3319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2148, metadata !DIExpression()) #18, !dbg !3346
  call void @llvm.dbg.value(metadata i8 %1, metadata !2149, metadata !DIExpression()) #18, !dbg !3346
  call void @llvm.dbg.value(metadata i32 1, metadata !2150, metadata !DIExpression()) #18, !dbg !3346
  call void @llvm.dbg.value(metadata i8 %1, metadata !2151, metadata !DIExpression()) #18, !dbg !3346
  %5 = lshr i8 %1, 5, !dbg !3348
  %6 = zext i8 %5 to i64, !dbg !3348
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3349
  call void @llvm.dbg.value(metadata i32* %7, metadata !2152, metadata !DIExpression()) #18, !dbg !3346
  %8 = and i8 %1, 31, !dbg !3350
  %9 = zext i8 %8 to i32, !dbg !3350
  call void @llvm.dbg.value(metadata i32 %9, metadata !2153, metadata !DIExpression()) #18, !dbg !3346
  %10 = load i32, i32* %7, align 4, !dbg !3351, !tbaa !1483
  %11 = lshr i32 %10, %9, !dbg !3352
  %12 = and i32 %11, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i32 %12, metadata !2154, metadata !DIExpression()) #18, !dbg !3346
  %13 = xor i32 %12, 1, !dbg !3354
  %14 = shl i32 %13, %9, !dbg !3355
  %15 = xor i32 %14, %10, !dbg !3356
  store i32 %15, i32* %7, align 4, !dbg !3356, !tbaa !1483
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3357
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3358
  ret i8* %16, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3360 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3314, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %0, metadata !3362, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %0, metadata !3338, metadata !DIExpression()) #18, !dbg !3367
  call void @llvm.dbg.value(metadata i8 58, metadata !3339, metadata !DIExpression()) #18, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()) #18, !dbg !3368
  call void @llvm.dbg.value(metadata i64 -1, metadata !3312, metadata !DIExpression()) #18, !dbg !3368
  call void @llvm.dbg.value(metadata i8 58, metadata !3313, metadata !DIExpression()) #18, !dbg !3368
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3370, !tbaa.struct !3319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2148, metadata !DIExpression()) #18, !dbg !3371
  call void @llvm.dbg.value(metadata i8 58, metadata !2149, metadata !DIExpression()) #18, !dbg !3371
  call void @llvm.dbg.value(metadata i32 1, metadata !2150, metadata !DIExpression()) #18, !dbg !3371
  call void @llvm.dbg.value(metadata i8 58, metadata !2151, metadata !DIExpression()) #18, !dbg !3371
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3373
  call void @llvm.dbg.value(metadata i32* %4, metadata !2152, metadata !DIExpression()) #18, !dbg !3371
  call void @llvm.dbg.value(metadata i32 26, metadata !2153, metadata !DIExpression()) #18, !dbg !3371
  %5 = load i32, i32* %4, align 4, !dbg !3374, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %5, metadata !2154, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3371
  %6 = or i32 %5, 67108864, !dbg !3375
  store i32 %6, i32* %4, align 4, !dbg !3375, !tbaa !1483
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !3376
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3377
  ret i8* %7, !dbg !3378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3379 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3314, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %1, metadata !3382, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()) #18, !dbg !3386
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()) #18, !dbg !3386
  call void @llvm.dbg.value(metadata i8 58, metadata !3313, metadata !DIExpression()) #18, !dbg !3386
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3387
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3387
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3388, !tbaa.struct !3319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2148, metadata !DIExpression()) #18, !dbg !3389
  call void @llvm.dbg.value(metadata i8 58, metadata !2149, metadata !DIExpression()) #18, !dbg !3389
  call void @llvm.dbg.value(metadata i32 1, metadata !2150, metadata !DIExpression()) #18, !dbg !3389
  call void @llvm.dbg.value(metadata i8 58, metadata !2151, metadata !DIExpression()) #18, !dbg !3389
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3391
  call void @llvm.dbg.value(metadata i32* %5, metadata !2152, metadata !DIExpression()) #18, !dbg !3389
  call void @llvm.dbg.value(metadata i32 26, metadata !2153, metadata !DIExpression()) #18, !dbg !3389
  %6 = load i32, i32* %5, align 4, !dbg !3392, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %6, metadata !2154, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3389
  %7 = or i32 %6, 67108864, !dbg !3393
  store i32 %7, i32* %5, align 4, !dbg !3393, !tbaa !1483
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !3394
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3395
  ret i8* %8, !dbg !3396
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3397 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3214, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %0, metadata !3399, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i32 %1, metadata !3400, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8* %2, metadata !3401, metadata !DIExpression()), !dbg !3405
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3406
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3406
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3402, metadata !DIExpression()), !dbg !3407
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3408
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %1, metadata !3209, metadata !DIExpression()) #18, !dbg !3409
  call void @llvm.dbg.value(metadata i32 0, metadata !3214, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3409
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3403, !alias.scope !3410
  %8 = icmp eq i32 %1, 10, !dbg !3413
  br i1 %8, label %9, label %10, !dbg !3414

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3415, !noalias !3410
  unreachable, !dbg !3415

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3214, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3409
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3408
  store i32 %1, i32* %11, align 8, !dbg !3408, !tbaa.struct !3319
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3408
  %13 = bitcast i32* %12 to i8*, !dbg !3408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3408, !tbaa.struct !3319
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2148, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8 58, metadata !2149, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 1, metadata !2150, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8 58, metadata !2151, metadata !DIExpression()), !dbg !3416
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3418
  call void @llvm.dbg.value(metadata i32* %14, metadata !2152, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 26, metadata !2153, metadata !DIExpression()), !dbg !3416
  %15 = load i32, i32* %14, align 4, !dbg !3419, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %15, metadata !2154, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3416
  %16 = or i32 %15, 67108864, !dbg !3420
  store i32 %16, i32* %14, align 4, !dbg !3420, !tbaa !1483
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3421
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3422
  ret i8* %17, !dbg !3423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3424 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3432, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %0, metadata !3428, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %1, metadata !3429, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %2, metadata !3430, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* %3, metadata !3431, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i32 %0, metadata !3437, metadata !DIExpression()) #18, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %1, metadata !3438, metadata !DIExpression()) #18, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %2, metadata !3439, metadata !DIExpression()) #18, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %3, metadata !3440, metadata !DIExpression()) #18, !dbg !3445
  call void @llvm.dbg.value(metadata i64 -1, metadata !3441, metadata !DIExpression()) #18, !dbg !3445
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3446
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3447, !tbaa.struct !3319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2187, metadata !DIExpression()) #18, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %1, metadata !2188, metadata !DIExpression()) #18, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %2, metadata !2189, metadata !DIExpression()) #18, !dbg !3448
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2187, metadata !DIExpression()) #18, !dbg !3448
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3450
  store i32 10, i32* %7, align 8, !dbg !3451, !tbaa !2130
  %8 = icmp ne i8* %1, null, !dbg !3452
  %9 = icmp ne i8* %2, null, !dbg !3453
  %10 = and i1 %8, %9, !dbg !3454
  br i1 %10, label %12, label %11, !dbg !3454

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3455
  unreachable, !dbg !3455

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3456
  store i8* %1, i8** %13, align 8, !dbg !3457, !tbaa !2203
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3458
  store i8* %2, i8** %14, align 8, !dbg !3459, !tbaa !2206
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3460
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3461
  ret i8* %15, !dbg !3462
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3433 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3437, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %1, metadata !3438, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %2, metadata !3439, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %3, metadata !3440, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %4, metadata !3441, metadata !DIExpression()), !dbg !3463
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3464
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3432, metadata !DIExpression()), !dbg !3465
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3466, !tbaa.struct !3319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2187, metadata !DIExpression()) #18, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %1, metadata !2188, metadata !DIExpression()) #18, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %2, metadata !2189, metadata !DIExpression()) #18, !dbg !3467
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2187, metadata !DIExpression()) #18, !dbg !3467
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3469
  store i32 10, i32* %8, align 8, !dbg !3470, !tbaa !2130
  %9 = icmp ne i8* %1, null, !dbg !3471
  %10 = icmp ne i8* %2, null, !dbg !3472
  %11 = and i1 %9, %10, !dbg !3473
  br i1 %11, label %13, label %12, !dbg !3473

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3474
  unreachable, !dbg !3474

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3475
  store i8* %1, i8** %14, align 8, !dbg !3476, !tbaa !2203
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3477
  store i8* %2, i8** %15, align 8, !dbg !3478, !tbaa !2206
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3479
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3480
  ret i8* %16, !dbg !3481
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3482 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3432, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* %0, metadata !3486, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8* %1, metadata !3487, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8* %2, metadata !3488, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()) #18, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %0, metadata !3429, metadata !DIExpression()) #18, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %1, metadata !3430, metadata !DIExpression()) #18, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %2, metadata !3431, metadata !DIExpression()) #18, !dbg !3493
  call void @llvm.dbg.value(metadata i32 0, metadata !3437, metadata !DIExpression()) #18, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()) #18, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %1, metadata !3439, metadata !DIExpression()) #18, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %2, metadata !3440, metadata !DIExpression()) #18, !dbg !3494
  call void @llvm.dbg.value(metadata i64 -1, metadata !3441, metadata !DIExpression()) #18, !dbg !3494
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3495
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3495
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3496, !tbaa.struct !3319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2187, metadata !DIExpression()) #18, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %0, metadata !2188, metadata !DIExpression()) #18, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %1, metadata !2189, metadata !DIExpression()) #18, !dbg !3497
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2187, metadata !DIExpression()) #18, !dbg !3497
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3499
  store i32 10, i32* %6, align 8, !dbg !3500, !tbaa !2130
  %7 = icmp ne i8* %0, null, !dbg !3501
  %8 = icmp ne i8* %1, null, !dbg !3502
  %9 = and i1 %7, %8, !dbg !3503
  br i1 %9, label %11, label %10, !dbg !3503

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3504
  unreachable, !dbg !3504

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3505
  store i8* %0, i8** %12, align 8, !dbg !3506, !tbaa !2203
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3507
  store i8* %1, i8** %13, align 8, !dbg !3508, !tbaa !2206
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3509
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3510
  ret i8* %14, !dbg !3511
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3512 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3432, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8* %0, metadata !3516, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %1, metadata !3517, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %2, metadata !3518, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %3, metadata !3519, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 0, metadata !3437, metadata !DIExpression()) #18, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()) #18, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %1, metadata !3439, metadata !DIExpression()) #18, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %2, metadata !3440, metadata !DIExpression()) #18, !dbg !3523
  call void @llvm.dbg.value(metadata i64 %3, metadata !3441, metadata !DIExpression()) #18, !dbg !3523
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3524
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3525, !tbaa.struct !3319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2187, metadata !DIExpression()) #18, !dbg !3526
  call void @llvm.dbg.value(metadata i8* %0, metadata !2188, metadata !DIExpression()) #18, !dbg !3526
  call void @llvm.dbg.value(metadata i8* %1, metadata !2189, metadata !DIExpression()) #18, !dbg !3526
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2187, metadata !DIExpression()) #18, !dbg !3526
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3528
  store i32 10, i32* %7, align 8, !dbg !3529, !tbaa !2130
  %8 = icmp ne i8* %0, null, !dbg !3530
  %9 = icmp ne i8* %1, null, !dbg !3531
  %10 = and i1 %8, %9, !dbg !3532
  br i1 %10, label %12, label %11, !dbg !3532

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3533
  unreachable, !dbg !3533

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3534
  store i8* %0, i8** %13, align 8, !dbg !3535, !tbaa !2203
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3536
  store i8* %1, i8** %14, align 8, !dbg !3537, !tbaa !2206
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3538
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3539
  ret i8* %15, !dbg !3540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3541 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3545, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8* %1, metadata !3546, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %2, metadata !3547, metadata !DIExpression()), !dbg !3548
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3549
  ret i8* %4, !dbg !3550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3555, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 %1, metadata !3556, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i32 0, metadata !3545, metadata !DIExpression()) #18, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %0, metadata !3546, metadata !DIExpression()) #18, !dbg !3558
  call void @llvm.dbg.value(metadata i64 %1, metadata !3547, metadata !DIExpression()) #18, !dbg !3558
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3560
  ret i8* %3, !dbg !3561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3562 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3566, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8* %1, metadata !3567, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %0, metadata !3545, metadata !DIExpression()) #18, !dbg !3569
  call void @llvm.dbg.value(metadata i8* %1, metadata !3546, metadata !DIExpression()) #18, !dbg !3569
  call void @llvm.dbg.value(metadata i64 -1, metadata !3547, metadata !DIExpression()) #18, !dbg !3569
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3571
  ret i8* %3, !dbg !3572
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3573 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3575, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 0, metadata !3566, metadata !DIExpression()) #18, !dbg !3577
  call void @llvm.dbg.value(metadata i8* %0, metadata !3567, metadata !DIExpression()) #18, !dbg !3577
  call void @llvm.dbg.value(metadata i32 0, metadata !3545, metadata !DIExpression()) #18, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %0, metadata !3546, metadata !DIExpression()) #18, !dbg !3579
  call void @llvm.dbg.value(metadata i64 -1, metadata !3547, metadata !DIExpression()) #18, !dbg !3579
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3581
  ret i8* %2, !dbg !3582
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @parse_user_spec(i8* %0, i32* nocapture %1, i32* %2, i8** %3, i8** %4) local_unnamed_addr #8 !dbg !3583 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32* %1, metadata !3588, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32* %2, metadata !3589, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8** %3, metadata !3590, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8** %4, metadata !3591, metadata !DIExpression()), !dbg !3597
  %6 = icmp eq i32* %2, null, !dbg !3598
  br i1 %6, label %9, label %7, !dbg !3598

7:                                                ; preds = %5
  %8 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 58) #21, !dbg !3599
  br label %9, !dbg !3598

9:                                                ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !3598
  call void @llvm.dbg.value(metadata i8* %10, metadata !3592, metadata !DIExpression()), !dbg !3597
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !3600
  call void @llvm.dbg.value(metadata i8* %11, metadata !3593, metadata !DIExpression()), !dbg !3597
  %12 = icmp ne i32* %2, null, !dbg !3601
  %13 = icmp eq i8* %10, null, !dbg !3602
  %14 = and i1 %12, %13, !dbg !3603
  %15 = icmp ne i8* %11, null, !dbg !3604
  %16 = and i1 %14, %15, !dbg !3603
  br i1 %16, label %17, label %24, !dbg !3603

17:                                               ; preds = %9
  %18 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 46) #21, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %18, metadata !3594, metadata !DIExpression()), !dbg !3606
  %19 = icmp eq i8* %18, null, !dbg !3607
  br i1 %19, label %24, label %20, !dbg !3609

20:                                               ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !3610
  %22 = icmp eq i8* %21, null, !dbg !3610
  %23 = select i1 %22, i8* null, i8* %11, !dbg !3611
  ret i8* %23, !dbg !3611

24:                                               ; preds = %17, %9
  call void @llvm.dbg.value(metadata i8* %11, metadata !3593, metadata !DIExpression()), !dbg !3597
  ret i8* %11, !dbg !3612
}

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8* %0, i8* %1, i32* nocapture %2, i32* %3, i8** %4, i8** %5) unnamed_addr #8 !dbg !610 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* %1, metadata !617, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32* %2, metadata !618, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32* %3, metadata !619, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8** %4, metadata !620, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8** %5, metadata !621, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* null, metadata !627, metadata !DIExpression()), !dbg !3613
  %10 = load i32, i32* %2, align 4, !dbg !3614, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %10, metadata !628, metadata !DIExpression()), !dbg !3613
  %11 = icmp ne i32* %3, null, !dbg !3615
  br i1 %11, label %12, label %14, !dbg !3615

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3616, !tbaa !1483
  br label %14, !dbg !3615

14:                                               ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3615
  call void @llvm.dbg.value(metadata i32 %15, metadata !629, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* null, metadata !622, metadata !DIExpression()), !dbg !3613
  %16 = icmp ne i8** %4, null, !dbg !3617
  br i1 %16, label %17, label %18, !dbg !3619

17:                                               ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3620, !tbaa !1395
  br label %18, !dbg !3621

18:                                               ; preds = %17, %14
  %19 = icmp ne i8** %5, null, !dbg !3622
  br i1 %19, label %20, label %21, !dbg !3624

20:                                               ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3625, !tbaa !1395
  br label %21, !dbg !3626

21:                                               ; preds = %20, %18
  call void @llvm.dbg.value(metadata i8* null, metadata !625, metadata !DIExpression()), !dbg !3613
  %22 = icmp eq i8* %1, null, !dbg !3627
  br i1 %22, label %23, label %28, !dbg !3628

23:                                               ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3629, !tbaa !1523
  %25 = icmp eq i8 %24, 0, !dbg !3629
  br i1 %25, label %137, label %26, !dbg !3632

26:                                               ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #18, !dbg !3633
  call void @llvm.dbg.value(metadata i8* %27, metadata !625, metadata !DIExpression()), !dbg !3613
  br label %43, !dbg !3634

28:                                               ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3635
  %30 = ptrtoint i8* %0 to i64, !dbg !3635
  %31 = sub i64 %29, %30, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %31, metadata !630, metadata !DIExpression()), !dbg !3636
  %32 = icmp eq i64 %31, 0, !dbg !3637
  br i1 %32, label %37, label %33, !dbg !3639

33:                                               ; preds = %28
  %34 = add i64 %31, 1, !dbg !3640
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #18, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %35, metadata !625, metadata !DIExpression()), !dbg !3613
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3643
  store i8 0, i8* %36, align 1, !dbg !3644, !tbaa !1523
  br label %37, !dbg !3645

37:                                               ; preds = %28, %33
  %38 = phi i8* [ %35, %33 ], [ null, %28 ], !dbg !3613
  call void @llvm.dbg.value(metadata i8* %38, metadata !625, metadata !DIExpression()), !dbg !3613
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3646
  %40 = load i8, i8* %39, align 1, !dbg !3647, !tbaa !1523
  %41 = icmp eq i8 %40, 0, !dbg !3648
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3649
  br label %43, !dbg !3649

43:                                               ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3649
  call void @llvm.dbg.value(metadata i8* %45, metadata !626, metadata !DIExpression()), !dbg !3613
  %46 = icmp eq i8* %44, null, !dbg !3650
  br i1 %46, label %97, label %47, !dbg !3651

47:                                               ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3652, !tbaa !1523
  %49 = icmp eq i8 %48, 43, !dbg !3653
  br i1 %49, label %53, label %50, !dbg !3652

50:                                               ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3654
  call void @llvm.dbg.value(metadata %struct.passwd* %51, metadata !623, metadata !DIExpression()), !dbg !3613
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3655
  br i1 %52, label %53, label %71, !dbg !3656

53:                                               ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3657
  %55 = icmp eq i8* %45, null, !dbg !3658
  %56 = and i1 %54, %55, !dbg !3658
  call void @llvm.dbg.value(metadata i1 %56, metadata !633, metadata !DIExpression()), !dbg !3659
  br i1 %56, label %92, label %57, !dbg !3660

57:                                               ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3661
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #18, !dbg !3661
  call void @llvm.dbg.value(metadata i64* %7, metadata !638, metadata !DIExpression(DW_OP_deref)), !dbg !3662
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.100, i64 0, i64 0)) #18, !dbg !3663
  %60 = icmp eq i32 %59, 0, !dbg !3665
  %61 = load i64, i64* %7, align 8, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %61, metadata !638, metadata !DIExpression()), !dbg !3662
  %62 = icmp ult i64 %61, 4294967296, !dbg !3667
  %63 = and i1 %60, %62, !dbg !3668
  br i1 %63, label %64, label %67, !dbg !3668

64:                                               ; preds = %57
  %65 = trunc i64 %61 to i32, !dbg !3669
  %66 = icmp eq i32 %65, -1, !dbg !3670
  br i1 %66, label %67, label %68, !dbg !3671

67:                                               ; preds = %64, %57
  br label %68

68:                                               ; preds = %64, %67
  %69 = phi i32 [ %10, %67 ], [ %65, %64 ], !dbg !3613
  %70 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i64 0, i64 0), %67 ], [ null, %64 ], !dbg !3613
  call void @llvm.dbg.value(metadata i8* %70, metadata !622, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %69, metadata !628, metadata !DIExpression()), !dbg !3613
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #18, !dbg !3672
  br label %92

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3673
  %73 = load i32, i32* %72, align 8, !dbg !3673, !tbaa !1550
  call void @llvm.dbg.value(metadata i32 %73, metadata !628, metadata !DIExpression()), !dbg !3613
  %74 = icmp eq i8* %45, null, !dbg !3674
  %75 = icmp ne i8* %1, null, !dbg !3675
  %76 = and i1 %75, %74, !dbg !3676
  br i1 %76, label %77, label %92, !dbg !3676

77:                                               ; preds = %71
  %78 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3677
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %78) #18, !dbg !3677
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !641, metadata !DIExpression()), !dbg !3678
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3679
  %80 = load i32, i32* %79, align 4, !dbg !3679, !tbaa !1554
  call void @llvm.dbg.value(metadata i32 %80, metadata !629, metadata !DIExpression()), !dbg !3613
  %81 = tail call %struct.group* @getgrgid(i32 %80) #18, !dbg !3680
  call void @llvm.dbg.value(metadata %struct.group* %81, metadata !624, metadata !DIExpression()), !dbg !3613
  %82 = icmp eq %struct.group* %81, null, !dbg !3681
  br i1 %82, label %86, label %83, !dbg !3681

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.group, %struct.group* %81, i64 0, i32 0, !dbg !3682
  %85 = load i8*, i8** %84, align 8, !dbg !3682, !tbaa !1720
  br label %89, !dbg !3681

86:                                               ; preds = %77
  %87 = zext i32 %80 to i64, !dbg !3683
  %88 = call i8* @umaxtostr(i64 %87, i8* nonnull %78) #18, !dbg !3684
  br label %89, !dbg !3681

89:                                               ; preds = %86, %83
  %90 = phi i8* [ %85, %83 ], [ %88, %86 ], !dbg !3681
  %91 = call noalias i8* @xstrdup(i8* %90) #18, !dbg !3685
  call void @llvm.dbg.value(metadata i8* %91, metadata !627, metadata !DIExpression()), !dbg !3613
  call void @endgrent() #18, !dbg !3686
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %78) #18, !dbg !3687
  br label %92, !dbg !3688

92:                                               ; preds = %68, %53, %71, %89
  %93 = phi i8* [ %91, %89 ], [ null, %71 ], [ null, %53 ], [ null, %68 ], !dbg !3613
  %94 = phi i32 [ %73, %89 ], [ %73, %71 ], [ %10, %53 ], [ %69, %68 ], !dbg !3613
  %95 = phi i32 [ %80, %89 ], [ %15, %71 ], [ %15, %53 ], [ %15, %68 ], !dbg !3613
  %96 = phi i8* [ null, %89 ], [ null, %71 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.102, i64 0, i64 0), %53 ], [ %70, %68 ], !dbg !3613
  call void @llvm.dbg.value(metadata i8* %96, metadata !622, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %95, metadata !629, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %94, metadata !628, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* %93, metadata !627, metadata !DIExpression()), !dbg !3613
  call void @endpwent() #18, !dbg !3689
  br label %97, !dbg !3690

97:                                               ; preds = %43, %92
  %98 = phi i8* [ %93, %92 ], [ null, %43 ], !dbg !3691
  %99 = phi i32 [ %94, %92 ], [ %10, %43 ], !dbg !3692
  %100 = phi i32 [ %95, %92 ], [ %15, %43 ], !dbg !3693
  %101 = phi i8* [ %96, %92 ], [ null, %43 ], !dbg !3613
  call void @llvm.dbg.value(metadata i8* %101, metadata !622, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %100, metadata !629, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %99, metadata !628, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* %98, metadata !627, metadata !DIExpression()), !dbg !3613
  %102 = icmp ne i8* %45, null, !dbg !3694
  %103 = icmp eq i8* %101, null, !dbg !3695
  %104 = and i1 %102, %103, !dbg !3696
  br i1 %104, label %105, label %132, !dbg !3696

105:                                              ; preds = %97
  %106 = load i8, i8* %45, align 1, !dbg !3697, !tbaa !1523
  %107 = icmp eq i8 %106, 43, !dbg !3698
  br i1 %107, label %111, label %108, !dbg !3697

108:                                              ; preds = %105
  %109 = call %struct.group* @getgrnam(i8* nonnull %45) #18, !dbg !3699
  call void @llvm.dbg.value(metadata %struct.group* %109, metadata !624, metadata !DIExpression()), !dbg !3613
  %110 = icmp eq %struct.group* %109, null, !dbg !3700
  br i1 %110, label %111, label %125, !dbg !3701

111:                                              ; preds = %105, %108
  %112 = bitcast i64* %9 to i8*, !dbg !3702
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #18, !dbg !3702
  call void @llvm.dbg.value(metadata i64* %9, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !3703
  %113 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.100, i64 0, i64 0)) #18, !dbg !3704
  %114 = icmp eq i32 %113, 0, !dbg !3706
  %115 = load i64, i64* %9, align 8, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %115, metadata !645, metadata !DIExpression()), !dbg !3703
  %116 = icmp ult i64 %115, 4294967296, !dbg !3708
  %117 = and i1 %114, %116, !dbg !3709
  br i1 %117, label %118, label %121, !dbg !3709

118:                                              ; preds = %111
  %119 = trunc i64 %115 to i32, !dbg !3710
  %120 = icmp eq i32 %119, -1, !dbg !3711
  br i1 %120, label %121, label %122, !dbg !3712

121:                                              ; preds = %118, %111
  br label %122

122:                                              ; preds = %118, %121
  %123 = phi i32 [ %100, %121 ], [ %119, %118 ], !dbg !3613
  %124 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.103, i64 0, i64 0), %121 ], [ null, %118 ], !dbg !3613
  call void @llvm.dbg.value(metadata i8* %124, metadata !622, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %123, metadata !629, metadata !DIExpression()), !dbg !3613
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #18, !dbg !3713
  br label %128, !dbg !3714

125:                                              ; preds = %108
  %126 = getelementptr inbounds %struct.group, %struct.group* %109, i64 0, i32 2, !dbg !3715
  %127 = load i32, i32* %126, align 8, !dbg !3715, !tbaa !3716
  call void @llvm.dbg.value(metadata i32 %127, metadata !629, metadata !DIExpression()), !dbg !3613
  br label %128

128:                                              ; preds = %125, %122
  %129 = phi i32 [ %123, %122 ], [ %127, %125 ], !dbg !3717
  %130 = phi i8* [ %124, %122 ], [ null, %125 ], !dbg !3718
  call void @llvm.dbg.value(metadata i8* %130, metadata !622, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %129, metadata !629, metadata !DIExpression()), !dbg !3613
  call void @endgrent() #18, !dbg !3720
  %131 = call noalias i8* @xstrdup(i8* nonnull %45) #18, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %131, metadata !627, metadata !DIExpression()), !dbg !3613
  br label %132, !dbg !3722

132:                                              ; preds = %128, %97
  %133 = phi i8* [ %131, %128 ], [ %98, %97 ], !dbg !3613
  %134 = phi i32 [ %129, %128 ], [ %100, %97 ], !dbg !3613
  %135 = phi i8* [ %130, %128 ], [ %101, %97 ], !dbg !3718
  call void @llvm.dbg.value(metadata i8* %135, metadata !622, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %134, metadata !629, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* %133, metadata !627, metadata !DIExpression()), !dbg !3613
  %136 = icmp eq i8* %135, null, !dbg !3723
  br i1 %136, label %137, label %148, !dbg !3725

137:                                              ; preds = %23, %132
  %138 = phi i32 [ %134, %132 ], [ %15, %23 ]
  %139 = phi i8* [ %133, %132 ], [ null, %23 ]
  %140 = phi i8* [ %44, %132 ], [ null, %23 ]
  %141 = phi i32 [ %99, %132 ], [ %10, %23 ]
  store i32 %141, i32* %2, align 4, !dbg !3726, !tbaa !1483
  br i1 %11, label %142, label %143, !dbg !3728

142:                                              ; preds = %137
  store i32 %138, i32* %3, align 4, !dbg !3729, !tbaa !1483
  br label %143, !dbg !3731

143:                                              ; preds = %142, %137
  br i1 %16, label %144, label %145, !dbg !3732

144:                                              ; preds = %143
  store i8* %140, i8** %4, align 8, !dbg !3733, !tbaa !1395
  call void @llvm.dbg.value(metadata i8* null, metadata !625, metadata !DIExpression()), !dbg !3613
  br label %145, !dbg !3736

145:                                              ; preds = %144, %143
  %146 = phi i8* [ null, %144 ], [ %140, %143 ], !dbg !3613
  call void @llvm.dbg.value(metadata i8* %146, metadata !625, metadata !DIExpression()), !dbg !3613
  br i1 %19, label %147, label %148, !dbg !3737

147:                                              ; preds = %145
  store i8* %139, i8** %5, align 8, !dbg !3738, !tbaa !1395
  call void @llvm.dbg.value(metadata i8* null, metadata !627, metadata !DIExpression()), !dbg !3613
  br label %148, !dbg !3741

148:                                              ; preds = %145, %147, %132
  %149 = phi i1 [ true, %147 ], [ true, %145 ], [ false, %132 ]
  %150 = phi i8* [ null, %147 ], [ null, %145 ], [ %135, %132 ]
  %151 = phi i8* [ %146, %147 ], [ %146, %145 ], [ %44, %132 ], !dbg !3613
  %152 = phi i8* [ null, %147 ], [ %139, %145 ], [ %133, %132 ], !dbg !3613
  call void @llvm.dbg.value(metadata i8* %152, metadata !627, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* %151, metadata !625, metadata !DIExpression()), !dbg !3613
  call void @free(i8* %151) #18, !dbg !3742
  call void @free(i8* %152) #18, !dbg !3743
  br i1 %149, label %155, label %153, !dbg !3744

153:                                              ; preds = %148
  %154 = call i8* @dcgettext(i8* null, i8* nonnull %150, i32 5) #18, !dbg !3745
  br label %155, !dbg !3744

155:                                              ; preds = %148, %153
  %156 = phi i8* [ %154, %153 ], [ null, %148 ], !dbg !3744
  ret i8* %156, !dbg !3746
}

; Function Attrs: nofree nounwind
declare !dbg !576 %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #4

declare !dbg !602 void @endgrent() local_unnamed_addr #3

declare !dbg !603 void @endpwent() local_unnamed_addr #3

declare !dbg !604 %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3747 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3755, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i8* %1, metadata !3756, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i8* %2, metadata !3757, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i8* %3, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i8** %4, metadata !3759, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 %5, metadata !3760, metadata !DIExpression()), !dbg !3761
  %7 = icmp eq i8* %1, null, !dbg !3762
  br i1 %7, label %10, label %8, !dbg !3764

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3765
  br label %12, !dbg !3765

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.105, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3766
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.106, i64 0, i64 0), i32 5) #18, !dbg !3767
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3767
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3768
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.108, i64 0, i64 0), i32 5) #18, !dbg !3769
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.109, i64 0, i64 0)) #18, !dbg !3769
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3770
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
  ], !dbg !3771

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.110, i64 0, i64 0), i32 5) #18, !dbg !3772
  %21 = load i8*, i8** %4, align 8, !dbg !3772, !tbaa !1395
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3772
  br label %147, !dbg !3774

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.111, i64 0, i64 0), i32 5) #18, !dbg !3775
  %25 = load i8*, i8** %4, align 8, !dbg !3775, !tbaa !1395
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3775
  %27 = load i8*, i8** %26, align 8, !dbg !3775, !tbaa !1395
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3775
  br label %147, !dbg !3776

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.112, i64 0, i64 0), i32 5) #18, !dbg !3777
  %31 = load i8*, i8** %4, align 8, !dbg !3777, !tbaa !1395
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3777
  %33 = load i8*, i8** %32, align 8, !dbg !3777, !tbaa !1395
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3777
  %35 = load i8*, i8** %34, align 8, !dbg !3777, !tbaa !1395
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3777
  br label %147, !dbg !3778

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.113, i64 0, i64 0), i32 5) #18, !dbg !3779
  %39 = load i8*, i8** %4, align 8, !dbg !3779, !tbaa !1395
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3779
  %41 = load i8*, i8** %40, align 8, !dbg !3779, !tbaa !1395
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3779
  %43 = load i8*, i8** %42, align 8, !dbg !3779, !tbaa !1395
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3779
  %45 = load i8*, i8** %44, align 8, !dbg !3779, !tbaa !1395
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3779
  br label %147, !dbg !3780

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.114, i64 0, i64 0), i32 5) #18, !dbg !3781
  %49 = load i8*, i8** %4, align 8, !dbg !3781, !tbaa !1395
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3781
  %51 = load i8*, i8** %50, align 8, !dbg !3781, !tbaa !1395
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3781
  %53 = load i8*, i8** %52, align 8, !dbg !3781, !tbaa !1395
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3781
  %55 = load i8*, i8** %54, align 8, !dbg !3781, !tbaa !1395
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3781
  %57 = load i8*, i8** %56, align 8, !dbg !3781, !tbaa !1395
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3781
  br label %147, !dbg !3782

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.115, i64 0, i64 0), i32 5) #18, !dbg !3783
  %61 = load i8*, i8** %4, align 8, !dbg !3783, !tbaa !1395
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3783
  %63 = load i8*, i8** %62, align 8, !dbg !3783, !tbaa !1395
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3783
  %65 = load i8*, i8** %64, align 8, !dbg !3783, !tbaa !1395
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3783
  %67 = load i8*, i8** %66, align 8, !dbg !3783, !tbaa !1395
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3783
  %69 = load i8*, i8** %68, align 8, !dbg !3783, !tbaa !1395
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3783
  %71 = load i8*, i8** %70, align 8, !dbg !3783, !tbaa !1395
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3783
  br label %147, !dbg !3784

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.116, i64 0, i64 0), i32 5) #18, !dbg !3785
  %75 = load i8*, i8** %4, align 8, !dbg !3785, !tbaa !1395
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3785
  %77 = load i8*, i8** %76, align 8, !dbg !3785, !tbaa !1395
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3785
  %79 = load i8*, i8** %78, align 8, !dbg !3785, !tbaa !1395
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3785
  %81 = load i8*, i8** %80, align 8, !dbg !3785, !tbaa !1395
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3785
  %83 = load i8*, i8** %82, align 8, !dbg !3785, !tbaa !1395
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3785
  %85 = load i8*, i8** %84, align 8, !dbg !3785, !tbaa !1395
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3785
  %87 = load i8*, i8** %86, align 8, !dbg !3785, !tbaa !1395
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3785
  br label %147, !dbg !3786

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.117, i64 0, i64 0), i32 5) #18, !dbg !3787
  %91 = load i8*, i8** %4, align 8, !dbg !3787, !tbaa !1395
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3787
  %93 = load i8*, i8** %92, align 8, !dbg !3787, !tbaa !1395
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3787
  %95 = load i8*, i8** %94, align 8, !dbg !3787, !tbaa !1395
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3787
  %97 = load i8*, i8** %96, align 8, !dbg !3787, !tbaa !1395
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3787
  %99 = load i8*, i8** %98, align 8, !dbg !3787, !tbaa !1395
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3787
  %101 = load i8*, i8** %100, align 8, !dbg !3787, !tbaa !1395
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3787
  %103 = load i8*, i8** %102, align 8, !dbg !3787, !tbaa !1395
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3787
  %105 = load i8*, i8** %104, align 8, !dbg !3787, !tbaa !1395
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3787
  br label %147, !dbg !3788

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.118, i64 0, i64 0), i32 5) #18, !dbg !3789
  %109 = load i8*, i8** %4, align 8, !dbg !3789, !tbaa !1395
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3789
  %111 = load i8*, i8** %110, align 8, !dbg !3789, !tbaa !1395
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3789
  %113 = load i8*, i8** %112, align 8, !dbg !3789, !tbaa !1395
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3789
  %115 = load i8*, i8** %114, align 8, !dbg !3789, !tbaa !1395
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3789
  %117 = load i8*, i8** %116, align 8, !dbg !3789, !tbaa !1395
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3789
  %119 = load i8*, i8** %118, align 8, !dbg !3789, !tbaa !1395
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3789
  %121 = load i8*, i8** %120, align 8, !dbg !3789, !tbaa !1395
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3789
  %123 = load i8*, i8** %122, align 8, !dbg !3789, !tbaa !1395
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3789
  %125 = load i8*, i8** %124, align 8, !dbg !3789, !tbaa !1395
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3789
  br label %147, !dbg !3790

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.119, i64 0, i64 0), i32 5) #18, !dbg !3791
  %129 = load i8*, i8** %4, align 8, !dbg !3791, !tbaa !1395
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3791
  %131 = load i8*, i8** %130, align 8, !dbg !3791, !tbaa !1395
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3791
  %133 = load i8*, i8** %132, align 8, !dbg !3791, !tbaa !1395
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3791
  %135 = load i8*, i8** %134, align 8, !dbg !3791, !tbaa !1395
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3791
  %137 = load i8*, i8** %136, align 8, !dbg !3791, !tbaa !1395
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3791
  %139 = load i8*, i8** %138, align 8, !dbg !3791, !tbaa !1395
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3791
  %141 = load i8*, i8** %140, align 8, !dbg !3791, !tbaa !1395
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3791
  %143 = load i8*, i8** %142, align 8, !dbg !3791, !tbaa !1395
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3791
  %145 = load i8*, i8** %144, align 8, !dbg !3791, !tbaa !1395
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3791
  br label %147, !dbg !3792

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3793
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3794 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3798, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8* %1, metadata !3799, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8* %2, metadata !3800, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8* %3, metadata !3801, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8** %4, metadata !3802, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i64 0, metadata !3803, metadata !DIExpression()), !dbg !3804
  br label %6, !dbg !3805

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3807
  call void @llvm.dbg.value(metadata i64 %7, metadata !3803, metadata !DIExpression()), !dbg !3804
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3808
  %9 = load i8*, i8** %8, align 8, !dbg !3808, !tbaa !1395
  %10 = icmp eq i8* %9, null, !dbg !3810
  %11 = add i64 %7, 1, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %11, metadata !3803, metadata !DIExpression()), !dbg !3804
  br i1 %10, label %12, label %6, !dbg !3810, !llvm.loop !3812

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3803, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i64 %7, metadata !3803, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i64 %7, metadata !3803, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i64 %7, metadata !3803, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i64 %7, metadata !3803, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i64 %7, metadata !3803, metadata !DIExpression()), !dbg !3804
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3814
  ret void, !dbg !3815
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3816 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3827, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8* %1, metadata !3828, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8* %2, metadata !3829, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8* %3, metadata !3830, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3831, metadata !DIExpression()), !dbg !3835
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3836
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3836
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3833, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 0, metadata !3832, metadata !DIExpression()), !dbg !3835
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3838
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3838
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3838
  %11 = load i32, i32* %8, align 8, !dbg !3841
  %12 = icmp ult i32 %11, 41, !dbg !3841
  br i1 %12, label %13, label %18, !dbg !3841

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3841
  %15 = zext i32 %11 to i64, !dbg !3841
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3841
  %17 = add nuw nsw i32 %11, 8, !dbg !3841
  store i32 %17, i32* %8, align 8, !dbg !3841
  br label %21, !dbg !3841

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3841
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3841
  store i8* %20, i8** %9, align 8, !dbg !3841
  br label %21, !dbg !3841

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3841
  %25 = load i8*, i8** %24, align 8, !dbg !3841
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3842
  store i8* %25, i8** %26, align 16, !dbg !3843, !tbaa !1395
  %27 = icmp eq i8* %25, null, !dbg !3844
  br i1 %27, label %30, label %28, !dbg !3845

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3832, metadata !DIExpression()), !dbg !3835
  %29 = icmp ult i32 %22, 41, !dbg !3841
  br i1 %29, label %35, label %32, !dbg !3841

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3846
  call void @llvm.dbg.value(metadata i64 %31, metadata !3832, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %31, metadata !3832, metadata !DIExpression()), !dbg !3835
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3847
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3848
  ret void, !dbg !3848

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3841
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3841
  store i8* %34, i8** %9, align 8, !dbg !3841
  br label %40, !dbg !3841

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3841
  %37 = zext i32 %22 to i64, !dbg !3841
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3841
  %39 = add nuw nsw i32 %22, 8, !dbg !3841
  store i32 %39, i32* %8, align 8, !dbg !3841
  br label %40, !dbg !3841

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3841
  %44 = load i8*, i8** %43, align 8, !dbg !3841
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3842
  store i8* %44, i8** %45, align 8, !dbg !3843, !tbaa !1395
  %46 = icmp eq i8* %44, null, !dbg !3844
  br i1 %46, label %30, label %47, !dbg !3845

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3832, metadata !DIExpression()), !dbg !3835
  %48 = icmp ult i32 %41, 41, !dbg !3841
  br i1 %48, label %52, label %49, !dbg !3841

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3841
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3841
  store i8* %51, i8** %9, align 8, !dbg !3841
  br label %57, !dbg !3841

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3841
  %54 = zext i32 %41 to i64, !dbg !3841
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3841
  %56 = add nuw nsw i32 %41, 8, !dbg !3841
  store i32 %56, i32* %8, align 8, !dbg !3841
  br label %57, !dbg !3841

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3841
  %61 = load i8*, i8** %60, align 8, !dbg !3841
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3842
  store i8* %61, i8** %62, align 16, !dbg !3843, !tbaa !1395
  %63 = icmp eq i8* %61, null, !dbg !3844
  br i1 %63, label %30, label %64, !dbg !3845

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3832, metadata !DIExpression()), !dbg !3835
  %65 = icmp ult i32 %58, 41, !dbg !3841
  br i1 %65, label %69, label %66, !dbg !3841

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3841
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3841
  store i8* %68, i8** %9, align 8, !dbg !3841
  br label %74, !dbg !3841

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3841
  %71 = zext i32 %58 to i64, !dbg !3841
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3841
  %73 = add nuw nsw i32 %58, 8, !dbg !3841
  store i32 %73, i32* %8, align 8, !dbg !3841
  br label %74, !dbg !3841

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3841
  %78 = load i8*, i8** %77, align 8, !dbg !3841
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3842
  store i8* %78, i8** %79, align 8, !dbg !3843, !tbaa !1395
  %80 = icmp eq i8* %78, null, !dbg !3844
  br i1 %80, label %30, label %81, !dbg !3845

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3832, metadata !DIExpression()), !dbg !3835
  %82 = icmp ult i32 %75, 41, !dbg !3841
  br i1 %82, label %86, label %83, !dbg !3841

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3841
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3841
  store i8* %85, i8** %9, align 8, !dbg !3841
  br label %91, !dbg !3841

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3841
  %88 = zext i32 %75 to i64, !dbg !3841
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3841
  %90 = add nuw nsw i32 %75, 8, !dbg !3841
  store i32 %90, i32* %8, align 8, !dbg !3841
  br label %91, !dbg !3841

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3841
  %95 = load i8*, i8** %94, align 8, !dbg !3841
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3842
  store i8* %95, i8** %96, align 16, !dbg !3843, !tbaa !1395
  %97 = icmp eq i8* %95, null, !dbg !3844
  br i1 %97, label %30, label %98, !dbg !3845

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3832, metadata !DIExpression()), !dbg !3835
  %99 = icmp ult i32 %92, 41, !dbg !3841
  br i1 %99, label %103, label %100, !dbg !3841

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3841
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3841
  store i8* %102, i8** %9, align 8, !dbg !3841
  br label %108, !dbg !3841

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3841
  %105 = zext i32 %92 to i64, !dbg !3841
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3841
  %107 = add nuw nsw i32 %92, 8, !dbg !3841
  store i32 %107, i32* %8, align 8, !dbg !3841
  br label %108, !dbg !3841

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3841
  %111 = load i8*, i8** %110, align 8, !dbg !3841
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3842
  store i8* %111, i8** %112, align 8, !dbg !3843, !tbaa !1395
  %113 = icmp eq i8* %111, null, !dbg !3844
  br i1 %113, label %30, label %114, !dbg !3845

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3832, metadata !DIExpression()), !dbg !3835
  %115 = load i8*, i8** %9, align 8, !dbg !3841
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3841
  store i8* %116, i8** %9, align 8, !dbg !3841
  %117 = bitcast i8* %115 to i8**, !dbg !3841
  %118 = load i8*, i8** %117, align 8, !dbg !3841
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3842
  store i8* %118, i8** %119, align 16, !dbg !3843, !tbaa !1395
  %120 = icmp eq i8* %118, null, !dbg !3844
  br i1 %120, label %30, label %121, !dbg !3845

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3832, metadata !DIExpression()), !dbg !3835
  %122 = load i8*, i8** %9, align 8, !dbg !3841
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3841
  store i8* %123, i8** %9, align 8, !dbg !3841
  %124 = bitcast i8* %122 to i8**, !dbg !3841
  %125 = load i8*, i8** %124, align 8, !dbg !3841
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3842
  store i8* %125, i8** %126, align 8, !dbg !3843, !tbaa !1395
  %127 = icmp eq i8* %125, null, !dbg !3844
  br i1 %127, label %30, label %128, !dbg !3845

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3832, metadata !DIExpression()), !dbg !3835
  %129 = load i8*, i8** %9, align 8, !dbg !3841
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3841
  store i8* %130, i8** %9, align 8, !dbg !3841
  %131 = bitcast i8* %129 to i8**, !dbg !3841
  %132 = load i8*, i8** %131, align 8, !dbg !3841
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3842
  store i8* %132, i8** %133, align 16, !dbg !3843, !tbaa !1395
  %134 = icmp eq i8* %132, null, !dbg !3844
  br i1 %134, label %30, label %135, !dbg !3845

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3832, metadata !DIExpression()), !dbg !3835
  %136 = load i8*, i8** %9, align 8, !dbg !3841
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3841
  store i8* %137, i8** %9, align 8, !dbg !3841
  %138 = bitcast i8* %136 to i8**, !dbg !3841
  %139 = load i8*, i8** %138, align 8, !dbg !3841
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3842
  store i8* %139, i8** %140, align 8, !dbg !3843, !tbaa !1395
  %141 = icmp eq i8* %139, null, !dbg !3844
  %142 = select i1 %141, i64 9, i64 10, !dbg !3845
  br label %30, !dbg !3845
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3849 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3853, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8* %1, metadata !3854, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8* %2, metadata !3855, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8* %3, metadata !3856, metadata !DIExpression()), !dbg !3863
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3864
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3864
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3857, metadata !DIExpression()), !dbg !3865
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3866
  call void @llvm.va_start(i8* nonnull %6), !dbg !3866
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3867
  call void @llvm.va_end(i8* nonnull %6), !dbg !3868
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3869
  ret void, !dbg !3869
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3870 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3871, !tbaa !1395
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3871
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.122, i64 0, i64 0), i32 5) #18, !dbg !3872
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.123, i64 0, i64 0)) #18, !dbg !3872
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.124, i64 0, i64 0), i32 5) #18, !dbg !3873
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.125, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0)) #18, !dbg !3873
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 5) #18, !dbg !3874
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.126, i64 0, i64 0)) #18, !dbg !3874
  ret void, !dbg !3875
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3876 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3880, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i64 %1, metadata !3881, metadata !DIExpression()), !dbg !3882
  %3 = udiv i64 9223372036854775807, %1, !dbg !3883
  %4 = icmp ult i64 %3, %0, !dbg !3883
  br i1 %4, label %5, label %6, !dbg !3885

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3886
  unreachable, !dbg !3886

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %7, metadata !3888, metadata !DIExpression()) #18, !dbg !3894
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %8, metadata !3893, metadata !DIExpression()) #18, !dbg !3894
  %9 = icmp eq i8* %8, null, !dbg !3897
  %10 = icmp ne i64 %7, 0, !dbg !3899
  %11 = and i1 %10, %9, !dbg !3900
  br i1 %11, label %12, label %13, !dbg !3900

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3901
  unreachable, !dbg !3901

13:                                               ; preds = %6
  ret i8* %8, !dbg !3902
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3889 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3888, metadata !DIExpression()), !dbg !3903
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3904
  call void @llvm.dbg.value(metadata i8* %2, metadata !3893, metadata !DIExpression()), !dbg !3903
  %3 = icmp eq i8* %2, null, !dbg !3905
  %4 = icmp ne i64 %0, 0, !dbg !3906
  %5 = and i1 %4, %3, !dbg !3907
  br i1 %5, label %6, label %7, !dbg !3907

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3908
  unreachable, !dbg !3908

7:                                                ; preds = %1
  ret i8* %2, !dbg !3909
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3910 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3914, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i64 %1, metadata !3915, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i64 %2, metadata !3916, metadata !DIExpression()), !dbg !3917
  %4 = udiv i64 9223372036854775807, %2, !dbg !3918
  %5 = icmp ult i64 %4, %1, !dbg !3918
  br i1 %5, label %6, label %7, !dbg !3920

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3921
  unreachable, !dbg !3921

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()) #18, !dbg !3929
  call void @llvm.dbg.value(metadata i64 %8, metadata !3928, metadata !DIExpression()) #18, !dbg !3929
  %9 = icmp eq i64 %8, 0, !dbg !3931
  %10 = icmp ne i8* %0, null, !dbg !3933
  %11 = and i1 %10, %9, !dbg !3934
  br i1 %11, label %12, label %13, !dbg !3934

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3935
  br label %19, !dbg !3937

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3938
  call void @llvm.dbg.value(metadata i8* %14, metadata !3923, metadata !DIExpression()) #18, !dbg !3929
  %15 = icmp eq i8* %14, null, !dbg !3939
  %16 = icmp ne i64 %8, 0, !dbg !3941
  %17 = and i1 %16, %15, !dbg !3942
  br i1 %17, label %18, label %19, !dbg !3942

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3943
  unreachable, !dbg !3943

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3929
  ret i8* %20, !dbg !3944
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3924 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i64 %1, metadata !3928, metadata !DIExpression()), !dbg !3945
  %3 = icmp eq i64 %1, 0, !dbg !3946
  %4 = icmp ne i8* %0, null, !dbg !3947
  %5 = and i1 %4, %3, !dbg !3948
  br i1 %5, label %6, label %7, !dbg !3948

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3949
  br label %13, !dbg !3950

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3951
  call void @llvm.dbg.value(metadata i8* %8, metadata !3923, metadata !DIExpression()), !dbg !3945
  %9 = icmp eq i8* %8, null, !dbg !3952
  %10 = icmp ne i64 %1, 0, !dbg !3953
  %11 = and i1 %10, %9, !dbg !3954
  br i1 %11, label %12, label %13, !dbg !3954

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3955
  unreachable, !dbg !3955

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3945
  ret i8* %14, !dbg !3956
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !700 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !705, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64* %1, metadata !706, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %2, metadata !707, metadata !DIExpression()), !dbg !3957
  %4 = load i64, i64* %1, align 8, !dbg !3958, !tbaa !3032
  call void @llvm.dbg.value(metadata i64 %4, metadata !708, metadata !DIExpression()), !dbg !3957
  %5 = icmp eq i8* %0, null, !dbg !3959
  br i1 %5, label %6, label %20, !dbg !3961

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3962
  br i1 %7, label %8, label %13, !dbg !3965

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3966
  call void @llvm.dbg.value(metadata i64 %9, metadata !708, metadata !DIExpression()), !dbg !3957
  %10 = icmp ugt i64 %2, 128, !dbg !3968
  %11 = zext i1 %10 to i64, !dbg !3968
  %12 = add nuw nsw i64 %9, %11, !dbg !3969
  call void @llvm.dbg.value(metadata i64 %12, metadata !708, metadata !DIExpression()), !dbg !3957
  br label %13, !dbg !3970

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3957
  call void @llvm.dbg.value(metadata i64 %14, metadata !708, metadata !DIExpression()), !dbg !3957
  %15 = udiv i64 9223372036854775807, %2, !dbg !3971
  %16 = icmp ult i64 %15, %14, !dbg !3971
  br i1 %16, label %19, label %17, !dbg !3973

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !708, metadata !DIExpression()), !dbg !3957
  store i64 %14, i64* %1, align 8, !dbg !3974, !tbaa !3032
  %18 = mul i64 %14, %2, !dbg !3975
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()) #18, !dbg !3976
  call void @llvm.dbg.value(metadata i64 %28, metadata !3928, metadata !DIExpression()) #18, !dbg !3976
  br label %31, !dbg !3978

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3979
  unreachable, !dbg !3979

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3980
  %22 = icmp ugt i64 %21, %4, !dbg !3983
  br i1 %22, label %24, label %23, !dbg !3984

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3985
  unreachable, !dbg !3985

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3986
  %26 = add nuw i64 %4, 1, !dbg !3987
  %27 = add i64 %26, %25, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %27, metadata !708, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %27, metadata !708, metadata !DIExpression()), !dbg !3957
  store i64 %27, i64* %1, align 8, !dbg !3974, !tbaa !3032
  %28 = mul i64 %27, %2, !dbg !3975
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()) #18, !dbg !3976
  call void @llvm.dbg.value(metadata i64 %28, metadata !3928, metadata !DIExpression()) #18, !dbg !3976
  %29 = icmp eq i64 %28, 0, !dbg !3989
  br i1 %29, label %30, label %31, !dbg !3978

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3990
  br label %38, !dbg !3991

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3992
  call void @llvm.dbg.value(metadata i8* %33, metadata !3923, metadata !DIExpression()) #18, !dbg !3976
  %34 = icmp eq i8* %33, null, !dbg !3993
  %35 = icmp ne i64 %32, 0, !dbg !3994
  %36 = and i1 %35, %34, !dbg !3995
  br i1 %36, label %37, label %38, !dbg !3995

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3996
  unreachable, !dbg !3996

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3976
  ret i8* %39, !dbg !3997
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3998 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %0, metadata !3888, metadata !DIExpression()) #18, !dbg !4002
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !4004
  call void @llvm.dbg.value(metadata i8* %2, metadata !3893, metadata !DIExpression()) #18, !dbg !4002
  %3 = icmp eq i8* %2, null, !dbg !4005
  %4 = icmp ne i64 %0, 0, !dbg !4006
  %5 = and i1 %4, %3, !dbg !4007
  br i1 %5, label %6, label %7, !dbg !4007

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4008
  unreachable, !dbg !4008

7:                                                ; preds = %1
  ret i8* %2, !dbg !4009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4010 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4014, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64* %1, metadata !4015, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i8* %0, metadata !705, metadata !DIExpression()) #18, !dbg !4017
  call void @llvm.dbg.value(metadata i64* %1, metadata !706, metadata !DIExpression()) #18, !dbg !4017
  call void @llvm.dbg.value(metadata i64 1, metadata !707, metadata !DIExpression()) #18, !dbg !4017
  %3 = load i64, i64* %1, align 8, !dbg !4019, !tbaa !3032
  call void @llvm.dbg.value(metadata i64 %3, metadata !708, metadata !DIExpression()) #18, !dbg !4017
  %4 = icmp eq i8* %0, null, !dbg !4020
  br i1 %4, label %5, label %12, !dbg !4021

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4022
  br i1 %6, label %9, label %7, !dbg !4023

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !708, metadata !DIExpression()) #18, !dbg !4017
  %8 = icmp slt i64 %3, 0, !dbg !4024
  br i1 %8, label %11, label %9, !dbg !4025

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !708, metadata !DIExpression()) #18, !dbg !4017
  store i64 %10, i64* %1, align 8, !dbg !4026, !tbaa !3032
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()) #18, !dbg !4027
  call void @llvm.dbg.value(metadata i64 %18, metadata !3928, metadata !DIExpression()) #18, !dbg !4027
  br label %21, !dbg !4029

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4030
  unreachable, !dbg !4030

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4031
  br i1 %13, label %15, label %14, !dbg !4032

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !4033
  unreachable, !dbg !4033

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4034
  %17 = add nuw nsw i64 %3, 1, !dbg !4035
  %18 = add nuw nsw i64 %17, %16, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %18, metadata !708, metadata !DIExpression()) #18, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %18, metadata !708, metadata !DIExpression()) #18, !dbg !4017
  store i64 %18, i64* %1, align 8, !dbg !4026, !tbaa !3032
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()) #18, !dbg !4027
  call void @llvm.dbg.value(metadata i64 %18, metadata !3928, metadata !DIExpression()) #18, !dbg !4027
  %19 = icmp eq i64 %18, 0, !dbg !4037
  br i1 %19, label %20, label %21, !dbg !4029

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !4038
  br label %28, !dbg !4039

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !4040
  call void @llvm.dbg.value(metadata i8* %23, metadata !3923, metadata !DIExpression()) #18, !dbg !4027
  %24 = icmp eq i8* %23, null, !dbg !4041
  %25 = icmp ne i64 %22, 0, !dbg !4042
  %26 = and i1 %25, %24, !dbg !4043
  br i1 %26, label %27, label %28, !dbg !4043

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !4044
  unreachable, !dbg !4044

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4027
  ret i8* %29, !dbg !4045
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4046 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %0, metadata !4050, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i64 1, metadata !4053, metadata !DIExpression()) #18, !dbg !4055
  %2 = icmp slt i64 %0, 0, !dbg !4057
  br i1 %2, label %6, label %3, !dbg !4059

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !4060
  call void @llvm.dbg.value(metadata i8* %4, metadata !4054, metadata !DIExpression()) #18, !dbg !4055
  %5 = icmp eq i8* %4, null, !dbg !4061
  br i1 %5, label %6, label %7, !dbg !4062

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !4063
  unreachable, !dbg !4063

7:                                                ; preds = %3
  ret i8* %4, !dbg !4064
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4051 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4050, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i64 %1, metadata !4053, metadata !DIExpression()), !dbg !4065
  %3 = udiv i64 9223372036854775807, %1, !dbg !4066
  %4 = icmp ult i64 %3, %0, !dbg !4066
  br i1 %4, label %8, label %5, !dbg !4067

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !4068
  call void @llvm.dbg.value(metadata i8* %6, metadata !4054, metadata !DIExpression()), !dbg !4065
  %7 = icmp eq i8* %6, null, !dbg !4069
  br i1 %7, label %8, label %9, !dbg !4070

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !4071
  unreachable, !dbg !4071

9:                                                ; preds = %5
  ret i8* %6, !dbg !4072
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4073 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4077, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i64 %1, metadata !4078, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()) #18, !dbg !4080
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !4082
  call void @llvm.dbg.value(metadata i8* %3, metadata !3893, metadata !DIExpression()) #18, !dbg !4080
  %4 = icmp eq i8* %3, null, !dbg !4083
  %5 = icmp ne i64 %1, 0, !dbg !4084
  %6 = and i1 %5, %4, !dbg !4085
  br i1 %6, label %7, label %8, !dbg !4085

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4086
  unreachable, !dbg !4086

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4087, metadata !DIExpression()) #18, !dbg !4096
  call void @llvm.dbg.value(metadata i8* %0, metadata !4094, metadata !DIExpression()) #18, !dbg !4096
  call void @llvm.dbg.value(metadata i64 %1, metadata !4095, metadata !DIExpression()) #18, !dbg !4096
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !4098
  ret i8* %3, !dbg !4099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4102, metadata !DIExpression()), !dbg !4103
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !4104
  %3 = add i64 %2, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i8* %0, metadata !4077, metadata !DIExpression()) #18, !dbg !4106
  call void @llvm.dbg.value(metadata i64 %3, metadata !4078, metadata !DIExpression()) #18, !dbg !4106
  call void @llvm.dbg.value(metadata i64 %3, metadata !3888, metadata !DIExpression()) #18, !dbg !4108
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !4110
  call void @llvm.dbg.value(metadata i8* %4, metadata !3893, metadata !DIExpression()) #18, !dbg !4108
  %5 = icmp eq i8* %4, null, !dbg !4111
  %6 = icmp ne i64 %3, 0, !dbg !4112
  %7 = and i1 %6, %5, !dbg !4113
  br i1 %7, label %8, label %9, !dbg !4113

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4114
  unreachable, !dbg !4114

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4087, metadata !DIExpression()) #18, !dbg !4115
  call void @llvm.dbg.value(metadata i8* %0, metadata !4094, metadata !DIExpression()) #18, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %3, metadata !4095, metadata !DIExpression()) #18, !dbg !4115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !4117
  ret i8* %4, !dbg !4118
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4119 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4120, !tbaa !1483
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.139, i64 0, i64 0), i32 5) #18, !dbg !4121
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* %2) #18, !dbg !4122
  tail call void @abort() #22, !dbg !4123
  unreachable, !dbg !4123
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xgetgroups(i8* %0, i32 %1, i32** %2) local_unnamed_addr #8 !dbg !4124 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4126, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i32 %1, metadata !4127, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i32** %2, metadata !4128, metadata !DIExpression()), !dbg !4130
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #18, !dbg !4131
  call void @llvm.dbg.value(metadata i32 %4, metadata !4129, metadata !DIExpression()), !dbg !4130
  %5 = icmp eq i32 %4, -1, !dbg !4132
  br i1 %5, label %6, label %11, !dbg !4134

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #24, !dbg !4135
  %8 = load i32, i32* %7, align 4, !dbg !4135, !tbaa !1483
  %9 = icmp eq i32 %8, 12, !dbg !4136
  br i1 %9, label %10, label %11, !dbg !4137

10:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !4138
  unreachable, !dbg !4138

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !4139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoul(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4140 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4146, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8** %1, metadata !4147, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i32 %2, metadata !4148, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i64* %3, metadata !4149, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8* %4, metadata !4150, metadata !DIExpression()), !dbg !4164
  %7 = bitcast i8** %6 to i8*, !dbg !4165
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #18, !dbg !4165
  call void @llvm.dbg.value(metadata i32 0, metadata !4154, metadata !DIExpression()), !dbg !4164
  %8 = icmp ult i32 %2, 37, !dbg !4166
  br i1 %8, label %10, label %9, !dbg !4166

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.145, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.146, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #22, !dbg !4166
  unreachable, !dbg !4166

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4169
  call void @llvm.dbg.value(metadata i8** %25, metadata !4152, metadata !DIExpression()), !dbg !4164
  %12 = tail call i32* @__errno_location() #24, !dbg !4170
  store i32 0, i32* %12, align 4, !dbg !4171, !tbaa !1483
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i8 undef, metadata !4158, metadata !DIExpression()), !dbg !4172
  %13 = tail call i16** @__ctype_b_loc() #24, !dbg !4172
  %14 = load i16*, i16** %13, align 8, !dbg !4172, !tbaa !1395
  br label %15, !dbg !4173

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4172
  %17 = load i8, i8* %16, align 1, !dbg !4172, !tbaa !1523
  call void @llvm.dbg.value(metadata i8 %17, metadata !4158, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i8* %16, metadata !4155, metadata !DIExpression()), !dbg !4172
  %18 = zext i8 %17 to i64, !dbg !4174
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4174
  %20 = load i16, i16* %19, align 2, !dbg !4174, !tbaa !2523
  %21 = and i16 %20, 8192, !dbg !4174
  %22 = icmp eq i16 %21, 0, !dbg !4173
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4175
  call void @llvm.dbg.value(metadata i8* %23, metadata !4155, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i8 undef, metadata !4158, metadata !DIExpression()), !dbg !4172
  br i1 %22, label %24, label %15, !dbg !4173, !llvm.loop !4176

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4169
  %26 = icmp eq i8 %17, 45, !dbg !4178
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #18, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %28, metadata !4153, metadata !DIExpression()), !dbg !4164
  %29 = load i8*, i8** %25, align 8, !dbg !4181, !tbaa !1395
  %30 = icmp eq i8* %29, %0, !dbg !4183
  br i1 %30, label %31, label %40, !dbg !4184

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4185
  br i1 %32, label %285, label %33, !dbg !4188

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4189, !tbaa !1523
  %35 = icmp eq i8 %34, 0, !dbg !4189
  br i1 %35, label %285, label %36, !dbg !4190

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4189
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #21, !dbg !4191
  %39 = icmp eq i8* %38, null, !dbg !4191
  br i1 %39, label %285, label %47, !dbg !4192

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4193, !tbaa !1483
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4195

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4154, metadata !DIExpression()), !dbg !4164
  br label %43, !dbg !4196

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4164
  call void @llvm.dbg.value(metadata i32 %44, metadata !4154, metadata !DIExpression()), !dbg !4164
  %45 = icmp eq i8* %4, null, !dbg !4198
  br i1 %45, label %46, label %47, !dbg !4200

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4153, metadata !DIExpression()), !dbg !4164
  store i64 %28, i64* %3, align 8, !dbg !4201, !tbaa !3032
  br label %285, !dbg !4203

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4204, !tbaa !1523
  %51 = sext i8 %50 to i32, !dbg !4204
  %52 = icmp eq i8 %50, 0, !dbg !4205
  br i1 %52, label %282, label %53, !dbg !4206

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4159, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 1, metadata !4162, metadata !DIExpression()), !dbg !4207
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #21, !dbg !4208
  %55 = icmp eq i8* %54, null, !dbg !4208
  br i1 %55, label %56, label %58, !dbg !4210

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4153, metadata !DIExpression()), !dbg !4164
  store i64 %49, i64* %3, align 8, !dbg !4211, !tbaa !3032
  %57 = or i32 %48, 2, !dbg !4213
  br label %285, !dbg !4214

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
  ], !dbg !4215

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #21, !dbg !4216
  %61 = icmp eq i8* %60, null, !dbg !4216
  br i1 %61, label %72, label %62, !dbg !4219

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4220
  %64 = load i8, i8* %63, align 1, !dbg !4220, !tbaa !1523
  %65 = sext i8 %64 to i32, !dbg !4220
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4221

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4222
  %68 = load i8, i8* %67, align 1, !dbg !4222, !tbaa !1523
  %69 = icmp eq i8 %68, 66, !dbg !4225
  %70 = select i1 %69, i64 3, i64 1, !dbg !4226
  br label %72, !dbg !4226

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4159, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 2, metadata !4162, metadata !DIExpression()), !dbg !4207
  br label %72, !dbg !4227

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4162, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 undef, metadata !4159, metadata !DIExpression()), !dbg !4207
  switch i32 %51, label %270 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %230
    i32 75, label %230
    i32 77, label %235
    i32 109, label %235
    i32 80, label %150
    i32 84, label %245
    i32 116, label %245
    i32 119, label %265
    i32 89, label %110
    i32 90, label %75
  ], !dbg !4228

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()) #18, !dbg !4237
  call void @llvm.dbg.value(metadata i32 6, metadata !4236, metadata !DIExpression()) #18, !dbg !4237
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression()) #18, !dbg !4246
  %76 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4248
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4248
  %78 = mul i64 %49, %73, !dbg !4250
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4250
  call void @llvm.dbg.value(metadata i1 %77, metadata !4229, metadata !DIExpression()) #18, !dbg !4237
  call void @llvm.dbg.value(metadata i32 5, metadata !4236, metadata !DIExpression()) #18, !dbg !4237
  %80 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #18, !dbg !4248
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4248
  %82 = mul i64 %79, %73, !dbg !4250
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4250
  %84 = or i1 %77, %81, !dbg !4251
  call void @llvm.dbg.value(metadata i1 %84, metadata !4229, metadata !DIExpression()) #18, !dbg !4237
  call void @llvm.dbg.value(metadata i32 4, metadata !4236, metadata !DIExpression()) #18, !dbg !4237
  %85 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #18, !dbg !4248
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4248
  %87 = mul i64 %83, %73, !dbg !4250
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4250
  %89 = or i1 %84, %86, !dbg !4251
  call void @llvm.dbg.value(metadata i1 %89, metadata !4229, metadata !DIExpression()) #18, !dbg !4237
  call void @llvm.dbg.value(metadata i32 3, metadata !4236, metadata !DIExpression()) #18, !dbg !4237
  %90 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #18, !dbg !4248
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4248
  %92 = mul i64 %88, %73, !dbg !4250
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4250
  %94 = or i1 %89, %91, !dbg !4251
  call void @llvm.dbg.value(metadata i1 %94, metadata !4229, metadata !DIExpression()) #18, !dbg !4237
  call void @llvm.dbg.value(metadata i32 2, metadata !4236, metadata !DIExpression()) #18, !dbg !4237
  %95 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #18, !dbg !4248
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4248
  %97 = mul i64 %93, %73, !dbg !4250
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4250
  %99 = or i1 %94, %96, !dbg !4251
  call void @llvm.dbg.value(metadata i1 %99, metadata !4229, metadata !DIExpression()) #18, !dbg !4237
  call void @llvm.dbg.value(metadata i32 1, metadata !4236, metadata !DIExpression()) #18, !dbg !4237
  %100 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #18, !dbg !4248
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4248
  %102 = mul i64 %98, %73, !dbg !4250
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4250
  %104 = or i1 %99, %101, !dbg !4251
  call void @llvm.dbg.value(metadata i1 %104, metadata !4229, metadata !DIExpression()) #18, !dbg !4237
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression()) #18, !dbg !4237
  %105 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #18, !dbg !4248
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4248
  %107 = mul i64 %103, %73, !dbg !4250
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4250
  %109 = or i1 %104, %106, !dbg !4251
  call void @llvm.dbg.value(metadata i1 %109, metadata !4229, metadata !DIExpression()) #18, !dbg !4237
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4237
  br label %272, !dbg !4252

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 7, metadata !4236, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression()) #18, !dbg !4255
  %111 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4257
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4257
  %113 = mul i64 %49, %73, !dbg !4258
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4258
  call void @llvm.dbg.value(metadata i1 %112, metadata !4229, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 6, metadata !4236, metadata !DIExpression()) #18, !dbg !4253
  %115 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #18, !dbg !4257
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4257
  %117 = mul i64 %114, %73, !dbg !4258
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4258
  %119 = or i1 %112, %116, !dbg !4259
  call void @llvm.dbg.value(metadata i1 %119, metadata !4229, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 5, metadata !4236, metadata !DIExpression()) #18, !dbg !4253
  %120 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #18, !dbg !4257
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4257
  %122 = mul i64 %118, %73, !dbg !4258
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4258
  %124 = or i1 %119, %121, !dbg !4259
  call void @llvm.dbg.value(metadata i1 %124, metadata !4229, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 4, metadata !4236, metadata !DIExpression()) #18, !dbg !4253
  %125 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #18, !dbg !4257
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4257
  %127 = mul i64 %123, %73, !dbg !4258
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4258
  %129 = or i1 %124, %126, !dbg !4259
  call void @llvm.dbg.value(metadata i1 %129, metadata !4229, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 3, metadata !4236, metadata !DIExpression()) #18, !dbg !4253
  %130 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #18, !dbg !4257
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4257
  %132 = mul i64 %128, %73, !dbg !4258
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4258
  %134 = or i1 %129, %131, !dbg !4259
  call void @llvm.dbg.value(metadata i1 %134, metadata !4229, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 2, metadata !4236, metadata !DIExpression()) #18, !dbg !4253
  %135 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #18, !dbg !4257
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4257
  %137 = mul i64 %133, %73, !dbg !4258
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4258
  %139 = or i1 %134, %136, !dbg !4259
  call void @llvm.dbg.value(metadata i1 %139, metadata !4229, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 1, metadata !4236, metadata !DIExpression()) #18, !dbg !4253
  %140 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #18, !dbg !4257
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4257
  %142 = mul i64 %138, %73, !dbg !4258
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4258
  %144 = or i1 %139, %141, !dbg !4259
  call void @llvm.dbg.value(metadata i1 %144, metadata !4229, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression()) #18, !dbg !4253
  %145 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #18, !dbg !4257
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4257
  %147 = mul i64 %143, %73, !dbg !4258
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4258
  %149 = or i1 %144, %146, !dbg !4259
  call void @llvm.dbg.value(metadata i1 %149, metadata !4229, metadata !DIExpression()) #18, !dbg !4253
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4253
  br label %272, !dbg !4252

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()) #18, !dbg !4260
  call void @llvm.dbg.value(metadata i32 4, metadata !4236, metadata !DIExpression()) #18, !dbg !4260
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression()) #18, !dbg !4262
  %151 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4264
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4264
  %153 = mul i64 %49, %73, !dbg !4265
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4265
  call void @llvm.dbg.value(metadata i1 %152, metadata !4229, metadata !DIExpression()) #18, !dbg !4260
  call void @llvm.dbg.value(metadata i32 3, metadata !4236, metadata !DIExpression()) #18, !dbg !4260
  %155 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #18, !dbg !4264
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4264
  %157 = mul i64 %154, %73, !dbg !4265
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4265
  %159 = or i1 %152, %156, !dbg !4266
  call void @llvm.dbg.value(metadata i1 %159, metadata !4229, metadata !DIExpression()) #18, !dbg !4260
  call void @llvm.dbg.value(metadata i32 2, metadata !4236, metadata !DIExpression()) #18, !dbg !4260
  %160 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #18, !dbg !4264
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4264
  %162 = mul i64 %158, %73, !dbg !4265
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4265
  %164 = or i1 %159, %161, !dbg !4266
  call void @llvm.dbg.value(metadata i1 %164, metadata !4229, metadata !DIExpression()) #18, !dbg !4260
  call void @llvm.dbg.value(metadata i32 1, metadata !4236, metadata !DIExpression()) #18, !dbg !4260
  %165 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #18, !dbg !4264
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4264
  %167 = mul i64 %163, %73, !dbg !4265
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4265
  %169 = or i1 %164, %166, !dbg !4266
  call void @llvm.dbg.value(metadata i1 %169, metadata !4229, metadata !DIExpression()) #18, !dbg !4260
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression()) #18, !dbg !4260
  %170 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #18, !dbg !4264
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4264
  %172 = mul i64 %168, %73, !dbg !4265
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4265
  %174 = or i1 %169, %171, !dbg !4266
  call void @llvm.dbg.value(metadata i1 %174, metadata !4229, metadata !DIExpression()) #18, !dbg !4260
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4260
  br label %272, !dbg !4252

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()) #18, !dbg !4267
  call void @llvm.dbg.value(metadata i32 5, metadata !4236, metadata !DIExpression()) #18, !dbg !4267
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression()) #18, !dbg !4269
  %176 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4271
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4271
  %178 = mul i64 %49, %73, !dbg !4272
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4272
  call void @llvm.dbg.value(metadata i1 %177, metadata !4229, metadata !DIExpression()) #18, !dbg !4267
  call void @llvm.dbg.value(metadata i32 4, metadata !4236, metadata !DIExpression()) #18, !dbg !4267
  %180 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #18, !dbg !4271
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4271
  %182 = mul i64 %179, %73, !dbg !4272
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4272
  %184 = or i1 %177, %181, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %184, metadata !4229, metadata !DIExpression()) #18, !dbg !4267
  call void @llvm.dbg.value(metadata i32 3, metadata !4236, metadata !DIExpression()) #18, !dbg !4267
  %185 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #18, !dbg !4271
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4271
  %187 = mul i64 %183, %73, !dbg !4272
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4272
  %189 = or i1 %184, %186, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %189, metadata !4229, metadata !DIExpression()) #18, !dbg !4267
  call void @llvm.dbg.value(metadata i32 2, metadata !4236, metadata !DIExpression()) #18, !dbg !4267
  %190 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #18, !dbg !4271
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4271
  %192 = mul i64 %188, %73, !dbg !4272
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4272
  %194 = or i1 %189, %191, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %194, metadata !4229, metadata !DIExpression()) #18, !dbg !4267
  call void @llvm.dbg.value(metadata i32 1, metadata !4236, metadata !DIExpression()) #18, !dbg !4267
  %195 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #18, !dbg !4271
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4271
  %197 = mul i64 %193, %73, !dbg !4272
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4272
  %199 = or i1 %194, %196, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %199, metadata !4229, metadata !DIExpression()) #18, !dbg !4267
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression()) #18, !dbg !4267
  %200 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #18, !dbg !4271
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4271
  %202 = mul i64 %198, %73, !dbg !4272
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4272
  %204 = or i1 %199, %201, !dbg !4273
  call void @llvm.dbg.value(metadata i1 %204, metadata !4229, metadata !DIExpression()) #18, !dbg !4267
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4267
  br label %272, !dbg !4252

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4240, metadata !DIExpression()) #18, !dbg !4274
  %206 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #18, !dbg !4276
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4276
  %208 = shl i64 %49, 9, !dbg !4277
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4277
  call void @llvm.dbg.value(metadata i1 %207, metadata !4163, metadata !DIExpression()), !dbg !4207
  br label %272, !dbg !4278

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4240, metadata !DIExpression()) #18, !dbg !4279
  %211 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #18, !dbg !4281
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4281
  %213 = shl i64 %49, 10, !dbg !4282
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4282
  call void @llvm.dbg.value(metadata i1 %212, metadata !4163, metadata !DIExpression()), !dbg !4207
  br label %272, !dbg !4283

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4235, metadata !DIExpression()) #18, !dbg !4284
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()) #18, !dbg !4284
  call void @llvm.dbg.value(metadata i32 2, metadata !4236, metadata !DIExpression()) #18, !dbg !4284
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression()) #18, !dbg !4286
  %216 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4288
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4288
  %218 = mul i64 %49, %73, !dbg !4289
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4289
  call void @llvm.dbg.value(metadata i1 %217, metadata !4229, metadata !DIExpression()) #18, !dbg !4284
  call void @llvm.dbg.value(metadata i32 1, metadata !4236, metadata !DIExpression()) #18, !dbg !4284
  %220 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #18, !dbg !4288
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4288
  %222 = mul i64 %219, %73, !dbg !4289
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4289
  %224 = or i1 %217, %221, !dbg !4290
  call void @llvm.dbg.value(metadata i1 %224, metadata !4229, metadata !DIExpression()) #18, !dbg !4284
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression()) #18, !dbg !4284
  %225 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #18, !dbg !4288
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4288
  %227 = mul i64 %223, %73, !dbg !4289
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4289
  %229 = or i1 %224, %226, !dbg !4290
  call void @llvm.dbg.value(metadata i1 %229, metadata !4229, metadata !DIExpression()) #18, !dbg !4284
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4284
  br label %272, !dbg !4252

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4235, metadata !DIExpression()) #18, !dbg !4291
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()) #18, !dbg !4291
  call void @llvm.dbg.value(metadata i32 undef, metadata !4236, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4291
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression()) #18, !dbg !4293
  %231 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4295
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4295
  %233 = mul i64 %49, %73, !dbg !4296
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4296
  call void @llvm.dbg.value(metadata i1 %232, metadata !4229, metadata !DIExpression()) #18, !dbg !4291
  call void @llvm.dbg.value(metadata i32 undef, metadata !4236, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4291
  br label %272, !dbg !4252

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4235, metadata !DIExpression()) #18, !dbg !4297
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()) #18, !dbg !4297
  call void @llvm.dbg.value(metadata i32 1, metadata !4236, metadata !DIExpression()) #18, !dbg !4297
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression()) #18, !dbg !4299
  %236 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4301
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !4301
  %238 = mul i64 %49, %73, !dbg !4302
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !4302
  call void @llvm.dbg.value(metadata i1 %237, metadata !4229, metadata !DIExpression()) #18, !dbg !4297
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression()) #18, !dbg !4297
  %240 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #18, !dbg !4301
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4301
  %242 = mul i64 %239, %73, !dbg !4302
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4302
  %244 = or i1 %237, %241, !dbg !4303
  call void @llvm.dbg.value(metadata i1 %244, metadata !4229, metadata !DIExpression()) #18, !dbg !4297
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4297
  br label %272, !dbg !4252

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4235, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i32 3, metadata !4236, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i32 undef, metadata !4240, metadata !DIExpression()) #18, !dbg !4306
  %246 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4308
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4308
  %248 = mul i64 %49, %73, !dbg !4309
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4309
  call void @llvm.dbg.value(metadata i1 %247, metadata !4229, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i32 2, metadata !4236, metadata !DIExpression()) #18, !dbg !4304
  %250 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #18, !dbg !4308
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4308
  %252 = mul i64 %249, %73, !dbg !4309
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4309
  %254 = or i1 %247, %251, !dbg !4310
  call void @llvm.dbg.value(metadata i1 %254, metadata !4229, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i32 1, metadata !4236, metadata !DIExpression()) #18, !dbg !4304
  %255 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #18, !dbg !4308
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4308
  %257 = mul i64 %253, %73, !dbg !4309
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4309
  %259 = or i1 %254, %256, !dbg !4310
  call void @llvm.dbg.value(metadata i1 %259, metadata !4229, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression()) #18, !dbg !4304
  %260 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #18, !dbg !4308
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4308
  %262 = mul i64 %258, %73, !dbg !4309
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4309
  %264 = or i1 %259, %261, !dbg !4310
  call void @llvm.dbg.value(metadata i1 %264, metadata !4229, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4304
  br label %272, !dbg !4252

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4240, metadata !DIExpression()) #18, !dbg !4311
  %266 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #18, !dbg !4313
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4313
  %268 = shl i64 %49, 1, !dbg !4314
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4314
  call void @llvm.dbg.value(metadata i1 %267, metadata !4163, metadata !DIExpression()), !dbg !4207
  br label %272, !dbg !4315

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4153, metadata !DIExpression()), !dbg !4164
  store i64 %49, i64* %3, align 8, !dbg !4316, !tbaa !3032
  %271 = or i32 %48, 2, !dbg !4317
  br label %285, !dbg !4318

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !4164
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4319
  call void @llvm.dbg.value(metadata i32 %275, metadata !4163, metadata !DIExpression()), !dbg !4207
  %276 = or i32 %48, %275, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %276, metadata !4154, metadata !DIExpression()), !dbg !4164
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4320
  store i8* %277, i8** %25, align 8, !dbg !4320, !tbaa !1395
  %278 = load i8, i8* %277, align 1, !dbg !4321, !tbaa !1523
  %279 = icmp eq i8 %278, 0, !dbg !4321
  %280 = or i32 %276, 2, !dbg !4323
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4324
  call void @llvm.dbg.value(metadata i32 %281, metadata !4154, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i32 %281, metadata !4154, metadata !DIExpression()), !dbg !4164
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4325
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4326
  call void @llvm.dbg.value(metadata i32 %284, metadata !4154, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i64 %283, metadata !4153, metadata !DIExpression()), !dbg !4164
  store i64 %283, i64* %3, align 8, !dbg !4327, !tbaa !3032
  br label %285, !dbg !4328

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !4164
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #18, !dbg !4329
  ret i32 %286, !dbg !4329
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !4330 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4332, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64 %1, metadata !4333, metadata !DIExpression()), !dbg !4338
  %3 = icmp eq i64 %0, 0, !dbg !4339
  %4 = icmp eq i64 %1, 0, !dbg !4340
  %5 = or i1 %3, %4, !dbg !4341
  br i1 %5, label %11, label %6, !dbg !4341

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4335, metadata !DIExpression()), !dbg !4342
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4343
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4343
  br i1 %8, label %9, label %11, !dbg !4345

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !4346
  store i32 12, i32* %10, align 4, !dbg !4348, !tbaa !1483
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4332, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64 %12, metadata !4333, metadata !DIExpression()), !dbg !4338
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !4349
  call void @llvm.dbg.value(metadata i8* %14, metadata !4334, metadata !DIExpression()), !dbg !4338
  br label %15, !dbg !4350

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4338
  ret i8* %16, !dbg !4351
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4352 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4360, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i8* %1, metadata !4361, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %2, metadata !4362, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4363, metadata !DIExpression()), !dbg !4369
  %6 = bitcast i32* %5 to i8*, !dbg !4370
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4370
  %7 = icmp eq i32* %0, null, !dbg !4371
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4373
  call void @llvm.dbg.value(metadata i32* %8, metadata !4360, metadata !DIExpression()), !dbg !4369
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %9, metadata !4364, metadata !DIExpression()), !dbg !4369
  %10 = icmp ugt i64 %9, -3, !dbg !4375
  %11 = icmp ne i64 %2, 0, !dbg !4376
  %12 = and i1 %11, %10, !dbg !4377
  br i1 %12, label %13, label %18, !dbg !4377

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !4378
  br i1 %14, label %18, label %15, !dbg !4379

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4380, !tbaa !1523
  call void @llvm.dbg.value(metadata i8 %16, metadata !4366, metadata !DIExpression()), !dbg !4381
  %17 = zext i8 %16 to i32, !dbg !4382
  store i32 %17, i32* %8, align 4, !dbg !4383, !tbaa !1483
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4369
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4384
  ret i64 %19, !dbg !4384
}

; Function Attrs: nounwind
declare !dbg !734 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4385 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4391, metadata !DIExpression()), !dbg !4396
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !4397
  call void @llvm.dbg.value(metadata i1 undef, metadata !4392, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4398, metadata !DIExpression()), !dbg !4401
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4403
  %4 = load i32, i32* %3, align 8, !dbg !4403, !tbaa !4404
  %5 = and i32 %4, 32, !dbg !4403
  %6 = icmp eq i32 %5, 0, !dbg !4405
  call void @llvm.dbg.value(metadata i1 %6, metadata !4394, metadata !DIExpression()), !dbg !4396
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !4406
  %8 = icmp ne i32 %7, 0, !dbg !4407
  call void @llvm.dbg.value(metadata i1 %8, metadata !4395, metadata !DIExpression()), !dbg !4396
  br i1 %6, label %9, label %19, !dbg !4408

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4410
  call void @llvm.dbg.value(metadata i1 %10, metadata !4392, metadata !DIExpression()), !dbg !4396
  %11 = xor i1 %8, true, !dbg !4411
  %12 = or i1 %10, %11, !dbg !4411
  %13 = sext i1 %8 to i32, !dbg !4411
  br i1 %12, label %22, label %14, !dbg !4411

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !4412
  %16 = load i32, i32* %15, align 4, !dbg !4412, !tbaa !1483
  %17 = icmp ne i32 %16, 9, !dbg !4413
  %18 = sext i1 %17 to i32, !dbg !4414
  br label %22, !dbg !4414

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4415

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !4417
  store i32 0, i32* %21, align 4, !dbg !4419, !tbaa !1483
  br label %22, !dbg !4417

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4396
  ret i32 %23, !dbg !4420
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4421 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4423, metadata !DIExpression()), !dbg !4428
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4429
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4429
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4424, metadata !DIExpression()), !dbg !4430
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !4431
  %5 = icmp eq i32 %4, 0, !dbg !4431
  br i1 %5, label %6, label %13, !dbg !4433

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4434
  %8 = load i16, i16* %7, align 16, !dbg !4434
  %9 = icmp eq i16 %8, 67, !dbg !4434
  br i1 %9, label %13, label %10, !dbg !4435

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i64 6), !dbg !4436
  %12 = icmp ne i32 %11, 0, !dbg !4437
  br label %13, !dbg !4435

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4428
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4438
  ret i1 %14, !dbg !4438
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4439 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !4442
  call void @llvm.dbg.value(metadata i8* %1, metadata !4441, metadata !DIExpression()), !dbg !4443
  %2 = icmp eq i8* %1, null, !dbg !4444
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.158, i64 0, i64 0), i8* %1, !dbg !4446
  call void @llvm.dbg.value(metadata i8* %3, metadata !4441, metadata !DIExpression()), !dbg !4443
  %4 = load i8, i8* %3, align 1, !dbg !4447, !tbaa !1523
  %5 = icmp eq i8 %4, 0, !dbg !4451
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), i8* %3, !dbg !4452
  call void @llvm.dbg.value(metadata i8* %6, metadata !4441, metadata !DIExpression()), !dbg !4443
  ret i8* %6, !dbg !4453
}

; Function Attrs: nounwind
declare !dbg !1186 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mgetgroups(i8* %0, i32 %1, i32** nocapture %2) local_unnamed_addr #8 !dbg !1193 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1198, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32 %1, metadata !1199, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32** %2, metadata !1200, metadata !DIExpression()), !dbg !4454
  %5 = bitcast i32* %4 to i8*, !dbg !4455
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4455
  %6 = icmp eq i8* %0, null, !dbg !4456
  br i1 %6, label %43, label %7, !dbg !4457

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !1201, metadata !DIExpression()), !dbg !4454
  store i32 10, i32* %4, align 4, !dbg !4458, !tbaa !1483
  call void @llvm.dbg.value(metadata i32* null, metadata !4459, metadata !DIExpression()) #18, !dbg !4465
  call void @llvm.dbg.value(metadata i64 10, metadata !4464, metadata !DIExpression()) #18, !dbg !4465
  %8 = tail call dereferenceable_or_null(40) i8* @malloc(i64 40), !dbg !4467
  call void @llvm.dbg.value(metadata i8* %8, metadata !1203, metadata !DIExpression()), !dbg !4454
  %9 = icmp eq i8* %8, null, !dbg !4468
  br i1 %9, label %144, label %10, !dbg !4470

10:                                               ; preds = %7, %38
  %11 = phi i32 [ %39, %38 ], [ 10, %7 ], !dbg !4471
  %12 = phi i8* [ %29, %38 ], [ %8, %7 ]
  %13 = bitcast i8* %12 to i32*, !dbg !4472
  call void @llvm.dbg.value(metadata i32* %13, metadata !1203, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32 %11, metadata !1201, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32 %11, metadata !1208, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i32* %4, metadata !1201, metadata !DIExpression(DW_OP_deref)), !dbg !4454
  %14 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %13, i32* nonnull %4) #18, !dbg !4474
  call void @llvm.dbg.value(metadata i32 %14, metadata !1202, metadata !DIExpression()), !dbg !4454
  %15 = icmp slt i32 %14, 0, !dbg !4475
  %16 = load i32, i32* %4, align 4, !dbg !4473, !tbaa !1483
  %17 = icmp eq i32 %11, %16, !dbg !4477
  %18 = and i1 %15, %17, !dbg !4478
  call void @llvm.dbg.value(metadata i32 %16, metadata !1201, metadata !DIExpression()), !dbg !4454
  br i1 %18, label %19, label %21, !dbg !4478

19:                                               ; preds = %10
  %20 = shl nsw i32 %11, 1, !dbg !4479
  call void @llvm.dbg.value(metadata i32 %20, metadata !1201, metadata !DIExpression()), !dbg !4454
  store i32 %20, i32* %4, align 4, !dbg !4479, !tbaa !1483
  br label %21, !dbg !4480

21:                                               ; preds = %10, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !4481
  call void @llvm.dbg.value(metadata i32 %22, metadata !1201, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %13, metadata !4459, metadata !DIExpression()) #18, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %22, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !4482
  %23 = icmp slt i32 %22, 0, !dbg !4484
  br i1 %23, label %24, label %26, !dbg !4486

24:                                               ; preds = %21
  %25 = tail call i32* @__errno_location() #24, !dbg !4487
  store i32 12, i32* %25, align 4, !dbg !4489, !tbaa !1483
  call void @llvm.dbg.value(metadata i8* %29, metadata !1204, metadata !DIExpression()), !dbg !4473
  br label %33, !dbg !4490

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64, !dbg !4481
  call void @llvm.dbg.value(metadata i64 %27, metadata !4464, metadata !DIExpression()) #18, !dbg !4482
  %28 = shl nuw nsw i64 %27, 2, !dbg !4491
  %29 = call i8* @realloc(i8* nonnull %12, i64 %28) #18, !dbg !4492
  call void @llvm.dbg.value(metadata i8* %29, metadata !1204, metadata !DIExpression()), !dbg !4473
  %30 = icmp eq i8* %29, null, !dbg !4493
  br i1 %30, label %31, label %36, !dbg !4490

31:                                               ; preds = %26
  %32 = tail call i32* @__errno_location() #24, !dbg !4494
  br label %33, !dbg !4494

33:                                               ; preds = %31, %24
  %34 = phi i32* [ %32, %31 ], [ %25, %24 ], !dbg !4494
  %35 = load i32, i32* %34, align 4, !dbg !4494, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %35, metadata !1209, metadata !DIExpression()), !dbg !4495
  call void @free(i8* nonnull %12) #18, !dbg !4496
  store i32 %35, i32* %34, align 4, !dbg !4497, !tbaa !1483
  br label %144

36:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %29, metadata !1204, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i8* %29, metadata !1203, metadata !DIExpression()), !dbg !4454
  %37 = icmp sgt i32 %14, -1, !dbg !4498
  br i1 %37, label %40, label %38, !dbg !4500

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4, !dbg !4471, !tbaa !1483
  br label %10, !dbg !4500

40:                                               ; preds = %36
  %41 = bitcast i32** %2 to i8**, !dbg !4501
  store i8* %29, i8** %41, align 8, !dbg !4501, !tbaa !1395
  %42 = load i32, i32* %4, align 4, !dbg !4503, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %42, metadata !1201, metadata !DIExpression()), !dbg !4454
  br label %144, !dbg !4504

43:                                               ; preds = %3
  %44 = tail call i32 @getgroups(i32 0, i32* null) #18, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %44, metadata !1201, metadata !DIExpression()), !dbg !4454
  store i32 %44, i32* %4, align 4, !dbg !4506, !tbaa !1483
  %45 = icmp slt i32 %44, 0, !dbg !4507
  br i1 %45, label %46, label %58, !dbg !4509

46:                                               ; preds = %43
  %47 = tail call i32* @__errno_location() #24, !dbg !4510
  %48 = load i32, i32* %47, align 4, !dbg !4510, !tbaa !1483
  %49 = icmp eq i32 %48, 38, !dbg !4513
  br i1 %49, label %50, label %144, !dbg !4514

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32* null, metadata !4459, metadata !DIExpression()) #18, !dbg !4515
  call void @llvm.dbg.value(metadata i64 1, metadata !4464, metadata !DIExpression()) #18, !dbg !4515
  %51 = tail call dereferenceable_or_null(4) i8* @malloc(i64 4), !dbg !4517
  call void @llvm.dbg.value(metadata i8* %51, metadata !1203, metadata !DIExpression()), !dbg !4454
  %52 = icmp eq i8* %51, null, !dbg !4518
  br i1 %52, label %144, label %53, !dbg !4519

53:                                               ; preds = %50
  %54 = bitcast i8* %51 to i32*, !dbg !4517
  call void @llvm.dbg.value(metadata i32* %54, metadata !1203, metadata !DIExpression()), !dbg !4454
  %55 = bitcast i32** %2 to i8**, !dbg !4520
  store i8* %51, i8** %55, align 8, !dbg !4520, !tbaa !1395
  store i32 %1, i32* %54, align 4, !dbg !4522, !tbaa !1483
  %56 = icmp ne i32 %1, -1, !dbg !4523
  %57 = zext i1 %56 to i32, !dbg !4523
  br label %144, !dbg !4524

58:                                               ; preds = %43
  %59 = icmp ne i32 %44, 0, !dbg !4525
  %60 = icmp eq i32 %1, -1, !dbg !4527
  %61 = and i1 %60, %59, !dbg !4528
  br i1 %61, label %64, label %62, !dbg !4528

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 %44, metadata !1201, metadata !DIExpression()), !dbg !4454
  %63 = add nuw nsw i32 %44, 1, !dbg !4529
  call void @llvm.dbg.value(metadata i32 %63, metadata !1201, metadata !DIExpression()), !dbg !4454
  store i32 %63, i32* %4, align 4, !dbg !4529, !tbaa !1483
  br label %64, !dbg !4530

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %44, %58 ], [ %63, %62 ], !dbg !4531
  call void @llvm.dbg.value(metadata i32 %65, metadata !1201, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* null, metadata !4459, metadata !DIExpression()) #18, !dbg !4532
  call void @llvm.dbg.value(metadata i32 %65, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !4532
  %66 = zext i32 %65 to i64, !dbg !4531
  call void @llvm.dbg.value(metadata i64 %66, metadata !4464, metadata !DIExpression()) #18, !dbg !4532
  %67 = shl nuw nsw i64 %66, 2, !dbg !4534
  %68 = tail call i8* @malloc(i64 %67), !dbg !4535
  %69 = bitcast i8* %68 to i32*, !dbg !4535
  call void @llvm.dbg.value(metadata i32* %69, metadata !1203, metadata !DIExpression()), !dbg !4454
  %70 = icmp eq i8* %68, null, !dbg !4536
  br i1 %70, label %144, label %71, !dbg !4538

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 undef, metadata !1201, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32 %65, metadata !1201, metadata !DIExpression()), !dbg !4454
  %72 = icmp ne i32 %1, -1, !dbg !4539
  %73 = sext i1 %72 to i32, !dbg !4540
  %74 = add nsw i32 %65, %73, !dbg !4540
  %75 = zext i1 %72 to i64, !dbg !4541
  %76 = getelementptr inbounds i32, i32* %69, i64 %75, !dbg !4541
  %77 = tail call i32 @getgroups(i32 %74, i32* nonnull %76) #18, !dbg !4542
  call void @llvm.dbg.value(metadata i32 %77, metadata !1202, metadata !DIExpression()), !dbg !4454
  %78 = icmp slt i32 %77, 0, !dbg !4543
  br i1 %78, label %79, label %82, !dbg !4544

79:                                               ; preds = %71
  %80 = tail call i32* @__errno_location() #24, !dbg !4545
  %81 = load i32, i32* %80, align 4, !dbg !4545, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %81, metadata !1212, metadata !DIExpression()), !dbg !4546
  tail call void @free(i8* nonnull %68) #18, !dbg !4547
  store i32 %81, i32* %80, align 4, !dbg !4548, !tbaa !1483
  br label %144

82:                                               ; preds = %71
  br i1 %60, label %85, label %83, !dbg !4549

83:                                               ; preds = %82
  store i32 %1, i32* %69, align 4, !dbg !4551, !tbaa !1483
  %84 = add nuw nsw i32 %77, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i32 %84, metadata !1202, metadata !DIExpression()), !dbg !4454
  br label %85, !dbg !4554

85:                                               ; preds = %82, %83
  %86 = phi i32 [ %84, %83 ], [ %77, %82 ], !dbg !4454
  call void @llvm.dbg.value(metadata i32 %86, metadata !1202, metadata !DIExpression()), !dbg !4454
  %87 = bitcast i32** %2 to i8**, !dbg !4555
  store i8* %68, i8** %87, align 8, !dbg !4555, !tbaa !1395
  %88 = icmp sgt i32 %86, 1, !dbg !4556
  br i1 %88, label %89, label %144, !dbg !4557

89:                                               ; preds = %85
  %90 = load i32, i32* %69, align 4, !dbg !4558, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %90, metadata !1215, metadata !DIExpression()), !dbg !4559
  %91 = zext i32 %86 to i64, !dbg !4560
  %92 = getelementptr inbounds i32, i32* %69, i64 %91, !dbg !4560
  call void @llvm.dbg.value(metadata i32* %92, metadata !1219, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i32* %69, metadata !1218, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4559
  %93 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !4561
  %94 = bitcast i8* %93 to i32*, !dbg !4561
  call void @llvm.dbg.value(metadata i32* %94, metadata !1218, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i32 %86, metadata !1202, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %69, metadata !1203, metadata !DIExpression()), !dbg !4454
  %95 = icmp ugt i32* %92, %94, !dbg !4563
  br i1 %95, label %96, label %144, !dbg !4565

96:                                               ; preds = %89
  %97 = shl nuw nsw i64 %91, 2, !dbg !4565
  %98 = add nsw i64 %97, -5, !dbg !4565
  %99 = and i64 %98, 4, !dbg !4565
  %100 = icmp eq i64 %99, 0, !dbg !4565
  br i1 %100, label %101, label %115, !dbg !4565

101:                                              ; preds = %96
  call void @llvm.dbg.value(metadata i32 %86, metadata !1202, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %69, metadata !1203, metadata !DIExpression()), !dbg !4454
  %102 = load i32, i32* %94, align 4, !dbg !4566, !tbaa !1483
  %103 = icmp eq i32 %102, %90, !dbg !4569
  br i1 %103, label %107, label %104, !dbg !4570

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !4571
  %106 = bitcast i8* %105 to i32*, !dbg !4571
  call void @llvm.dbg.value(metadata i32* %106, metadata !1203, metadata !DIExpression()), !dbg !4454
  store i32 %102, i32* %106, align 4, !dbg !4572, !tbaa !1483
  br label %109

107:                                              ; preds = %101
  %108 = add nsw i32 %86, -1, !dbg !4573
  call void @llvm.dbg.value(metadata i32 %108, metadata !1202, metadata !DIExpression()), !dbg !4454
  br label %109, !dbg !4574

109:                                              ; preds = %107, %104
  %110 = phi i32 [ %90, %107 ], [ %102, %104 ]
  %111 = phi i32* [ %69, %107 ], [ %106, %104 ], !dbg !4454
  %112 = phi i32 [ %108, %107 ], [ %86, %104 ], !dbg !4454
  call void @llvm.dbg.value(metadata i32 %112, metadata !1202, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %111, metadata !1203, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %94, metadata !1218, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4559
  %113 = getelementptr inbounds i8, i8* %68, i64 8, !dbg !4561
  %114 = bitcast i8* %113 to i32*, !dbg !4561
  call void @llvm.dbg.value(metadata i32* %114, metadata !1218, metadata !DIExpression()), !dbg !4559
  br label %115, !dbg !4565

115:                                              ; preds = %109, %96
  %116 = phi i32 [ %90, %96 ], [ %110, %109 ]
  %117 = phi i32* [ %94, %96 ], [ %114, %109 ]
  %118 = phi i32 [ %86, %96 ], [ %112, %109 ]
  %119 = phi i32* [ %69, %96 ], [ %111, %109 ]
  %120 = phi i32 [ undef, %96 ], [ %112, %109 ]
  %121 = icmp eq i64 %98, 3, !dbg !4565
  br i1 %121, label %144, label %122, !dbg !4565

122:                                              ; preds = %115, %150
  %123 = phi i32 [ %151, %150 ], [ %116, %115 ]
  %124 = phi i32* [ %154, %150 ], [ %117, %115 ]
  %125 = phi i32 [ %153, %150 ], [ %118, %115 ]
  %126 = phi i32* [ %152, %150 ], [ %119, %115 ]
  call void @llvm.dbg.value(metadata i32 %125, metadata !1202, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %126, metadata !1203, metadata !DIExpression()), !dbg !4454
  %127 = load i32, i32* %124, align 4, !dbg !4566, !tbaa !1483
  %128 = icmp eq i32 %127, %90, !dbg !4575
  %129 = icmp eq i32 %127, %123, !dbg !4569
  %130 = or i1 %128, %129, !dbg !4570
  br i1 %130, label %131, label %133, !dbg !4570

131:                                              ; preds = %122
  %132 = add nsw i32 %125, -1, !dbg !4573
  call void @llvm.dbg.value(metadata i32 %132, metadata !1202, metadata !DIExpression()), !dbg !4454
  br label %135, !dbg !4574

133:                                              ; preds = %122
  %134 = getelementptr inbounds i32, i32* %126, i64 1, !dbg !4571
  call void @llvm.dbg.value(metadata i32* %134, metadata !1203, metadata !DIExpression()), !dbg !4454
  store i32 %127, i32* %134, align 4, !dbg !4572, !tbaa !1483
  br label %135

135:                                              ; preds = %131, %133
  %136 = phi i32 [ %123, %131 ], [ %127, %133 ]
  %137 = phi i32* [ %126, %131 ], [ %134, %133 ], !dbg !4454
  %138 = phi i32 [ %132, %131 ], [ %125, %133 ], !dbg !4454
  call void @llvm.dbg.value(metadata i32 %138, metadata !1202, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %137, metadata !1203, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %124, metadata !1218, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4559
  %139 = getelementptr inbounds i32, i32* %124, i64 1, !dbg !4561
  call void @llvm.dbg.value(metadata i32* %139, metadata !1218, metadata !DIExpression()), !dbg !4559
  %140 = load i32, i32* %139, align 4, !dbg !4566, !tbaa !1483
  %141 = icmp eq i32 %140, %90, !dbg !4575
  %142 = icmp eq i32 %140, %136, !dbg !4569
  %143 = or i1 %141, %142, !dbg !4570
  br i1 %143, label %148, label %146, !dbg !4570

144:                                              ; preds = %115, %150, %89, %40, %33, %85, %64, %46, %50, %7, %79, %53
  %145 = phi i32 [ %57, %53 ], [ -1, %79 ], [ -1, %7 ], [ -1, %50 ], [ -1, %46 ], [ -1, %64 ], [ %86, %85 ], [ %42, %40 ], [ -1, %33 ], [ %86, %89 ], [ %120, %115 ], [ %153, %150 ], !dbg !4454
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4576
  ret i32 %145, !dbg !4576

146:                                              ; preds = %135
  %147 = getelementptr inbounds i32, i32* %137, i64 1, !dbg !4571
  call void @llvm.dbg.value(metadata i32* %147, metadata !1203, metadata !DIExpression()), !dbg !4454
  store i32 %140, i32* %147, align 4, !dbg !4572, !tbaa !1483
  br label %150

148:                                              ; preds = %135
  %149 = add nsw i32 %138, -1, !dbg !4573
  call void @llvm.dbg.value(metadata i32 %149, metadata !1202, metadata !DIExpression()), !dbg !4454
  br label %150, !dbg !4574

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %136, %148 ], [ %140, %146 ]
  %152 = phi i32* [ %137, %148 ], [ %147, %146 ], !dbg !4454
  %153 = phi i32 [ %149, %148 ], [ %138, %146 ], !dbg !4454
  call void @llvm.dbg.value(metadata i32 %153, metadata !1202, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %152, metadata !1203, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %139, metadata !1218, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4559
  %154 = getelementptr inbounds i32, i32* %124, i64 2, !dbg !4561
  call void @llvm.dbg.value(metadata i32* %154, metadata !1218, metadata !DIExpression()), !dbg !4559
  %155 = icmp ult i32* %154, %92, !dbg !4563
  br i1 %155, label %122, label %144, !dbg !4565, !llvm.loop !4577
}

declare !dbg !1223 i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4579 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4583, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i8* %1, metadata !4584, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %2, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 %0, metadata !4587, metadata !DIExpression()) #18, !dbg !4596
  call void @llvm.dbg.value(metadata i8* %1, metadata !4590, metadata !DIExpression()) #18, !dbg !4596
  call void @llvm.dbg.value(metadata i64 %2, metadata !4591, metadata !DIExpression()) #18, !dbg !4596
  call void @llvm.dbg.value(metadata i32 %0, metadata !4598, metadata !DIExpression()) #18, !dbg !4604
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4606
  call void @llvm.dbg.value(metadata i8* %4, metadata !4603, metadata !DIExpression()) #18, !dbg !4604
  call void @llvm.dbg.value(metadata i8* %4, metadata !4592, metadata !DIExpression()) #18, !dbg !4596
  %5 = icmp eq i8* %4, null, !dbg !4607
  br i1 %5, label %6, label %9, !dbg !4608

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4609
  br i1 %7, label %19, label %8, !dbg !4612

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4613, !tbaa !1523
  br label %19, !dbg !4614

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !4615
  call void @llvm.dbg.value(metadata i64 %10, metadata !4593, metadata !DIExpression()) #18, !dbg !4616
  %11 = icmp ult i64 %10, %2, !dbg !4617
  br i1 %11, label %12, label %14, !dbg !4619

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4620
  call void @llvm.dbg.value(metadata i8* %1, metadata !4622, metadata !DIExpression()) #18, !dbg !4627
  call void @llvm.dbg.value(metadata i8* %4, metadata !4625, metadata !DIExpression()) #18, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %13, metadata !4626, metadata !DIExpression()) #18, !dbg !4627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !4629
  br label %19, !dbg !4630

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4631
  br i1 %15, label %19, label %16, !dbg !4634

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4635
  call void @llvm.dbg.value(metadata i8* %1, metadata !4622, metadata !DIExpression()) #18, !dbg !4637
  call void @llvm.dbg.value(metadata i8* %4, metadata !4625, metadata !DIExpression()) #18, !dbg !4637
  call void @llvm.dbg.value(metadata i64 %17, metadata !4626, metadata !DIExpression()) #18, !dbg !4637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !4639
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4640
  store i8 0, i8* %18, align 1, !dbg !4641, !tbaa !1523
  br label %19, !dbg !4642

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4643
  ret i32 %20, !dbg !4644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4645 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4647, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i32 %0, metadata !4598, metadata !DIExpression()) #18, !dbg !4649
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4651
  call void @llvm.dbg.value(metadata i8* %2, metadata !4603, metadata !DIExpression()) #18, !dbg !4649
  ret i8* %2, !dbg !4652
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4653 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4659, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i32 0, metadata !4660, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i32 0, metadata !4662, metadata !DIExpression()), !dbg !4663
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4664
  call void @llvm.dbg.value(metadata i32 %2, metadata !4661, metadata !DIExpression()), !dbg !4663
  %3 = icmp slt i32 %2, 0, !dbg !4665
  br i1 %3, label %4, label %6, !dbg !4667

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4668
  br label %24, !dbg !4669

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4670
  %8 = icmp eq i32 %7, 0, !dbg !4670
  br i1 %8, label %13, label %9, !dbg !4672

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4673
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !4674
  %12 = icmp eq i64 %11, -1, !dbg !4675
  br i1 %12, label %16, label %13, !dbg !4676

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !4677
  %15 = icmp eq i32 %14, 0, !dbg !4677
  br i1 %15, label %16, label %18, !dbg !4678

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4660, metadata !DIExpression()), !dbg !4663
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4679
  call void @llvm.dbg.value(metadata i32 %21, metadata !4662, metadata !DIExpression()), !dbg !4663
  br label %24, !dbg !4680

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4681
  %20 = load i32, i32* %19, align 4, !dbg !4681, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 %20, metadata !4660, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i32 %20, metadata !4660, metadata !DIExpression()), !dbg !4663
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4679
  call void @llvm.dbg.value(metadata i32 %21, metadata !4662, metadata !DIExpression()), !dbg !4663
  %22 = icmp eq i32 %20, 0, !dbg !4682
  br i1 %22, label %24, label %23, !dbg !4680

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4684, !tbaa !1483
  call void @llvm.dbg.value(metadata i32 -1, metadata !4662, metadata !DIExpression()), !dbg !4663
  br label %24, !dbg !4686

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4663
  ret i32 %25, !dbg !4687
}

; Function Attrs: nofree nounwind
declare !dbg !1236 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1271 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1272 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4688 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4694, metadata !DIExpression()), !dbg !4695
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4696
  br i1 %2, label %6, label %3, !dbg !4698

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4699
  %5 = icmp eq i32 %4, 0, !dbg !4699
  br i1 %5, label %6, label %8, !dbg !4700

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4701
  br label %17, !dbg !4702

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4703, metadata !DIExpression()) #18, !dbg !4708
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4710
  %10 = load i32, i32* %9, align 8, !dbg !4710, !tbaa !4404
  %11 = and i32 %10, 256, !dbg !4712
  %12 = icmp eq i32 %11, 0, !dbg !4712
  br i1 %12, label %15, label %13, !dbg !4713

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !4714
  br label %15, !dbg !4714

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4715
  br label %17, !dbg !4716

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4695
  ret i32 %18, !dbg !4717
}

; Function Attrs: nofree nounwind
declare !dbg !1279 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4718 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4725, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i64 %1, metadata !4726, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i32 %2, metadata !4727, metadata !DIExpression()), !dbg !4731
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4732
  %5 = load i8*, i8** %4, align 8, !dbg !4732, !tbaa !4733
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4734
  %7 = load i8*, i8** %6, align 8, !dbg !4734, !tbaa !4735
  %8 = icmp eq i8* %5, %7, !dbg !4736
  br i1 %8, label %9, label %28, !dbg !4737

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4738
  %11 = load i8*, i8** %10, align 8, !dbg !4738, !tbaa !1813
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4739
  %13 = load i8*, i8** %12, align 8, !dbg !4739, !tbaa !4740
  %14 = icmp eq i8* %11, %13, !dbg !4741
  br i1 %14, label %15, label %28, !dbg !4742

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4743
  %17 = load i8*, i8** %16, align 8, !dbg !4743, !tbaa !4744
  %18 = icmp eq i8* %17, null, !dbg !4745
  br i1 %18, label %19, label %28, !dbg !4746

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4747
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %21, metadata !4728, metadata !DIExpression()), !dbg !4749
  %22 = icmp eq i64 %21, -1, !dbg !4750
  br i1 %22, label %30, label %23, !dbg !4752

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4753
  %25 = load i32, i32* %24, align 8, !dbg !4754, !tbaa !4404
  %26 = and i32 %25, -17, !dbg !4754
  store i32 %26, i32* %24, align 8, !dbg !4754, !tbaa !4404
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4755
  store i64 %21, i64* %27, align 8, !dbg !4756, !tbaa !4757
  br label %30, !dbg !4758

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4759
  br label %30, !dbg !4760

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4731
  ret i32 %31, !dbg !4761
}

; Function Attrs: nofree nounwind
declare !dbg !1355 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!2, !255, !320, !325, !371, !558, !377, !418, !564, !654, !552, !696, !717, !720, !724, !728, !731, !750, !789, !796, !1189, !1230, !1233, !1276, !1317}
!llvm.ident = !{!1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358, !1358}
!llvm.module.flags = !{!1359, !1360, !1361, !1362, !1363}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 75, type: !242, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !189, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/id.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !15, !76, !80, !84, !87, !90, !97, !112, !10, !66, !116, !120, !121, !128, !144, !148, !150, !153, !157, !158, !159, !160, !165, !168, !172, !183, !188}
!6 = !DISubprogram(name: "dcgettext", scope: !7, file: !7, line: 51, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !12, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!16 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!17 = !DISubroutineType(types: !18)
!18 = !{!14, !12, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !39, !40, !41, !45, !47, !49, !53, !56, !58, !61, !64, !65, !67, !71, !72}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 51, baseType: !14, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 36, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 70, baseType: !19, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 152, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!48 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 1)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 43, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 153, baseType: !44)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !20, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !21, line: 37, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !20, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !21, line: 38, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !20, file: !21, line: 93, baseType: !19, size: 64, offset: 1344)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !20, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 20)
!76 = !DISubprogram(name: "set_program_name", scope: !77, file: !77, line: 37, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!77 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !DISubroutineType(types: !79)
!79 = !{null, !12}
!80 = !DISubprogram(name: "setlocale", scope: !81, file: !81, line: 122, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!81 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!82 = !DISubroutineType(types: !83)
!83 = !{!10, !14, !12}
!84 = !DISubprogram(name: "bindtextdomain", scope: !7, file: !7, line: 86, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!85 = !DISubroutineType(types: !86)
!86 = !{!10, !12, !12}
!87 = !DISubprogram(name: "textdomain", scope: !7, file: !7, line: 82, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!88 = !DISubroutineType(types: !89)
!89 = !{!10, !12}
!90 = !DISubprogram(name: "atexit", scope: !91, file: !91, line: 595, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!91 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!92 = !DISubroutineType(types: !93)
!93 = !{!14, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DISubprogram(name: "getopt_long", scope: !98, file: !98, line: 66, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!98 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!99 = !DISubroutineType(types: !100)
!100 = !{!14, !14, !101, !12, !103, !110}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !98, line: 50, size: 256, elements: !106)
!106 = !{!107, !108, !109, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !98, line: 52, baseType: !12, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !105, file: !98, line: 55, baseType: !14, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !105, file: !98, line: 56, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !105, file: !98, line: 57, baseType: !14, size: 32, offset: 192)
!112 = !DISubprogram(name: "error", scope: !113, file: !113, line: 52, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!113 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!114 = !DISubroutineType(types: !115)
!115 = !{null, !14, !14, !12, null}
!116 = !DISubprogram(name: "version_etc", scope: !117, file: !117, line: 69, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!117 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !DISubroutineType(types: !119)
!119 = !{null, !19, !12, !12, !12, null}
!120 = !DISubprogram(name: "getenv", scope: !91, file: !91, line: 634, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!121 = !DISubprogram(name: "parse_user_spec", scope: !122, file: !122, line: 7, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!122 = !DIFile(filename: "./lib/userspec.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!123 = !DISubroutineType(types: !124)
!124 = !{!12, !12, !125, !125, !127, !127}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!128 = !DISubprogram(name: "getpwuid", scope: !129, file: !129, line: 110, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!129 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !126}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !129, line: 49, size: 384, elements: !134)
!134 = !{!135, !136, !137, !139, !141, !142, !143}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !133, file: !129, line: 51, baseType: !10, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !133, file: !129, line: 52, baseType: !10, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !133, file: !129, line: 54, baseType: !138, size: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !43, line: 146, baseType: !126)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !133, file: !129, line: 55, baseType: !140, size: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !43, line: 147, baseType: !126)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !133, file: !129, line: 56, baseType: !10, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !133, file: !129, line: 57, baseType: !10, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !133, file: !129, line: 58, baseType: !10, size: 64, offset: 320)
!144 = !DISubprogram(name: "quote", scope: !145, file: !145, line: 44, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!145 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!146 = !DISubroutineType(types: !147)
!147 = !{!12, !12}
!148 = !DISubprogram(name: "xstrdup", scope: !149, file: !149, line: 64, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!149 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!150 = !DISubprogram(name: "free", scope: !91, file: !91, line: 565, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !66}
!153 = !DISubprogram(name: "geteuid", scope: !154, file: !154, line: 678, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!154 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!155 = !DISubroutineType(types: !156)
!156 = !{!126}
!157 = !DISubprogram(name: "getuid", scope: !154, file: !154, line: 675, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!158 = !DISubprogram(name: "getegid", scope: !154, file: !154, line: 684, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!159 = !DISubprogram(name: "getgid", scope: !154, file: !154, line: 681, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!160 = !DISubprogram(name: "print_group", scope: !161, file: !161, line: 18, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!161 = !DIFile(filename: "src/group-list.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !126, !164}
!164 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!165 = !DISubprogram(name: "print_group_list", scope: !161, file: !161, line: 19, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!166 = !DISubroutineType(types: !167)
!167 = !{!164, !12, !126, !126, !126, !164, !11}
!168 = !DISubprogram(name: "umaxtostr", scope: !169, file: !169, line: 46, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!169 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !DISubroutineType(types: !171)
!171 = !{!10, !70, !10}
!172 = !DISubprogram(name: "getgrgid", scope: !173, file: !173, line: 101, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!173 = !DIFile(filename: "/usr/include/grp.h", directory: "")
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !126}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !173, line: 42, size: 256, elements: !178)
!178 = !{!179, !180, !181, !182}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !177, file: !173, line: 44, baseType: !10, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !177, file: !173, line: 45, baseType: !10, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !177, file: !173, line: 46, baseType: !140, size: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !177, file: !173, line: 47, baseType: !127, size: 64, offset: 192)
!183 = !DISubprogram(name: "xgetgroups", scope: !184, file: !184, line: 21, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!184 = !DIFile(filename: "./lib/mgetgroups.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!185 = !DISubroutineType(types: !186)
!186 = !{!14, !12, !126, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!188 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!189 = !{!190, !194, !196, !199, !0, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !233}
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "ruid", scope: !2, file: !3, line: 64, type: !192, isLocal: true, isDefinition: true)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !193, line: 79, baseType: !138)
!193 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "euid", scope: !2, file: !3, line: 64, type: !192, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "rgid", scope: !2, file: !3, line: 65, type: !198, isLocal: true, isDefinition: true)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !193, line: 64, baseType: !140)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "egid", scope: !2, file: !3, line: 65, type: !198, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "just_context", scope: !2, file: !3, line: 45, type: !164, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "just_group", scope: !2, file: !3, line: 51, type: !164, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "use_name", scope: !2, file: !3, line: 61, type: !164, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "use_real", scope: !2, file: !3, line: 53, type: !164, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "just_user", scope: !2, file: !3, line: 55, type: !164, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "opt_zero", scope: !2, file: !3, line: 47, type: !164, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "just_group_list", scope: !2, file: !3, line: 49, type: !164, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !3, line: 69, type: !10, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "multiple_users", scope: !2, file: !3, line: 59, type: !164, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "ok", scope: !2, file: !3, line: 57, type: !164, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "buf", scope: !223, file: !3, line: 327, type: !230, isLocal: true, isDefinition: true)
!223 = distinct !DISubprogram(name: "uidtostr_ptr", scope: !3, file: !3, line: 325, type: !224, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!224 = !DISubroutineType(types: !225)
!225 = !{!10, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!228 = !{!229}
!229 = !DILocalVariable(name: "uid", arg: 1, scope: !223, file: !3, line: 325, type: !226)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 168, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 21)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "buf", scope: !235, file: !3, line: 316, type: !230, isLocal: true, isDefinition: true)
!235 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !3, file: !3, line: 314, type: !236, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!236 = !DISubroutineType(types: !237)
!237 = !{!10, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!240 = !{!241}
!241 = !DILocalVariable(name: "gid", arg: 1, scope: !235, file: !3, line: 314, type: !238)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2560, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 10)
!245 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!246 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!247 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!248 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!249 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!250 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "buf", scope: !253, file: !254, line: 96, type: !230, isLocal: true, isDefinition: true)
!253 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !254, file: !254, line: 94, type: !236, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !316)
!254 = !DIFile(filename: "src/group-list.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !256, globals: !315, splitDebugInlining: false, nameTableKind: None)
!256 = !{!257, !66, !160, !183, !6, !144, !112, !150, !270, !70, !280, !188, !168}
!257 = !DISubprogram(name: "getpwuid", scope: !129, file: !129, line: 110, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !126}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !129, line: 49, size: 384, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !261, file: !129, line: 51, baseType: !10, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !261, file: !129, line: 52, baseType: !10, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !261, file: !129, line: 54, baseType: !138, size: 32, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !261, file: !129, line: 55, baseType: !140, size: 32, offset: 160)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !261, file: !129, line: 56, baseType: !10, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !261, file: !129, line: 57, baseType: !10, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !261, file: !129, line: 58, baseType: !10, size: 64, offset: 320)
!270 = !DISubprogram(name: "getgrgid", scope: !173, file: !173, line: 101, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !126}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !173, line: 42, size: 256, elements: !275)
!275 = !{!276, !277, !278, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !274, file: !173, line: 44, baseType: !10, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !274, file: !173, line: 45, baseType: !10, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !274, file: !173, line: 46, baseType: !140, size: 32, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !274, file: !173, line: 47, baseType: !127, size: 64, offset: 192)
!280 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!281 = !DISubroutineType(types: !282)
!282 = !{!14, !12, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !284, file: !21, line: 51, baseType: !14, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !284, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !284, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !284, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !284, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !284, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !284, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !284, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !284, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !284, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !284, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !284, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !284, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !284, file: !21, line: 70, baseType: !283, size: 64, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !284, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !284, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !284, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !284, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !284, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !284, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !284, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !284, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !284, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !284, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !284, file: !21, line: 93, baseType: !283, size: 64, offset: 1344)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !284, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !284, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !284, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !284, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!315 = !{!251}
!316 = !{!317}
!317 = !DILocalVariable(name: "gid", arg: 1, scope: !253, file: !254, line: 94, type: !238)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "Version", scope: !320, file: !321, line: 2, type: !12, isLocal: false, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !322, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!322 = !{!318}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "file_name", scope: !325, file: !326, line: 46, type: !12, isLocal: true, isDefinition: true)
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !327, globals: !366, splitDebugInlining: false, nameTableKind: None)
!326 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!327 = !{!328, !6, !364, !112}
!328 = !DISubprogram(name: "close_stream", scope: !329, file: !329, line: 2, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!329 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!330 = !DISubroutineType(types: !331)
!331 = !{!14, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !333, file: !21, line: 51, baseType: !14, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !333, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !333, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !333, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !333, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !333, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !333, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !333, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !333, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !333, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !333, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !333, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !333, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !333, file: !21, line: 70, baseType: !332, size: 64, offset: 832)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !333, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !333, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !333, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !333, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !333, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !333, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !333, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !333, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !333, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !333, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !333, file: !21, line: 93, baseType: !332, size: 64, offset: 1344)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !333, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !333, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !333, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !333, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!364 = !DISubprogram(name: "quotearg_colon", scope: !365, file: !365, line: 391, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!365 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!366 = !{!323, !367}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !325, file: !326, line: 56, type: !164, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "exit_failure", scope: !371, file: !372, line: 24, type: !374, isLocal: false, isDefinition: true)
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !373, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!373 = !{!369}
!374 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "program_name", scope: !377, file: !378, line: 33, type: !12, isLocal: false, isDefinition: true)
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !378, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !379, globals: !415, splitDebugInlining: false, nameTableKind: None)
!378 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!379 = !{!66, !380, !10}
!380 = !DISubprogram(name: "fputs", scope: !16, file: !16, line: 626, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!381 = !DISubroutineType(types: !382)
!382 = !{!14, !12, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !384, file: !21, line: 51, baseType: !14, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !384, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !384, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !384, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !384, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !384, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !384, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !384, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !384, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !384, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !384, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !384, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !384, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !384, file: !21, line: 70, baseType: !383, size: 64, offset: 832)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !384, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !384, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !384, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !384, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !384, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !384, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !384, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !384, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !384, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !384, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !384, file: !21, line: 93, baseType: !383, size: 64, offset: 1344)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !384, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !384, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !384, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !384, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!415 = !{!375}
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !418, file: !419, line: 85, type: !546, isLocal: false, isDefinition: true)
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !420, retainedTypes: !454, globals: !521, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!420 = !{!421, !434, !439}
!421 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !365, line: 32, baseType: !126, size: 32, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!423 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!424 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!425 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!426 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!427 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!428 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!429 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!430 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!431 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!432 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!433 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !365, line: 242, baseType: !126, size: 32, elements: !435)
!435 = !{!436, !437, !438}
!436 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!437 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!438 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!439 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !440, line: 46, baseType: !126, size: 32, elements: !441)
!440 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!442 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!443 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!444 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!445 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!446 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!447 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!448 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!449 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!450 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!451 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!452 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!453 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!454 = !{!455, !460, !150, !476, !14, !46, !479, !68, !496, !500, !6, !506, !510, !10, !514, !517, !518}
!455 = !DISubprogram(name: "xmemdup", scope: !149, file: !149, line: 62, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!456 = !DISubroutineType(types: !457)
!457 = !{!66, !458, !70}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!460 = !DISubprogram(name: "quotearg_alloc_mem", scope: !365, file: !365, line: 342, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!461 = !DISubroutineType(types: !462)
!462 = !{!10, !12, !70, !463, !464}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !419, line: 65, size: 448, elements: !467)
!467 = !{!468, !469, !470, !474, !475}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !466, file: !419, line: 68, baseType: !421, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !419, line: 71, baseType: !14, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !466, file: !419, line: 75, baseType: !471, size: 256, offset: 64)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 8)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !466, file: !419, line: 78, baseType: !12, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !466, file: !419, line: 81, baseType: !12, size: 64, offset: 384)
!476 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !365, file: !365, line: 408, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!477 = !DISubroutineType(types: !478)
!478 = !{!10, !14, !12, !12, !12, !70}
!479 = !DISubprogram(name: "rpl_mbrtowc", scope: !480, file: !480, line: 717, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!480 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = !DISubroutineType(types: !482)
!482 = !{!70, !110, !12, !70, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 13, size: 64, elements: !486)
!485 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !484, file: !485, line: 15, baseType: !14, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !484, file: !485, line: 20, baseType: !489, size: 32, offset: 32)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !485, line: 16, size: 32, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !489, file: !485, line: 18, baseType: !126, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !489, file: !485, line: 19, baseType: !493, size: 32)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 4)
!496 = !DISubprogram(name: "iswprint", scope: !497, file: !497, line: 120, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!497 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!498 = !DISubroutineType(types: !499)
!499 = !{!14, !126}
!500 = !DISubprogram(name: "mbsinit", scope: !501, file: !501, line: 292, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!501 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!502 = !DISubroutineType(types: !503)
!503 = !{!14, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!506 = !DISubprogram(name: "locale_charset", scope: !507, file: !507, line: 35, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!507 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!508 = !DISubroutineType(types: !509)
!509 = !{!12}
!510 = !DISubprogram(name: "c_strcasecmp", scope: !511, file: !511, line: 42, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!511 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!512 = !DISubroutineType(types: !513)
!513 = !{!14, !12, !12}
!514 = !DISubprogram(name: "xmalloc", scope: !149, file: !149, line: 53, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!515 = !DISubroutineType(types: !516)
!516 = !{!66, !70}
!517 = !DISubprogram(name: "xalloc_die", scope: !149, file: !149, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!518 = !DISubprogram(name: "xrealloc", scope: !149, file: !149, line: 59, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!519 = !DISubroutineType(types: !520)
!520 = !{!66, !66, !70}
!521 = !{!416, !522, !526, !528, !530, !535, !542, !544}
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !418, file: !419, line: 101, type: !524, isLocal: false, isDefinition: true)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 320, elements: !243)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !418, file: !419, line: 1052, type: !466, isLocal: false, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !418, file: !419, line: 116, type: !466, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "slot0", scope: !418, file: !419, line: 842, type: !532, isLocal: true, isDefinition: true)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 256)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "slotvec", scope: !418, file: !419, line: 845, type: !537, isLocal: true, isDefinition: true)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !419, line: 834, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !538, file: !419, line: 836, baseType: !68, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !538, file: !419, line: 837, baseType: !10, size: 64, offset: 64)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "nslots", scope: !418, file: !419, line: 843, type: !14, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "slotvec0", scope: !418, file: !419, line: 844, type: !538, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 704, elements: !548)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!548 = !{!549}
!549 = !DISubrange(count: 11)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !552, file: !553, line: 26, type: !555, isLocal: false, isDefinition: true)
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !554, splitDebugInlining: false, nameTableKind: None)
!553 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!554 = !{!550}
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 376, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 47)
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !560, splitDebugInlining: false, nameTableKind: None)
!559 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !562, line: 102, baseType: !563)
!562 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !43, line: 73, baseType: !70)
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !566, retainedTypes: !575, globals: !607, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!566 = !{!567}
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !568, line: 25, baseType: !126, size: 32, elements: !569)
!568 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = !{!570, !571, !572, !573, !574}
!570 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!575 = !{!66, !148, !455, !576, !589, !192, !592, !168, !602, !603, !604, !198, !150, !6}
!576 = !DISubprogram(name: "getpwnam", scope: !129, file: !129, line: 116, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!577 = !DISubroutineType(types: !578)
!578 = !{!579, !12}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !129, line: 49, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !580, file: !129, line: 51, baseType: !10, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !580, file: !129, line: 52, baseType: !10, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !580, file: !129, line: 54, baseType: !138, size: 32, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !580, file: !129, line: 55, baseType: !140, size: 32, offset: 160)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !580, file: !129, line: 56, baseType: !10, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !580, file: !129, line: 57, baseType: !10, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !580, file: !129, line: 58, baseType: !10, size: 64, offset: 320)
!589 = !DISubprogram(name: "xstrtoul", scope: !568, file: !568, line: 44, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!590 = !DISubroutineType(types: !591)
!591 = !{!567, !12, !127, !14, !463, !12}
!592 = !DISubprogram(name: "getgrgid", scope: !173, file: !173, line: 101, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!593 = !DISubroutineType(types: !594)
!594 = !{!595, !126}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !173, line: 42, size: 256, elements: !597)
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !596, file: !173, line: 44, baseType: !10, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !596, file: !173, line: 45, baseType: !10, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !596, file: !173, line: 46, baseType: !140, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !596, file: !173, line: 47, baseType: !127, size: 64, offset: 192)
!602 = !DISubprogram(name: "endgrent", scope: !173, file: !173, line: 67, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!603 = !DISubprogram(name: "endpwent", scope: !129, file: !129, line: 78, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!604 = !DISubprogram(name: "getgrnam", scope: !173, file: !173, line: 107, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!605 = !DISubroutineType(types: !606)
!606 = !{!595, !12}
!607 = !{!608, !650, !652}
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !610, file: !565, line: 106, type: !12, isLocal: true, isDefinition: true)
!610 = distinct !DISubprogram(name: "parse_with_separator", scope: !565, file: !565, line: 102, type: !611, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !615)
!611 = !DISubroutineType(types: !612)
!612 = !{!12, !12, !12, !613, !614, !127, !127}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !633, !638, !641, !645}
!616 = !DILocalVariable(name: "spec", arg: 1, scope: !610, file: !565, line: 102, type: !12)
!617 = !DILocalVariable(name: "separator", arg: 2, scope: !610, file: !565, line: 102, type: !12)
!618 = !DILocalVariable(name: "uid", arg: 3, scope: !610, file: !565, line: 103, type: !613)
!619 = !DILocalVariable(name: "gid", arg: 4, scope: !610, file: !565, line: 103, type: !614)
!620 = !DILocalVariable(name: "username", arg: 5, scope: !610, file: !565, line: 104, type: !127)
!621 = !DILocalVariable(name: "groupname", arg: 6, scope: !610, file: !565, line: 104, type: !127)
!622 = !DILocalVariable(name: "error_msg", scope: !610, file: !565, line: 110, type: !12)
!623 = !DILocalVariable(name: "pwd", scope: !610, file: !565, line: 111, type: !579)
!624 = !DILocalVariable(name: "grp", scope: !610, file: !565, line: 112, type: !595)
!625 = !DILocalVariable(name: "u", scope: !610, file: !565, line: 113, type: !10)
!626 = !DILocalVariable(name: "g", scope: !610, file: !565, line: 114, type: !12)
!627 = !DILocalVariable(name: "gname", scope: !610, file: !565, line: 115, type: !10)
!628 = !DILocalVariable(name: "unum", scope: !610, file: !565, line: 116, type: !192)
!629 = !DILocalVariable(name: "gnum", scope: !610, file: !565, line: 117, type: !198)
!630 = !DILocalVariable(name: "ulen", scope: !631, file: !565, line: 137, type: !68)
!631 = distinct !DILexicalBlock(scope: !632, file: !565, line: 136, column: 5)
!632 = distinct !DILexicalBlock(scope: !610, file: !565, line: 130, column: 7)
!633 = !DILocalVariable(name: "use_login_group", scope: !634, file: !565, line: 164, type: !164)
!634 = distinct !DILexicalBlock(scope: !635, file: !565, line: 163, column: 9)
!635 = distinct !DILexicalBlock(scope: !636, file: !565, line: 162, column: 11)
!636 = distinct !DILexicalBlock(scope: !637, file: !565, line: 159, column: 5)
!637 = distinct !DILexicalBlock(scope: !610, file: !565, line: 158, column: 7)
!638 = !DILocalVariable(name: "tmp", scope: !639, file: !565, line: 173, type: !70)
!639 = distinct !DILexicalBlock(scope: !640, file: !565, line: 172, column: 13)
!640 = distinct !DILexicalBlock(scope: !634, file: !565, line: 165, column: 15)
!641 = !DILocalVariable(name: "buf", scope: !642, file: !565, line: 188, type: !230)
!642 = distinct !DILexicalBlock(scope: !643, file: !565, line: 185, column: 13)
!643 = distinct !DILexicalBlock(scope: !644, file: !565, line: 184, column: 15)
!644 = distinct !DILexicalBlock(scope: !635, file: !565, line: 182, column: 9)
!645 = !DILocalVariable(name: "tmp", scope: !646, file: !565, line: 205, type: !70)
!646 = distinct !DILexicalBlock(scope: !647, file: !565, line: 204, column: 9)
!647 = distinct !DILexicalBlock(scope: !648, file: !565, line: 203, column: 11)
!648 = distinct !DILexicalBlock(scope: !649, file: !565, line: 199, column: 5)
!649 = distinct !DILexicalBlock(scope: !610, file: !565, line: 198, column: 7)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !610, file: !565, line: 107, type: !12, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !610, file: !565, line: 108, type: !12, isLocal: true, isDefinition: true)
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !656, retainedTypes: !660, splitDebugInlining: false, nameTableKind: None)
!655 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!656 = !{!657}
!657 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !655, line: 40, baseType: !126, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!660 = !{!6, !661, !66}
!661 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!662 = !DISubroutineType(types: !663)
!663 = !{!14, !12, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !665, file: !21, line: 51, baseType: !14, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !665, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !665, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !665, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !665, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !665, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !665, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !665, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !665, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !665, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !665, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !665, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !665, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !665, file: !21, line: 70, baseType: !664, size: 64, offset: 832)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !665, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !665, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !665, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !665, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !665, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !665, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !665, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !665, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !665, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !665, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !665, file: !21, line: 93, baseType: !664, size: 64, offset: 1344)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !665, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !665, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !665, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !665, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !698, retainedTypes: !711, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!698 = !{!699}
!699 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !700, file: !149, line: 186, baseType: !126, size: 32, elements: !709)
!700 = distinct !DISubprogram(name: "x2nrealloc", scope: !149, file: !149, line: 174, type: !701, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{!66, !66, !703, !68}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!704 = !{!705, !706, !707, !708}
!705 = !DILocalVariable(name: "p", arg: 1, scope: !700, file: !149, line: 174, type: !66)
!706 = !DILocalVariable(name: "pn", arg: 2, scope: !700, file: !149, line: 174, type: !703)
!707 = !DILocalVariable(name: "s", arg: 3, scope: !700, file: !149, line: 174, type: !68)
!708 = !DILocalVariable(name: "n", scope: !700, file: !149, line: 176, type: !68)
!709 = !{!710}
!710 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!711 = !{!68, !517, !514, !518, !10, !150, !66, !712, !715}
!712 = !DISubprogram(name: "xcalloc", scope: !149, file: !149, line: 57, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!713 = !DISubroutineType(types: !714)
!714 = !{!66, !70, !70}
!715 = !DISubprogram(name: "rpl_calloc", scope: !716, file: !716, line: 688, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!716 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!719 = !{!6, !112}
!720 = distinct !DICompileUnit(language: DW_LANG_C99, file: !721, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !722, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!722 = !{!723, !517}
!723 = !DISubprogram(name: "mgetgroups", scope: !184, file: !184, line: 19, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!724 = distinct !DICompileUnit(language: DW_LANG_C99, file: !725, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !726, retainedTypes: !727, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!726 = !{!567, !439}
!727 = !{!14, !46}
!728 = distinct !DICompileUnit(language: DW_LANG_C99, file: !729, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !730, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!730 = !{!66}
!731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !732, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !733, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!733 = !{!734, !68, !746}
!734 = !DISubprogram(name: "mbrtowc", scope: !501, file: !501, line: 296, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!735 = !DISubroutineType(types: !736)
!736 = !{!70, !110, !12, !70, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !485, line: 13, size: 64, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !738, file: !485, line: 15, baseType: !14, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !738, file: !485, line: 20, baseType: !742, size: 32, offset: 32)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !485, line: 16, size: 32, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !742, file: !485, line: 18, baseType: !126, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !742, file: !485, line: 19, baseType: !493, size: 32)
!746 = !DISubprogram(name: "hard_locale", scope: !747, file: !747, line: 26, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!747 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!748 = !DISubroutineType(types: !749)
!749 = !{!164, !14}
!750 = distinct !DICompileUnit(language: DW_LANG_C99, file: !751, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !752, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!752 = !{!753}
!753 = !DISubprogram(name: "rpl_fclose", scope: !754, file: !754, line: 672, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!754 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!755 = !DISubroutineType(types: !756)
!756 = !{!14, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !758, file: !21, line: 51, baseType: !14, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !758, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !758, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !758, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !758, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !758, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !758, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !758, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !758, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !758, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !758, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !758, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !758, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !758, file: !21, line: 70, baseType: !757, size: 64, offset: 832)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !758, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !758, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !758, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !758, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !758, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !758, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !758, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !758, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !758, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !758, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !758, file: !21, line: 93, baseType: !757, size: 64, offset: 1344)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !758, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !758, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !758, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !758, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!789 = distinct !DICompileUnit(language: DW_LANG_C99, file: !790, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !791, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!791 = !{!792}
!792 = !DISubprogram(name: "setlocale_null_r", scope: !793, file: !793, line: 64, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!793 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!794 = !DISubroutineType(types: !795)
!795 = !{!14, !14, !10, !70}
!796 = distinct !DICompileUnit(language: DW_LANG_C99, file: !797, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !798, retainedTypes: !1185, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!798 = !{!799}
!799 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !800, line: 41, baseType: !126, size: 32, elements: !801)
!800 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184}
!802 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!803 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!804 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!805 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!806 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!807 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!808 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!809 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!810 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!811 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!812 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!813 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!814 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!815 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!816 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!817 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!818 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!819 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!820 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!821 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!822 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!823 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!824 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!825 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!826 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!827 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!828 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!829 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!830 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!831 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!832 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!833 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!834 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!835 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!836 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!837 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!838 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!839 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!840 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!841 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!842 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!843 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!844 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!845 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!846 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!847 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!848 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!849 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!850 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!851 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!910 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!913 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!914 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!915 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!916 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!917 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!918 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!919 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!920 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!921 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!922 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!923 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!924 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!997 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1070 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1071 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1072 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1073 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1074 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1075 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1076 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1077 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1078 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1079 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1080 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1081 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1082 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1083 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1084 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1086 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1087 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1088 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1089 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1090 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1091 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1117 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1118 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1119 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1120 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1121 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1126 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1127 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1128 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1129 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1185 = !{!1186, !66}
!1186 = !DISubprogram(name: "nl_langinfo", scope: !800, file: !800, line: 661, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!10, !14}
!1189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1190, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1191, retainedTypes: !1222, splitDebugInlining: false, nameTableKind: None)
!1190 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1191 = !{!1192}
!1192 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1193, file: !1190, line: 83, baseType: !126, size: 32, elements: !1220)
!1193 = distinct !DISubprogram(name: "mgetgroups", scope: !1190, file: !1190, line: 66, type: !1194, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1189, retainedNodes: !1197)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!14, !12, !198, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1208, !1209, !1212, !1215, !1218, !1219}
!1198 = !DILocalVariable(name: "username", arg: 1, scope: !1193, file: !1190, line: 66, type: !12)
!1199 = !DILocalVariable(name: "gid", arg: 2, scope: !1193, file: !1190, line: 66, type: !198)
!1200 = !DILocalVariable(name: "groups", arg: 3, scope: !1193, file: !1190, line: 66, type: !1196)
!1201 = !DILocalVariable(name: "max_n_groups", scope: !1193, file: !1190, line: 68, type: !14)
!1202 = !DILocalVariable(name: "ng", scope: !1193, file: !1190, line: 69, type: !14)
!1203 = !DILocalVariable(name: "g", scope: !1193, file: !1190, line: 70, type: !614)
!1204 = !DILocalVariable(name: "h", scope: !1205, file: !1190, line: 92, type: !614)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !1190, line: 91, column: 9)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !1190, line: 82, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1193, file: !1190, line: 81, column: 7)
!1208 = !DILocalVariable(name: "last_n_groups", scope: !1205, file: !1190, line: 93, type: !14)
!1209 = !DILocalVariable(name: "saved_errno", scope: !1210, file: !1190, line: 105, type: !14)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !1190, line: 104, column: 13)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !1190, line: 103, column: 15)
!1212 = !DILocalVariable(name: "saved_errno", scope: !1213, file: !1190, line: 156, type: !14)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !1190, line: 154, column: 5)
!1214 = distinct !DILexicalBlock(scope: !1193, file: !1190, line: 153, column: 7)
!1215 = !DILocalVariable(name: "first", scope: !1216, file: !1190, line: 187, type: !198)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !1190, line: 186, column: 5)
!1217 = distinct !DILexicalBlock(scope: !1193, file: !1190, line: 185, column: 7)
!1218 = !DILocalVariable(name: "next", scope: !1216, file: !1190, line: 188, type: !614)
!1219 = !DILocalVariable(name: "groups_end", scope: !1216, file: !1190, line: 189, type: !614)
!1220 = !{!1221}
!1221 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!1222 = !{!66, !1223, !150, !1226, !198, !68}
!1223 = !DISubprogram(name: "getgrouplist", scope: !173, file: !173, line: 186, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!14, !12, !126, !125, !110}
!1226 = !DISubprogram(name: "getugroups", scope: !1227, file: !1227, line: 18, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1227 = !DIFile(filename: "./lib/getugroups.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!14, !14, !125, !12, !126}
!1230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1231, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1232, splitDebugInlining: false, nameTableKind: None)
!1231 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1232 = !{!66, !80}
!1233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1234, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1235, splitDebugInlining: false, nameTableKind: None)
!1234 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1235 = !{!1236, !1271, !1272, !1275}
!1236 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!14, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1240, file: !21, line: 51, baseType: !14, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1240, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1240, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1240, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1240, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1240, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1240, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1240, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1240, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1240, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1240, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1240, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1240, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1240, file: !21, line: 70, baseType: !1239, size: 64, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1240, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1240, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1240, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1240, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1240, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1240, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1240, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1240, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1240, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1240, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1240, file: !21, line: 93, baseType: !1239, size: 64, offset: 1344)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1240, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1240, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1240, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1240, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1271 = !DISubprogram(name: "fclose", scope: !16, file: !16, line: 213, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1272 = !DISubprogram(name: "lseek", scope: !154, file: !154, line: 334, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!44, !14, !44, !14}
!1275 = !DISubprogram(name: "rpl_fflush", scope: !754, file: !754, line: 718, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1277, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1278, splitDebugInlining: false, nameTableKind: None)
!1277 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1278 = !{!66, !1279, !1314}
!1279 = !DISubprogram(name: "fflush", scope: !16, file: !16, line: 218, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!14, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1283, file: !21, line: 51, baseType: !14, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1283, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1283, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1283, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1283, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1283, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1283, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1283, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1283, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1283, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1283, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1283, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1283, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1283, file: !21, line: 70, baseType: !1282, size: 64, offset: 832)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1283, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1283, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1283, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1283, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1283, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1283, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1283, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1283, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1283, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1283, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1283, file: !21, line: 93, baseType: !1282, size: 64, offset: 1344)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1283, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1283, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1283, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1283, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1314 = !DISubprogram(name: "rpl_fseeko", scope: !754, file: !754, line: 1034, type: !1315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!14, !1282, !44, !14}
!1317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1318, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1319, splitDebugInlining: false, nameTableKind: None)
!1318 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1319 = !{!66, !1320, !1272, !1355}
!1320 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!14, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1324, file: !21, line: 51, baseType: !14, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1324, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1324, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1324, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1324, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1324, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1324, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1324, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1324, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1324, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1324, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1324, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1324, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1324, file: !21, line: 70, baseType: !1323, size: 64, offset: 832)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1324, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1324, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1324, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1324, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1324, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1324, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1324, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1324, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1324, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1324, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1324, file: !21, line: 93, baseType: !1323, size: 64, offset: 1344)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1324, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1324, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1324, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1324, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1355 = !DISubprogram(name: "fseeko", scope: !16, file: !16, line: 707, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!14, !1323, !44, !14}
!1358 = !{!"clang version 10.0.0 "}
!1359 = !{i32 7, !"Dwarf Version", i32 4}
!1360 = !{i32 2, !"Debug Info Version", i32 3}
!1361 = !{i32 1, !"wchar_size", i32 4}
!1362 = !{i32 7, !"PIC Level", i32 2}
!1363 = !{i32 7, !"PIE Level", i32 2}
!1364 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 90, type: !1365, scopeLine: 91, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !14}
!1367 = !{!1368}
!1368 = !DILocalVariable(name: "status", arg: 1, scope: !1364, file: !3, line: 90, type: !14)
!1369 = !DILocalVariable(name: "infomap", scope: !1370, file: !1371, line: 636, type: !1383)
!1370 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1371, file: !1371, line: 634, type: !78, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1372)
!1371 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1372 = !{!1373, !1369, !1374, !1375, !1382}
!1373 = !DILocalVariable(name: "program", arg: 1, scope: !1370, file: !1371, line: 634, type: !12)
!1374 = !DILocalVariable(name: "node", scope: !1370, file: !1371, line: 646, type: !12)
!1375 = !DILocalVariable(name: "map_prog", scope: !1370, file: !1371, line: 647, type: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1370, file: !1371, line: 636, size: 128, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1378, file: !1371, line: 636, baseType: !12, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1378, file: !1371, line: 636, baseType: !12, size: 64, offset: 64)
!1382 = !DILocalVariable(name: "lc_messages", scope: !1370, file: !1371, line: 659, type: !12)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 896, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 7)
!1386 = !DILocation(line: 636, column: 67, scope: !1370, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 119, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 95, column: 5)
!1389 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 92, column: 7)
!1390 = !DILocation(line: 0, scope: !1364)
!1391 = !DILocation(line: 92, column: 14, scope: !1389)
!1392 = !DILocation(line: 92, column: 7, scope: !1364)
!1393 = !DILocation(line: 93, column: 5, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 93, column: 5)
!1395 = !{!1396, !1396, i64 0}
!1396 = !{!"any pointer", !1397, i64 0}
!1397 = !{!"omnipotent char", !1398, i64 0}
!1398 = !{!"Simple C/C++ TBAA"}
!1399 = !DILocation(line: 96, column: 7, scope: !1388)
!1400 = !DILocation(line: 97, column: 7, scope: !1388)
!1401 = !DILocation(line: 102, column: 7, scope: !1388)
!1402 = !DILocation(line: 113, column: 7, scope: !1388)
!1403 = !DILocation(line: 114, column: 7, scope: !1388)
!1404 = !DILocation(line: 115, column: 7, scope: !1388)
!1405 = !DILocation(line: 0, scope: !1370, inlinedAt: !1387)
!1406 = !DILocation(line: 636, column: 3, scope: !1370, inlinedAt: !1387)
!1407 = !DILocation(line: 647, column: 36, scope: !1370, inlinedAt: !1387)
!1408 = !DILocation(line: 649, column: 3, scope: !1370, inlinedAt: !1387)
!1409 = !DILocation(line: 649, column: 33, scope: !1370, inlinedAt: !1387)
!1410 = !DILocation(line: 650, column: 13, scope: !1370, inlinedAt: !1387)
!1411 = !DILocation(line: 649, column: 20, scope: !1370, inlinedAt: !1387)
!1412 = !{!1413, !1396, i64 0}
!1413 = !{!"infomap", !1396, i64 0, !1396, i64 8}
!1414 = !DILocation(line: 649, column: 10, scope: !1370, inlinedAt: !1387)
!1415 = !DILocation(line: 649, column: 28, scope: !1370, inlinedAt: !1387)
!1416 = distinct !{!1416, !1408, !1410}
!1417 = !DILocation(line: 652, column: 17, scope: !1418, inlinedAt: !1387)
!1418 = distinct !DILexicalBlock(scope: !1370, file: !1371, line: 652, column: 7)
!1419 = !{!1413, !1396, i64 8}
!1420 = !DILocation(line: 652, column: 7, scope: !1418, inlinedAt: !1387)
!1421 = !DILocation(line: 652, column: 7, scope: !1370, inlinedAt: !1387)
!1422 = !DILocation(line: 655, column: 3, scope: !1370, inlinedAt: !1387)
!1423 = !DILocation(line: 659, column: 29, scope: !1370, inlinedAt: !1387)
!1424 = !DILocation(line: 660, column: 7, scope: !1425, inlinedAt: !1387)
!1425 = distinct !DILexicalBlock(scope: !1370, file: !1371, line: 660, column: 7)
!1426 = !DILocation(line: 660, column: 19, scope: !1425, inlinedAt: !1387)
!1427 = !DILocation(line: 660, column: 22, scope: !1425, inlinedAt: !1387)
!1428 = !DILocation(line: 660, column: 7, scope: !1370, inlinedAt: !1387)
!1429 = !DILocation(line: 666, column: 7, scope: !1430, inlinedAt: !1387)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !1371, line: 661, column: 5)
!1431 = !DILocation(line: 668, column: 5, scope: !1430, inlinedAt: !1387)
!1432 = !DILocation(line: 669, column: 3, scope: !1370, inlinedAt: !1387)
!1433 = !DILocation(line: 671, column: 3, scope: !1370, inlinedAt: !1387)
!1434 = !DILocation(line: 673, column: 1, scope: !1370, inlinedAt: !1387)
!1435 = !DILocation(line: 121, column: 3, scope: !1364)
!1436 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 125, type: !1437, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!14, !14, !127}
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1454, !1455, !1457}
!1440 = !DILocalVariable(name: "argc", arg: 1, scope: !1436, file: !3, line: 125, type: !14)
!1441 = !DILocalVariable(name: "argv", arg: 2, scope: !1436, file: !3, line: 125, type: !127)
!1442 = !DILocalVariable(name: "optc", scope: !1436, file: !3, line: 127, type: !14)
!1443 = !DILocalVariable(name: "selinux_enabled", scope: !1436, file: !3, line: 128, type: !14)
!1444 = !DILocalVariable(name: "smack_enabled", scope: !1436, file: !3, line: 129, type: !164)
!1445 = !DILocalVariable(name: "pw_name", scope: !1436, file: !3, line: 130, type: !10)
!1446 = !DILocalVariable(name: "n_ids", scope: !1436, file: !3, line: 188, type: !68)
!1447 = !DILocalVariable(name: "default_format", scope: !1436, file: !3, line: 197, type: !164)
!1448 = !DILocalVariable(name: "pwd", scope: !1449, file: !3, line: 238, type: !132)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 237, column: 9)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 236, column: 7)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 236, column: 7)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 228, column: 5)
!1453 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 227, column: 7)
!1454 = !DILocalVariable(name: "spec", scope: !1449, file: !3, line: 239, type: !12)
!1455 = !DILocalVariable(name: "NO_UID", scope: !1456, file: !3, line: 271, type: !192)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 267, column: 5)
!1457 = !DILocalVariable(name: "NO_GID", scope: !1456, file: !3, line: 272, type: !198)
!1458 = !DILocation(line: 0, scope: !1436)
!1459 = !DILocation(line: 133, column: 21, scope: !1436)
!1460 = !DILocation(line: 133, column: 3, scope: !1436)
!1461 = !DILocation(line: 134, column: 3, scope: !1436)
!1462 = !DILocation(line: 135, column: 3, scope: !1436)
!1463 = !DILocation(line: 136, column: 3, scope: !1436)
!1464 = !DILocation(line: 138, column: 3, scope: !1436)
!1465 = !DILocation(line: 140, column: 3, scope: !1436)
!1466 = !DILocation(line: 140, column: 18, scope: !1436)
!1467 = !DILocation(line: 157, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 156, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 143, column: 9)
!1470 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 141, column: 5)
!1471 = !DILocation(line: 168, column: 11, scope: !1469)
!1472 = !DILocation(line: 171, column: 11, scope: !1469)
!1473 = !DILocation(line: 174, column: 11, scope: !1469)
!1474 = !DILocation(line: 177, column: 11, scope: !1469)
!1475 = !DILocation(line: 180, column: 11, scope: !1469)
!1476 = !DILocation(line: 181, column: 9, scope: !1469)
!1477 = !DILocation(line: 182, column: 9, scope: !1469)
!1478 = !DILocation(line: 184, column: 11, scope: !1469)
!1479 = !DILocation(line: 0, scope: !1469)
!1480 = distinct !{!1480, !1465, !1481}
!1481 = !DILocation(line: 186, column: 5, scope: !1436)
!1482 = !DILocation(line: 188, column: 25, scope: !1436)
!1483 = !{!1484, !1484, i64 0}
!1484 = !{!"int", !1397, i64 0}
!1485 = !DILocation(line: 188, column: 23, scope: !1436)
!1486 = !DILocation(line: 188, column: 18, scope: !1436)
!1487 = !DILocation(line: 194, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 194, column: 7)
!1489 = !DILocation(line: 194, column: 19, scope: !1488)
!1490 = !DILocation(line: 194, column: 17, scope: !1488)
!1491 = !DILocation(line: 194, column: 32, scope: !1488)
!1492 = !DILocation(line: 194, column: 30, scope: !1488)
!1493 = !DILocation(line: 194, column: 63, scope: !1488)
!1494 = !DILocation(line: 194, column: 7, scope: !1436)
!1495 = !DILocation(line: 195, column: 5, scope: !1488)
!1496 = !DILocation(line: 198, column: 28, scope: !1436)
!1497 = !DILocation(line: 202, column: 22, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 202, column: 7)
!1499 = !DILocation(line: 202, column: 26, scope: !1498)
!1500 = !DILocation(line: 202, column: 35, scope: !1498)
!1501 = !DILocation(line: 202, column: 38, scope: !1498)
!1502 = !DILocation(line: 202, column: 7, scope: !1436)
!1503 = !DILocation(line: 203, column: 5, scope: !1498)
!1504 = !DILocation(line: 206, column: 25, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 206, column: 7)
!1506 = !DILocation(line: 206, column: 7, scope: !1436)
!1507 = !DILocation(line: 207, column: 5, scope: !1505)
!1508 = !DILocation(line: 215, column: 13, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 215, column: 7)
!1510 = !DILocation(line: 227, column: 7, scope: !1436)
!1511 = !DILocation(line: 229, column: 30, scope: !1452)
!1512 = !DILocation(line: 229, column: 22, scope: !1452)
!1513 = !{!1514, !1514, i64 0}
!1514 = !{!"_Bool", !1397, i64 0}
!1515 = !DILocation(line: 234, column: 16, scope: !1452)
!1516 = !DILocation(line: 234, column: 13, scope: !1452)
!1517 = !DILocation(line: 236, column: 21, scope: !1450)
!1518 = !DILocation(line: 236, column: 7, scope: !1451)
!1519 = !DILocation(line: 0, scope: !1449)
!1520 = !DILocation(line: 239, column: 30, scope: !1449)
!1521 = !DILocation(line: 243, column: 15, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 243, column: 15)
!1523 = !{!1397, !1397, i64 0}
!1524 = !DILocation(line: 243, column: 15, scope: !1449)
!1525 = !DILocation(line: 245, column: 19, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 245, column: 19)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 244, column: 13)
!1528 = !DILocation(line: 245, column: 67, scope: !1526)
!1529 = !DILocation(line: 245, column: 19, scope: !1527)
!1530 = !DILocation(line: 250, column: 35, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 246, column: 17)
!1532 = !DILocation(line: 250, column: 25, scope: !1531)
!1533 = !DILocation(line: 253, column: 19, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 253, column: 15)
!1535 = !DILocation(line: 253, column: 15, scope: !1449)
!1536 = !DILocation(line: 255, column: 25, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 254, column: 13)
!1538 = !DILocation(line: 255, column: 32, scope: !1537)
!1539 = !DILocation(line: 255, column: 67, scope: !1537)
!1540 = !DILocation(line: 255, column: 62, scope: !1537)
!1541 = !DILocation(line: 255, column: 55, scope: !1537)
!1542 = !DILocation(line: 255, column: 15, scope: !1537)
!1543 = !DILocation(line: 256, column: 18, scope: !1537)
!1544 = !DILocation(line: 257, column: 15, scope: !1537)
!1545 = !DILocation(line: 259, column: 35, scope: !1449)
!1546 = !{!1547, !1396, i64 0}
!1547 = !{!"passwd", !1396, i64 0, !1396, i64 8, !1484, i64 16, !1484, i64 20, !1396, i64 24, !1396, i64 32, !1396, i64 40}
!1548 = !DILocation(line: 259, column: 21, scope: !1449)
!1549 = !DILocation(line: 260, column: 30, scope: !1449)
!1550 = !{!1547, !1484, i64 16}
!1551 = !DILocation(line: 260, column: 23, scope: !1449)
!1552 = !DILocation(line: 260, column: 16, scope: !1449)
!1553 = !DILocation(line: 261, column: 30, scope: !1449)
!1554 = !{!1547, !1484, i64 20}
!1555 = !DILocation(line: 261, column: 23, scope: !1449)
!1556 = !DILocation(line: 261, column: 16, scope: !1449)
!1557 = !DILocation(line: 262, column: 11, scope: !1449)
!1558 = !DILocation(line: 263, column: 11, scope: !1449)
!1559 = !DILocation(line: 264, column: 9, scope: !1450)
!1560 = !DILocation(line: 236, column: 36, scope: !1450)
!1561 = !DILocation(line: 236, column: 14, scope: !1450)
!1562 = distinct !{!1562, !1518, !1563}
!1563 = !DILocation(line: 264, column: 9, scope: !1451)
!1564 = !DILocation(line: 0, scope: !1456)
!1565 = !DILocation(line: 274, column: 11, scope: !1456)
!1566 = !DILocation(line: 274, column: 24, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 274, column: 11)
!1568 = !DILocation(line: 274, column: 11, scope: !1567)
!1569 = !DILocation(line: 275, column: 25, scope: !1567)
!1570 = !DILocation(line: 277, column: 11, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 276, column: 9)
!1572 = !DILocation(line: 277, column: 17, scope: !1571)
!1573 = !DILocation(line: 278, column: 18, scope: !1571)
!1574 = !DILocation(line: 278, column: 16, scope: !1571)
!1575 = !DILocation(line: 279, column: 20, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 279, column: 15)
!1577 = !DILocation(line: 279, column: 30, scope: !1576)
!1578 = !DILocation(line: 279, column: 33, scope: !1576)
!1579 = !DILocation(line: 279, column: 15, scope: !1571)
!1580 = !DILocation(line: 280, column: 13, scope: !1576)
!1581 = !DILocation(line: 283, column: 11, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 283, column: 11)
!1583 = !DILocation(line: 283, column: 11, scope: !1456)
!1584 = !DILocation(line: 283, column: 23, scope: !1582)
!1585 = !DILocation(line: 284, column: 14, scope: !1582)
!1586 = !DILocation(line: 284, column: 25, scope: !1582)
!1587 = !DILocation(line: 294, column: 11, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 293, column: 9)
!1589 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 292, column: 11)
!1590 = !DILocation(line: 286, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 285, column: 9)
!1592 = !DILocation(line: 286, column: 17, scope: !1591)
!1593 = !DILocation(line: 287, column: 18, scope: !1591)
!1594 = !DILocation(line: 287, column: 16, scope: !1591)
!1595 = !DILocation(line: 288, column: 20, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 288, column: 15)
!1597 = !DILocation(line: 288, column: 30, scope: !1596)
!1598 = !DILocation(line: 288, column: 33, scope: !1596)
!1599 = !DILocation(line: 288, column: 15, scope: !1591)
!1600 = !DILocation(line: 289, column: 13, scope: !1596)
!1601 = !DILocation(line: 292, column: 12, scope: !1589)
!1602 = !DILocation(line: 292, column: 22, scope: !1589)
!1603 = !DILocation(line: 294, column: 17, scope: !1588)
!1604 = !DILocation(line: 295, column: 18, scope: !1588)
!1605 = !DILocation(line: 295, column: 16, scope: !1588)
!1606 = !DILocation(line: 296, column: 20, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 296, column: 15)
!1608 = !DILocation(line: 296, column: 30, scope: !1607)
!1609 = !DILocation(line: 296, column: 33, scope: !1607)
!1610 = !DILocation(line: 296, column: 15, scope: !1588)
!1611 = !DILocation(line: 297, column: 13, scope: !1607)
!1612 = !DILocation(line: 299, column: 17, scope: !1588)
!1613 = !DILocation(line: 300, column: 18, scope: !1588)
!1614 = !DILocation(line: 300, column: 16, scope: !1588)
!1615 = !DILocation(line: 301, column: 20, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 301, column: 15)
!1617 = !DILocation(line: 301, column: 30, scope: !1616)
!1618 = !DILocation(line: 301, column: 33, scope: !1616)
!1619 = !DILocation(line: 301, column: 15, scope: !1588)
!1620 = !DILocation(line: 302, column: 13, scope: !1616)
!1621 = !DILocation(line: 304, column: 9, scope: !1456)
!1622 = !DILocation(line: 307, column: 10, scope: !1436)
!1623 = !{i8 0, i8 2}
!1624 = !DILocation(line: 308, column: 1, scope: !1436)
!1625 = distinct !DISubprogram(name: "print_stuff", scope: !3, file: !3, line: 432, type: !78, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1626)
!1626 = !{!1627}
!1627 = !DILocalVariable(name: "pw_name", arg: 1, scope: !1625, file: !3, line: 432, type: !12)
!1628 = !DILocation(line: 0, scope: !1625)
!1629 = !DILocation(line: 434, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 434, column: 7)
!1631 = !DILocation(line: 434, column: 7, scope: !1625)
!1632 = !DILocation(line: 435, column: 19, scope: !1630)
!1633 = !DILocalVariable(name: "uid", arg: 1, scope: !1634, file: !3, line: 335, type: !192)
!1634 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 335, type: !1635, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1637)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !192}
!1637 = !{!1633, !1638, !1639}
!1638 = !DILocalVariable(name: "pwd", scope: !1634, file: !3, line: 337, type: !132)
!1639 = !DILocalVariable(name: "s", scope: !1634, file: !3, line: 350, type: !10)
!1640 = !DILocation(line: 0, scope: !1634, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 435, column: 7, scope: !1630)
!1642 = !DILocation(line: 339, column: 7, scope: !1643, inlinedAt: !1641)
!1643 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 339, column: 7)
!1644 = !DILocation(line: 339, column: 7, scope: !1634, inlinedAt: !1641)
!1645 = !DILocation(line: 328, column: 21, scope: !223, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 350, column: 34, scope: !1634, inlinedAt: !1641)
!1647 = !DILocation(line: 341, column: 13, scope: !1648, inlinedAt: !1641)
!1648 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 340, column: 5)
!1649 = !DILocation(line: 342, column: 15, scope: !1650, inlinedAt: !1641)
!1650 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 342, column: 11)
!1651 = !DILocation(line: 342, column: 11, scope: !1648, inlinedAt: !1641)
!1652 = !DILocation(line: 344, column: 24, scope: !1653, inlinedAt: !1641)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 343, column: 9)
!1654 = !DILocation(line: 328, column: 21, scope: !223, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 345, column: 18, scope: !1653, inlinedAt: !1641)
!1656 = !DILocation(line: 328, column: 10, scope: !223, inlinedAt: !1655)
!1657 = !DILocation(line: 344, column: 11, scope: !1653, inlinedAt: !1641)
!1658 = !DILocation(line: 346, column: 14, scope: !1653, inlinedAt: !1641)
!1659 = !DILocation(line: 347, column: 9, scope: !1653, inlinedAt: !1641)
!1660 = !DILocation(line: 350, column: 24, scope: !1634, inlinedAt: !1641)
!1661 = !DILocation(line: 350, column: 13, scope: !1634, inlinedAt: !1641)
!1662 = !DILocation(line: 328, column: 10, scope: !223, inlinedAt: !1646)
!1663 = !DILocation(line: 351, column: 3, scope: !1634, inlinedAt: !1641)
!1664 = !DILocation(line: 435, column: 7, scope: !1630)
!1665 = !DILocation(line: 442, column: 12, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 442, column: 12)
!1667 = !DILocation(line: 442, column: 12, scope: !1630)
!1668 = !DILocation(line: 443, column: 24, scope: !1666)
!1669 = !DILocation(line: 443, column: 48, scope: !1666)
!1670 = !DILocation(line: 443, column: 11, scope: !1666)
!1671 = !DILocation(line: 443, column: 8, scope: !1666)
!1672 = !DILocation(line: 443, column: 5, scope: !1666)
!1673 = !DILocation(line: 444, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 444, column: 12)
!1675 = !DILocation(line: 444, column: 12, scope: !1666)
!1676 = !DILocation(line: 445, column: 38, scope: !1674)
!1677 = !DILocation(line: 445, column: 44, scope: !1674)
!1678 = !DILocation(line: 445, column: 50, scope: !1674)
!1679 = !DILocation(line: 446, column: 29, scope: !1674)
!1680 = !DILocation(line: 446, column: 39, scope: !1674)
!1681 = !DILocation(line: 445, column: 11, scope: !1674)
!1682 = !DILocation(line: 445, column: 8, scope: !1674)
!1683 = !DILocation(line: 445, column: 5, scope: !1674)
!1684 = !DILocalVariable(name: "username", arg: 1, scope: !1685, file: !3, line: 357, type: !12)
!1685 = distinct !DISubprogram(name: "print_full_info", scope: !3, file: !3, line: 357, type: !78, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1686)
!1686 = !{!1684, !1687, !1688, !1689, !1691, !1692, !1693}
!1687 = !DILocalVariable(name: "pwd", scope: !1685, file: !3, line: 359, type: !132)
!1688 = !DILocalVariable(name: "grp", scope: !1685, file: !3, line: 360, type: !176)
!1689 = !DILocalVariable(name: "groups", scope: !1690, file: !3, line: 389, type: !614)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 388, column: 3)
!1691 = !DILocalVariable(name: "primary_group", scope: !1690, file: !3, line: 391, type: !198)
!1692 = !DILocalVariable(name: "n_groups", scope: !1690, file: !3, line: 397, type: !14)
!1693 = !DILocalVariable(name: "i", scope: !1694, file: !3, line: 411, type: !14)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 411, column: 5)
!1695 = !DILocation(line: 0, scope: !1685, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 450, column: 5, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 447, column: 12)
!1698 = !DILocation(line: 362, column: 3, scope: !1685, inlinedAt: !1696)
!1699 = !DILocation(line: 0, scope: !223, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 362, column: 3, scope: !1685, inlinedAt: !1696)
!1701 = !DILocation(line: 328, column: 21, scope: !223, inlinedAt: !1700)
!1702 = !DILocation(line: 328, column: 10, scope: !223, inlinedAt: !1700)
!1703 = !DILocation(line: 363, column: 19, scope: !1685, inlinedAt: !1696)
!1704 = !DILocation(line: 363, column: 9, scope: !1685, inlinedAt: !1696)
!1705 = !DILocation(line: 364, column: 7, scope: !1706, inlinedAt: !1696)
!1706 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 364, column: 7)
!1707 = !DILocation(line: 364, column: 7, scope: !1685, inlinedAt: !1696)
!1708 = !DILocation(line: 365, column: 5, scope: !1706, inlinedAt: !1696)
!1709 = !DILocation(line: 367, column: 3, scope: !1685, inlinedAt: !1696)
!1710 = !DILocation(line: 0, scope: !235, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 367, column: 3, scope: !1685, inlinedAt: !1696)
!1712 = !DILocation(line: 317, column: 21, scope: !235, inlinedAt: !1711)
!1713 = !DILocation(line: 317, column: 10, scope: !235, inlinedAt: !1711)
!1714 = !DILocation(line: 368, column: 19, scope: !1685, inlinedAt: !1696)
!1715 = !DILocation(line: 368, column: 9, scope: !1685, inlinedAt: !1696)
!1716 = !DILocation(line: 369, column: 7, scope: !1717, inlinedAt: !1696)
!1717 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 369, column: 7)
!1718 = !DILocation(line: 369, column: 7, scope: !1685, inlinedAt: !1696)
!1719 = !DILocation(line: 370, column: 5, scope: !1717, inlinedAt: !1696)
!1720 = !{!1721, !1396, i64 0}
!1721 = !{!"group", !1396, i64 0, !1396, i64 8, !1484, i64 16, !1396, i64 24}
!1722 = !DILocation(line: 372, column: 7, scope: !1723, inlinedAt: !1696)
!1723 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 372, column: 7)
!1724 = !DILocation(line: 372, column: 15, scope: !1723, inlinedAt: !1696)
!1725 = !DILocation(line: 372, column: 12, scope: !1723, inlinedAt: !1696)
!1726 = !DILocation(line: 372, column: 7, scope: !1685, inlinedAt: !1696)
!1727 = !DILocation(line: 374, column: 7, scope: !1728, inlinedAt: !1696)
!1728 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 373, column: 5)
!1729 = !DILocation(line: 0, scope: !223, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 374, column: 7, scope: !1728, inlinedAt: !1696)
!1731 = !DILocation(line: 328, column: 21, scope: !223, inlinedAt: !1730)
!1732 = !DILocation(line: 328, column: 10, scope: !223, inlinedAt: !1730)
!1733 = !DILocation(line: 375, column: 23, scope: !1728, inlinedAt: !1696)
!1734 = !DILocation(line: 375, column: 13, scope: !1728, inlinedAt: !1696)
!1735 = !DILocation(line: 376, column: 11, scope: !1736, inlinedAt: !1696)
!1736 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 376, column: 11)
!1737 = !DILocation(line: 376, column: 11, scope: !1728, inlinedAt: !1696)
!1738 = !DILocation(line: 377, column: 9, scope: !1736, inlinedAt: !1696)
!1739 = !DILocation(line: 380, column: 7, scope: !1740, inlinedAt: !1696)
!1740 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 380, column: 7)
!1741 = !DILocation(line: 380, column: 15, scope: !1740, inlinedAt: !1696)
!1742 = !DILocation(line: 380, column: 12, scope: !1740, inlinedAt: !1696)
!1743 = !DILocation(line: 380, column: 7, scope: !1685, inlinedAt: !1696)
!1744 = !DILocation(line: 382, column: 7, scope: !1745, inlinedAt: !1696)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 381, column: 5)
!1746 = !DILocation(line: 0, scope: !235, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 382, column: 7, scope: !1745, inlinedAt: !1696)
!1748 = !DILocation(line: 317, column: 21, scope: !235, inlinedAt: !1747)
!1749 = !DILocation(line: 317, column: 10, scope: !235, inlinedAt: !1747)
!1750 = !DILocation(line: 383, column: 23, scope: !1745, inlinedAt: !1696)
!1751 = !DILocation(line: 383, column: 13, scope: !1745, inlinedAt: !1696)
!1752 = !DILocation(line: 384, column: 11, scope: !1753, inlinedAt: !1696)
!1753 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 384, column: 11)
!1754 = !DILocation(line: 384, column: 11, scope: !1745, inlinedAt: !1696)
!1755 = !DILocation(line: 385, column: 9, scope: !1753, inlinedAt: !1696)
!1756 = !DILocation(line: 389, column: 5, scope: !1690, inlinedAt: !1696)
!1757 = !DILocation(line: 392, column: 9, scope: !1758, inlinedAt: !1696)
!1758 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 392, column: 9)
!1759 = !DILocation(line: 392, column: 9, scope: !1690, inlinedAt: !1696)
!1760 = !DILocation(line: 393, column: 23, scope: !1758, inlinedAt: !1696)
!1761 = !DILocation(line: 393, column: 34, scope: !1758, inlinedAt: !1696)
!1762 = !DILocation(line: 395, column: 23, scope: !1758, inlinedAt: !1696)
!1763 = !DILocation(line: 0, scope: !1690, inlinedAt: !1696)
!1764 = !DILocation(line: 0, scope: !1758, inlinedAt: !1696)
!1765 = !DILocation(line: 397, column: 20, scope: !1690, inlinedAt: !1696)
!1766 = !DILocation(line: 398, column: 18, scope: !1767, inlinedAt: !1696)
!1767 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 398, column: 9)
!1768 = !DILocation(line: 398, column: 9, scope: !1690, inlinedAt: !1696)
!1769 = !DILocation(line: 0, scope: !1770, inlinedAt: !1696)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 400, column: 13)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 399, column: 7)
!1772 = !DILocation(line: 400, column: 13, scope: !1771, inlinedAt: !1696)
!1773 = !DILocation(line: 401, column: 28, scope: !1770, inlinedAt: !1696)
!1774 = !DILocation(line: 402, column: 18, scope: !1770, inlinedAt: !1696)
!1775 = !DILocation(line: 401, column: 11, scope: !1770, inlinedAt: !1696)
!1776 = !DILocation(line: 404, column: 28, scope: !1770, inlinedAt: !1696)
!1777 = !DILocation(line: 404, column: 11, scope: !1770, inlinedAt: !1696)
!1778 = !DILocation(line: 405, column: 12, scope: !1771, inlinedAt: !1696)
!1779 = !DILocation(line: 421, column: 3, scope: !1685, inlinedAt: !1696)
!1780 = !DILocation(line: 409, column: 18, scope: !1781, inlinedAt: !1696)
!1781 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 409, column: 9)
!1782 = !DILocation(line: 409, column: 9, scope: !1690, inlinedAt: !1696)
!1783 = !DILocation(line: 410, column: 7, scope: !1781, inlinedAt: !1696)
!1784 = !DILocation(line: 0, scope: !1694, inlinedAt: !1696)
!1785 = !DILocation(line: 411, column: 23, scope: !1786, inlinedAt: !1696)
!1786 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 411, column: 5)
!1787 = !DILocation(line: 415, column: 9, scope: !1788, inlinedAt: !1696)
!1788 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 412, column: 7)
!1789 = !DILocation(line: 0, scope: !235, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 415, column: 9, scope: !1788, inlinedAt: !1696)
!1791 = !DILocation(line: 317, column: 21, scope: !235, inlinedAt: !1790)
!1792 = !DILocation(line: 317, column: 10, scope: !235, inlinedAt: !1790)
!1793 = !DILocation(line: 416, column: 25, scope: !1788, inlinedAt: !1696)
!1794 = !DILocation(line: 416, column: 15, scope: !1788, inlinedAt: !1696)
!1795 = !DILocation(line: 417, column: 13, scope: !1796, inlinedAt: !1696)
!1796 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 417, column: 13)
!1797 = !DILocation(line: 417, column: 13, scope: !1788, inlinedAt: !1696)
!1798 = !DILocation(line: 418, column: 11, scope: !1796, inlinedAt: !1696)
!1799 = !DILocation(line: 411, column: 5, scope: !1694, inlinedAt: !1696)
!1800 = !DILocation(line: 420, column: 11, scope: !1690, inlinedAt: !1696)
!1801 = !DILocation(line: 420, column: 5, scope: !1690, inlinedAt: !1696)
!1802 = !DILocation(line: 427, column: 1, scope: !1685, inlinedAt: !1696)
!1803 = !DILocalVariable(name: "__c", arg: 1, scope: !1804, file: !1805, line: 108, type: !14)
!1804 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1805, file: !1805, line: 108, type: !1806, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1808)
!1805 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!14, !14}
!1808 = !{!1803}
!1809 = !DILocation(line: 0, scope: !1804, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 414, column: 11, scope: !1811, inlinedAt: !1696)
!1811 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 413, column: 13)
!1812 = !DILocation(line: 110, column: 10, scope: !1804, inlinedAt: !1810)
!1813 = !{!1814, !1396, i64 40}
!1814 = !{!"_IO_FILE", !1484, i64 0, !1396, i64 8, !1396, i64 16, !1396, i64 24, !1396, i64 32, !1396, i64 40, !1396, i64 48, !1396, i64 56, !1396, i64 64, !1396, i64 72, !1396, i64 80, !1396, i64 88, !1396, i64 96, !1396, i64 104, !1484, i64 112, !1484, i64 116, !1815, i64 120, !1816, i64 128, !1397, i64 130, !1397, i64 131, !1396, i64 136, !1815, i64 144, !1396, i64 152, !1396, i64 160, !1396, i64 168, !1396, i64 176, !1815, i64 184, !1484, i64 192, !1397, i64 196}
!1815 = !{!"long", !1397, i64 0}
!1816 = !{!"short", !1397, i64 0}
!1817 = !{!1814, !1396, i64 48}
!1818 = !{!"branch_weights", i32 2000, i32 1}
!1819 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1820 = !DILocation(line: 411, column: 36, scope: !1786, inlinedAt: !1696)
!1821 = distinct !{!1821, !1799, !1822, !1823}
!1822 = !DILocation(line: 419, column: 7, scope: !1694, inlinedAt: !1696)
!1823 = !{!"llvm.loop.peeled.count", i32 1}
!1824 = !DILocation(line: 455, column: 7, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 455, column: 7)
!1826 = !DILocation(line: 455, column: 16, scope: !1825)
!1827 = !DILocation(line: 455, column: 19, scope: !1825)
!1828 = !DILocation(line: 455, column: 35, scope: !1825)
!1829 = !DILocation(line: 455, column: 38, scope: !1825)
!1830 = !DILocation(line: 0, scope: !1804, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 457, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 456, column: 5)
!1833 = !DILocation(line: 110, column: 10, scope: !1804, inlinedAt: !1831)
!1834 = !DILocation(line: 0, scope: !1804, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 458, column: 7, scope: !1832)
!1836 = !DILocation(line: 110, column: 10, scope: !1804, inlinedAt: !1835)
!1837 = !DILocation(line: 462, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 461, column: 5)
!1839 = !DILocation(line: 0, scope: !1804, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 462, column: 7, scope: !1838)
!1841 = !DILocation(line: 110, column: 10, scope: !1804, inlinedAt: !1840)
!1842 = !DILocation(line: 464, column: 1, scope: !1625)
!1843 = distinct !DISubprogram(name: "print_group_list", scope: !254, file: !254, line: 36, type: !1844, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!164, !12, !192, !198, !198, !164, !11}
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1857, !1858}
!1847 = !DILocalVariable(name: "username", arg: 1, scope: !1843, file: !254, line: 36, type: !12)
!1848 = !DILocalVariable(name: "ruid", arg: 2, scope: !1843, file: !254, line: 37, type: !192)
!1849 = !DILocalVariable(name: "rgid", arg: 3, scope: !1843, file: !254, line: 37, type: !198)
!1850 = !DILocalVariable(name: "egid", arg: 4, scope: !1843, file: !254, line: 37, type: !198)
!1851 = !DILocalVariable(name: "use_names", arg: 5, scope: !1843, file: !254, line: 38, type: !164)
!1852 = !DILocalVariable(name: "delim", arg: 6, scope: !1843, file: !254, line: 38, type: !11)
!1853 = !DILocalVariable(name: "ok", scope: !1843, file: !254, line: 40, type: !164)
!1854 = !DILocalVariable(name: "pwd", scope: !1843, file: !254, line: 41, type: !260)
!1855 = !DILocalVariable(name: "groups", scope: !1856, file: !254, line: 61, type: !614)
!1856 = distinct !DILexicalBlock(scope: !1843, file: !254, line: 60, column: 3)
!1857 = !DILocalVariable(name: "n_groups", scope: !1856, file: !254, line: 63, type: !14)
!1858 = !DILocalVariable(name: "i", scope: !1859, file: !254, line: 78, type: !14)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !254, line: 78, column: 5)
!1860 = !DILocation(line: 0, scope: !1843)
!1861 = !DILocation(line: 43, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1843, file: !254, line: 43, column: 7)
!1863 = !DILocation(line: 43, column: 7, scope: !1843)
!1864 = !DILocation(line: 45, column: 13, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !254, line: 44, column: 5)
!1866 = !DILocation(line: 46, column: 15, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1865, file: !254, line: 46, column: 11)
!1868 = !DILocation(line: 46, column: 11, scope: !1865)
!1869 = !DILocalVariable(name: "gid", arg: 1, scope: !1870, file: !254, line: 103, type: !198)
!1870 = distinct !DISubprogram(name: "print_group", scope: !254, file: !254, line: 103, type: !1871, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!164, !198, !164}
!1873 = !{!1869, !1874, !1875, !1876, !1877}
!1874 = !DILocalVariable(name: "use_name", arg: 2, scope: !1870, file: !254, line: 103, type: !164)
!1875 = !DILocalVariable(name: "grp", scope: !1870, file: !254, line: 105, type: !273)
!1876 = !DILocalVariable(name: "ok", scope: !1870, file: !254, line: 106, type: !164)
!1877 = !DILocalVariable(name: "s", scope: !1870, file: !254, line: 119, type: !10)
!1878 = !DILocation(line: 0, scope: !1870, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 50, column: 8, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1843, file: !254, line: 50, column: 7)
!1881 = !DILocation(line: 108, column: 7, scope: !1870, inlinedAt: !1879)
!1882 = !DILocation(line: 97, column: 21, scope: !253, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 119, column: 34, scope: !1870, inlinedAt: !1879)
!1884 = !DILocation(line: 97, column: 10, scope: !253, inlinedAt: !1883)
!1885 = !DILocation(line: 50, column: 7, scope: !1843)
!1886 = !DILocation(line: 110, column: 13, scope: !1887, inlinedAt: !1879)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !254, line: 109, column: 5)
!1888 = distinct !DILexicalBlock(scope: !1870, file: !254, line: 108, column: 7)
!1889 = !DILocation(line: 111, column: 15, scope: !1890, inlinedAt: !1879)
!1890 = distinct !DILexicalBlock(scope: !1887, file: !254, line: 111, column: 11)
!1891 = !DILocation(line: 111, column: 11, scope: !1887, inlinedAt: !1879)
!1892 = !DILocation(line: 113, column: 24, scope: !1893, inlinedAt: !1879)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !254, line: 112, column: 9)
!1894 = !DILocation(line: 114, column: 18, scope: !1893, inlinedAt: !1879)
!1895 = !DILocation(line: 113, column: 11, scope: !1893, inlinedAt: !1879)
!1896 = !DILocation(line: 119, column: 24, scope: !1870, inlinedAt: !1879)
!1897 = !DILocation(line: 120, column: 3, scope: !1870, inlinedAt: !1879)
!1898 = !DILocation(line: 53, column: 12, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1843, file: !254, line: 53, column: 7)
!1900 = !DILocation(line: 53, column: 7, scope: !1843)
!1901 = !DILocalVariable(name: "__c", arg: 1, scope: !1902, file: !1805, line: 108, type: !14)
!1902 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1805, file: !1805, line: 108, type: !1806, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1903)
!1903 = !{!1901}
!1904 = !DILocation(line: 0, scope: !1902, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 55, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1899, file: !254, line: 54, column: 5)
!1907 = !DILocation(line: 110, column: 10, scope: !1902, inlinedAt: !1905)
!1908 = !DILocation(line: 55, column: 7, scope: !1906)
!1909 = !DILocation(line: 0, scope: !1870, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 56, column: 12, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !254, line: 56, column: 11)
!1912 = !DILocation(line: 108, column: 7, scope: !1870, inlinedAt: !1910)
!1913 = !DILocation(line: 97, column: 21, scope: !253, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 119, column: 34, scope: !1870, inlinedAt: !1910)
!1915 = !DILocation(line: 97, column: 10, scope: !253, inlinedAt: !1914)
!1916 = !DILocation(line: 56, column: 11, scope: !1906)
!1917 = !DILocation(line: 110, column: 13, scope: !1887, inlinedAt: !1910)
!1918 = !DILocation(line: 111, column: 15, scope: !1890, inlinedAt: !1910)
!1919 = !DILocation(line: 111, column: 11, scope: !1887, inlinedAt: !1910)
!1920 = !DILocation(line: 113, column: 24, scope: !1893, inlinedAt: !1910)
!1921 = !DILocation(line: 114, column: 18, scope: !1893, inlinedAt: !1910)
!1922 = !DILocation(line: 113, column: 11, scope: !1893, inlinedAt: !1910)
!1923 = !DILocation(line: 119, column: 24, scope: !1870, inlinedAt: !1910)
!1924 = !DILocation(line: 120, column: 3, scope: !1870, inlinedAt: !1910)
!1925 = !DILocation(line: 61, column: 5, scope: !1856)
!1926 = !DILocation(line: 63, column: 43, scope: !1856)
!1927 = !DILocation(line: 63, column: 54, scope: !1856)
!1928 = !DILocation(line: 0, scope: !1856)
!1929 = !DILocation(line: 63, column: 20, scope: !1856)
!1930 = !DILocation(line: 64, column: 18, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1856, file: !254, line: 64, column: 9)
!1932 = !DILocation(line: 64, column: 9, scope: !1856)
!1933 = !DILocation(line: 0, scope: !1859)
!1934 = !DILocation(line: 78, column: 23, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1859, file: !254, line: 78, column: 5)
!1936 = !DILocation(line: 78, column: 5, scope: !1859)
!1937 = !DILocation(line: 0, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !254, line: 80, column: 9)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !254, line: 79, column: 11)
!1940 = !DILocation(line: 0, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !254, line: 66, column: 13)
!1942 = distinct !DILexicalBlock(scope: !1931, file: !254, line: 65, column: 7)
!1943 = !DILocation(line: 66, column: 13, scope: !1942)
!1944 = !DILocation(line: 68, column: 30, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !254, line: 67, column: 11)
!1946 = !DILocation(line: 69, column: 20, scope: !1945)
!1947 = !DILocation(line: 68, column: 13, scope: !1945)
!1948 = !DILocation(line: 70, column: 11, scope: !1945)
!1949 = !DILocation(line: 73, column: 30, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1941, file: !254, line: 72, column: 11)
!1951 = !DILocation(line: 73, column: 13, scope: !1950)
!1952 = !DILocation(line: 79, column: 11, scope: !1939)
!1953 = !DILocation(line: 79, column: 21, scope: !1939)
!1954 = !DILocation(line: 79, column: 42, scope: !1939)
!1955 = !DILocation(line: 79, column: 29, scope: !1939)
!1956 = !DILocation(line: 0, scope: !1902, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 81, column: 11, scope: !1938)
!1958 = !DILocation(line: 110, column: 10, scope: !1902, inlinedAt: !1957)
!1959 = !DILocation(line: 82, column: 29, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1938, file: !254, line: 82, column: 15)
!1961 = !DILocation(line: 0, scope: !1870, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 82, column: 16, scope: !1960)
!1963 = !DILocation(line: 108, column: 7, scope: !1870, inlinedAt: !1962)
!1964 = !DILocation(line: 97, column: 21, scope: !253, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 119, column: 34, scope: !1870, inlinedAt: !1962)
!1966 = !DILocation(line: 97, column: 10, scope: !253, inlinedAt: !1965)
!1967 = !DILocation(line: 82, column: 15, scope: !1938)
!1968 = !DILocation(line: 110, column: 13, scope: !1887, inlinedAt: !1962)
!1969 = !DILocation(line: 111, column: 15, scope: !1890, inlinedAt: !1962)
!1970 = !DILocation(line: 111, column: 11, scope: !1887, inlinedAt: !1962)
!1971 = !DILocation(line: 113, column: 24, scope: !1893, inlinedAt: !1962)
!1972 = !DILocation(line: 114, column: 18, scope: !1893, inlinedAt: !1962)
!1973 = !DILocation(line: 113, column: 11, scope: !1893, inlinedAt: !1962)
!1974 = !DILocation(line: 119, column: 24, scope: !1870, inlinedAt: !1962)
!1975 = !DILocation(line: 120, column: 3, scope: !1870, inlinedAt: !1962)
!1976 = !DILocation(line: 78, column: 36, scope: !1935)
!1977 = distinct !{!1977, !1936, !1978}
!1978 = !DILocation(line: 84, column: 9, scope: !1859)
!1979 = !DILocation(line: 86, column: 3, scope: !1843)
!1980 = !DILocation(line: 47, column: 12, scope: !1867)
!1981 = !DILocation(line: 85, column: 11, scope: !1856)
!1982 = !DILocation(line: 85, column: 5, scope: !1856)
!1983 = !DILocation(line: 88, column: 1, scope: !1843)
!1984 = !DILocation(line: 0, scope: !1870)
!1985 = !DILocation(line: 108, column: 7, scope: !1870)
!1986 = !DILocation(line: 97, column: 21, scope: !253, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 119, column: 34, scope: !1870)
!1988 = !DILocation(line: 110, column: 13, scope: !1887)
!1989 = !DILocation(line: 111, column: 15, scope: !1890)
!1990 = !DILocation(line: 111, column: 11, scope: !1887)
!1991 = !DILocation(line: 113, column: 24, scope: !1893)
!1992 = !DILocation(line: 114, column: 18, scope: !1893)
!1993 = !DILocation(line: 113, column: 11, scope: !1893)
!1994 = !DILocation(line: 116, column: 9, scope: !1893)
!1995 = !DILocation(line: 119, column: 24, scope: !1870)
!1996 = !DILocation(line: 119, column: 13, scope: !1870)
!1997 = !DILocation(line: 97, column: 10, scope: !253, inlinedAt: !1987)
!1998 = !DILocation(line: 120, column: 3, scope: !1870)
!1999 = !DILocation(line: 121, column: 3, scope: !1870)
!2000 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !326, file: !326, line: 51, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2001)
!2001 = !{!2002}
!2002 = !DILocalVariable(name: "file", arg: 1, scope: !2000, file: !326, line: 51, type: !12)
!2003 = !DILocation(line: 0, scope: !2000)
!2004 = !DILocation(line: 53, column: 13, scope: !2000)
!2005 = !DILocation(line: 54, column: 1, scope: !2000)
!2006 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !326, file: !326, line: 88, type: !2007, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !164}
!2009 = !{!2010}
!2010 = !DILocalVariable(name: "ignore", arg: 1, scope: !2006, file: !326, line: 88, type: !164)
!2011 = !DILocation(line: 0, scope: !2006)
!2012 = !DILocation(line: 90, column: 16, scope: !2006)
!2013 = !DILocation(line: 91, column: 1, scope: !2006)
!2014 = distinct !DISubprogram(name: "close_stdout", scope: !326, file: !326, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2015)
!2015 = !{!2016}
!2016 = !DILocalVariable(name: "write_error", scope: !2017, file: !326, line: 122, type: !12)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !326, line: 121, column: 5)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !326, line: 119, column: 7)
!2019 = !DILocation(line: 119, column: 21, scope: !2018)
!2020 = !DILocation(line: 119, column: 7, scope: !2018)
!2021 = !DILocation(line: 119, column: 29, scope: !2018)
!2022 = !DILocation(line: 120, column: 7, scope: !2018)
!2023 = !DILocation(line: 120, column: 12, scope: !2018)
!2024 = !DILocation(line: 120, column: 25, scope: !2018)
!2025 = !DILocation(line: 120, column: 28, scope: !2018)
!2026 = !DILocation(line: 120, column: 34, scope: !2018)
!2027 = !DILocation(line: 119, column: 7, scope: !2014)
!2028 = !DILocation(line: 122, column: 33, scope: !2017)
!2029 = !DILocation(line: 0, scope: !2017)
!2030 = !DILocation(line: 123, column: 11, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2017, file: !326, line: 123, column: 11)
!2032 = !DILocation(line: 0, scope: !2031)
!2033 = !DILocation(line: 123, column: 11, scope: !2017)
!2034 = !DILocation(line: 124, column: 36, scope: !2031)
!2035 = !DILocation(line: 124, column: 9, scope: !2031)
!2036 = !DILocation(line: 127, column: 9, scope: !2031)
!2037 = !DILocation(line: 129, column: 14, scope: !2017)
!2038 = !DILocation(line: 129, column: 7, scope: !2017)
!2039 = !DILocation(line: 134, column: 42, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2014, file: !326, line: 134, column: 7)
!2041 = !DILocation(line: 134, column: 28, scope: !2040)
!2042 = !DILocation(line: 134, column: 50, scope: !2040)
!2043 = !DILocation(line: 134, column: 7, scope: !2014)
!2044 = !DILocation(line: 135, column: 12, scope: !2040)
!2045 = !DILocation(line: 135, column: 5, scope: !2040)
!2046 = !DILocation(line: 136, column: 1, scope: !2014)
!2047 = distinct !DISubprogram(name: "umaxtostr", scope: !2048, file: !2048, line: 36, type: !2049, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !2051)
!2048 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!10, !561, !10}
!2051 = !{!2052, !2053, !2054}
!2052 = !DILocalVariable(name: "i", arg: 1, scope: !2047, file: !2048, line: 36, type: !561)
!2053 = !DILocalVariable(name: "buf", arg: 2, scope: !2047, file: !2048, line: 36, type: !10)
!2054 = !DILocalVariable(name: "p", scope: !2047, file: !2048, line: 38, type: !10)
!2055 = !DILocation(line: 0, scope: !2047)
!2056 = !DILocation(line: 38, column: 17, scope: !2047)
!2057 = !DILocation(line: 39, column: 6, scope: !2047)
!2058 = !DILocation(line: 41, column: 7, scope: !2047)
!2059 = !DILocation(line: 52, column: 24, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !2048, line: 50, column: 5)
!2061 = distinct !DILexicalBlock(scope: !2047, file: !2048, line: 41, column: 7)
!2062 = !DILocation(line: 52, column: 16, scope: !2060)
!2063 = !DILocation(line: 52, column: 10, scope: !2060)
!2064 = !DILocation(line: 52, column: 14, scope: !2060)
!2065 = !DILocation(line: 53, column: 17, scope: !2060)
!2066 = !DILocation(line: 53, column: 24, scope: !2060)
!2067 = !DILocation(line: 52, column: 9, scope: !2060)
!2068 = distinct !{!2068, !2069, !2070}
!2069 = !DILocation(line: 51, column: 7, scope: !2060)
!2070 = !DILocation(line: 53, column: 28, scope: !2060)
!2071 = !DILocation(line: 56, column: 3, scope: !2047)
!2072 = distinct !DISubprogram(name: "set_program_name", scope: !378, file: !378, line: 39, type: !78, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2073)
!2073 = !{!2074, !2075, !2076}
!2074 = !DILocalVariable(name: "argv0", arg: 1, scope: !2072, file: !378, line: 39, type: !12)
!2075 = !DILocalVariable(name: "slash", scope: !2072, file: !378, line: 46, type: !12)
!2076 = !DILocalVariable(name: "base", scope: !2072, file: !378, line: 47, type: !12)
!2077 = !DILocation(line: 0, scope: !2072)
!2078 = !DILocation(line: 51, column: 13, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2072, file: !378, line: 51, column: 7)
!2080 = !DILocation(line: 51, column: 7, scope: !2072)
!2081 = !DILocation(line: 55, column: 14, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2079, file: !378, line: 52, column: 5)
!2083 = !DILocation(line: 54, column: 7, scope: !2082)
!2084 = !DILocation(line: 56, column: 7, scope: !2082)
!2085 = !DILocation(line: 59, column: 11, scope: !2072)
!2086 = !DILocation(line: 60, column: 17, scope: !2072)
!2087 = !DILocation(line: 60, column: 11, scope: !2072)
!2088 = !DILocation(line: 61, column: 12, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2072, file: !378, line: 61, column: 7)
!2090 = !DILocation(line: 61, column: 20, scope: !2089)
!2091 = !DILocation(line: 61, column: 25, scope: !2089)
!2092 = !DILocation(line: 61, column: 42, scope: !2089)
!2093 = !DILocation(line: 61, column: 28, scope: !2089)
!2094 = !DILocation(line: 61, column: 61, scope: !2089)
!2095 = !DILocation(line: 61, column: 7, scope: !2072)
!2096 = !DILocation(line: 64, column: 11, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !378, line: 64, column: 11)
!2098 = distinct !DILexicalBlock(scope: !2089, file: !378, line: 62, column: 5)
!2099 = !DILocation(line: 64, column: 36, scope: !2097)
!2100 = !DILocation(line: 64, column: 11, scope: !2098)
!2101 = !DILocation(line: 66, column: 24, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2097, file: !378, line: 65, column: 9)
!2103 = !DILocation(line: 70, column: 41, scope: !2102)
!2104 = !DILocation(line: 72, column: 9, scope: !2102)
!2105 = !DILocation(line: 84, column: 16, scope: !2072)
!2106 = !DILocation(line: 90, column: 27, scope: !2072)
!2107 = !DILocation(line: 92, column: 1, scope: !2072)
!2108 = distinct !DISubprogram(name: "clone_quoting_options", scope: !419, file: !419, line: 122, type: !2109, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2112)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2111, !2111}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!2112 = !{!2113, !2114, !2115}
!2113 = !DILocalVariable(name: "o", arg: 1, scope: !2108, file: !419, line: 122, type: !2111)
!2114 = !DILocalVariable(name: "e", scope: !2108, file: !419, line: 124, type: !14)
!2115 = !DILocalVariable(name: "p", scope: !2108, file: !419, line: 125, type: !2111)
!2116 = !DILocation(line: 0, scope: !2108)
!2117 = !DILocation(line: 124, column: 11, scope: !2108)
!2118 = !DILocation(line: 125, column: 40, scope: !2108)
!2119 = !DILocation(line: 125, column: 31, scope: !2108)
!2120 = !DILocation(line: 127, column: 9, scope: !2108)
!2121 = !DILocation(line: 128, column: 3, scope: !2108)
!2122 = distinct !DISubprogram(name: "get_quoting_style", scope: !419, file: !419, line: 133, type: !2123, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!421, !464}
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "o", arg: 1, scope: !2122, file: !419, line: 133, type: !464)
!2127 = !DILocation(line: 0, scope: !2122)
!2128 = !DILocation(line: 135, column: 11, scope: !2122)
!2129 = !DILocation(line: 135, column: 46, scope: !2122)
!2130 = !{!2131, !1397, i64 0}
!2131 = !{!"quoting_options", !1397, i64 0, !1484, i64 4, !1397, i64 8, !1396, i64 40, !1396, i64 48}
!2132 = !DILocation(line: 135, column: 3, scope: !2122)
!2133 = distinct !DISubprogram(name: "set_quoting_style", scope: !419, file: !419, line: 141, type: !2134, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !2111, !421}
!2136 = !{!2137, !2138}
!2137 = !DILocalVariable(name: "o", arg: 1, scope: !2133, file: !419, line: 141, type: !2111)
!2138 = !DILocalVariable(name: "s", arg: 2, scope: !2133, file: !419, line: 141, type: !421)
!2139 = !DILocation(line: 0, scope: !2133)
!2140 = !DILocation(line: 143, column: 4, scope: !2133)
!2141 = !DILocation(line: 143, column: 39, scope: !2133)
!2142 = !DILocation(line: 143, column: 45, scope: !2133)
!2143 = !DILocation(line: 144, column: 1, scope: !2133)
!2144 = distinct !DISubprogram(name: "set_char_quoting", scope: !419, file: !419, line: 152, type: !2145, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!14, !2111, !11, !14}
!2147 = !{!2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2148 = !DILocalVariable(name: "o", arg: 1, scope: !2144, file: !419, line: 152, type: !2111)
!2149 = !DILocalVariable(name: "c", arg: 2, scope: !2144, file: !419, line: 152, type: !11)
!2150 = !DILocalVariable(name: "i", arg: 3, scope: !2144, file: !419, line: 152, type: !14)
!2151 = !DILocalVariable(name: "uc", scope: !2144, file: !419, line: 154, type: !188)
!2152 = !DILocalVariable(name: "p", scope: !2144, file: !419, line: 155, type: !125)
!2153 = !DILocalVariable(name: "shift", scope: !2144, file: !419, line: 157, type: !14)
!2154 = !DILocalVariable(name: "r", scope: !2144, file: !419, line: 158, type: !14)
!2155 = !DILocation(line: 0, scope: !2144)
!2156 = !DILocation(line: 156, column: 6, scope: !2144)
!2157 = !DILocation(line: 156, column: 62, scope: !2144)
!2158 = !DILocation(line: 156, column: 57, scope: !2144)
!2159 = !DILocation(line: 157, column: 15, scope: !2144)
!2160 = !DILocation(line: 158, column: 12, scope: !2144)
!2161 = !DILocation(line: 158, column: 15, scope: !2144)
!2162 = !DILocation(line: 158, column: 25, scope: !2144)
!2163 = !DILocation(line: 159, column: 13, scope: !2144)
!2164 = !DILocation(line: 159, column: 18, scope: !2144)
!2165 = !DILocation(line: 159, column: 23, scope: !2144)
!2166 = !DILocation(line: 159, column: 6, scope: !2144)
!2167 = !DILocation(line: 160, column: 3, scope: !2144)
!2168 = distinct !DISubprogram(name: "set_quoting_flags", scope: !419, file: !419, line: 168, type: !2169, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!14, !2111, !14}
!2171 = !{!2172, !2173, !2174}
!2172 = !DILocalVariable(name: "o", arg: 1, scope: !2168, file: !419, line: 168, type: !2111)
!2173 = !DILocalVariable(name: "i", arg: 2, scope: !2168, file: !419, line: 168, type: !14)
!2174 = !DILocalVariable(name: "r", scope: !2168, file: !419, line: 170, type: !14)
!2175 = !DILocation(line: 0, scope: !2168)
!2176 = !DILocation(line: 171, column: 8, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2168, file: !419, line: 171, column: 7)
!2178 = !DILocation(line: 171, column: 7, scope: !2168)
!2179 = !DILocation(line: 173, column: 10, scope: !2168)
!2180 = !{!2131, !1484, i64 4}
!2181 = !DILocation(line: 174, column: 12, scope: !2168)
!2182 = !DILocation(line: 175, column: 3, scope: !2168)
!2183 = distinct !DISubprogram(name: "set_custom_quoting", scope: !419, file: !419, line: 179, type: !2184, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2111, !12, !12}
!2186 = !{!2187, !2188, !2189}
!2187 = !DILocalVariable(name: "o", arg: 1, scope: !2183, file: !419, line: 179, type: !2111)
!2188 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2183, file: !419, line: 180, type: !12)
!2189 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2183, file: !419, line: 180, type: !12)
!2190 = !DILocation(line: 0, scope: !2183)
!2191 = !DILocation(line: 182, column: 8, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2183, file: !419, line: 182, column: 7)
!2193 = !DILocation(line: 182, column: 7, scope: !2183)
!2194 = !DILocation(line: 184, column: 6, scope: !2183)
!2195 = !DILocation(line: 184, column: 12, scope: !2183)
!2196 = !DILocation(line: 185, column: 8, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2183, file: !419, line: 185, column: 7)
!2198 = !DILocation(line: 185, column: 23, scope: !2197)
!2199 = !DILocation(line: 185, column: 19, scope: !2197)
!2200 = !DILocation(line: 186, column: 5, scope: !2197)
!2201 = !DILocation(line: 187, column: 6, scope: !2183)
!2202 = !DILocation(line: 187, column: 17, scope: !2183)
!2203 = !{!2131, !1396, i64 40}
!2204 = !DILocation(line: 188, column: 6, scope: !2183)
!2205 = !DILocation(line: 188, column: 18, scope: !2183)
!2206 = !{!2131, !1396, i64 48}
!2207 = !DILocation(line: 189, column: 1, scope: !2183)
!2208 = distinct !DISubprogram(name: "quotearg_buffer", scope: !419, file: !419, line: 784, type: !2209, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!68, !10, !68, !12, !68, !464}
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2212 = !DILocalVariable(name: "buffer", arg: 1, scope: !2208, file: !419, line: 784, type: !10)
!2213 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2208, file: !419, line: 784, type: !68)
!2214 = !DILocalVariable(name: "arg", arg: 3, scope: !2208, file: !419, line: 785, type: !12)
!2215 = !DILocalVariable(name: "argsize", arg: 4, scope: !2208, file: !419, line: 785, type: !68)
!2216 = !DILocalVariable(name: "o", arg: 5, scope: !2208, file: !419, line: 786, type: !464)
!2217 = !DILocalVariable(name: "p", scope: !2208, file: !419, line: 788, type: !464)
!2218 = !DILocalVariable(name: "e", scope: !2208, file: !419, line: 789, type: !14)
!2219 = !DILocalVariable(name: "r", scope: !2208, file: !419, line: 790, type: !68)
!2220 = !DILocation(line: 0, scope: !2208)
!2221 = !DILocation(line: 788, column: 37, scope: !2208)
!2222 = !DILocation(line: 789, column: 11, scope: !2208)
!2223 = !DILocation(line: 791, column: 43, scope: !2208)
!2224 = !DILocation(line: 791, column: 53, scope: !2208)
!2225 = !DILocation(line: 791, column: 60, scope: !2208)
!2226 = !DILocation(line: 792, column: 43, scope: !2208)
!2227 = !DILocation(line: 792, column: 58, scope: !2208)
!2228 = !DILocation(line: 790, column: 14, scope: !2208)
!2229 = !DILocation(line: 793, column: 9, scope: !2208)
!2230 = !DILocation(line: 794, column: 3, scope: !2208)
!2231 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !419, file: !419, line: 256, type: !2232, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2236)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!68, !10, !68, !12, !68, !421, !14, !2234, !12, !12}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2261, !2262, !2263, !2264, !2265, !2268, !2269, !2275, !2278, !2279, !2286, !2289, !2290, !2291, !2292, !2293, !2294}
!2237 = !DILocalVariable(name: "buffer", arg: 1, scope: !2231, file: !419, line: 256, type: !10)
!2238 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2231, file: !419, line: 256, type: !68)
!2239 = !DILocalVariable(name: "arg", arg: 3, scope: !2231, file: !419, line: 257, type: !12)
!2240 = !DILocalVariable(name: "argsize", arg: 4, scope: !2231, file: !419, line: 257, type: !68)
!2241 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2231, file: !419, line: 258, type: !421)
!2242 = !DILocalVariable(name: "flags", arg: 6, scope: !2231, file: !419, line: 258, type: !14)
!2243 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2231, file: !419, line: 259, type: !2234)
!2244 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2231, file: !419, line: 260, type: !12)
!2245 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2231, file: !419, line: 261, type: !12)
!2246 = !DILocalVariable(name: "i", scope: !2231, file: !419, line: 263, type: !68)
!2247 = !DILocalVariable(name: "len", scope: !2231, file: !419, line: 264, type: !68)
!2248 = !DILocalVariable(name: "orig_buffersize", scope: !2231, file: !419, line: 265, type: !68)
!2249 = !DILocalVariable(name: "quote_string", scope: !2231, file: !419, line: 266, type: !12)
!2250 = !DILocalVariable(name: "quote_string_len", scope: !2231, file: !419, line: 267, type: !68)
!2251 = !DILocalVariable(name: "backslash_escapes", scope: !2231, file: !419, line: 268, type: !164)
!2252 = !DILocalVariable(name: "unibyte_locale", scope: !2231, file: !419, line: 269, type: !164)
!2253 = !DILocalVariable(name: "elide_outer_quotes", scope: !2231, file: !419, line: 270, type: !164)
!2254 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2231, file: !419, line: 271, type: !164)
!2255 = !DILocalVariable(name: "encountered_single_quote", scope: !2231, file: !419, line: 272, type: !164)
!2256 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2231, file: !419, line: 273, type: !164)
!2257 = !DILocalVariable(name: "c", scope: !2258, file: !419, line: 402, type: !188)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !419, line: 401, column: 5)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !419, line: 400, column: 3)
!2260 = distinct !DILexicalBlock(scope: !2231, file: !419, line: 400, column: 3)
!2261 = !DILocalVariable(name: "esc", scope: !2258, file: !419, line: 403, type: !188)
!2262 = !DILocalVariable(name: "is_right_quote", scope: !2258, file: !419, line: 404, type: !164)
!2263 = !DILocalVariable(name: "escaping", scope: !2258, file: !419, line: 405, type: !164)
!2264 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2258, file: !419, line: 406, type: !164)
!2265 = !DILocalVariable(name: "m", scope: !2266, file: !419, line: 610, type: !68)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 608, column: 11)
!2267 = distinct !DILexicalBlock(scope: !2258, file: !419, line: 426, column: 9)
!2268 = !DILocalVariable(name: "printable", scope: !2266, file: !419, line: 612, type: !164)
!2269 = !DILocalVariable(name: "mbstate", scope: !2270, file: !419, line: 621, type: !2272)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !419, line: 620, column: 15)
!2271 = distinct !DILexicalBlock(scope: !2266, file: !419, line: 614, column: 17)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2273, line: 6, baseType: !2274)
!2273 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !485, line: 21, baseType: !484)
!2275 = !DILocalVariable(name: "w", scope: !2276, file: !419, line: 631, type: !2277)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !419, line: 630, column: 19)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !14)
!2278 = !DILocalVariable(name: "bytes", scope: !2276, file: !419, line: 632, type: !68)
!2279 = !DILocalVariable(name: "j", scope: !2280, file: !419, line: 657, type: !68)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !419, line: 656, column: 27)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !419, line: 654, column: 29)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !419, line: 649, column: 23)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !419, line: 641, column: 30)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !419, line: 636, column: 30)
!2285 = distinct !DILexicalBlock(scope: !2276, file: !419, line: 634, column: 25)
!2286 = !DILocalVariable(name: "ilim", scope: !2287, file: !419, line: 684, type: !68)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !419, line: 681, column: 15)
!2288 = distinct !DILexicalBlock(scope: !2266, file: !419, line: 680, column: 17)
!2289 = !DILabel(scope: !2231, name: "process_input", file: !419, line: 314)
!2290 = !DILabel(scope: !2267, name: "c_and_shell_escape", file: !419, line: 512)
!2291 = !DILabel(scope: !2267, name: "c_escape", file: !419, line: 517)
!2292 = !DILabel(scope: !2258, name: "store_escape", file: !419, line: 719)
!2293 = !DILabel(scope: !2258, name: "store_c", file: !419, line: 722)
!2294 = !DILabel(scope: !2231, name: "force_outer_quoting_style", file: !419, line: 763)
!2295 = !DILocation(line: 0, scope: !2231)
!2296 = !DILocation(line: 269, column: 25, scope: !2231)
!2297 = !DILocation(line: 269, column: 36, scope: !2231)
!2298 = !DILocation(line: 270, column: 8, scope: !2231)
!2299 = !DILocation(line: 0, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 526, column: 15)
!2301 = !DILocation(line: 0, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !419, line: 462, column: 19)
!2303 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 455, column: 13)
!2304 = !DILocation(line: 0, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !419, line: 449, column: 20)
!2306 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 428, column: 15)
!2307 = !DILocation(line: 0, scope: !2270)
!2308 = !DILocation(line: 0, scope: !2276)
!2309 = !DILocation(line: 0, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2258, file: !419, line: 712, column: 11)
!2311 = !DILocation(line: 273, column: 3, scope: !2231)
!2312 = !DILocation(line: 265, column: 10, scope: !2231)
!2313 = !DILocation(line: 266, column: 15, scope: !2231)
!2314 = !DILocation(line: 267, column: 10, scope: !2231)
!2315 = !DILocation(line: 268, column: 8, scope: !2231)
!2316 = !DILocation(line: 271, column: 8, scope: !2231)
!2317 = !DILocation(line: 272, column: 8, scope: !2231)
!2318 = !DILocation(line: 273, column: 8, scope: !2231)
!2319 = !DILocation(line: 314, column: 2, scope: !2231)
!2320 = !DILocation(line: 316, column: 3, scope: !2231)
!2321 = !DILocation(line: 323, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2231, file: !419, line: 317, column: 5)
!2323 = !DILocation(line: 323, column: 12, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2322, file: !419, line: 323, column: 11)
!2325 = !DILocation(line: 324, column: 9, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !419, line: 324, column: 9)
!2327 = distinct !DILexicalBlock(scope: !2324, file: !419, line: 324, column: 9)
!2328 = !DILocation(line: 324, column: 9, scope: !2327)
!2329 = !DILocation(line: 362, column: 26, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !419, line: 340, column: 11)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !419, line: 339, column: 13)
!2332 = distinct !DILexicalBlock(scope: !2322, file: !419, line: 338, column: 7)
!2333 = !DILocation(line: 363, column: 27, scope: !2330)
!2334 = !DILocation(line: 364, column: 11, scope: !2330)
!2335 = !DILocation(line: 365, column: 14, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !419, line: 365, column: 13)
!2337 = !DILocation(line: 365, column: 13, scope: !2332)
!2338 = !DILocation(line: 366, column: 43, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !419, line: 366, column: 11)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !419, line: 366, column: 11)
!2341 = !DILocation(line: 366, column: 11, scope: !2340)
!2342 = !DILocation(line: 367, column: 13, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !419, line: 367, column: 13)
!2344 = distinct !DILexicalBlock(scope: !2339, file: !419, line: 367, column: 13)
!2345 = !DILocation(line: 367, column: 13, scope: !2344)
!2346 = !DILocation(line: 366, column: 70, scope: !2339)
!2347 = distinct !{!2347, !2341, !2348}
!2348 = !DILocation(line: 367, column: 13, scope: !2340)
!2349 = !DILocation(line: 264, column: 10, scope: !2231)
!2350 = !DILocation(line: 370, column: 28, scope: !2332)
!2351 = !DILocation(line: 372, column: 7, scope: !2322)
!2352 = !DILocation(line: 376, column: 7, scope: !2322)
!2353 = !DILocation(line: 379, column: 7, scope: !2322)
!2354 = !DILocation(line: 381, column: 12, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2322, file: !419, line: 381, column: 11)
!2356 = !DILocation(line: 381, column: 11, scope: !2322)
!2357 = !DILocation(line: 386, column: 12, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2322, file: !419, line: 386, column: 11)
!2359 = !DILocation(line: 386, column: 11, scope: !2322)
!2360 = !DILocation(line: 387, column: 9, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !419, line: 387, column: 9)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !419, line: 387, column: 9)
!2363 = !DILocation(line: 387, column: 9, scope: !2362)
!2364 = !DILocation(line: 394, column: 7, scope: !2322)
!2365 = !DILocation(line: 397, column: 7, scope: !2322)
!2366 = !DILocation(line: 0, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2258, file: !419, line: 408, column: 11)
!2368 = !DILocation(line: 0, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !419, line: 419, column: 15)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !419, line: 418, column: 9)
!2371 = !DILocation(line: 0, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 556, column: 15)
!2373 = !DILocation(line: 0, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 548, column: 15)
!2375 = !DILocation(line: 0, scope: !2281)
!2376 = !DILocation(line: 0, scope: !2288)
!2377 = !DILocation(line: 0, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 509, column: 15)
!2379 = !DILocation(line: 400, column: 8, scope: !2260)
!2380 = !DILocation(line: 0, scope: !2260)
!2381 = !DILocation(line: 400, column: 27, scope: !2259)
!2382 = !DILocation(line: 400, column: 19, scope: !2259)
!2383 = !DILocation(line: 400, column: 41, scope: !2259)
!2384 = !DILocation(line: 400, column: 48, scope: !2259)
!2385 = !DILocation(line: 400, column: 3, scope: !2260)
!2386 = !DILocation(line: 400, column: 60, scope: !2259)
!2387 = !DILocation(line: 0, scope: !2258)
!2388 = !DILocation(line: 409, column: 11, scope: !2367)
!2389 = !DILocation(line: 411, column: 17, scope: !2367)
!2390 = !DILocation(line: 412, column: 39, scope: !2367)
!2391 = !DILocation(line: 416, column: 32, scope: !2367)
!2392 = !DILocation(line: 412, column: 19, scope: !2367)
!2393 = !DILocation(line: 412, column: 15, scope: !2367)
!2394 = !DILocation(line: 417, column: 11, scope: !2367)
!2395 = !DILocation(line: 417, column: 26, scope: !2367)
!2396 = !DILocation(line: 417, column: 14, scope: !2367)
!2397 = !DILocation(line: 417, column: 63, scope: !2367)
!2398 = !DILocation(line: 408, column: 11, scope: !2258)
!2399 = !DILocation(line: 424, column: 11, scope: !2258)
!2400 = !DILocation(line: 425, column: 7, scope: !2258)
!2401 = !DILocation(line: 428, column: 15, scope: !2267)
!2402 = !DILocation(line: 430, column: 15, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !419, line: 430, column: 15)
!2404 = distinct !DILexicalBlock(scope: !2306, file: !419, line: 429, column: 13)
!2405 = !DILocation(line: 430, column: 15, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2403, file: !419, line: 430, column: 15)
!2407 = !DILocation(line: 430, column: 15, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !419, line: 430, column: 15)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !419, line: 430, column: 15)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !419, line: 430, column: 15)
!2411 = !DILocation(line: 430, column: 15, scope: !2409)
!2412 = !DILocation(line: 430, column: 15, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !419, line: 430, column: 15)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !419, line: 430, column: 15)
!2415 = !DILocation(line: 430, column: 15, scope: !2414)
!2416 = !DILocation(line: 430, column: 15, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !419, line: 430, column: 15)
!2418 = distinct !DILexicalBlock(scope: !2410, file: !419, line: 430, column: 15)
!2419 = !DILocation(line: 430, column: 15, scope: !2418)
!2420 = !DILocation(line: 430, column: 15, scope: !2410)
!2421 = !DILocation(line: 430, column: 15, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !419, line: 430, column: 15)
!2423 = distinct !DILexicalBlock(scope: !2403, file: !419, line: 430, column: 15)
!2424 = !DILocation(line: 430, column: 15, scope: !2423)
!2425 = !DILocation(line: 438, column: 19, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2404, file: !419, line: 437, column: 19)
!2427 = !DILocation(line: 438, column: 24, scope: !2426)
!2428 = !DILocation(line: 438, column: 28, scope: !2426)
!2429 = !DILocation(line: 438, column: 38, scope: !2426)
!2430 = !DILocation(line: 438, column: 48, scope: !2426)
!2431 = !DILocation(line: 438, column: 59, scope: !2426)
!2432 = !DILocation(line: 440, column: 19, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !419, line: 440, column: 19)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !419, line: 440, column: 19)
!2435 = distinct !DILexicalBlock(scope: !2426, file: !419, line: 439, column: 17)
!2436 = !DILocation(line: 440, column: 19, scope: !2434)
!2437 = !DILocation(line: 441, column: 19, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !419, line: 441, column: 19)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !419, line: 441, column: 19)
!2440 = !DILocation(line: 441, column: 19, scope: !2439)
!2441 = !DILocation(line: 442, column: 17, scope: !2435)
!2442 = !DILocation(line: 449, column: 20, scope: !2306)
!2443 = !DILocation(line: 454, column: 11, scope: !2267)
!2444 = !DILocation(line: 457, column: 19, scope: !2303)
!2445 = !DILocation(line: 463, column: 19, scope: !2302)
!2446 = !DILocation(line: 463, column: 24, scope: !2302)
!2447 = !DILocation(line: 463, column: 28, scope: !2302)
!2448 = !DILocation(line: 463, column: 38, scope: !2302)
!2449 = !DILocation(line: 463, column: 47, scope: !2302)
!2450 = !DILocation(line: 463, column: 41, scope: !2302)
!2451 = !DILocation(line: 463, column: 52, scope: !2302)
!2452 = !DILocation(line: 462, column: 19, scope: !2303)
!2453 = !DILocation(line: 464, column: 25, scope: !2302)
!2454 = !DILocation(line: 464, column: 17, scope: !2302)
!2455 = !DILocation(line: 471, column: 25, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2302, file: !419, line: 465, column: 19)
!2457 = !DILocation(line: 475, column: 21, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !419, line: 475, column: 21)
!2459 = distinct !DILexicalBlock(scope: !2456, file: !419, line: 475, column: 21)
!2460 = !DILocation(line: 475, column: 21, scope: !2459)
!2461 = !DILocation(line: 476, column: 21, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !419, line: 476, column: 21)
!2463 = distinct !DILexicalBlock(scope: !2456, file: !419, line: 476, column: 21)
!2464 = !DILocation(line: 476, column: 21, scope: !2463)
!2465 = !DILocation(line: 477, column: 21, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !419, line: 477, column: 21)
!2467 = distinct !DILexicalBlock(scope: !2456, file: !419, line: 477, column: 21)
!2468 = !DILocation(line: 477, column: 21, scope: !2467)
!2469 = !DILocation(line: 478, column: 21, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !419, line: 478, column: 21)
!2471 = distinct !DILexicalBlock(scope: !2456, file: !419, line: 478, column: 21)
!2472 = !DILocation(line: 478, column: 21, scope: !2471)
!2473 = !DILocation(line: 479, column: 21, scope: !2456)
!2474 = !DILocation(line: 492, column: 31, scope: !2267)
!2475 = !DILocation(line: 493, column: 31, scope: !2267)
!2476 = !DILocation(line: 495, column: 31, scope: !2267)
!2477 = !DILocation(line: 496, column: 31, scope: !2267)
!2478 = !DILocation(line: 497, column: 31, scope: !2267)
!2479 = !DILocation(line: 500, column: 15, scope: !2267)
!2480 = !DILocation(line: 502, column: 19, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !419, line: 501, column: 13)
!2482 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 500, column: 15)
!2483 = !DILocation(line: 509, column: 33, scope: !2378)
!2484 = !DILocation(line: 0, scope: !2267)
!2485 = !DILocation(line: 512, column: 9, scope: !2267)
!2486 = !DILocation(line: 514, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 513, column: 15)
!2488 = !DILocation(line: 517, column: 9, scope: !2267)
!2489 = !DILocation(line: 518, column: 15, scope: !2267)
!2490 = !DILocation(line: 526, column: 15, scope: !2267)
!2491 = !DILocation(line: 526, column: 40, scope: !2300)
!2492 = !DILocation(line: 526, column: 47, scope: !2300)
!2493 = !DILocation(line: 526, column: 18, scope: !2300)
!2494 = !DILocation(line: 530, column: 17, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2267, file: !419, line: 530, column: 15)
!2496 = !DILocation(line: 530, column: 15, scope: !2267)
!2497 = !DILocation(line: 535, column: 11, scope: !2267)
!2498 = !DILocation(line: 549, column: 15, scope: !2374)
!2499 = !DILocation(line: 556, column: 15, scope: !2267)
!2500 = !DILocation(line: 558, column: 19, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2372, file: !419, line: 557, column: 13)
!2502 = !DILocation(line: 561, column: 19, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2501, file: !419, line: 561, column: 19)
!2504 = !DILocation(line: 561, column: 35, scope: !2503)
!2505 = !DILocation(line: 561, column: 30, scope: !2503)
!2506 = !DILocation(line: 570, column: 15, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !419, line: 570, column: 15)
!2508 = distinct !DILexicalBlock(scope: !2501, file: !419, line: 570, column: 15)
!2509 = !DILocation(line: 570, column: 15, scope: !2508)
!2510 = !DILocation(line: 571, column: 15, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !419, line: 571, column: 15)
!2512 = distinct !DILexicalBlock(scope: !2501, file: !419, line: 571, column: 15)
!2513 = !DILocation(line: 571, column: 15, scope: !2512)
!2514 = !DILocation(line: 572, column: 15, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !419, line: 572, column: 15)
!2516 = distinct !DILexicalBlock(scope: !2501, file: !419, line: 572, column: 15)
!2517 = !DILocation(line: 572, column: 15, scope: !2516)
!2518 = !DILocation(line: 574, column: 13, scope: !2501)
!2519 = !DILocation(line: 614, column: 17, scope: !2266)
!2520 = !DILocation(line: 0, scope: !2266)
!2521 = !DILocation(line: 617, column: 29, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2271, file: !419, line: 615, column: 15)
!2523 = !{!1816, !1816, i64 0}
!2524 = !DILocation(line: 617, column: 27, scope: !2522)
!2525 = !DILocation(line: 618, column: 15, scope: !2522)
!2526 = !DILocation(line: 621, column: 17, scope: !2270)
!2527 = !DILocation(line: 621, column: 27, scope: !2270)
!2528 = !DILocalVariable(name: "__dest", arg: 1, scope: !2529, file: !2530, line: 59, type: !66)
!2529 = distinct !DISubprogram(name: "memset", scope: !2530, file: !2530, line: 59, type: !2531, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2533)
!2530 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!66, !66, !14, !68}
!2533 = !{!2528, !2534, !2535}
!2534 = !DILocalVariable(name: "__ch", arg: 2, scope: !2529, file: !2530, line: 59, type: !14)
!2535 = !DILocalVariable(name: "__len", arg: 3, scope: !2529, file: !2530, line: 59, type: !68)
!2536 = !DILocation(line: 0, scope: !2529, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 622, column: 17, scope: !2270)
!2538 = !DILocation(line: 71, column: 10, scope: !2529, inlinedAt: !2537)
!2539 = !DILocation(line: 626, column: 29, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2270, file: !419, line: 626, column: 21)
!2541 = !DILocation(line: 626, column: 21, scope: !2270)
!2542 = !DILocation(line: 627, column: 29, scope: !2540)
!2543 = !DILocation(line: 627, column: 19, scope: !2540)
!2544 = !DILocation(line: 629, column: 17, scope: !2270)
!2545 = !DILocation(line: 624, column: 19, scope: !2270)
!2546 = !DILocation(line: 625, column: 27, scope: !2270)
!2547 = !DILocation(line: 631, column: 21, scope: !2276)
!2548 = !DILocation(line: 632, column: 56, scope: !2276)
!2549 = !DILocation(line: 632, column: 50, scope: !2276)
!2550 = !DILocation(line: 633, column: 53, scope: !2276)
!2551 = !DILocation(line: 632, column: 36, scope: !2276)
!2552 = !DILocation(line: 634, column: 25, scope: !2276)
!2553 = !DILocation(line: 644, column: 38, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2283, file: !419, line: 642, column: 23)
!2555 = !DILocation(line: 644, column: 48, scope: !2554)
!2556 = !DILocation(line: 644, column: 25, scope: !2554)
!2557 = !DILocation(line: 644, column: 51, scope: !2554)
!2558 = !DILocation(line: 645, column: 28, scope: !2554)
!2559 = !DILocation(line: 644, column: 34, scope: !2554)
!2560 = distinct !{!2560, !2556, !2558}
!2561 = !DILocation(line: 658, column: 43, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !419, line: 658, column: 29)
!2563 = distinct !DILexicalBlock(scope: !2280, file: !419, line: 658, column: 29)
!2564 = !DILocation(line: 655, column: 29, scope: !2281)
!2565 = !DILocation(line: 0, scope: !2280)
!2566 = !DILocation(line: 659, column: 49, scope: !2562)
!2567 = !DILocation(line: 659, column: 39, scope: !2562)
!2568 = !DILocation(line: 659, column: 31, scope: !2562)
!2569 = !DILocation(line: 658, column: 53, scope: !2562)
!2570 = !DILocation(line: 658, column: 29, scope: !2563)
!2571 = distinct !{!2571, !2570, !2572}
!2572 = !DILocation(line: 667, column: 33, scope: !2563)
!2573 = !DILocation(line: 674, column: 19, scope: !2270)
!2574 = !DILocation(line: 670, column: 41, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2282, file: !419, line: 670, column: 29)
!2576 = !DILocation(line: 670, column: 31, scope: !2575)
!2577 = !DILocation(line: 670, column: 29, scope: !2282)
!2578 = !DILocation(line: 672, column: 27, scope: !2282)
!2579 = !DILocation(line: 675, column: 26, scope: !2270)
!2580 = !DILocation(line: 675, column: 24, scope: !2270)
!2581 = !DILocation(line: 674, column: 19, scope: !2276)
!2582 = distinct !{!2582, !2544, !2583}
!2583 = !DILocation(line: 675, column: 44, scope: !2270)
!2584 = !DILocation(line: 676, column: 15, scope: !2271)
!2585 = !DILocation(line: 0, scope: !2271)
!2586 = !DILocation(line: 678, column: 40, scope: !2266)
!2587 = !DILocation(line: 680, column: 19, scope: !2288)
!2588 = !DILocation(line: 680, column: 45, scope: !2288)
!2589 = !DILocation(line: 680, column: 23, scope: !2288)
!2590 = !DILocation(line: 684, column: 33, scope: !2287)
!2591 = !DILocation(line: 0, scope: !2287)
!2592 = !DILocation(line: 686, column: 17, scope: !2287)
!2593 = !DILocation(line: 405, column: 12, scope: !2258)
!2594 = !DILocation(line: 688, column: 43, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !419, line: 688, column: 25)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !419, line: 687, column: 19)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !419, line: 686, column: 17)
!2598 = distinct !DILexicalBlock(scope: !2287, file: !419, line: 686, column: 17)
!2599 = !DILocation(line: 690, column: 25, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !419, line: 690, column: 25)
!2601 = distinct !DILexicalBlock(scope: !2595, file: !419, line: 689, column: 23)
!2602 = !DILocation(line: 690, column: 25, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !419, line: 690, column: 25)
!2604 = !DILocation(line: 690, column: 25, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !419, line: 690, column: 25)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !419, line: 690, column: 25)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !419, line: 690, column: 25)
!2608 = !DILocation(line: 690, column: 25, scope: !2606)
!2609 = !DILocation(line: 690, column: 25, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !419, line: 690, column: 25)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !419, line: 690, column: 25)
!2612 = !DILocation(line: 690, column: 25, scope: !2611)
!2613 = !DILocation(line: 690, column: 25, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !419, line: 690, column: 25)
!2615 = distinct !DILexicalBlock(scope: !2607, file: !419, line: 690, column: 25)
!2616 = !DILocation(line: 690, column: 25, scope: !2615)
!2617 = !DILocation(line: 690, column: 25, scope: !2607)
!2618 = !DILocation(line: 690, column: 25, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !419, line: 690, column: 25)
!2620 = distinct !DILexicalBlock(scope: !2600, file: !419, line: 690, column: 25)
!2621 = !DILocation(line: 690, column: 25, scope: !2620)
!2622 = !DILocation(line: 691, column: 25, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !419, line: 691, column: 25)
!2624 = distinct !DILexicalBlock(scope: !2601, file: !419, line: 691, column: 25)
!2625 = !DILocation(line: 691, column: 25, scope: !2624)
!2626 = !DILocation(line: 692, column: 25, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !419, line: 692, column: 25)
!2628 = distinct !DILexicalBlock(scope: !2601, file: !419, line: 692, column: 25)
!2629 = !DILocation(line: 692, column: 25, scope: !2628)
!2630 = !DILocation(line: 693, column: 38, scope: !2601)
!2631 = !DILocation(line: 693, column: 33, scope: !2601)
!2632 = !DILocation(line: 694, column: 23, scope: !2601)
!2633 = !DILocation(line: 695, column: 30, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2595, file: !419, line: 695, column: 30)
!2635 = !DILocation(line: 695, column: 30, scope: !2595)
!2636 = !DILocation(line: 697, column: 25, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !419, line: 697, column: 25)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !419, line: 697, column: 25)
!2639 = distinct !DILexicalBlock(scope: !2634, file: !419, line: 696, column: 23)
!2640 = !DILocation(line: 697, column: 25, scope: !2638)
!2641 = !DILocation(line: 699, column: 23, scope: !2639)
!2642 = !DILocation(line: 700, column: 35, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2596, file: !419, line: 700, column: 25)
!2644 = !DILocation(line: 700, column: 30, scope: !2643)
!2645 = !DILocation(line: 700, column: 25, scope: !2596)
!2646 = !DILocation(line: 702, column: 21, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !419, line: 702, column: 21)
!2648 = distinct !DILexicalBlock(scope: !2596, file: !419, line: 702, column: 21)
!2649 = !DILocation(line: 702, column: 21, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !419, line: 702, column: 21)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !419, line: 702, column: 21)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !419, line: 702, column: 21)
!2653 = !DILocation(line: 702, column: 21, scope: !2651)
!2654 = !DILocation(line: 702, column: 21, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !419, line: 702, column: 21)
!2656 = distinct !DILexicalBlock(scope: !2652, file: !419, line: 702, column: 21)
!2657 = !DILocation(line: 702, column: 21, scope: !2656)
!2658 = !DILocation(line: 702, column: 21, scope: !2652)
!2659 = !DILocation(line: 0, scope: !2596)
!2660 = !DILocation(line: 703, column: 21, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !419, line: 703, column: 21)
!2662 = distinct !DILexicalBlock(scope: !2596, file: !419, line: 703, column: 21)
!2663 = !DILocation(line: 703, column: 21, scope: !2662)
!2664 = !DILocation(line: 704, column: 25, scope: !2596)
!2665 = !DILocation(line: 686, column: 17, scope: !2597)
!2666 = distinct !{!2666, !2667, !2668}
!2667 = !DILocation(line: 686, column: 17, scope: !2598)
!2668 = !DILocation(line: 705, column: 19, scope: !2598)
!2669 = !DILocation(line: 416, column: 30, scope: !2367)
!2670 = !DILocation(line: 712, column: 34, scope: !2310)
!2671 = !DILocation(line: 715, column: 35, scope: !2310)
!2672 = !DILocation(line: 715, column: 17, scope: !2310)
!2673 = !DILocation(line: 715, column: 47, scope: !2310)
!2674 = !DILocation(line: 715, column: 65, scope: !2310)
!2675 = !DILocation(line: 716, column: 15, scope: !2310)
!2676 = !DILocation(line: 716, column: 11, scope: !2310)
!2677 = !DILocation(line: 712, column: 11, scope: !2258)
!2678 = !DILocation(line: 400, column: 10, scope: !2260)
!2679 = !DILocation(line: 719, column: 5, scope: !2258)
!2680 = !DILocation(line: 720, column: 7, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2258, file: !419, line: 720, column: 7)
!2682 = !DILocation(line: 720, column: 7, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2681, file: !419, line: 720, column: 7)
!2684 = !DILocation(line: 720, column: 7, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !419, line: 720, column: 7)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !419, line: 720, column: 7)
!2687 = distinct !DILexicalBlock(scope: !2683, file: !419, line: 720, column: 7)
!2688 = !DILocation(line: 720, column: 7, scope: !2686)
!2689 = !DILocation(line: 720, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !419, line: 720, column: 7)
!2691 = distinct !DILexicalBlock(scope: !2687, file: !419, line: 720, column: 7)
!2692 = !DILocation(line: 720, column: 7, scope: !2691)
!2693 = !DILocation(line: 720, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !419, line: 720, column: 7)
!2695 = distinct !DILexicalBlock(scope: !2687, file: !419, line: 720, column: 7)
!2696 = !DILocation(line: 720, column: 7, scope: !2695)
!2697 = !DILocation(line: 720, column: 7, scope: !2687)
!2698 = !DILocation(line: 720, column: 7, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !419, line: 720, column: 7)
!2700 = distinct !DILexicalBlock(scope: !2681, file: !419, line: 720, column: 7)
!2701 = !DILocation(line: 720, column: 7, scope: !2700)
!2702 = !DILocation(line: 722, column: 5, scope: !2258)
!2703 = !DILocation(line: 723, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !419, line: 723, column: 7)
!2705 = distinct !DILexicalBlock(scope: !2258, file: !419, line: 723, column: 7)
!2706 = !DILocation(line: 424, column: 9, scope: !2258)
!2707 = !DILocation(line: 723, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !419, line: 723, column: 7)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !419, line: 723, column: 7)
!2710 = distinct !DILexicalBlock(scope: !2704, file: !419, line: 723, column: 7)
!2711 = !DILocation(line: 723, column: 7, scope: !2709)
!2712 = !DILocation(line: 723, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !419, line: 723, column: 7)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !419, line: 723, column: 7)
!2715 = !DILocation(line: 723, column: 7, scope: !2714)
!2716 = !DILocation(line: 723, column: 7, scope: !2710)
!2717 = !DILocation(line: 724, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !419, line: 724, column: 7)
!2719 = distinct !DILexicalBlock(scope: !2258, file: !419, line: 724, column: 7)
!2720 = !DILocation(line: 724, column: 7, scope: !2719)
!2721 = !DILocation(line: 726, column: 13, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2258, file: !419, line: 726, column: 11)
!2723 = !DILocation(line: 726, column: 11, scope: !2258)
!2724 = !DILocation(line: 728, column: 5, scope: !2259)
!2725 = !DILocation(line: 400, column: 75, scope: !2259)
!2726 = !DILocation(line: 400, column: 3, scope: !2259)
!2727 = distinct !{!2727, !2385, !2728}
!2728 = !DILocation(line: 728, column: 5, scope: !2260)
!2729 = !DILocation(line: 730, column: 11, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2231, file: !419, line: 730, column: 7)
!2731 = !DILocation(line: 730, column: 16, scope: !2730)
!2732 = !DILocation(line: 738, column: 51, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2231, file: !419, line: 738, column: 7)
!2734 = !DILocation(line: 739, column: 10, scope: !2733)
!2735 = !DILocation(line: 741, column: 11, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !419, line: 741, column: 11)
!2737 = distinct !DILexicalBlock(scope: !2733, file: !419, line: 740, column: 5)
!2738 = !DILocation(line: 741, column: 11, scope: !2737)
!2739 = !DILocation(line: 742, column: 16, scope: !2736)
!2740 = !DILocation(line: 742, column: 9, scope: !2736)
!2741 = !DILocation(line: 746, column: 18, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2736, file: !419, line: 746, column: 16)
!2743 = !DILocation(line: 746, column: 32, scope: !2742)
!2744 = !DILocation(line: 746, column: 29, scope: !2742)
!2745 = !DILocation(line: 755, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2231, file: !419, line: 755, column: 7)
!2747 = !DILocation(line: 755, column: 20, scope: !2746)
!2748 = !DILocation(line: 756, column: 12, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !419, line: 756, column: 5)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !419, line: 756, column: 5)
!2751 = !DILocation(line: 756, column: 5, scope: !2750)
!2752 = !DILocation(line: 757, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !419, line: 757, column: 7)
!2754 = distinct !DILexicalBlock(scope: !2749, file: !419, line: 757, column: 7)
!2755 = !DILocation(line: 757, column: 7, scope: !2754)
!2756 = !DILocation(line: 756, column: 39, scope: !2749)
!2757 = distinct !{!2757, !2751, !2758}
!2758 = !DILocation(line: 757, column: 7, scope: !2750)
!2759 = !DILocation(line: 759, column: 11, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2231, file: !419, line: 759, column: 7)
!2761 = !DILocation(line: 759, column: 7, scope: !2231)
!2762 = !DILocation(line: 760, column: 5, scope: !2760)
!2763 = !DILocation(line: 760, column: 17, scope: !2760)
!2764 = !DILocation(line: 763, column: 2, scope: !2231)
!2765 = !DILocation(line: 766, column: 51, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2231, file: !419, line: 766, column: 7)
!2767 = !DILocation(line: 766, column: 21, scope: !2766)
!2768 = !DILocation(line: 770, column: 42, scope: !2231)
!2769 = !DILocation(line: 768, column: 10, scope: !2231)
!2770 = !DILocation(line: 768, column: 3, scope: !2231)
!2771 = !DILocation(line: 772, column: 1, scope: !2231)
!2772 = distinct !DISubprogram(name: "gettext_quote", scope: !419, file: !419, line: 207, type: !2773, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!12, !12, !421}
!2775 = !{!2776, !2777, !2778, !2779}
!2776 = !DILocalVariable(name: "msgid", arg: 1, scope: !2772, file: !419, line: 207, type: !12)
!2777 = !DILocalVariable(name: "s", arg: 2, scope: !2772, file: !419, line: 207, type: !421)
!2778 = !DILocalVariable(name: "translation", scope: !2772, file: !419, line: 209, type: !12)
!2779 = !DILocalVariable(name: "locale_code", scope: !2772, file: !419, line: 210, type: !12)
!2780 = !DILocation(line: 0, scope: !2772)
!2781 = !DILocation(line: 209, column: 29, scope: !2772)
!2782 = !DILocation(line: 212, column: 19, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2772, file: !419, line: 212, column: 7)
!2784 = !DILocation(line: 212, column: 7, scope: !2772)
!2785 = !DILocation(line: 233, column: 17, scope: !2772)
!2786 = !DILocalVariable(name: "s1", arg: 1, scope: !2787, file: !2788, line: 160, type: !12)
!2787 = distinct !DISubprogram(name: "strcaseeq0", scope: !2788, file: !2788, line: 160, type: !2789, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2791)
!2788 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!2791 = !{!2786, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2792 = !DILocalVariable(name: "s2", arg: 2, scope: !2787, file: !2788, line: 160, type: !12)
!2793 = !DILocalVariable(name: "s20", arg: 3, scope: !2787, file: !2788, line: 160, type: !11)
!2794 = !DILocalVariable(name: "s21", arg: 4, scope: !2787, file: !2788, line: 160, type: !11)
!2795 = !DILocalVariable(name: "s22", arg: 5, scope: !2787, file: !2788, line: 160, type: !11)
!2796 = !DILocalVariable(name: "s23", arg: 6, scope: !2787, file: !2788, line: 160, type: !11)
!2797 = !DILocalVariable(name: "s24", arg: 7, scope: !2787, file: !2788, line: 160, type: !11)
!2798 = !DILocalVariable(name: "s25", arg: 8, scope: !2787, file: !2788, line: 160, type: !11)
!2799 = !DILocalVariable(name: "s26", arg: 9, scope: !2787, file: !2788, line: 160, type: !11)
!2800 = !DILocalVariable(name: "s27", arg: 10, scope: !2787, file: !2788, line: 160, type: !11)
!2801 = !DILocalVariable(name: "s28", arg: 11, scope: !2787, file: !2788, line: 160, type: !11)
!2802 = !DILocation(line: 0, scope: !2787, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 234, column: 7, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2772, file: !419, line: 234, column: 7)
!2805 = !DILocation(line: 162, column: 7, scope: !2806, inlinedAt: !2803)
!2806 = distinct !DILexicalBlock(scope: !2787, file: !2788, line: 162, column: 7)
!2807 = !DILocalVariable(name: "s1", arg: 1, scope: !2808, file: !2788, line: 146, type: !12)
!2808 = distinct !DISubprogram(name: "strcaseeq1", scope: !2788, file: !2788, line: 146, type: !2809, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11}
!2811 = !{!2807, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2812 = !DILocalVariable(name: "s2", arg: 2, scope: !2808, file: !2788, line: 146, type: !12)
!2813 = !DILocalVariable(name: "s21", arg: 3, scope: !2808, file: !2788, line: 146, type: !11)
!2814 = !DILocalVariable(name: "s22", arg: 4, scope: !2808, file: !2788, line: 146, type: !11)
!2815 = !DILocalVariable(name: "s23", arg: 5, scope: !2808, file: !2788, line: 146, type: !11)
!2816 = !DILocalVariable(name: "s24", arg: 6, scope: !2808, file: !2788, line: 146, type: !11)
!2817 = !DILocalVariable(name: "s25", arg: 7, scope: !2808, file: !2788, line: 146, type: !11)
!2818 = !DILocalVariable(name: "s26", arg: 8, scope: !2808, file: !2788, line: 146, type: !11)
!2819 = !DILocalVariable(name: "s27", arg: 9, scope: !2808, file: !2788, line: 146, type: !11)
!2820 = !DILocalVariable(name: "s28", arg: 10, scope: !2808, file: !2788, line: 146, type: !11)
!2821 = !DILocation(line: 0, scope: !2808, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 167, column: 16, scope: !2823, inlinedAt: !2803)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !2788, line: 164, column: 11)
!2824 = distinct !DILexicalBlock(scope: !2806, file: !2788, line: 163, column: 5)
!2825 = !DILocation(line: 148, column: 7, scope: !2826, inlinedAt: !2822)
!2826 = distinct !DILexicalBlock(scope: !2808, file: !2788, line: 148, column: 7)
!2827 = !DILocalVariable(name: "s1", arg: 1, scope: !2828, file: !2788, line: 132, type: !12)
!2828 = distinct !DISubprogram(name: "strcaseeq2", scope: !2788, file: !2788, line: 132, type: !2829, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11}
!2831 = !{!2827, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2832 = !DILocalVariable(name: "s2", arg: 2, scope: !2828, file: !2788, line: 132, type: !12)
!2833 = !DILocalVariable(name: "s22", arg: 3, scope: !2828, file: !2788, line: 132, type: !11)
!2834 = !DILocalVariable(name: "s23", arg: 4, scope: !2828, file: !2788, line: 132, type: !11)
!2835 = !DILocalVariable(name: "s24", arg: 5, scope: !2828, file: !2788, line: 132, type: !11)
!2836 = !DILocalVariable(name: "s25", arg: 6, scope: !2828, file: !2788, line: 132, type: !11)
!2837 = !DILocalVariable(name: "s26", arg: 7, scope: !2828, file: !2788, line: 132, type: !11)
!2838 = !DILocalVariable(name: "s27", arg: 8, scope: !2828, file: !2788, line: 132, type: !11)
!2839 = !DILocalVariable(name: "s28", arg: 9, scope: !2828, file: !2788, line: 132, type: !11)
!2840 = !DILocation(line: 0, scope: !2828, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 153, column: 16, scope: !2842, inlinedAt: !2822)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !2788, line: 150, column: 11)
!2843 = distinct !DILexicalBlock(scope: !2826, file: !2788, line: 149, column: 5)
!2844 = !DILocation(line: 134, column: 7, scope: !2845, inlinedAt: !2841)
!2845 = distinct !DILexicalBlock(scope: !2828, file: !2788, line: 134, column: 7)
!2846 = !DILocalVariable(name: "s1", arg: 1, scope: !2847, file: !2788, line: 118, type: !12)
!2847 = distinct !DISubprogram(name: "strcaseeq3", scope: !2788, file: !2788, line: 118, type: !2848, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11}
!2850 = !{!2846, !2851, !2852, !2853, !2854, !2855, !2856, !2857}
!2851 = !DILocalVariable(name: "s2", arg: 2, scope: !2847, file: !2788, line: 118, type: !12)
!2852 = !DILocalVariable(name: "s23", arg: 3, scope: !2847, file: !2788, line: 118, type: !11)
!2853 = !DILocalVariable(name: "s24", arg: 4, scope: !2847, file: !2788, line: 118, type: !11)
!2854 = !DILocalVariable(name: "s25", arg: 5, scope: !2847, file: !2788, line: 118, type: !11)
!2855 = !DILocalVariable(name: "s26", arg: 6, scope: !2847, file: !2788, line: 118, type: !11)
!2856 = !DILocalVariable(name: "s27", arg: 7, scope: !2847, file: !2788, line: 118, type: !11)
!2857 = !DILocalVariable(name: "s28", arg: 8, scope: !2847, file: !2788, line: 118, type: !11)
!2858 = !DILocation(line: 0, scope: !2847, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 139, column: 16, scope: !2860, inlinedAt: !2841)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !2788, line: 136, column: 11)
!2861 = distinct !DILexicalBlock(scope: !2845, file: !2788, line: 135, column: 5)
!2862 = !DILocation(line: 120, column: 7, scope: !2863, inlinedAt: !2859)
!2863 = distinct !DILexicalBlock(scope: !2847, file: !2788, line: 120, column: 7)
!2864 = !DILocation(line: 120, column: 7, scope: !2847, inlinedAt: !2859)
!2865 = !DILocalVariable(name: "s1", arg: 1, scope: !2866, file: !2788, line: 104, type: !12)
!2866 = distinct !DISubprogram(name: "strcaseeq4", scope: !2788, file: !2788, line: 104, type: !2867, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!14, !12, !12, !11, !11, !11, !11, !11}
!2869 = !{!2865, !2870, !2871, !2872, !2873, !2874, !2875}
!2870 = !DILocalVariable(name: "s2", arg: 2, scope: !2866, file: !2788, line: 104, type: !12)
!2871 = !DILocalVariable(name: "s24", arg: 3, scope: !2866, file: !2788, line: 104, type: !11)
!2872 = !DILocalVariable(name: "s25", arg: 4, scope: !2866, file: !2788, line: 104, type: !11)
!2873 = !DILocalVariable(name: "s26", arg: 5, scope: !2866, file: !2788, line: 104, type: !11)
!2874 = !DILocalVariable(name: "s27", arg: 6, scope: !2866, file: !2788, line: 104, type: !11)
!2875 = !DILocalVariable(name: "s28", arg: 7, scope: !2866, file: !2788, line: 104, type: !11)
!2876 = !DILocation(line: 0, scope: !2866, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 125, column: 16, scope: !2878, inlinedAt: !2859)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !2788, line: 122, column: 11)
!2879 = distinct !DILexicalBlock(scope: !2863, file: !2788, line: 121, column: 5)
!2880 = !DILocation(line: 106, column: 7, scope: !2881, inlinedAt: !2877)
!2881 = distinct !DILexicalBlock(scope: !2866, file: !2788, line: 106, column: 7)
!2882 = !DILocation(line: 106, column: 7, scope: !2866, inlinedAt: !2877)
!2883 = !DILocalVariable(name: "s1", arg: 1, scope: !2884, file: !2788, line: 90, type: !12)
!2884 = distinct !DISubprogram(name: "strcaseeq5", scope: !2788, file: !2788, line: 90, type: !2885, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!14, !12, !12, !11, !11, !11, !11}
!2887 = !{!2883, !2888, !2889, !2890, !2891, !2892}
!2888 = !DILocalVariable(name: "s2", arg: 2, scope: !2884, file: !2788, line: 90, type: !12)
!2889 = !DILocalVariable(name: "s25", arg: 3, scope: !2884, file: !2788, line: 90, type: !11)
!2890 = !DILocalVariable(name: "s26", arg: 4, scope: !2884, file: !2788, line: 90, type: !11)
!2891 = !DILocalVariable(name: "s27", arg: 5, scope: !2884, file: !2788, line: 90, type: !11)
!2892 = !DILocalVariable(name: "s28", arg: 6, scope: !2884, file: !2788, line: 90, type: !11)
!2893 = !DILocation(line: 0, scope: !2884, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 111, column: 16, scope: !2895, inlinedAt: !2877)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !2788, line: 108, column: 11)
!2896 = distinct !DILexicalBlock(scope: !2881, file: !2788, line: 107, column: 5)
!2897 = !DILocation(line: 92, column: 7, scope: !2898, inlinedAt: !2894)
!2898 = distinct !DILexicalBlock(scope: !2884, file: !2788, line: 92, column: 7)
!2899 = !DILocation(line: 92, column: 7, scope: !2884, inlinedAt: !2894)
!2900 = !DILocation(line: 235, column: 12, scope: !2804)
!2901 = !DILocation(line: 235, column: 21, scope: !2804)
!2902 = !DILocation(line: 235, column: 5, scope: !2804)
!2903 = !DILocation(line: 0, scope: !2808, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 167, column: 16, scope: !2823, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 236, column: 7, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2772, file: !419, line: 236, column: 7)
!2907 = !DILocation(line: 148, column: 7, scope: !2826, inlinedAt: !2904)
!2908 = !DILocation(line: 0, scope: !2828, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 153, column: 16, scope: !2842, inlinedAt: !2904)
!2910 = !DILocation(line: 134, column: 7, scope: !2845, inlinedAt: !2909)
!2911 = !DILocation(line: 134, column: 7, scope: !2828, inlinedAt: !2909)
!2912 = !DILocation(line: 0, scope: !2847, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 139, column: 16, scope: !2860, inlinedAt: !2909)
!2914 = !DILocation(line: 120, column: 7, scope: !2863, inlinedAt: !2913)
!2915 = !DILocation(line: 120, column: 7, scope: !2847, inlinedAt: !2913)
!2916 = !DILocation(line: 0, scope: !2866, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 125, column: 16, scope: !2878, inlinedAt: !2913)
!2918 = !DILocation(line: 106, column: 7, scope: !2881, inlinedAt: !2917)
!2919 = !DILocation(line: 106, column: 7, scope: !2866, inlinedAt: !2917)
!2920 = !DILocation(line: 0, scope: !2884, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 111, column: 16, scope: !2895, inlinedAt: !2917)
!2922 = !DILocation(line: 92, column: 7, scope: !2898, inlinedAt: !2921)
!2923 = !DILocation(line: 92, column: 7, scope: !2884, inlinedAt: !2921)
!2924 = !DILocalVariable(name: "s1", arg: 1, scope: !2925, file: !2788, line: 76, type: !12)
!2925 = distinct !DISubprogram(name: "strcaseeq6", scope: !2788, file: !2788, line: 76, type: !2926, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!14, !12, !12, !11, !11, !11}
!2928 = !{!2924, !2929, !2930, !2931, !2932}
!2929 = !DILocalVariable(name: "s2", arg: 2, scope: !2925, file: !2788, line: 76, type: !12)
!2930 = !DILocalVariable(name: "s26", arg: 3, scope: !2925, file: !2788, line: 76, type: !11)
!2931 = !DILocalVariable(name: "s27", arg: 4, scope: !2925, file: !2788, line: 76, type: !11)
!2932 = !DILocalVariable(name: "s28", arg: 5, scope: !2925, file: !2788, line: 76, type: !11)
!2933 = !DILocation(line: 0, scope: !2925, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 97, column: 16, scope: !2935, inlinedAt: !2921)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !2788, line: 94, column: 11)
!2936 = distinct !DILexicalBlock(scope: !2898, file: !2788, line: 93, column: 5)
!2937 = !DILocation(line: 78, column: 7, scope: !2938, inlinedAt: !2934)
!2938 = distinct !DILexicalBlock(scope: !2925, file: !2788, line: 78, column: 7)
!2939 = !DILocation(line: 78, column: 7, scope: !2925, inlinedAt: !2934)
!2940 = !DILocalVariable(name: "s1", arg: 1, scope: !2941, file: !2788, line: 62, type: !12)
!2941 = distinct !DISubprogram(name: "strcaseeq7", scope: !2788, file: !2788, line: 62, type: !2942, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!14, !12, !12, !11, !11}
!2944 = !{!2940, !2945, !2946, !2947}
!2945 = !DILocalVariable(name: "s2", arg: 2, scope: !2941, file: !2788, line: 62, type: !12)
!2946 = !DILocalVariable(name: "s27", arg: 3, scope: !2941, file: !2788, line: 62, type: !11)
!2947 = !DILocalVariable(name: "s28", arg: 4, scope: !2941, file: !2788, line: 62, type: !11)
!2948 = !DILocation(line: 0, scope: !2941, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 83, column: 16, scope: !2950, inlinedAt: !2934)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !2788, line: 80, column: 11)
!2951 = distinct !DILexicalBlock(scope: !2938, file: !2788, line: 79, column: 5)
!2952 = !DILocation(line: 64, column: 7, scope: !2953, inlinedAt: !2949)
!2953 = distinct !DILexicalBlock(scope: !2941, file: !2788, line: 64, column: 7)
!2954 = !DILocation(line: 236, column: 7, scope: !2772)
!2955 = !DILocation(line: 237, column: 12, scope: !2906)
!2956 = !DILocation(line: 237, column: 21, scope: !2906)
!2957 = !DILocation(line: 237, column: 5, scope: !2906)
!2958 = !DILocation(line: 239, column: 13, scope: !2772)
!2959 = !DILocation(line: 239, column: 11, scope: !2772)
!2960 = !DILocation(line: 239, column: 3, scope: !2772)
!2961 = !DILocation(line: 240, column: 1, scope: !2772)
!2962 = distinct !DISubprogram(name: "quotearg_alloc", scope: !419, file: !419, line: 799, type: !2963, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!10, !12, !68, !464}
!2965 = !{!2966, !2967, !2968}
!2966 = !DILocalVariable(name: "arg", arg: 1, scope: !2962, file: !419, line: 799, type: !12)
!2967 = !DILocalVariable(name: "argsize", arg: 2, scope: !2962, file: !419, line: 799, type: !68)
!2968 = !DILocalVariable(name: "o", arg: 3, scope: !2962, file: !419, line: 800, type: !464)
!2969 = !DILocation(line: 0, scope: !2962)
!2970 = !DILocalVariable(name: "arg", arg: 1, scope: !2971, file: !419, line: 812, type: !12)
!2971 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !419, file: !419, line: 812, type: !2972, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!10, !12, !68, !703, !464}
!2974 = !{!2970, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982}
!2975 = !DILocalVariable(name: "argsize", arg: 2, scope: !2971, file: !419, line: 812, type: !68)
!2976 = !DILocalVariable(name: "size", arg: 3, scope: !2971, file: !419, line: 812, type: !703)
!2977 = !DILocalVariable(name: "o", arg: 4, scope: !2971, file: !419, line: 813, type: !464)
!2978 = !DILocalVariable(name: "p", scope: !2971, file: !419, line: 815, type: !464)
!2979 = !DILocalVariable(name: "e", scope: !2971, file: !419, line: 816, type: !14)
!2980 = !DILocalVariable(name: "flags", scope: !2971, file: !419, line: 818, type: !14)
!2981 = !DILocalVariable(name: "bufsize", scope: !2971, file: !419, line: 819, type: !68)
!2982 = !DILocalVariable(name: "buf", scope: !2971, file: !419, line: 823, type: !10)
!2983 = !DILocation(line: 0, scope: !2971, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 802, column: 10, scope: !2962)
!2985 = !DILocation(line: 815, column: 37, scope: !2971, inlinedAt: !2984)
!2986 = !DILocation(line: 816, column: 11, scope: !2971, inlinedAt: !2984)
!2987 = !DILocation(line: 818, column: 18, scope: !2971, inlinedAt: !2984)
!2988 = !DILocation(line: 818, column: 24, scope: !2971, inlinedAt: !2984)
!2989 = !DILocation(line: 819, column: 69, scope: !2971, inlinedAt: !2984)
!2990 = !DILocation(line: 820, column: 53, scope: !2971, inlinedAt: !2984)
!2991 = !DILocation(line: 821, column: 49, scope: !2971, inlinedAt: !2984)
!2992 = !DILocation(line: 822, column: 49, scope: !2971, inlinedAt: !2984)
!2993 = !DILocation(line: 819, column: 20, scope: !2971, inlinedAt: !2984)
!2994 = !DILocation(line: 822, column: 62, scope: !2971, inlinedAt: !2984)
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2996, file: !149, line: 216, type: !68)
!2996 = distinct !DISubprogram(name: "xcharalloc", scope: !149, file: !149, line: 216, type: !2997, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!10, !68}
!2999 = !{!2995}
!3000 = !DILocation(line: 0, scope: !2996, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 823, column: 15, scope: !2971, inlinedAt: !2984)
!3002 = !DILocation(line: 218, column: 10, scope: !2996, inlinedAt: !3001)
!3003 = !DILocation(line: 824, column: 60, scope: !2971, inlinedAt: !2984)
!3004 = !DILocation(line: 826, column: 32, scope: !2971, inlinedAt: !2984)
!3005 = !DILocation(line: 826, column: 47, scope: !2971, inlinedAt: !2984)
!3006 = !DILocation(line: 824, column: 3, scope: !2971, inlinedAt: !2984)
!3007 = !DILocation(line: 827, column: 9, scope: !2971, inlinedAt: !2984)
!3008 = !DILocation(line: 802, column: 3, scope: !2962)
!3009 = !DILocation(line: 0, scope: !2971)
!3010 = !DILocation(line: 815, column: 37, scope: !2971)
!3011 = !DILocation(line: 816, column: 11, scope: !2971)
!3012 = !DILocation(line: 818, column: 18, scope: !2971)
!3013 = !DILocation(line: 818, column: 27, scope: !2971)
!3014 = !DILocation(line: 818, column: 24, scope: !2971)
!3015 = !DILocation(line: 819, column: 69, scope: !2971)
!3016 = !DILocation(line: 820, column: 53, scope: !2971)
!3017 = !DILocation(line: 821, column: 49, scope: !2971)
!3018 = !DILocation(line: 822, column: 49, scope: !2971)
!3019 = !DILocation(line: 819, column: 20, scope: !2971)
!3020 = !DILocation(line: 822, column: 62, scope: !2971)
!3021 = !DILocation(line: 0, scope: !2996, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 823, column: 15, scope: !2971)
!3023 = !DILocation(line: 218, column: 10, scope: !2996, inlinedAt: !3022)
!3024 = !DILocation(line: 824, column: 60, scope: !2971)
!3025 = !DILocation(line: 826, column: 32, scope: !2971)
!3026 = !DILocation(line: 826, column: 47, scope: !2971)
!3027 = !DILocation(line: 824, column: 3, scope: !2971)
!3028 = !DILocation(line: 827, column: 9, scope: !2971)
!3029 = !DILocation(line: 828, column: 7, scope: !2971)
!3030 = !DILocation(line: 829, column: 11, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2971, file: !419, line: 828, column: 7)
!3032 = !{!1815, !1815, i64 0}
!3033 = !DILocation(line: 829, column: 5, scope: !3031)
!3034 = !DILocation(line: 830, column: 3, scope: !2971)
!3035 = distinct !DISubprogram(name: "quotearg_free", scope: !419, file: !419, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3036)
!3036 = !{!3037, !3038}
!3037 = !DILocalVariable(name: "sv", scope: !3035, file: !419, line: 850, type: !537)
!3038 = !DILocalVariable(name: "i", scope: !3035, file: !419, line: 851, type: !14)
!3039 = !DILocation(line: 850, column: 24, scope: !3035)
!3040 = !DILocation(line: 0, scope: !3035)
!3041 = !DILocation(line: 852, column: 19, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !419, line: 852, column: 3)
!3043 = distinct !DILexicalBlock(scope: !3035, file: !419, line: 852, column: 3)
!3044 = !DILocation(line: 852, column: 17, scope: !3042)
!3045 = !DILocation(line: 852, column: 3, scope: !3043)
!3046 = !DILocation(line: 853, column: 17, scope: !3042)
!3047 = !{!3048, !1396, i64 8}
!3048 = !{!"slotvec", !1815, i64 0, !1396, i64 8}
!3049 = !DILocation(line: 853, column: 5, scope: !3042)
!3050 = !DILocation(line: 852, column: 28, scope: !3042)
!3051 = distinct !{!3051, !3045, !3052}
!3052 = !DILocation(line: 853, column: 20, scope: !3043)
!3053 = !DILocation(line: 854, column: 13, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3035, file: !419, line: 854, column: 7)
!3055 = !DILocation(line: 854, column: 17, scope: !3054)
!3056 = !DILocation(line: 854, column: 7, scope: !3035)
!3057 = !DILocation(line: 856, column: 7, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3054, file: !419, line: 855, column: 5)
!3059 = !DILocation(line: 857, column: 21, scope: !3058)
!3060 = !{!3048, !1815, i64 0}
!3061 = !DILocation(line: 858, column: 20, scope: !3058)
!3062 = !DILocation(line: 859, column: 5, scope: !3058)
!3063 = !DILocation(line: 860, column: 10, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3035, file: !419, line: 860, column: 7)
!3065 = !DILocation(line: 860, column: 7, scope: !3035)
!3066 = !DILocation(line: 862, column: 13, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3064, file: !419, line: 861, column: 5)
!3068 = !DILocation(line: 862, column: 7, scope: !3067)
!3069 = !DILocation(line: 863, column: 15, scope: !3067)
!3070 = !DILocation(line: 864, column: 5, scope: !3067)
!3071 = !DILocation(line: 865, column: 10, scope: !3035)
!3072 = !DILocation(line: 866, column: 1, scope: !3035)
!3073 = distinct !DISubprogram(name: "quotearg_n", scope: !419, file: !419, line: 931, type: !82, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3074)
!3074 = !{!3075, !3076}
!3075 = !DILocalVariable(name: "n", arg: 1, scope: !3073, file: !419, line: 931, type: !14)
!3076 = !DILocalVariable(name: "arg", arg: 2, scope: !3073, file: !419, line: 931, type: !12)
!3077 = !DILocation(line: 0, scope: !3073)
!3078 = !DILocation(line: 933, column: 10, scope: !3073)
!3079 = !DILocation(line: 933, column: 3, scope: !3073)
!3080 = distinct !DISubprogram(name: "quotearg_n_options", scope: !419, file: !419, line: 877, type: !3081, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!10, !14, !12, !68, !464}
!3083 = !{!3084, !3085, !3086, !3087, !3088, !3089, !3090, !3093, !3094, !3096, !3097, !3098}
!3084 = !DILocalVariable(name: "n", arg: 1, scope: !3080, file: !419, line: 877, type: !14)
!3085 = !DILocalVariable(name: "arg", arg: 2, scope: !3080, file: !419, line: 877, type: !12)
!3086 = !DILocalVariable(name: "argsize", arg: 3, scope: !3080, file: !419, line: 877, type: !68)
!3087 = !DILocalVariable(name: "options", arg: 4, scope: !3080, file: !419, line: 878, type: !464)
!3088 = !DILocalVariable(name: "e", scope: !3080, file: !419, line: 880, type: !14)
!3089 = !DILocalVariable(name: "sv", scope: !3080, file: !419, line: 882, type: !537)
!3090 = !DILocalVariable(name: "preallocated", scope: !3091, file: !419, line: 889, type: !164)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !419, line: 888, column: 5)
!3092 = distinct !DILexicalBlock(scope: !3080, file: !419, line: 887, column: 7)
!3093 = !DILocalVariable(name: "nmax", scope: !3091, file: !419, line: 890, type: !14)
!3094 = !DILocalVariable(name: "size", scope: !3095, file: !419, line: 903, type: !68)
!3095 = distinct !DILexicalBlock(scope: !3080, file: !419, line: 902, column: 3)
!3096 = !DILocalVariable(name: "val", scope: !3095, file: !419, line: 904, type: !10)
!3097 = !DILocalVariable(name: "flags", scope: !3095, file: !419, line: 906, type: !14)
!3098 = !DILocalVariable(name: "qsize", scope: !3095, file: !419, line: 907, type: !68)
!3099 = !DILocation(line: 0, scope: !3080)
!3100 = !DILocation(line: 880, column: 11, scope: !3080)
!3101 = !DILocation(line: 882, column: 24, scope: !3080)
!3102 = !DILocation(line: 884, column: 9, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3080, file: !419, line: 884, column: 7)
!3104 = !DILocation(line: 884, column: 7, scope: !3080)
!3105 = !DILocation(line: 885, column: 5, scope: !3103)
!3106 = !DILocation(line: 887, column: 7, scope: !3092)
!3107 = !DILocation(line: 887, column: 14, scope: !3092)
!3108 = !DILocation(line: 887, column: 7, scope: !3080)
!3109 = !DILocation(line: 889, column: 31, scope: !3091)
!3110 = !DILocation(line: 0, scope: !3091)
!3111 = !DILocation(line: 892, column: 16, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3091, file: !419, line: 892, column: 11)
!3113 = !DILocation(line: 892, column: 11, scope: !3091)
!3114 = !DILocation(line: 893, column: 9, scope: !3112)
!3115 = !DILocation(line: 895, column: 32, scope: !3091)
!3116 = !DILocation(line: 895, column: 61, scope: !3091)
!3117 = !DILocation(line: 895, column: 58, scope: !3091)
!3118 = !DILocation(line: 895, column: 66, scope: !3091)
!3119 = !DILocation(line: 895, column: 22, scope: !3091)
!3120 = !DILocation(line: 895, column: 15, scope: !3091)
!3121 = !DILocation(line: 896, column: 11, scope: !3091)
!3122 = !DILocation(line: 897, column: 15, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3091, file: !419, line: 896, column: 11)
!3124 = !{i64 0, i64 8, !3032, i64 8, i64 8, !1395}
!3125 = !DILocation(line: 897, column: 9, scope: !3123)
!3126 = !DILocation(line: 898, column: 20, scope: !3091)
!3127 = !DILocation(line: 898, column: 18, scope: !3091)
!3128 = !DILocation(line: 898, column: 15, scope: !3091)
!3129 = !DILocation(line: 898, column: 38, scope: !3091)
!3130 = !DILocation(line: 898, column: 31, scope: !3091)
!3131 = !DILocation(line: 898, column: 48, scope: !3091)
!3132 = !DILocation(line: 0, scope: !2529, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 898, column: 7, scope: !3091)
!3134 = !DILocation(line: 71, column: 10, scope: !2529, inlinedAt: !3133)
!3135 = !DILocation(line: 899, column: 14, scope: !3091)
!3136 = !DILocation(line: 900, column: 5, scope: !3091)
!3137 = !DILocation(line: 903, column: 19, scope: !3095)
!3138 = !DILocation(line: 903, column: 25, scope: !3095)
!3139 = !DILocation(line: 0, scope: !3095)
!3140 = !DILocation(line: 904, column: 23, scope: !3095)
!3141 = !DILocation(line: 906, column: 26, scope: !3095)
!3142 = !DILocation(line: 906, column: 32, scope: !3095)
!3143 = !DILocation(line: 908, column: 55, scope: !3095)
!3144 = !DILocation(line: 909, column: 46, scope: !3095)
!3145 = !DILocation(line: 910, column: 55, scope: !3095)
!3146 = !DILocation(line: 911, column: 55, scope: !3095)
!3147 = !DILocation(line: 907, column: 20, scope: !3095)
!3148 = !DILocation(line: 913, column: 14, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3095, file: !419, line: 913, column: 9)
!3150 = !DILocation(line: 913, column: 9, scope: !3095)
!3151 = !DILocation(line: 915, column: 35, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3149, file: !419, line: 914, column: 7)
!3153 = !DILocation(line: 915, column: 20, scope: !3152)
!3154 = !DILocation(line: 916, column: 17, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3152, file: !419, line: 916, column: 13)
!3156 = !DILocation(line: 916, column: 13, scope: !3152)
!3157 = !DILocation(line: 917, column: 11, scope: !3155)
!3158 = !DILocation(line: 0, scope: !2996, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 918, column: 27, scope: !3152)
!3160 = !DILocation(line: 218, column: 10, scope: !2996, inlinedAt: !3159)
!3161 = !DILocation(line: 918, column: 19, scope: !3152)
!3162 = !DILocation(line: 919, column: 69, scope: !3152)
!3163 = !DILocation(line: 921, column: 44, scope: !3152)
!3164 = !DILocation(line: 922, column: 44, scope: !3152)
!3165 = !DILocation(line: 919, column: 9, scope: !3152)
!3166 = !DILocation(line: 923, column: 7, scope: !3152)
!3167 = !DILocation(line: 925, column: 11, scope: !3095)
!3168 = !DILocation(line: 926, column: 5, scope: !3095)
!3169 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !419, file: !419, line: 937, type: !3170, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!10, !14, !12, !68}
!3172 = !{!3173, !3174, !3175}
!3173 = !DILocalVariable(name: "n", arg: 1, scope: !3169, file: !419, line: 937, type: !14)
!3174 = !DILocalVariable(name: "arg", arg: 2, scope: !3169, file: !419, line: 937, type: !12)
!3175 = !DILocalVariable(name: "argsize", arg: 3, scope: !3169, file: !419, line: 937, type: !68)
!3176 = !DILocation(line: 0, scope: !3169)
!3177 = !DILocation(line: 939, column: 10, scope: !3169)
!3178 = !DILocation(line: 939, column: 3, scope: !3169)
!3179 = distinct !DISubprogram(name: "quotearg", scope: !419, file: !419, line: 943, type: !88, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3180)
!3180 = !{!3181}
!3181 = !DILocalVariable(name: "arg", arg: 1, scope: !3179, file: !419, line: 943, type: !12)
!3182 = !DILocation(line: 0, scope: !3179)
!3183 = !DILocation(line: 0, scope: !3073, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 945, column: 10, scope: !3179)
!3185 = !DILocation(line: 933, column: 10, scope: !3073, inlinedAt: !3184)
!3186 = !DILocation(line: 945, column: 3, scope: !3179)
!3187 = distinct !DISubprogram(name: "quotearg_mem", scope: !419, file: !419, line: 949, type: !3188, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!10, !12, !68}
!3190 = !{!3191, !3192}
!3191 = !DILocalVariable(name: "arg", arg: 1, scope: !3187, file: !419, line: 949, type: !12)
!3192 = !DILocalVariable(name: "argsize", arg: 2, scope: !3187, file: !419, line: 949, type: !68)
!3193 = !DILocation(line: 0, scope: !3187)
!3194 = !DILocation(line: 0, scope: !3169, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 951, column: 10, scope: !3187)
!3196 = !DILocation(line: 939, column: 10, scope: !3169, inlinedAt: !3195)
!3197 = !DILocation(line: 951, column: 3, scope: !3187)
!3198 = distinct !DISubprogram(name: "quotearg_n_style", scope: !419, file: !419, line: 955, type: !3199, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!10, !14, !421, !12}
!3201 = !{!3202, !3203, !3204, !3205}
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3198, file: !419, line: 955, type: !14)
!3203 = !DILocalVariable(name: "s", arg: 2, scope: !3198, file: !419, line: 955, type: !421)
!3204 = !DILocalVariable(name: "arg", arg: 3, scope: !3198, file: !419, line: 955, type: !12)
!3205 = !DILocalVariable(name: "o", scope: !3198, file: !419, line: 957, type: !465)
!3206 = !DILocation(line: 0, scope: !3198)
!3207 = !DILocation(line: 957, column: 3, scope: !3198)
!3208 = !DILocation(line: 957, column: 32, scope: !3198)
!3209 = !DILocalVariable(name: "style", arg: 1, scope: !3210, file: !419, line: 193, type: !421)
!3210 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !419, file: !419, line: 193, type: !3211, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!466, !421}
!3213 = !{!3209, !3214}
!3214 = !DILocalVariable(name: "o", scope: !3210, file: !419, line: 195, type: !466)
!3215 = !DILocation(line: 0, scope: !3210, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 957, column: 36, scope: !3198)
!3217 = !DILocation(line: 195, column: 26, scope: !3210, inlinedAt: !3216)
!3218 = !{!3219}
!3219 = distinct !{!3219, !3220, !"quoting_options_from_style: argument 0"}
!3220 = distinct !{!3220, !"quoting_options_from_style"}
!3221 = !DILocation(line: 196, column: 13, scope: !3222, inlinedAt: !3216)
!3222 = distinct !DILexicalBlock(scope: !3210, file: !419, line: 196, column: 7)
!3223 = !DILocation(line: 196, column: 7, scope: !3210, inlinedAt: !3216)
!3224 = !DILocation(line: 197, column: 5, scope: !3222, inlinedAt: !3216)
!3225 = !DILocation(line: 198, column: 5, scope: !3210, inlinedAt: !3216)
!3226 = !DILocation(line: 198, column: 11, scope: !3210, inlinedAt: !3216)
!3227 = !DILocation(line: 958, column: 10, scope: !3198)
!3228 = !DILocation(line: 959, column: 1, scope: !3198)
!3229 = !DILocation(line: 958, column: 3, scope: !3198)
!3230 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !419, file: !419, line: 962, type: !3231, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!10, !14, !421, !12, !68}
!3233 = !{!3234, !3235, !3236, !3237, !3238}
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3230, file: !419, line: 962, type: !14)
!3235 = !DILocalVariable(name: "s", arg: 2, scope: !3230, file: !419, line: 962, type: !421)
!3236 = !DILocalVariable(name: "arg", arg: 3, scope: !3230, file: !419, line: 963, type: !12)
!3237 = !DILocalVariable(name: "argsize", arg: 4, scope: !3230, file: !419, line: 963, type: !68)
!3238 = !DILocalVariable(name: "o", scope: !3230, file: !419, line: 965, type: !465)
!3239 = !DILocation(line: 0, scope: !3230)
!3240 = !DILocation(line: 965, column: 3, scope: !3230)
!3241 = !DILocation(line: 965, column: 32, scope: !3230)
!3242 = !DILocation(line: 0, scope: !3210, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 965, column: 36, scope: !3230)
!3244 = !DILocation(line: 195, column: 26, scope: !3210, inlinedAt: !3243)
!3245 = !{!3246}
!3246 = distinct !{!3246, !3247, !"quoting_options_from_style: argument 0"}
!3247 = distinct !{!3247, !"quoting_options_from_style"}
!3248 = !DILocation(line: 196, column: 13, scope: !3222, inlinedAt: !3243)
!3249 = !DILocation(line: 196, column: 7, scope: !3210, inlinedAt: !3243)
!3250 = !DILocation(line: 197, column: 5, scope: !3222, inlinedAt: !3243)
!3251 = !DILocation(line: 198, column: 5, scope: !3210, inlinedAt: !3243)
!3252 = !DILocation(line: 198, column: 11, scope: !3210, inlinedAt: !3243)
!3253 = !DILocation(line: 966, column: 10, scope: !3230)
!3254 = !DILocation(line: 967, column: 1, scope: !3230)
!3255 = !DILocation(line: 966, column: 3, scope: !3230)
!3256 = distinct !DISubprogram(name: "quotearg_style", scope: !419, file: !419, line: 970, type: !3257, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!10, !421, !12}
!3259 = !{!3260, !3261}
!3260 = !DILocalVariable(name: "s", arg: 1, scope: !3256, file: !419, line: 970, type: !421)
!3261 = !DILocalVariable(name: "arg", arg: 2, scope: !3256, file: !419, line: 970, type: !12)
!3262 = !DILocation(line: 195, column: 26, scope: !3210, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 957, column: 36, scope: !3198, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 972, column: 10, scope: !3256)
!3265 = !DILocation(line: 957, column: 32, scope: !3198, inlinedAt: !3264)
!3266 = !DILocation(line: 0, scope: !3256)
!3267 = !DILocation(line: 0, scope: !3198, inlinedAt: !3264)
!3268 = !DILocation(line: 957, column: 3, scope: !3198, inlinedAt: !3264)
!3269 = !DILocation(line: 0, scope: !3210, inlinedAt: !3263)
!3270 = !{!3271}
!3271 = distinct !{!3271, !3272, !"quoting_options_from_style: argument 0"}
!3272 = distinct !{!3272, !"quoting_options_from_style"}
!3273 = !DILocation(line: 196, column: 13, scope: !3222, inlinedAt: !3263)
!3274 = !DILocation(line: 196, column: 7, scope: !3210, inlinedAt: !3263)
!3275 = !DILocation(line: 197, column: 5, scope: !3222, inlinedAt: !3263)
!3276 = !DILocation(line: 198, column: 5, scope: !3210, inlinedAt: !3263)
!3277 = !DILocation(line: 198, column: 11, scope: !3210, inlinedAt: !3263)
!3278 = !DILocation(line: 958, column: 10, scope: !3198, inlinedAt: !3264)
!3279 = !DILocation(line: 959, column: 1, scope: !3198, inlinedAt: !3264)
!3280 = !DILocation(line: 972, column: 3, scope: !3256)
!3281 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !419, file: !419, line: 976, type: !3282, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!10, !421, !12, !68}
!3284 = !{!3285, !3286, !3287}
!3285 = !DILocalVariable(name: "s", arg: 1, scope: !3281, file: !419, line: 976, type: !421)
!3286 = !DILocalVariable(name: "arg", arg: 2, scope: !3281, file: !419, line: 976, type: !12)
!3287 = !DILocalVariable(name: "argsize", arg: 3, scope: !3281, file: !419, line: 976, type: !68)
!3288 = !DILocation(line: 195, column: 26, scope: !3210, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 965, column: 36, scope: !3230, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 978, column: 10, scope: !3281)
!3291 = !DILocation(line: 965, column: 32, scope: !3230, inlinedAt: !3290)
!3292 = !DILocation(line: 0, scope: !3281)
!3293 = !DILocation(line: 0, scope: !3230, inlinedAt: !3290)
!3294 = !DILocation(line: 965, column: 3, scope: !3230, inlinedAt: !3290)
!3295 = !DILocation(line: 0, scope: !3210, inlinedAt: !3289)
!3296 = !{!3297}
!3297 = distinct !{!3297, !3298, !"quoting_options_from_style: argument 0"}
!3298 = distinct !{!3298, !"quoting_options_from_style"}
!3299 = !DILocation(line: 196, column: 13, scope: !3222, inlinedAt: !3289)
!3300 = !DILocation(line: 196, column: 7, scope: !3210, inlinedAt: !3289)
!3301 = !DILocation(line: 197, column: 5, scope: !3222, inlinedAt: !3289)
!3302 = !DILocation(line: 198, column: 5, scope: !3210, inlinedAt: !3289)
!3303 = !DILocation(line: 198, column: 11, scope: !3210, inlinedAt: !3289)
!3304 = !DILocation(line: 966, column: 10, scope: !3230, inlinedAt: !3290)
!3305 = !DILocation(line: 967, column: 1, scope: !3230, inlinedAt: !3290)
!3306 = !DILocation(line: 978, column: 3, scope: !3281)
!3307 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !419, file: !419, line: 982, type: !3308, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!10, !12, !68, !11}
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DILocalVariable(name: "arg", arg: 1, scope: !3307, file: !419, line: 982, type: !12)
!3312 = !DILocalVariable(name: "argsize", arg: 2, scope: !3307, file: !419, line: 982, type: !68)
!3313 = !DILocalVariable(name: "ch", arg: 3, scope: !3307, file: !419, line: 982, type: !11)
!3314 = !DILocalVariable(name: "options", scope: !3307, file: !419, line: 984, type: !466)
!3315 = !DILocation(line: 0, scope: !3307)
!3316 = !DILocation(line: 984, column: 3, scope: !3307)
!3317 = !DILocation(line: 984, column: 26, scope: !3307)
!3318 = !DILocation(line: 985, column: 13, scope: !3307)
!3319 = !{i64 0, i64 4, !1523, i64 4, i64 4, !1483, i64 8, i64 32, !1523, i64 40, i64 8, !1395, i64 48, i64 8, !1395}
!3320 = !DILocation(line: 0, scope: !2144, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 986, column: 3, scope: !3307)
!3322 = !DILocation(line: 156, column: 62, scope: !2144, inlinedAt: !3321)
!3323 = !DILocation(line: 156, column: 57, scope: !2144, inlinedAt: !3321)
!3324 = !DILocation(line: 157, column: 15, scope: !2144, inlinedAt: !3321)
!3325 = !DILocation(line: 158, column: 12, scope: !2144, inlinedAt: !3321)
!3326 = !DILocation(line: 158, column: 15, scope: !2144, inlinedAt: !3321)
!3327 = !DILocation(line: 158, column: 25, scope: !2144, inlinedAt: !3321)
!3328 = !DILocation(line: 159, column: 18, scope: !2144, inlinedAt: !3321)
!3329 = !DILocation(line: 159, column: 23, scope: !2144, inlinedAt: !3321)
!3330 = !DILocation(line: 159, column: 6, scope: !2144, inlinedAt: !3321)
!3331 = !DILocation(line: 987, column: 10, scope: !3307)
!3332 = !DILocation(line: 988, column: 1, scope: !3307)
!3333 = !DILocation(line: 987, column: 3, scope: !3307)
!3334 = distinct !DISubprogram(name: "quotearg_char", scope: !419, file: !419, line: 991, type: !3335, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!10, !12, !11}
!3337 = !{!3338, !3339}
!3338 = !DILocalVariable(name: "arg", arg: 1, scope: !3334, file: !419, line: 991, type: !12)
!3339 = !DILocalVariable(name: "ch", arg: 2, scope: !3334, file: !419, line: 991, type: !11)
!3340 = !DILocation(line: 984, column: 26, scope: !3307, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 993, column: 10, scope: !3334)
!3342 = !DILocation(line: 0, scope: !3334)
!3343 = !DILocation(line: 0, scope: !3307, inlinedAt: !3341)
!3344 = !DILocation(line: 984, column: 3, scope: !3307, inlinedAt: !3341)
!3345 = !DILocation(line: 985, column: 13, scope: !3307, inlinedAt: !3341)
!3346 = !DILocation(line: 0, scope: !2144, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 986, column: 3, scope: !3307, inlinedAt: !3341)
!3348 = !DILocation(line: 156, column: 62, scope: !2144, inlinedAt: !3347)
!3349 = !DILocation(line: 156, column: 57, scope: !2144, inlinedAt: !3347)
!3350 = !DILocation(line: 157, column: 15, scope: !2144, inlinedAt: !3347)
!3351 = !DILocation(line: 158, column: 12, scope: !2144, inlinedAt: !3347)
!3352 = !DILocation(line: 158, column: 15, scope: !2144, inlinedAt: !3347)
!3353 = !DILocation(line: 158, column: 25, scope: !2144, inlinedAt: !3347)
!3354 = !DILocation(line: 159, column: 18, scope: !2144, inlinedAt: !3347)
!3355 = !DILocation(line: 159, column: 23, scope: !2144, inlinedAt: !3347)
!3356 = !DILocation(line: 159, column: 6, scope: !2144, inlinedAt: !3347)
!3357 = !DILocation(line: 987, column: 10, scope: !3307, inlinedAt: !3341)
!3358 = !DILocation(line: 988, column: 1, scope: !3307, inlinedAt: !3341)
!3359 = !DILocation(line: 993, column: 3, scope: !3334)
!3360 = distinct !DISubprogram(name: "quotearg_colon", scope: !419, file: !419, line: 997, type: !88, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3361)
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "arg", arg: 1, scope: !3360, file: !419, line: 997, type: !12)
!3363 = !DILocation(line: 984, column: 26, scope: !3307, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 993, column: 10, scope: !3334, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 999, column: 10, scope: !3360)
!3366 = !DILocation(line: 0, scope: !3360)
!3367 = !DILocation(line: 0, scope: !3334, inlinedAt: !3365)
!3368 = !DILocation(line: 0, scope: !3307, inlinedAt: !3364)
!3369 = !DILocation(line: 984, column: 3, scope: !3307, inlinedAt: !3364)
!3370 = !DILocation(line: 985, column: 13, scope: !3307, inlinedAt: !3364)
!3371 = !DILocation(line: 0, scope: !2144, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 986, column: 3, scope: !3307, inlinedAt: !3364)
!3373 = !DILocation(line: 156, column: 57, scope: !2144, inlinedAt: !3372)
!3374 = !DILocation(line: 158, column: 12, scope: !2144, inlinedAt: !3372)
!3375 = !DILocation(line: 159, column: 6, scope: !2144, inlinedAt: !3372)
!3376 = !DILocation(line: 987, column: 10, scope: !3307, inlinedAt: !3364)
!3377 = !DILocation(line: 988, column: 1, scope: !3307, inlinedAt: !3364)
!3378 = !DILocation(line: 999, column: 3, scope: !3360)
!3379 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !419, file: !419, line: 1003, type: !3188, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3380)
!3380 = !{!3381, !3382}
!3381 = !DILocalVariable(name: "arg", arg: 1, scope: !3379, file: !419, line: 1003, type: !12)
!3382 = !DILocalVariable(name: "argsize", arg: 2, scope: !3379, file: !419, line: 1003, type: !68)
!3383 = !DILocation(line: 984, column: 26, scope: !3307, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 1005, column: 10, scope: !3379)
!3385 = !DILocation(line: 0, scope: !3379)
!3386 = !DILocation(line: 0, scope: !3307, inlinedAt: !3384)
!3387 = !DILocation(line: 984, column: 3, scope: !3307, inlinedAt: !3384)
!3388 = !DILocation(line: 985, column: 13, scope: !3307, inlinedAt: !3384)
!3389 = !DILocation(line: 0, scope: !2144, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 986, column: 3, scope: !3307, inlinedAt: !3384)
!3391 = !DILocation(line: 156, column: 57, scope: !2144, inlinedAt: !3390)
!3392 = !DILocation(line: 158, column: 12, scope: !2144, inlinedAt: !3390)
!3393 = !DILocation(line: 159, column: 6, scope: !2144, inlinedAt: !3390)
!3394 = !DILocation(line: 987, column: 10, scope: !3307, inlinedAt: !3384)
!3395 = !DILocation(line: 988, column: 1, scope: !3307, inlinedAt: !3384)
!3396 = !DILocation(line: 1005, column: 3, scope: !3379)
!3397 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !419, file: !419, line: 1009, type: !3199, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3398)
!3398 = !{!3399, !3400, !3401, !3402}
!3399 = !DILocalVariable(name: "n", arg: 1, scope: !3397, file: !419, line: 1009, type: !14)
!3400 = !DILocalVariable(name: "s", arg: 2, scope: !3397, file: !419, line: 1009, type: !421)
!3401 = !DILocalVariable(name: "arg", arg: 3, scope: !3397, file: !419, line: 1009, type: !12)
!3402 = !DILocalVariable(name: "options", scope: !3397, file: !419, line: 1011, type: !466)
!3403 = !DILocation(line: 195, column: 26, scope: !3210, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 1012, column: 13, scope: !3397)
!3405 = !DILocation(line: 0, scope: !3397)
!3406 = !DILocation(line: 1011, column: 3, scope: !3397)
!3407 = !DILocation(line: 1011, column: 26, scope: !3397)
!3408 = !DILocation(line: 1012, column: 13, scope: !3397)
!3409 = !DILocation(line: 0, scope: !3210, inlinedAt: !3404)
!3410 = !{!3411}
!3411 = distinct !{!3411, !3412, !"quoting_options_from_style: argument 0"}
!3412 = distinct !{!3412, !"quoting_options_from_style"}
!3413 = !DILocation(line: 196, column: 13, scope: !3222, inlinedAt: !3404)
!3414 = !DILocation(line: 196, column: 7, scope: !3210, inlinedAt: !3404)
!3415 = !DILocation(line: 197, column: 5, scope: !3222, inlinedAt: !3404)
!3416 = !DILocation(line: 0, scope: !2144, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 1013, column: 3, scope: !3397)
!3418 = !DILocation(line: 156, column: 57, scope: !2144, inlinedAt: !3417)
!3419 = !DILocation(line: 158, column: 12, scope: !2144, inlinedAt: !3417)
!3420 = !DILocation(line: 159, column: 6, scope: !2144, inlinedAt: !3417)
!3421 = !DILocation(line: 1014, column: 10, scope: !3397)
!3422 = !DILocation(line: 1015, column: 1, scope: !3397)
!3423 = !DILocation(line: 1014, column: 3, scope: !3397)
!3424 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !419, file: !419, line: 1018, type: !3425, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!10, !14, !12, !12, !12}
!3427 = !{!3428, !3429, !3430, !3431}
!3428 = !DILocalVariable(name: "n", arg: 1, scope: !3424, file: !419, line: 1018, type: !14)
!3429 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3424, file: !419, line: 1018, type: !12)
!3430 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3424, file: !419, line: 1019, type: !12)
!3431 = !DILocalVariable(name: "arg", arg: 4, scope: !3424, file: !419, line: 1019, type: !12)
!3432 = !DILocalVariable(name: "o", scope: !3433, file: !419, line: 1030, type: !466)
!3433 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !419, file: !419, line: 1026, type: !3434, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!10, !14, !12, !12, !12, !68}
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3432}
!3437 = !DILocalVariable(name: "n", arg: 1, scope: !3433, file: !419, line: 1026, type: !14)
!3438 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3433, file: !419, line: 1026, type: !12)
!3439 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3433, file: !419, line: 1027, type: !12)
!3440 = !DILocalVariable(name: "arg", arg: 4, scope: !3433, file: !419, line: 1028, type: !12)
!3441 = !DILocalVariable(name: "argsize", arg: 5, scope: !3433, file: !419, line: 1028, type: !68)
!3442 = !DILocation(line: 1030, column: 26, scope: !3433, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 1021, column: 10, scope: !3424)
!3444 = !DILocation(line: 0, scope: !3424)
!3445 = !DILocation(line: 0, scope: !3433, inlinedAt: !3443)
!3446 = !DILocation(line: 1030, column: 3, scope: !3433, inlinedAt: !3443)
!3447 = !DILocation(line: 1030, column: 30, scope: !3433, inlinedAt: !3443)
!3448 = !DILocation(line: 0, scope: !2183, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 1031, column: 3, scope: !3433, inlinedAt: !3443)
!3450 = !DILocation(line: 184, column: 6, scope: !2183, inlinedAt: !3449)
!3451 = !DILocation(line: 184, column: 12, scope: !2183, inlinedAt: !3449)
!3452 = !DILocation(line: 185, column: 8, scope: !2197, inlinedAt: !3449)
!3453 = !DILocation(line: 185, column: 23, scope: !2197, inlinedAt: !3449)
!3454 = !DILocation(line: 185, column: 19, scope: !2197, inlinedAt: !3449)
!3455 = !DILocation(line: 186, column: 5, scope: !2197, inlinedAt: !3449)
!3456 = !DILocation(line: 187, column: 6, scope: !2183, inlinedAt: !3449)
!3457 = !DILocation(line: 187, column: 17, scope: !2183, inlinedAt: !3449)
!3458 = !DILocation(line: 188, column: 6, scope: !2183, inlinedAt: !3449)
!3459 = !DILocation(line: 188, column: 18, scope: !2183, inlinedAt: !3449)
!3460 = !DILocation(line: 1032, column: 10, scope: !3433, inlinedAt: !3443)
!3461 = !DILocation(line: 1033, column: 1, scope: !3433, inlinedAt: !3443)
!3462 = !DILocation(line: 1021, column: 3, scope: !3424)
!3463 = !DILocation(line: 0, scope: !3433)
!3464 = !DILocation(line: 1030, column: 3, scope: !3433)
!3465 = !DILocation(line: 1030, column: 26, scope: !3433)
!3466 = !DILocation(line: 1030, column: 30, scope: !3433)
!3467 = !DILocation(line: 0, scope: !2183, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 1031, column: 3, scope: !3433)
!3469 = !DILocation(line: 184, column: 6, scope: !2183, inlinedAt: !3468)
!3470 = !DILocation(line: 184, column: 12, scope: !2183, inlinedAt: !3468)
!3471 = !DILocation(line: 185, column: 8, scope: !2197, inlinedAt: !3468)
!3472 = !DILocation(line: 185, column: 23, scope: !2197, inlinedAt: !3468)
!3473 = !DILocation(line: 185, column: 19, scope: !2197, inlinedAt: !3468)
!3474 = !DILocation(line: 186, column: 5, scope: !2197, inlinedAt: !3468)
!3475 = !DILocation(line: 187, column: 6, scope: !2183, inlinedAt: !3468)
!3476 = !DILocation(line: 187, column: 17, scope: !2183, inlinedAt: !3468)
!3477 = !DILocation(line: 188, column: 6, scope: !2183, inlinedAt: !3468)
!3478 = !DILocation(line: 188, column: 18, scope: !2183, inlinedAt: !3468)
!3479 = !DILocation(line: 1032, column: 10, scope: !3433)
!3480 = !DILocation(line: 1033, column: 1, scope: !3433)
!3481 = !DILocation(line: 1032, column: 3, scope: !3433)
!3482 = distinct !DISubprogram(name: "quotearg_custom", scope: !419, file: !419, line: 1036, type: !3483, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!10, !12, !12, !12}
!3485 = !{!3486, !3487, !3488}
!3486 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3482, file: !419, line: 1036, type: !12)
!3487 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3482, file: !419, line: 1036, type: !12)
!3488 = !DILocalVariable(name: "arg", arg: 3, scope: !3482, file: !419, line: 1037, type: !12)
!3489 = !DILocation(line: 1030, column: 26, scope: !3433, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 1021, column: 10, scope: !3424, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 1039, column: 10, scope: !3482)
!3492 = !DILocation(line: 0, scope: !3482)
!3493 = !DILocation(line: 0, scope: !3424, inlinedAt: !3491)
!3494 = !DILocation(line: 0, scope: !3433, inlinedAt: !3490)
!3495 = !DILocation(line: 1030, column: 3, scope: !3433, inlinedAt: !3490)
!3496 = !DILocation(line: 1030, column: 30, scope: !3433, inlinedAt: !3490)
!3497 = !DILocation(line: 0, scope: !2183, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 1031, column: 3, scope: !3433, inlinedAt: !3490)
!3499 = !DILocation(line: 184, column: 6, scope: !2183, inlinedAt: !3498)
!3500 = !DILocation(line: 184, column: 12, scope: !2183, inlinedAt: !3498)
!3501 = !DILocation(line: 185, column: 8, scope: !2197, inlinedAt: !3498)
!3502 = !DILocation(line: 185, column: 23, scope: !2197, inlinedAt: !3498)
!3503 = !DILocation(line: 185, column: 19, scope: !2197, inlinedAt: !3498)
!3504 = !DILocation(line: 186, column: 5, scope: !2197, inlinedAt: !3498)
!3505 = !DILocation(line: 187, column: 6, scope: !2183, inlinedAt: !3498)
!3506 = !DILocation(line: 187, column: 17, scope: !2183, inlinedAt: !3498)
!3507 = !DILocation(line: 188, column: 6, scope: !2183, inlinedAt: !3498)
!3508 = !DILocation(line: 188, column: 18, scope: !2183, inlinedAt: !3498)
!3509 = !DILocation(line: 1032, column: 10, scope: !3433, inlinedAt: !3490)
!3510 = !DILocation(line: 1033, column: 1, scope: !3433, inlinedAt: !3490)
!3511 = !DILocation(line: 1039, column: 3, scope: !3482)
!3512 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !419, file: !419, line: 1043, type: !3513, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!10, !12, !12, !12, !68}
!3515 = !{!3516, !3517, !3518, !3519}
!3516 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3512, file: !419, line: 1043, type: !12)
!3517 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3512, file: !419, line: 1043, type: !12)
!3518 = !DILocalVariable(name: "arg", arg: 3, scope: !3512, file: !419, line: 1044, type: !12)
!3519 = !DILocalVariable(name: "argsize", arg: 4, scope: !3512, file: !419, line: 1044, type: !68)
!3520 = !DILocation(line: 1030, column: 26, scope: !3433, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 1046, column: 10, scope: !3512)
!3522 = !DILocation(line: 0, scope: !3512)
!3523 = !DILocation(line: 0, scope: !3433, inlinedAt: !3521)
!3524 = !DILocation(line: 1030, column: 3, scope: !3433, inlinedAt: !3521)
!3525 = !DILocation(line: 1030, column: 30, scope: !3433, inlinedAt: !3521)
!3526 = !DILocation(line: 0, scope: !2183, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 1031, column: 3, scope: !3433, inlinedAt: !3521)
!3528 = !DILocation(line: 184, column: 6, scope: !2183, inlinedAt: !3527)
!3529 = !DILocation(line: 184, column: 12, scope: !2183, inlinedAt: !3527)
!3530 = !DILocation(line: 185, column: 8, scope: !2197, inlinedAt: !3527)
!3531 = !DILocation(line: 185, column: 23, scope: !2197, inlinedAt: !3527)
!3532 = !DILocation(line: 185, column: 19, scope: !2197, inlinedAt: !3527)
!3533 = !DILocation(line: 186, column: 5, scope: !2197, inlinedAt: !3527)
!3534 = !DILocation(line: 187, column: 6, scope: !2183, inlinedAt: !3527)
!3535 = !DILocation(line: 187, column: 17, scope: !2183, inlinedAt: !3527)
!3536 = !DILocation(line: 188, column: 6, scope: !2183, inlinedAt: !3527)
!3537 = !DILocation(line: 188, column: 18, scope: !2183, inlinedAt: !3527)
!3538 = !DILocation(line: 1032, column: 10, scope: !3433, inlinedAt: !3521)
!3539 = !DILocation(line: 1033, column: 1, scope: !3433, inlinedAt: !3521)
!3540 = !DILocation(line: 1046, column: 3, scope: !3512)
!3541 = distinct !DISubprogram(name: "quote_n_mem", scope: !419, file: !419, line: 1061, type: !3542, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3544)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!12, !14, !12, !68}
!3544 = !{!3545, !3546, !3547}
!3545 = !DILocalVariable(name: "n", arg: 1, scope: !3541, file: !419, line: 1061, type: !14)
!3546 = !DILocalVariable(name: "arg", arg: 2, scope: !3541, file: !419, line: 1061, type: !12)
!3547 = !DILocalVariable(name: "argsize", arg: 3, scope: !3541, file: !419, line: 1061, type: !68)
!3548 = !DILocation(line: 0, scope: !3541)
!3549 = !DILocation(line: 1063, column: 10, scope: !3541)
!3550 = !DILocation(line: 1063, column: 3, scope: !3541)
!3551 = distinct !DISubprogram(name: "quote_mem", scope: !419, file: !419, line: 1067, type: !3552, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!12, !12, !68}
!3554 = !{!3555, !3556}
!3555 = !DILocalVariable(name: "arg", arg: 1, scope: !3551, file: !419, line: 1067, type: !12)
!3556 = !DILocalVariable(name: "argsize", arg: 2, scope: !3551, file: !419, line: 1067, type: !68)
!3557 = !DILocation(line: 0, scope: !3551)
!3558 = !DILocation(line: 0, scope: !3541, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 1069, column: 10, scope: !3551)
!3560 = !DILocation(line: 1063, column: 10, scope: !3541, inlinedAt: !3559)
!3561 = !DILocation(line: 1069, column: 3, scope: !3551)
!3562 = distinct !DISubprogram(name: "quote_n", scope: !419, file: !419, line: 1073, type: !3563, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!12, !14, !12}
!3565 = !{!3566, !3567}
!3566 = !DILocalVariable(name: "n", arg: 1, scope: !3562, file: !419, line: 1073, type: !14)
!3567 = !DILocalVariable(name: "arg", arg: 2, scope: !3562, file: !419, line: 1073, type: !12)
!3568 = !DILocation(line: 0, scope: !3562)
!3569 = !DILocation(line: 0, scope: !3541, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 1075, column: 10, scope: !3562)
!3571 = !DILocation(line: 1063, column: 10, scope: !3541, inlinedAt: !3570)
!3572 = !DILocation(line: 1075, column: 3, scope: !3562)
!3573 = distinct !DISubprogram(name: "quote", scope: !419, file: !419, line: 1079, type: !146, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3574)
!3574 = !{!3575}
!3575 = !DILocalVariable(name: "arg", arg: 1, scope: !3573, file: !419, line: 1079, type: !12)
!3576 = !DILocation(line: 0, scope: !3573)
!3577 = !DILocation(line: 0, scope: !3562, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 1081, column: 10, scope: !3573)
!3579 = !DILocation(line: 0, scope: !3541, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 1075, column: 10, scope: !3562, inlinedAt: !3578)
!3581 = !DILocation(line: 1063, column: 10, scope: !3541, inlinedAt: !3580)
!3582 = !DILocation(line: 1081, column: 3, scope: !3573)
!3583 = distinct !DISubprogram(name: "parse_user_spec", scope: !565, file: !565, line: 259, type: !3584, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !3586)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!12, !12, !613, !614, !127, !127}
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3587 = !DILocalVariable(name: "spec", arg: 1, scope: !3583, file: !565, line: 259, type: !12)
!3588 = !DILocalVariable(name: "uid", arg: 2, scope: !3583, file: !565, line: 259, type: !613)
!3589 = !DILocalVariable(name: "gid", arg: 3, scope: !3583, file: !565, line: 259, type: !614)
!3590 = !DILocalVariable(name: "username", arg: 4, scope: !3583, file: !565, line: 260, type: !127)
!3591 = !DILocalVariable(name: "groupname", arg: 5, scope: !3583, file: !565, line: 260, type: !127)
!3592 = !DILocalVariable(name: "colon", scope: !3583, file: !565, line: 262, type: !12)
!3593 = !DILocalVariable(name: "error_msg", scope: !3583, file: !565, line: 263, type: !12)
!3594 = !DILocalVariable(name: "dot", scope: !3595, file: !565, line: 274, type: !12)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !565, line: 267, column: 5)
!3596 = distinct !DILexicalBlock(scope: !3583, file: !565, line: 266, column: 7)
!3597 = !DILocation(line: 0, scope: !3583)
!3598 = !DILocation(line: 262, column: 23, scope: !3583)
!3599 = !DILocation(line: 262, column: 29, scope: !3583)
!3600 = !DILocation(line: 264, column: 5, scope: !3583)
!3601 = !DILocation(line: 266, column: 7, scope: !3596)
!3602 = !DILocation(line: 266, column: 15, scope: !3596)
!3603 = !DILocation(line: 266, column: 11, scope: !3596)
!3604 = !DILocation(line: 266, column: 24, scope: !3596)
!3605 = !DILocation(line: 274, column: 25, scope: !3595)
!3606 = !DILocation(line: 0, scope: !3595)
!3607 = !DILocation(line: 275, column: 11, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3595, file: !565, line: 275, column: 11)
!3609 = !DILocation(line: 276, column: 11, scope: !3608)
!3610 = !DILocation(line: 276, column: 16, scope: !3608)
!3611 = !DILocation(line: 275, column: 11, scope: !3595)
!3612 = !DILocation(line: 280, column: 3, scope: !3583)
!3613 = !DILocation(line: 0, scope: !610)
!3614 = !DILocation(line: 116, column: 16, scope: !610)
!3615 = !DILocation(line: 117, column: 16, scope: !610)
!3616 = !DILocation(line: 117, column: 22, scope: !610)
!3617 = !DILocation(line: 120, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !610, file: !565, line: 120, column: 7)
!3619 = !DILocation(line: 120, column: 7, scope: !610)
!3620 = !DILocation(line: 121, column: 15, scope: !3618)
!3621 = !DILocation(line: 121, column: 5, scope: !3618)
!3622 = !DILocation(line: 122, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !610, file: !565, line: 122, column: 7)
!3624 = !DILocation(line: 122, column: 7, scope: !610)
!3625 = !DILocation(line: 123, column: 16, scope: !3623)
!3626 = !DILocation(line: 123, column: 5, scope: !3623)
!3627 = !DILocation(line: 130, column: 17, scope: !632)
!3628 = !DILocation(line: 130, column: 7, scope: !610)
!3629 = !DILocation(line: 132, column: 11, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !565, line: 132, column: 11)
!3631 = distinct !DILexicalBlock(scope: !632, file: !565, line: 131, column: 5)
!3632 = !DILocation(line: 132, column: 11, scope: !3631)
!3633 = !DILocation(line: 133, column: 13, scope: !3630)
!3634 = !DILocation(line: 133, column: 9, scope: !3630)
!3635 = !DILocation(line: 137, column: 31, scope: !631)
!3636 = !DILocation(line: 0, scope: !631)
!3637 = !DILocation(line: 138, column: 16, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !631, file: !565, line: 138, column: 11)
!3639 = !DILocation(line: 138, column: 11, scope: !631)
!3640 = !DILocation(line: 140, column: 35, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3638, file: !565, line: 139, column: 9)
!3642 = !DILocation(line: 140, column: 15, scope: !3641)
!3643 = !DILocation(line: 141, column: 11, scope: !3641)
!3644 = !DILocation(line: 141, column: 19, scope: !3641)
!3645 = !DILocation(line: 142, column: 9, scope: !3641)
!3646 = !DILocation(line: 145, column: 41, scope: !610)
!3647 = !DILocation(line: 145, column: 29, scope: !610)
!3648 = !DILocation(line: 145, column: 46, scope: !610)
!3649 = !DILocation(line: 145, column: 8, scope: !610)
!3650 = !DILocation(line: 158, column: 9, scope: !637)
!3651 = !DILocation(line: 158, column: 7, scope: !610)
!3652 = !DILocation(line: 161, column: 14, scope: !636)
!3653 = !DILocation(line: 161, column: 17, scope: !636)
!3654 = !DILocation(line: 161, column: 33, scope: !636)
!3655 = !DILocation(line: 162, column: 15, scope: !635)
!3656 = !DILocation(line: 162, column: 11, scope: !636)
!3657 = !DILocation(line: 164, column: 45, scope: !634)
!3658 = !DILocation(line: 164, column: 53, scope: !634)
!3659 = !DILocation(line: 0, scope: !634)
!3660 = !DILocation(line: 165, column: 15, scope: !634)
!3661 = !DILocation(line: 173, column: 15, scope: !639)
!3662 = !DILocation(line: 0, scope: !639)
!3663 = !DILocation(line: 174, column: 19, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !639, file: !565, line: 174, column: 19)
!3665 = !DILocation(line: 174, column: 52, scope: !3664)
!3666 = !DILocation(line: 175, column: 22, scope: !3664)
!3667 = !DILocation(line: 175, column: 26, scope: !3664)
!3668 = !DILocation(line: 175, column: 19, scope: !3664)
!3669 = !DILocation(line: 175, column: 39, scope: !3664)
!3670 = !DILocation(line: 175, column: 51, scope: !3664)
!3671 = !DILocation(line: 174, column: 19, scope: !639)
!3672 = !DILocation(line: 179, column: 13, scope: !640)
!3673 = !DILocation(line: 183, column: 23, scope: !644)
!3674 = !DILocation(line: 184, column: 17, scope: !643)
!3675 = !DILocation(line: 184, column: 38, scope: !643)
!3676 = !DILocation(line: 184, column: 25, scope: !643)
!3677 = !DILocation(line: 188, column: 15, scope: !642)
!3678 = !DILocation(line: 188, column: 20, scope: !642)
!3679 = !DILocation(line: 189, column: 27, scope: !642)
!3680 = !DILocation(line: 190, column: 21, scope: !642)
!3681 = !DILocation(line: 191, column: 32, scope: !642)
!3682 = !DILocation(line: 191, column: 43, scope: !642)
!3683 = !DILocation(line: 191, column: 64, scope: !642)
!3684 = !DILocation(line: 191, column: 53, scope: !642)
!3685 = !DILocation(line: 191, column: 23, scope: !642)
!3686 = !DILocation(line: 192, column: 15, scope: !642)
!3687 = !DILocation(line: 193, column: 13, scope: !643)
!3688 = !DILocation(line: 193, column: 13, scope: !642)
!3689 = !DILocation(line: 195, column: 7, scope: !636)
!3690 = !DILocation(line: 196, column: 5, scope: !636)
!3691 = !DILocation(line: 115, column: 9, scope: !610)
!3692 = !DILocation(line: 116, column: 9, scope: !610)
!3693 = !DILocation(line: 117, column: 9, scope: !610)
!3694 = !DILocation(line: 198, column: 9, scope: !649)
!3695 = !DILocation(line: 198, column: 30, scope: !649)
!3696 = !DILocation(line: 198, column: 17, scope: !649)
!3697 = !DILocation(line: 202, column: 14, scope: !648)
!3698 = !DILocation(line: 202, column: 17, scope: !648)
!3699 = !DILocation(line: 202, column: 33, scope: !648)
!3700 = !DILocation(line: 203, column: 15, scope: !647)
!3701 = !DILocation(line: 203, column: 11, scope: !648)
!3702 = !DILocation(line: 205, column: 11, scope: !646)
!3703 = !DILocation(line: 0, scope: !646)
!3704 = !DILocation(line: 206, column: 15, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !646, file: !565, line: 206, column: 15)
!3706 = !DILocation(line: 206, column: 48, scope: !3705)
!3707 = !DILocation(line: 207, column: 18, scope: !3705)
!3708 = !DILocation(line: 207, column: 22, scope: !3705)
!3709 = !DILocation(line: 207, column: 15, scope: !3705)
!3710 = !DILocation(line: 207, column: 35, scope: !3705)
!3711 = !DILocation(line: 207, column: 47, scope: !3705)
!3712 = !DILocation(line: 206, column: 15, scope: !646)
!3713 = !DILocation(line: 211, column: 9, scope: !647)
!3714 = !DILocation(line: 211, column: 9, scope: !646)
!3715 = !DILocation(line: 213, column: 21, scope: !647)
!3716 = !{!1721, !1484, i64 16}
!3717 = !DILocation(line: 0, scope: !647)
!3718 = !DILocation(line: 169, column: 25, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !640, file: !565, line: 166, column: 13)
!3720 = !DILocation(line: 214, column: 7, scope: !648)
!3721 = !DILocation(line: 215, column: 15, scope: !648)
!3722 = !DILocation(line: 216, column: 5, scope: !648)
!3723 = !DILocation(line: 218, column: 17, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !610, file: !565, line: 218, column: 7)
!3725 = !DILocation(line: 218, column: 7, scope: !610)
!3726 = !DILocation(line: 220, column: 12, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !565, line: 219, column: 5)
!3728 = !DILocation(line: 221, column: 11, scope: !3727)
!3729 = !DILocation(line: 222, column: 14, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3727, file: !565, line: 221, column: 11)
!3731 = !DILocation(line: 222, column: 9, scope: !3730)
!3732 = !DILocation(line: 223, column: 11, scope: !3727)
!3733 = !DILocation(line: 225, column: 21, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !565, line: 224, column: 9)
!3735 = distinct !DILexicalBlock(scope: !3727, file: !565, line: 223, column: 11)
!3736 = !DILocation(line: 227, column: 9, scope: !3734)
!3737 = !DILocation(line: 228, column: 11, scope: !3727)
!3738 = !DILocation(line: 230, column: 22, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !565, line: 229, column: 9)
!3740 = distinct !DILexicalBlock(scope: !3727, file: !565, line: 228, column: 11)
!3741 = !DILocation(line: 232, column: 9, scope: !3739)
!3742 = !DILocation(line: 235, column: 3, scope: !610)
!3743 = !DILocation(line: 236, column: 3, scope: !610)
!3744 = !DILocation(line: 237, column: 10, scope: !610)
!3745 = !DILocation(line: 237, column: 22, scope: !610)
!3746 = !DILocation(line: 237, column: 3, scope: !610)
!3747 = distinct !DISubprogram(name: "version_etc_arn", scope: !655, file: !655, line: 61, type: !3748, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3754)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3750, !12, !12, !12, !3753, !68}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3752, line: 7, baseType: !665)
!3752 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760}
!3755 = !DILocalVariable(name: "stream", arg: 1, scope: !3747, file: !655, line: 61, type: !3750)
!3756 = !DILocalVariable(name: "command_name", arg: 2, scope: !3747, file: !655, line: 62, type: !12)
!3757 = !DILocalVariable(name: "package", arg: 3, scope: !3747, file: !655, line: 62, type: !12)
!3758 = !DILocalVariable(name: "version", arg: 4, scope: !3747, file: !655, line: 63, type: !12)
!3759 = !DILocalVariable(name: "authors", arg: 5, scope: !3747, file: !655, line: 64, type: !3753)
!3760 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3747, file: !655, line: 64, type: !68)
!3761 = !DILocation(line: 0, scope: !3747)
!3762 = !DILocation(line: 66, column: 7, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3747, file: !655, line: 66, column: 7)
!3764 = !DILocation(line: 66, column: 7, scope: !3747)
!3765 = !DILocation(line: 67, column: 5, scope: !3763)
!3766 = !DILocation(line: 69, column: 5, scope: !3763)
!3767 = !DILocation(line: 83, column: 3, scope: !3747)
!3768 = !DILocation(line: 85, column: 3, scope: !3747)
!3769 = !DILocation(line: 88, column: 3, scope: !3747)
!3770 = !DILocation(line: 95, column: 3, scope: !3747)
!3771 = !DILocation(line: 97, column: 3, scope: !3747)
!3772 = !DILocation(line: 105, column: 7, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3747, file: !655, line: 98, column: 5)
!3774 = !DILocation(line: 106, column: 7, scope: !3773)
!3775 = !DILocation(line: 109, column: 7, scope: !3773)
!3776 = !DILocation(line: 110, column: 7, scope: !3773)
!3777 = !DILocation(line: 113, column: 7, scope: !3773)
!3778 = !DILocation(line: 115, column: 7, scope: !3773)
!3779 = !DILocation(line: 120, column: 7, scope: !3773)
!3780 = !DILocation(line: 122, column: 7, scope: !3773)
!3781 = !DILocation(line: 127, column: 7, scope: !3773)
!3782 = !DILocation(line: 129, column: 7, scope: !3773)
!3783 = !DILocation(line: 134, column: 7, scope: !3773)
!3784 = !DILocation(line: 137, column: 7, scope: !3773)
!3785 = !DILocation(line: 142, column: 7, scope: !3773)
!3786 = !DILocation(line: 145, column: 7, scope: !3773)
!3787 = !DILocation(line: 150, column: 7, scope: !3773)
!3788 = !DILocation(line: 154, column: 7, scope: !3773)
!3789 = !DILocation(line: 159, column: 7, scope: !3773)
!3790 = !DILocation(line: 163, column: 7, scope: !3773)
!3791 = !DILocation(line: 170, column: 7, scope: !3773)
!3792 = !DILocation(line: 174, column: 7, scope: !3773)
!3793 = !DILocation(line: 176, column: 1, scope: !3747)
!3794 = distinct !DISubprogram(name: "version_etc_ar", scope: !655, file: !655, line: 183, type: !3795, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !3750, !12, !12, !12, !3753}
!3797 = !{!3798, !3799, !3800, !3801, !3802, !3803}
!3798 = !DILocalVariable(name: "stream", arg: 1, scope: !3794, file: !655, line: 183, type: !3750)
!3799 = !DILocalVariable(name: "command_name", arg: 2, scope: !3794, file: !655, line: 184, type: !12)
!3800 = !DILocalVariable(name: "package", arg: 3, scope: !3794, file: !655, line: 184, type: !12)
!3801 = !DILocalVariable(name: "version", arg: 4, scope: !3794, file: !655, line: 185, type: !12)
!3802 = !DILocalVariable(name: "authors", arg: 5, scope: !3794, file: !655, line: 185, type: !3753)
!3803 = !DILocalVariable(name: "n_authors", scope: !3794, file: !655, line: 187, type: !68)
!3804 = !DILocation(line: 0, scope: !3794)
!3805 = !DILocation(line: 189, column: 8, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3794, file: !655, line: 189, column: 3)
!3807 = !DILocation(line: 0, scope: !3806)
!3808 = !DILocation(line: 189, column: 23, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3806, file: !655, line: 189, column: 3)
!3810 = !DILocation(line: 189, column: 3, scope: !3806)
!3811 = !DILocation(line: 189, column: 52, scope: !3809)
!3812 = distinct !{!3812, !3810, !3813}
!3813 = !DILocation(line: 190, column: 5, scope: !3806)
!3814 = !DILocation(line: 191, column: 3, scope: !3794)
!3815 = !DILocation(line: 192, column: 1, scope: !3794)
!3816 = distinct !DISubprogram(name: "version_etc_va", scope: !655, file: !655, line: 199, type: !3817, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3826)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3750, !12, !12, !12, !3819}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !655, line: 192, size: 192, elements: !3821)
!3821 = !{!3822, !3823, !3824, !3825}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3820, file: !655, line: 192, baseType: !126, size: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3820, file: !655, line: 192, baseType: !126, size: 32, offset: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3820, file: !655, line: 192, baseType: !66, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3820, file: !655, line: 192, baseType: !66, size: 64, offset: 128)
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3832, !3833}
!3827 = !DILocalVariable(name: "stream", arg: 1, scope: !3816, file: !655, line: 199, type: !3750)
!3828 = !DILocalVariable(name: "command_name", arg: 2, scope: !3816, file: !655, line: 200, type: !12)
!3829 = !DILocalVariable(name: "package", arg: 3, scope: !3816, file: !655, line: 200, type: !12)
!3830 = !DILocalVariable(name: "version", arg: 4, scope: !3816, file: !655, line: 201, type: !12)
!3831 = !DILocalVariable(name: "authors", arg: 5, scope: !3816, file: !655, line: 201, type: !3819)
!3832 = !DILocalVariable(name: "n_authors", scope: !3816, file: !655, line: 203, type: !68)
!3833 = !DILocalVariable(name: "authtab", scope: !3816, file: !655, line: 204, type: !3834)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640, elements: !243)
!3835 = !DILocation(line: 0, scope: !3816)
!3836 = !DILocation(line: 204, column: 3, scope: !3816)
!3837 = !DILocation(line: 204, column: 15, scope: !3816)
!3838 = !DILocation(line: 0, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !655, line: 206, column: 3)
!3840 = distinct !DILexicalBlock(scope: !3816, file: !655, line: 206, column: 3)
!3841 = !DILocation(line: 208, column: 35, scope: !3839)
!3842 = !DILocation(line: 208, column: 14, scope: !3839)
!3843 = !DILocation(line: 208, column: 33, scope: !3839)
!3844 = !DILocation(line: 208, column: 67, scope: !3839)
!3845 = !DILocation(line: 206, column: 3, scope: !3840)
!3846 = !DILocation(line: 0, scope: !3840)
!3847 = !DILocation(line: 211, column: 3, scope: !3816)
!3848 = !DILocation(line: 213, column: 1, scope: !3816)
!3849 = distinct !DISubprogram(name: "version_etc", scope: !655, file: !655, line: 230, type: !3850, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{null, !3750, !12, !12, !12, null}
!3852 = !{!3853, !3854, !3855, !3856, !3857}
!3853 = !DILocalVariable(name: "stream", arg: 1, scope: !3849, file: !655, line: 230, type: !3750)
!3854 = !DILocalVariable(name: "command_name", arg: 2, scope: !3849, file: !655, line: 231, type: !12)
!3855 = !DILocalVariable(name: "package", arg: 3, scope: !3849, file: !655, line: 231, type: !12)
!3856 = !DILocalVariable(name: "version", arg: 4, scope: !3849, file: !655, line: 232, type: !12)
!3857 = !DILocalVariable(name: "authors", scope: !3849, file: !655, line: 234, type: !3858)
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !16, line: 52, baseType: !3859)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3860, line: 32, baseType: !3861)
!3860 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !655, line: 234, baseType: !3862)
!3862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3820, size: 192, elements: !51)
!3863 = !DILocation(line: 0, scope: !3849)
!3864 = !DILocation(line: 234, column: 3, scope: !3849)
!3865 = !DILocation(line: 234, column: 11, scope: !3849)
!3866 = !DILocation(line: 236, column: 3, scope: !3849)
!3867 = !DILocation(line: 237, column: 3, scope: !3849)
!3868 = !DILocation(line: 238, column: 3, scope: !3849)
!3869 = !DILocation(line: 239, column: 1, scope: !3849)
!3870 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !655, file: !655, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !4)
!3871 = !DILocation(line: 244, column: 3, scope: !3870)
!3872 = !DILocation(line: 249, column: 3, scope: !3870)
!3873 = !DILocation(line: 255, column: 3, scope: !3870)
!3874 = !DILocation(line: 260, column: 3, scope: !3870)
!3875 = !DILocation(line: 262, column: 1, scope: !3870)
!3876 = distinct !DISubprogram(name: "xnmalloc", scope: !149, file: !149, line: 99, type: !3877, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!66, !68, !68}
!3879 = !{!3880, !3881}
!3880 = !DILocalVariable(name: "n", arg: 1, scope: !3876, file: !149, line: 99, type: !68)
!3881 = !DILocalVariable(name: "s", arg: 2, scope: !3876, file: !149, line: 99, type: !68)
!3882 = !DILocation(line: 0, scope: !3876)
!3883 = !DILocation(line: 101, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3876, file: !149, line: 101, column: 7)
!3885 = !DILocation(line: 101, column: 7, scope: !3876)
!3886 = !DILocation(line: 102, column: 5, scope: !3884)
!3887 = !DILocation(line: 103, column: 21, scope: !3876)
!3888 = !DILocalVariable(name: "n", arg: 1, scope: !3889, file: !697, line: 39, type: !68)
!3889 = distinct !DISubprogram(name: "xmalloc", scope: !697, file: !697, line: 39, type: !3890, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!66, !68}
!3892 = !{!3888, !3893}
!3893 = !DILocalVariable(name: "p", scope: !3889, file: !697, line: 41, type: !66)
!3894 = !DILocation(line: 0, scope: !3889, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 103, column: 10, scope: !3876)
!3896 = !DILocation(line: 41, column: 13, scope: !3889, inlinedAt: !3895)
!3897 = !DILocation(line: 42, column: 8, scope: !3898, inlinedAt: !3895)
!3898 = distinct !DILexicalBlock(scope: !3889, file: !697, line: 42, column: 7)
!3899 = !DILocation(line: 42, column: 15, scope: !3898, inlinedAt: !3895)
!3900 = !DILocation(line: 42, column: 10, scope: !3898, inlinedAt: !3895)
!3901 = !DILocation(line: 43, column: 5, scope: !3898, inlinedAt: !3895)
!3902 = !DILocation(line: 103, column: 3, scope: !3876)
!3903 = !DILocation(line: 0, scope: !3889)
!3904 = !DILocation(line: 41, column: 13, scope: !3889)
!3905 = !DILocation(line: 42, column: 8, scope: !3898)
!3906 = !DILocation(line: 42, column: 15, scope: !3898)
!3907 = !DILocation(line: 42, column: 10, scope: !3898)
!3908 = !DILocation(line: 43, column: 5, scope: !3898)
!3909 = !DILocation(line: 44, column: 3, scope: !3889)
!3910 = distinct !DISubprogram(name: "xnrealloc", scope: !149, file: !149, line: 112, type: !3911, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!66, !66, !68, !68}
!3913 = !{!3914, !3915, !3916}
!3914 = !DILocalVariable(name: "p", arg: 1, scope: !3910, file: !149, line: 112, type: !66)
!3915 = !DILocalVariable(name: "n", arg: 2, scope: !3910, file: !149, line: 112, type: !68)
!3916 = !DILocalVariable(name: "s", arg: 3, scope: !3910, file: !149, line: 112, type: !68)
!3917 = !DILocation(line: 0, scope: !3910)
!3918 = !DILocation(line: 114, column: 7, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3910, file: !149, line: 114, column: 7)
!3920 = !DILocation(line: 114, column: 7, scope: !3910)
!3921 = !DILocation(line: 115, column: 5, scope: !3919)
!3922 = !DILocation(line: 116, column: 25, scope: !3910)
!3923 = !DILocalVariable(name: "p", arg: 1, scope: !3924, file: !697, line: 51, type: !66)
!3924 = distinct !DISubprogram(name: "xrealloc", scope: !697, file: !697, line: 51, type: !3925, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!66, !66, !68}
!3927 = !{!3923, !3928}
!3928 = !DILocalVariable(name: "n", arg: 2, scope: !3924, file: !697, line: 51, type: !68)
!3929 = !DILocation(line: 0, scope: !3924, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 116, column: 10, scope: !3910)
!3931 = !DILocation(line: 53, column: 8, scope: !3932, inlinedAt: !3930)
!3932 = distinct !DILexicalBlock(scope: !3924, file: !697, line: 53, column: 7)
!3933 = !DILocation(line: 53, column: 13, scope: !3932, inlinedAt: !3930)
!3934 = !DILocation(line: 53, column: 10, scope: !3932, inlinedAt: !3930)
!3935 = !DILocation(line: 57, column: 7, scope: !3936, inlinedAt: !3930)
!3936 = distinct !DILexicalBlock(scope: !3932, file: !697, line: 54, column: 5)
!3937 = !DILocation(line: 58, column: 7, scope: !3936, inlinedAt: !3930)
!3938 = !DILocation(line: 61, column: 7, scope: !3924, inlinedAt: !3930)
!3939 = !DILocation(line: 62, column: 8, scope: !3940, inlinedAt: !3930)
!3940 = distinct !DILexicalBlock(scope: !3924, file: !697, line: 62, column: 7)
!3941 = !DILocation(line: 62, column: 13, scope: !3940, inlinedAt: !3930)
!3942 = !DILocation(line: 62, column: 10, scope: !3940, inlinedAt: !3930)
!3943 = !DILocation(line: 63, column: 5, scope: !3940, inlinedAt: !3930)
!3944 = !DILocation(line: 116, column: 3, scope: !3910)
!3945 = !DILocation(line: 0, scope: !3924)
!3946 = !DILocation(line: 53, column: 8, scope: !3932)
!3947 = !DILocation(line: 53, column: 13, scope: !3932)
!3948 = !DILocation(line: 53, column: 10, scope: !3932)
!3949 = !DILocation(line: 57, column: 7, scope: !3936)
!3950 = !DILocation(line: 58, column: 7, scope: !3936)
!3951 = !DILocation(line: 61, column: 7, scope: !3924)
!3952 = !DILocation(line: 62, column: 8, scope: !3940)
!3953 = !DILocation(line: 62, column: 13, scope: !3940)
!3954 = !DILocation(line: 62, column: 10, scope: !3940)
!3955 = !DILocation(line: 63, column: 5, scope: !3940)
!3956 = !DILocation(line: 65, column: 1, scope: !3924)
!3957 = !DILocation(line: 0, scope: !700)
!3958 = !DILocation(line: 176, column: 14, scope: !700)
!3959 = !DILocation(line: 178, column: 9, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !700, file: !149, line: 178, column: 7)
!3961 = !DILocation(line: 178, column: 7, scope: !700)
!3962 = !DILocation(line: 180, column: 13, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !149, line: 180, column: 11)
!3964 = distinct !DILexicalBlock(scope: !3960, file: !149, line: 179, column: 5)
!3965 = !DILocation(line: 180, column: 11, scope: !3964)
!3966 = !DILocation(line: 188, column: 30, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3963, file: !149, line: 181, column: 9)
!3968 = !DILocation(line: 189, column: 16, scope: !3967)
!3969 = !DILocation(line: 189, column: 13, scope: !3967)
!3970 = !DILocation(line: 190, column: 9, scope: !3967)
!3971 = !DILocation(line: 191, column: 11, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3964, file: !149, line: 191, column: 11)
!3973 = !DILocation(line: 191, column: 11, scope: !3964)
!3974 = !DILocation(line: 206, column: 7, scope: !700)
!3975 = !DILocation(line: 207, column: 25, scope: !700)
!3976 = !DILocation(line: 0, scope: !3924, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 207, column: 10, scope: !700)
!3978 = !DILocation(line: 53, column: 10, scope: !3932, inlinedAt: !3977)
!3979 = !DILocation(line: 192, column: 9, scope: !3972)
!3980 = !DILocation(line: 200, column: 69, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !149, line: 200, column: 11)
!3982 = distinct !DILexicalBlock(scope: !3960, file: !149, line: 195, column: 5)
!3983 = !DILocation(line: 201, column: 11, scope: !3981)
!3984 = !DILocation(line: 200, column: 11, scope: !3982)
!3985 = !DILocation(line: 202, column: 9, scope: !3981)
!3986 = !DILocation(line: 203, column: 14, scope: !3982)
!3987 = !DILocation(line: 203, column: 18, scope: !3982)
!3988 = !DILocation(line: 203, column: 9, scope: !3982)
!3989 = !DILocation(line: 53, column: 8, scope: !3932, inlinedAt: !3977)
!3990 = !DILocation(line: 57, column: 7, scope: !3936, inlinedAt: !3977)
!3991 = !DILocation(line: 58, column: 7, scope: !3936, inlinedAt: !3977)
!3992 = !DILocation(line: 61, column: 7, scope: !3924, inlinedAt: !3977)
!3993 = !DILocation(line: 62, column: 8, scope: !3940, inlinedAt: !3977)
!3994 = !DILocation(line: 62, column: 13, scope: !3940, inlinedAt: !3977)
!3995 = !DILocation(line: 62, column: 10, scope: !3940, inlinedAt: !3977)
!3996 = !DILocation(line: 63, column: 5, scope: !3940, inlinedAt: !3977)
!3997 = !DILocation(line: 207, column: 3, scope: !700)
!3998 = distinct !DISubprogram(name: "xcharalloc", scope: !149, file: !149, line: 216, type: !2997, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3999)
!3999 = !{!4000}
!4000 = !DILocalVariable(name: "n", arg: 1, scope: !3998, file: !149, line: 216, type: !68)
!4001 = !DILocation(line: 0, scope: !3998)
!4002 = !DILocation(line: 0, scope: !3889, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 218, column: 10, scope: !3998)
!4004 = !DILocation(line: 41, column: 13, scope: !3889, inlinedAt: !4003)
!4005 = !DILocation(line: 42, column: 8, scope: !3898, inlinedAt: !4003)
!4006 = !DILocation(line: 42, column: 15, scope: !3898, inlinedAt: !4003)
!4007 = !DILocation(line: 42, column: 10, scope: !3898, inlinedAt: !4003)
!4008 = !DILocation(line: 43, column: 5, scope: !3898, inlinedAt: !4003)
!4009 = !DILocation(line: 218, column: 3, scope: !3998)
!4010 = distinct !DISubprogram(name: "x2realloc", scope: !697, file: !697, line: 74, type: !4011, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!66, !66, !703}
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "p", arg: 1, scope: !4010, file: !697, line: 74, type: !66)
!4015 = !DILocalVariable(name: "pn", arg: 2, scope: !4010, file: !697, line: 74, type: !703)
!4016 = !DILocation(line: 0, scope: !4010)
!4017 = !DILocation(line: 0, scope: !700, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 76, column: 10, scope: !4010)
!4019 = !DILocation(line: 176, column: 14, scope: !700, inlinedAt: !4018)
!4020 = !DILocation(line: 178, column: 9, scope: !3960, inlinedAt: !4018)
!4021 = !DILocation(line: 178, column: 7, scope: !700, inlinedAt: !4018)
!4022 = !DILocation(line: 180, column: 13, scope: !3963, inlinedAt: !4018)
!4023 = !DILocation(line: 180, column: 11, scope: !3964, inlinedAt: !4018)
!4024 = !DILocation(line: 191, column: 11, scope: !3972, inlinedAt: !4018)
!4025 = !DILocation(line: 191, column: 11, scope: !3964, inlinedAt: !4018)
!4026 = !DILocation(line: 206, column: 7, scope: !700, inlinedAt: !4018)
!4027 = !DILocation(line: 0, scope: !3924, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 207, column: 10, scope: !700, inlinedAt: !4018)
!4029 = !DILocation(line: 53, column: 10, scope: !3932, inlinedAt: !4028)
!4030 = !DILocation(line: 192, column: 9, scope: !3972, inlinedAt: !4018)
!4031 = !DILocation(line: 201, column: 11, scope: !3981, inlinedAt: !4018)
!4032 = !DILocation(line: 200, column: 11, scope: !3982, inlinedAt: !4018)
!4033 = !DILocation(line: 202, column: 9, scope: !3981, inlinedAt: !4018)
!4034 = !DILocation(line: 203, column: 14, scope: !3982, inlinedAt: !4018)
!4035 = !DILocation(line: 203, column: 18, scope: !3982, inlinedAt: !4018)
!4036 = !DILocation(line: 203, column: 9, scope: !3982, inlinedAt: !4018)
!4037 = !DILocation(line: 53, column: 8, scope: !3932, inlinedAt: !4028)
!4038 = !DILocation(line: 57, column: 7, scope: !3936, inlinedAt: !4028)
!4039 = !DILocation(line: 58, column: 7, scope: !3936, inlinedAt: !4028)
!4040 = !DILocation(line: 61, column: 7, scope: !3924, inlinedAt: !4028)
!4041 = !DILocation(line: 62, column: 8, scope: !3940, inlinedAt: !4028)
!4042 = !DILocation(line: 62, column: 13, scope: !3940, inlinedAt: !4028)
!4043 = !DILocation(line: 62, column: 10, scope: !3940, inlinedAt: !4028)
!4044 = !DILocation(line: 63, column: 5, scope: !3940, inlinedAt: !4028)
!4045 = !DILocation(line: 76, column: 3, scope: !4010)
!4046 = distinct !DISubprogram(name: "xzalloc", scope: !697, file: !697, line: 84, type: !3890, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4047)
!4047 = !{!4048}
!4048 = !DILocalVariable(name: "n", arg: 1, scope: !4046, file: !697, line: 84, type: !68)
!4049 = !DILocation(line: 0, scope: !4046)
!4050 = !DILocalVariable(name: "n", arg: 1, scope: !4051, file: !697, line: 93, type: !68)
!4051 = distinct !DISubprogram(name: "xcalloc", scope: !697, file: !697, line: 93, type: !3877, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4052)
!4052 = !{!4050, !4053, !4054}
!4053 = !DILocalVariable(name: "s", arg: 2, scope: !4051, file: !697, line: 93, type: !68)
!4054 = !DILocalVariable(name: "p", scope: !4051, file: !697, line: 95, type: !66)
!4055 = !DILocation(line: 0, scope: !4051, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 86, column: 10, scope: !4046)
!4057 = !DILocation(line: 100, column: 7, scope: !4058, inlinedAt: !4056)
!4058 = distinct !DILexicalBlock(scope: !4051, file: !697, line: 100, column: 7)
!4059 = !DILocation(line: 101, column: 7, scope: !4058, inlinedAt: !4056)
!4060 = !DILocation(line: 101, column: 18, scope: !4058, inlinedAt: !4056)
!4061 = !DILocation(line: 101, column: 16, scope: !4058, inlinedAt: !4056)
!4062 = !DILocation(line: 100, column: 7, scope: !4051, inlinedAt: !4056)
!4063 = !DILocation(line: 102, column: 5, scope: !4058, inlinedAt: !4056)
!4064 = !DILocation(line: 86, column: 3, scope: !4046)
!4065 = !DILocation(line: 0, scope: !4051)
!4066 = !DILocation(line: 100, column: 7, scope: !4058)
!4067 = !DILocation(line: 101, column: 7, scope: !4058)
!4068 = !DILocation(line: 101, column: 18, scope: !4058)
!4069 = !DILocation(line: 101, column: 16, scope: !4058)
!4070 = !DILocation(line: 100, column: 7, scope: !4051)
!4071 = !DILocation(line: 102, column: 5, scope: !4058)
!4072 = !DILocation(line: 103, column: 3, scope: !4051)
!4073 = distinct !DISubprogram(name: "xmemdup", scope: !697, file: !697, line: 111, type: !4074, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4076)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!66, !458, !68}
!4076 = !{!4077, !4078}
!4077 = !DILocalVariable(name: "p", arg: 1, scope: !4073, file: !697, line: 111, type: !458)
!4078 = !DILocalVariable(name: "s", arg: 2, scope: !4073, file: !697, line: 111, type: !68)
!4079 = !DILocation(line: 0, scope: !4073)
!4080 = !DILocation(line: 0, scope: !3889, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 113, column: 18, scope: !4073)
!4082 = !DILocation(line: 41, column: 13, scope: !3889, inlinedAt: !4081)
!4083 = !DILocation(line: 42, column: 8, scope: !3898, inlinedAt: !4081)
!4084 = !DILocation(line: 42, column: 15, scope: !3898, inlinedAt: !4081)
!4085 = !DILocation(line: 42, column: 10, scope: !3898, inlinedAt: !4081)
!4086 = !DILocation(line: 43, column: 5, scope: !3898, inlinedAt: !4081)
!4087 = !DILocalVariable(name: "__dest", arg: 1, scope: !4088, file: !2530, line: 31, type: !4091)
!4088 = distinct !DISubprogram(name: "memcpy", scope: !2530, file: !2530, line: 31, type: !4089, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4093)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!66, !4091, !4092, !68}
!4091 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!4092 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !458)
!4093 = !{!4087, !4094, !4095}
!4094 = !DILocalVariable(name: "__src", arg: 2, scope: !4088, file: !2530, line: 31, type: !4092)
!4095 = !DILocalVariable(name: "__len", arg: 3, scope: !4088, file: !2530, line: 31, type: !68)
!4096 = !DILocation(line: 0, scope: !4088, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 113, column: 10, scope: !4073)
!4098 = !DILocation(line: 34, column: 10, scope: !4088, inlinedAt: !4097)
!4099 = !DILocation(line: 113, column: 3, scope: !4073)
!4100 = distinct !DISubprogram(name: "xstrdup", scope: !697, file: !697, line: 119, type: !88, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4101)
!4101 = !{!4102}
!4102 = !DILocalVariable(name: "string", arg: 1, scope: !4100, file: !697, line: 119, type: !12)
!4103 = !DILocation(line: 0, scope: !4100)
!4104 = !DILocation(line: 121, column: 27, scope: !4100)
!4105 = !DILocation(line: 121, column: 43, scope: !4100)
!4106 = !DILocation(line: 0, scope: !4073, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 121, column: 10, scope: !4100)
!4108 = !DILocation(line: 0, scope: !3889, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 113, column: 18, scope: !4073, inlinedAt: !4107)
!4110 = !DILocation(line: 41, column: 13, scope: !3889, inlinedAt: !4109)
!4111 = !DILocation(line: 42, column: 8, scope: !3898, inlinedAt: !4109)
!4112 = !DILocation(line: 42, column: 15, scope: !3898, inlinedAt: !4109)
!4113 = !DILocation(line: 42, column: 10, scope: !3898, inlinedAt: !4109)
!4114 = !DILocation(line: 43, column: 5, scope: !3898, inlinedAt: !4109)
!4115 = !DILocation(line: 0, scope: !4088, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 113, column: 10, scope: !4073, inlinedAt: !4107)
!4117 = !DILocation(line: 34, column: 10, scope: !4088, inlinedAt: !4116)
!4118 = !DILocation(line: 121, column: 3, scope: !4100)
!4119 = distinct !DISubprogram(name: "xalloc_die", scope: !718, file: !718, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4)
!4120 = !DILocation(line: 34, column: 10, scope: !4119)
!4121 = !DILocation(line: 34, column: 33, scope: !4119)
!4122 = !DILocation(line: 34, column: 3, scope: !4119)
!4123 = !DILocation(line: 40, column: 3, scope: !4119)
!4124 = distinct !DISubprogram(name: "xgetgroups", scope: !721, file: !721, line: 31, type: !1194, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !4125)
!4125 = !{!4126, !4127, !4128, !4129}
!4126 = !DILocalVariable(name: "username", arg: 1, scope: !4124, file: !721, line: 31, type: !12)
!4127 = !DILocalVariable(name: "gid", arg: 2, scope: !4124, file: !721, line: 31, type: !198)
!4128 = !DILocalVariable(name: "groups", arg: 3, scope: !4124, file: !721, line: 31, type: !1196)
!4129 = !DILocalVariable(name: "result", scope: !4124, file: !721, line: 33, type: !14)
!4130 = !DILocation(line: 0, scope: !4124)
!4131 = !DILocation(line: 33, column: 16, scope: !4124)
!4132 = !DILocation(line: 34, column: 14, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4124, file: !721, line: 34, column: 7)
!4134 = !DILocation(line: 34, column: 20, scope: !4133)
!4135 = !DILocation(line: 34, column: 23, scope: !4133)
!4136 = !DILocation(line: 34, column: 29, scope: !4133)
!4137 = !DILocation(line: 34, column: 7, scope: !4124)
!4138 = !DILocation(line: 35, column: 5, scope: !4133)
!4139 = !DILocation(line: 36, column: 3, scope: !4124)
!4140 = distinct !DISubprogram(name: "xstrtoul", scope: !4141, file: !4141, line: 76, type: !4142, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !4145)
!4141 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!4144, !12, !127, !14, !463, !12}
!4144 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !568, line: 38, baseType: !567)
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4158, !4159, !4162, !4163}
!4146 = !DILocalVariable(name: "s", arg: 1, scope: !4140, file: !4141, line: 76, type: !12)
!4147 = !DILocalVariable(name: "ptr", arg: 2, scope: !4140, file: !4141, line: 76, type: !127)
!4148 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4140, file: !4141, line: 76, type: !14)
!4149 = !DILocalVariable(name: "val", arg: 4, scope: !4140, file: !4141, line: 77, type: !463)
!4150 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4140, file: !4141, line: 77, type: !12)
!4151 = !DILocalVariable(name: "t_ptr", scope: !4140, file: !4141, line: 79, type: !10)
!4152 = !DILocalVariable(name: "p", scope: !4140, file: !4141, line: 80, type: !127)
!4153 = !DILocalVariable(name: "tmp", scope: !4140, file: !4141, line: 81, type: !70)
!4154 = !DILocalVariable(name: "err", scope: !4140, file: !4141, line: 82, type: !4144)
!4155 = !DILocalVariable(name: "q", scope: !4156, file: !4141, line: 92, type: !12)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !4141, line: 91, column: 5)
!4157 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 90, column: 7)
!4158 = !DILocalVariable(name: "ch", scope: !4156, file: !4141, line: 93, type: !188)
!4159 = !DILocalVariable(name: "base", scope: !4160, file: !4141, line: 129, type: !14)
!4160 = distinct !DILexicalBlock(scope: !4161, file: !4141, line: 128, column: 5)
!4161 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 127, column: 7)
!4162 = !DILocalVariable(name: "suffixes", scope: !4160, file: !4141, line: 130, type: !14)
!4163 = !DILocalVariable(name: "overflow", scope: !4160, file: !4141, line: 131, type: !4144)
!4164 = !DILocation(line: 0, scope: !4140)
!4165 = !DILocation(line: 79, column: 3, scope: !4140)
!4166 = !DILocation(line: 84, column: 3, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !4141, line: 84, column: 3)
!4168 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 84, column: 3)
!4169 = !DILocation(line: 86, column: 8, scope: !4140)
!4170 = !DILocation(line: 88, column: 3, scope: !4140)
!4171 = !DILocation(line: 88, column: 9, scope: !4140)
!4172 = !DILocation(line: 0, scope: !4156)
!4173 = !DILocation(line: 94, column: 7, scope: !4156)
!4174 = !DILocation(line: 94, column: 14, scope: !4156)
!4175 = !DILocation(line: 95, column: 15, scope: !4156)
!4176 = distinct !{!4176, !4173, !4177}
!4177 = !DILocation(line: 95, column: 17, scope: !4156)
!4178 = !DILocation(line: 96, column: 14, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4156, file: !4141, line: 96, column: 11)
!4180 = !DILocation(line: 100, column: 9, scope: !4140)
!4181 = !DILocation(line: 102, column: 7, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 102, column: 7)
!4183 = !DILocation(line: 102, column: 10, scope: !4182)
!4184 = !DILocation(line: 102, column: 7, scope: !4140)
!4185 = !DILocation(line: 106, column: 11, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !4141, line: 106, column: 11)
!4187 = distinct !DILexicalBlock(scope: !4182, file: !4141, line: 103, column: 5)
!4188 = !DILocation(line: 106, column: 26, scope: !4186)
!4189 = !DILocation(line: 106, column: 29, scope: !4186)
!4190 = !DILocation(line: 106, column: 33, scope: !4186)
!4191 = !DILocation(line: 106, column: 36, scope: !4186)
!4192 = !DILocation(line: 106, column: 11, scope: !4187)
!4193 = !DILocation(line: 111, column: 12, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4182, file: !4141, line: 111, column: 12)
!4195 = !DILocation(line: 111, column: 12, scope: !4182)
!4196 = !DILocation(line: 116, column: 5, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4194, file: !4141, line: 112, column: 5)
!4198 = !DILocation(line: 121, column: 8, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4140, file: !4141, line: 121, column: 7)
!4200 = !DILocation(line: 121, column: 7, scope: !4140)
!4201 = !DILocation(line: 123, column: 12, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4199, file: !4141, line: 122, column: 5)
!4203 = !DILocation(line: 124, column: 7, scope: !4202)
!4204 = !DILocation(line: 127, column: 7, scope: !4161)
!4205 = !DILocation(line: 127, column: 11, scope: !4161)
!4206 = !DILocation(line: 127, column: 7, scope: !4140)
!4207 = !DILocation(line: 0, scope: !4160)
!4208 = !DILocation(line: 133, column: 12, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4160, file: !4141, line: 133, column: 11)
!4210 = !DILocation(line: 133, column: 11, scope: !4160)
!4211 = !DILocation(line: 135, column: 16, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4209, file: !4141, line: 134, column: 9)
!4213 = !DILocation(line: 136, column: 22, scope: !4212)
!4214 = !DILocation(line: 136, column: 11, scope: !4212)
!4215 = !DILocation(line: 139, column: 7, scope: !4160)
!4216 = !DILocation(line: 151, column: 15, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !4141, line: 151, column: 15)
!4218 = distinct !DILexicalBlock(scope: !4160, file: !4141, line: 140, column: 9)
!4219 = !DILocation(line: 151, column: 15, scope: !4218)
!4220 = !DILocation(line: 152, column: 21, scope: !4217)
!4221 = !DILocation(line: 152, column: 13, scope: !4217)
!4222 = !DILocation(line: 155, column: 21, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !4141, line: 155, column: 21)
!4224 = distinct !DILexicalBlock(scope: !4217, file: !4141, line: 153, column: 15)
!4225 = !DILocation(line: 155, column: 29, scope: !4223)
!4226 = !DILocation(line: 155, column: 21, scope: !4224)
!4227 = !DILocation(line: 163, column: 17, scope: !4224)
!4228 = !DILocation(line: 167, column: 7, scope: !4160)
!4229 = !DILocalVariable(name: "err", scope: !4230, file: !4141, line: 67, type: !4144)
!4230 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4141, file: !4141, line: 65, type: !4231, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!4144, !463, !14, !14}
!4233 = !{!4234, !4235, !4236, !4229}
!4234 = !DILocalVariable(name: "x", arg: 1, scope: !4230, file: !4141, line: 65, type: !463)
!4235 = !DILocalVariable(name: "base", arg: 2, scope: !4230, file: !4141, line: 65, type: !14)
!4236 = !DILocalVariable(name: "power", arg: 3, scope: !4230, file: !4141, line: 65, type: !14)
!4237 = !DILocation(line: 0, scope: !4230, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 221, column: 22, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4160, file: !4141, line: 168, column: 9)
!4240 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4241, file: !4141, line: 48, type: !14)
!4241 = distinct !DISubprogram(name: "bkm_scale", scope: !4141, file: !4141, line: 48, type: !4242, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!4144, !463, !14}
!4244 = !{!4245, !4240}
!4245 = !DILocalVariable(name: "x", arg: 1, scope: !4241, file: !4141, line: 48, type: !463)
!4246 = !DILocation(line: 0, scope: !4241, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 69, column: 12, scope: !4230, inlinedAt: !4238)
!4248 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4247)
!4249 = distinct !DILexicalBlock(scope: !4241, file: !4141, line: 55, column: 7)
!4250 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4247)
!4251 = !DILocation(line: 69, column: 9, scope: !4230, inlinedAt: !4238)
!4252 = !DILocation(line: 229, column: 11, scope: !4160)
!4253 = !DILocation(line: 0, scope: !4230, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 217, column: 22, scope: !4239)
!4255 = !DILocation(line: 0, scope: !4241, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 69, column: 12, scope: !4230, inlinedAt: !4254)
!4257 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4256)
!4258 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4256)
!4259 = !DILocation(line: 69, column: 9, scope: !4230, inlinedAt: !4254)
!4260 = !DILocation(line: 0, scope: !4230, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 204, column: 22, scope: !4239)
!4262 = !DILocation(line: 0, scope: !4241, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 69, column: 12, scope: !4230, inlinedAt: !4261)
!4264 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4263)
!4265 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4263)
!4266 = !DILocation(line: 69, column: 9, scope: !4230, inlinedAt: !4261)
!4267 = !DILocation(line: 0, scope: !4230, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 185, column: 22, scope: !4239)
!4269 = !DILocation(line: 0, scope: !4241, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 69, column: 12, scope: !4230, inlinedAt: !4268)
!4271 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4270)
!4272 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4270)
!4273 = !DILocation(line: 69, column: 9, scope: !4230, inlinedAt: !4268)
!4274 = !DILocation(line: 0, scope: !4241, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 170, column: 22, scope: !4239)
!4276 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4275)
!4277 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4275)
!4278 = !DILocation(line: 171, column: 11, scope: !4239)
!4279 = !DILocation(line: 0, scope: !4241, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 177, column: 22, scope: !4239)
!4281 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4280)
!4282 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4280)
!4283 = !DILocation(line: 178, column: 11, scope: !4239)
!4284 = !DILocation(line: 0, scope: !4230, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 190, column: 22, scope: !4239)
!4286 = !DILocation(line: 0, scope: !4241, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 69, column: 12, scope: !4230, inlinedAt: !4285)
!4288 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4287)
!4289 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4287)
!4290 = !DILocation(line: 69, column: 9, scope: !4230, inlinedAt: !4285)
!4291 = !DILocation(line: 0, scope: !4230, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 195, column: 22, scope: !4239)
!4293 = !DILocation(line: 0, scope: !4241, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 69, column: 12, scope: !4230, inlinedAt: !4292)
!4295 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4294)
!4296 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4294)
!4297 = !DILocation(line: 0, scope: !4230, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 200, column: 22, scope: !4239)
!4299 = !DILocation(line: 0, scope: !4241, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 69, column: 12, scope: !4230, inlinedAt: !4298)
!4301 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4300)
!4302 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4300)
!4303 = !DILocation(line: 69, column: 9, scope: !4230, inlinedAt: !4298)
!4304 = !DILocation(line: 0, scope: !4230, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 209, column: 22, scope: !4239)
!4306 = !DILocation(line: 0, scope: !4241, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 69, column: 12, scope: !4230, inlinedAt: !4305)
!4308 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4307)
!4309 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4307)
!4310 = !DILocation(line: 69, column: 9, scope: !4230, inlinedAt: !4305)
!4311 = !DILocation(line: 0, scope: !4241, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 213, column: 22, scope: !4239)
!4313 = !DILocation(line: 55, column: 39, scope: !4249, inlinedAt: !4312)
!4314 = !DILocation(line: 55, column: 7, scope: !4241, inlinedAt: !4312)
!4315 = !DILocation(line: 214, column: 11, scope: !4239)
!4316 = !DILocation(line: 225, column: 16, scope: !4239)
!4317 = !DILocation(line: 226, column: 22, scope: !4239)
!4318 = !DILocation(line: 226, column: 11, scope: !4239)
!4319 = !DILocation(line: 0, scope: !4239)
!4320 = !DILocation(line: 230, column: 10, scope: !4160)
!4321 = !DILocation(line: 231, column: 11, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4160, file: !4141, line: 231, column: 11)
!4323 = !DILocation(line: 232, column: 13, scope: !4322)
!4324 = !DILocation(line: 231, column: 11, scope: !4160)
!4325 = !DILocation(line: 107, column: 13, scope: !4186)
!4326 = !DILocation(line: 82, column: 16, scope: !4140)
!4327 = !DILocation(line: 235, column: 8, scope: !4140)
!4328 = !DILocation(line: 236, column: 3, scope: !4140)
!4329 = !DILocation(line: 237, column: 1, scope: !4140)
!4330 = distinct !DISubprogram(name: "rpl_calloc", scope: !729, file: !729, line: 42, type: !3877, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4331)
!4331 = !{!4332, !4333, !4334, !4335}
!4332 = !DILocalVariable(name: "n", arg: 1, scope: !4330, file: !729, line: 42, type: !68)
!4333 = !DILocalVariable(name: "s", arg: 2, scope: !4330, file: !729, line: 42, type: !68)
!4334 = !DILocalVariable(name: "result", scope: !4330, file: !729, line: 44, type: !66)
!4335 = !DILocalVariable(name: "bytes", scope: !4336, file: !729, line: 56, type: !68)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !729, line: 53, column: 5)
!4337 = distinct !DILexicalBlock(scope: !4330, file: !729, line: 47, column: 7)
!4338 = !DILocation(line: 0, scope: !4330)
!4339 = !DILocation(line: 47, column: 9, scope: !4337)
!4340 = !DILocation(line: 47, column: 19, scope: !4337)
!4341 = !DILocation(line: 47, column: 14, scope: !4337)
!4342 = !DILocation(line: 0, scope: !4336)
!4343 = !DILocation(line: 57, column: 21, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4336, file: !729, line: 57, column: 11)
!4345 = !DILocation(line: 57, column: 11, scope: !4336)
!4346 = !DILocation(line: 59, column: 11, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4344, file: !729, line: 58, column: 9)
!4348 = !DILocation(line: 59, column: 17, scope: !4347)
!4349 = !DILocation(line: 65, column: 12, scope: !4330)
!4350 = !DILocation(line: 72, column: 3, scope: !4330)
!4351 = !DILocation(line: 73, column: 1, scope: !4330)
!4352 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !732, file: !732, line: 86, type: !4353, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !4359)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!68, !4355, !12, !68, !4356}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2273, line: 6, baseType: !4358)
!4358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !485, line: 21, baseType: !738)
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366}
!4360 = !DILocalVariable(name: "pwc", arg: 1, scope: !4352, file: !732, line: 86, type: !4355)
!4361 = !DILocalVariable(name: "s", arg: 2, scope: !4352, file: !732, line: 86, type: !12)
!4362 = !DILocalVariable(name: "n", arg: 3, scope: !4352, file: !732, line: 86, type: !68)
!4363 = !DILocalVariable(name: "ps", arg: 4, scope: !4352, file: !732, line: 86, type: !4356)
!4364 = !DILocalVariable(name: "ret", scope: !4352, file: !732, line: 88, type: !68)
!4365 = !DILocalVariable(name: "wc", scope: !4352, file: !732, line: 89, type: !2277)
!4366 = !DILocalVariable(name: "uc", scope: !4367, file: !732, line: 156, type: !188)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !732, line: 155, column: 5)
!4368 = distinct !DILexicalBlock(scope: !4352, file: !732, line: 154, column: 7)
!4369 = !DILocation(line: 0, scope: !4352)
!4370 = !DILocation(line: 89, column: 3, scope: !4352)
!4371 = !DILocation(line: 105, column: 9, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4352, file: !732, line: 105, column: 7)
!4373 = !DILocation(line: 105, column: 7, scope: !4352)
!4374 = !DILocation(line: 145, column: 9, scope: !4352)
!4375 = !DILocation(line: 154, column: 19, scope: !4368)
!4376 = !DILocation(line: 154, column: 31, scope: !4368)
!4377 = !DILocation(line: 154, column: 26, scope: !4368)
!4378 = !DILocation(line: 154, column: 41, scope: !4368)
!4379 = !DILocation(line: 154, column: 7, scope: !4352)
!4380 = !DILocation(line: 156, column: 26, scope: !4367)
!4381 = !DILocation(line: 0, scope: !4367)
!4382 = !DILocation(line: 157, column: 14, scope: !4367)
!4383 = !DILocation(line: 157, column: 12, scope: !4367)
!4384 = !DILocation(line: 163, column: 1, scope: !4352)
!4385 = distinct !DISubprogram(name: "close_stream", scope: !751, file: !751, line: 56, type: !4386, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4390)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!14, !4388}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3752, line: 7, baseType: !758)
!4390 = !{!4391, !4392, !4394, !4395}
!4391 = !DILocalVariable(name: "stream", arg: 1, scope: !4385, file: !751, line: 56, type: !4388)
!4392 = !DILocalVariable(name: "some_pending", scope: !4385, file: !751, line: 58, type: !4393)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!4394 = !DILocalVariable(name: "prev_fail", scope: !4385, file: !751, line: 59, type: !4393)
!4395 = !DILocalVariable(name: "fclose_fail", scope: !4385, file: !751, line: 60, type: !4393)
!4396 = !DILocation(line: 0, scope: !4385)
!4397 = !DILocation(line: 58, column: 30, scope: !4385)
!4398 = !DILocalVariable(name: "__stream", arg: 1, scope: !4399, file: !1805, line: 135, type: !4388)
!4399 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1805, file: !1805, line: 135, type: !4386, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4400)
!4400 = !{!4398}
!4401 = !DILocation(line: 0, scope: !4399, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 59, column: 27, scope: !4385)
!4403 = !DILocation(line: 137, column: 10, scope: !4399, inlinedAt: !4402)
!4404 = !{!1814, !1484, i64 0}
!4405 = !DILocation(line: 59, column: 43, scope: !4385)
!4406 = !DILocation(line: 60, column: 29, scope: !4385)
!4407 = !DILocation(line: 60, column: 45, scope: !4385)
!4408 = !DILocation(line: 70, column: 17, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4385, file: !751, line: 70, column: 7)
!4410 = !DILocation(line: 58, column: 50, scope: !4385)
!4411 = !DILocation(line: 70, column: 33, scope: !4409)
!4412 = !DILocation(line: 70, column: 53, scope: !4409)
!4413 = !DILocation(line: 70, column: 59, scope: !4409)
!4414 = !DILocation(line: 70, column: 7, scope: !4385)
!4415 = !DILocation(line: 72, column: 11, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4409, file: !751, line: 71, column: 5)
!4417 = !DILocation(line: 73, column: 9, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4416, file: !751, line: 72, column: 11)
!4419 = !DILocation(line: 73, column: 15, scope: !4418)
!4420 = !DILocation(line: 78, column: 1, scope: !4385)
!4421 = distinct !DISubprogram(name: "hard_locale", scope: !790, file: !790, line: 27, type: !748, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4422)
!4422 = !{!4423, !4424}
!4423 = !DILocalVariable(name: "category", arg: 1, scope: !4421, file: !790, line: 27, type: !14)
!4424 = !DILocalVariable(name: "locale", scope: !4421, file: !790, line: 29, type: !4425)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !4426)
!4426 = !{!4427}
!4427 = !DISubrange(count: 257)
!4428 = !DILocation(line: 0, scope: !4421)
!4429 = !DILocation(line: 29, column: 3, scope: !4421)
!4430 = !DILocation(line: 29, column: 8, scope: !4421)
!4431 = !DILocation(line: 31, column: 7, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4421, file: !790, line: 31, column: 7)
!4433 = !DILocation(line: 31, column: 7, scope: !4421)
!4434 = !DILocation(line: 34, column: 12, scope: !4421)
!4435 = !DILocation(line: 34, column: 38, scope: !4421)
!4436 = !DILocation(line: 34, column: 41, scope: !4421)
!4437 = !DILocation(line: 34, column: 66, scope: !4421)
!4438 = !DILocation(line: 35, column: 1, scope: !4421)
!4439 = distinct !DISubprogram(name: "locale_charset", scope: !797, file: !797, line: 831, type: !508, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4440)
!4440 = !{!4441}
!4441 = !DILocalVariable(name: "codeset", scope: !4439, file: !797, line: 833, type: !12)
!4442 = !DILocation(line: 847, column: 13, scope: !4439)
!4443 = !DILocation(line: 0, scope: !4439)
!4444 = !DILocation(line: 911, column: 15, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4439, file: !797, line: 911, column: 7)
!4446 = !DILocation(line: 911, column: 7, scope: !4439)
!4447 = !DILocation(line: 1070, column: 13, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !797, line: 1070, column: 13)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !797, line: 1060, column: 7)
!4450 = distinct !DILexicalBlock(scope: !4439, file: !797, line: 1019, column: 3)
!4451 = !DILocation(line: 1070, column: 24, scope: !4448)
!4452 = !DILocation(line: 1070, column: 13, scope: !4449)
!4453 = !DILocation(line: 1158, column: 3, scope: !4439)
!4454 = !DILocation(line: 0, scope: !1193)
!4455 = !DILocation(line: 68, column: 3, scope: !1193)
!4456 = !DILocation(line: 81, column: 7, scope: !1207)
!4457 = !DILocation(line: 81, column: 7, scope: !1193)
!4458 = !DILocation(line: 84, column: 20, scope: !1206)
!4459 = !DILocalVariable(name: "g", arg: 1, scope: !4460, file: !1190, line: 43, type: !614)
!4460 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !1190, file: !1190, line: 43, type: !4461, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1189, retainedNodes: !4463)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!614, !614, !68}
!4463 = !{!4459, !4464}
!4464 = !DILocalVariable(name: "num", arg: 2, scope: !4460, file: !1190, line: 43, type: !68)
!4465 = !DILocation(line: 0, scope: !4460, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 86, column: 11, scope: !1206)
!4467 = !DILocation(line: 51, column: 10, scope: !4460, inlinedAt: !4466)
!4468 = !DILocation(line: 87, column: 13, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !1206, file: !1190, line: 87, column: 11)
!4470 = !DILocation(line: 87, column: 11, scope: !1206)
!4471 = !DILocation(line: 93, column: 31, scope: !1205)
!4472 = !DILocation(line: 86, column: 9, scope: !1206)
!4473 = !DILocation(line: 0, scope: !1205)
!4474 = !DILocation(line: 96, column: 16, scope: !1205)
!4475 = !DILocation(line: 100, column: 18, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !1205, file: !1190, line: 100, column: 15)
!4477 = !DILocation(line: 100, column: 39, scope: !4476)
!4478 = !DILocation(line: 100, column: 22, scope: !4476)
!4479 = !DILocation(line: 101, column: 26, scope: !4476)
!4480 = !DILocation(line: 101, column: 13, scope: !4476)
!4481 = !DILocation(line: 103, column: 41, scope: !1211)
!4482 = !DILocation(line: 0, scope: !4460, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 103, column: 20, scope: !1211)
!4484 = !DILocation(line: 45, column: 7, scope: !4485, inlinedAt: !4483)
!4485 = distinct !DILexicalBlock(scope: !4460, file: !1190, line: 45, column: 7)
!4486 = !DILocation(line: 45, column: 7, scope: !4460, inlinedAt: !4483)
!4487 = !DILocation(line: 47, column: 7, scope: !4488, inlinedAt: !4483)
!4488 = distinct !DILexicalBlock(scope: !4485, file: !1190, line: 46, column: 5)
!4489 = !DILocation(line: 47, column: 13, scope: !4488, inlinedAt: !4483)
!4490 = !DILocation(line: 103, column: 15, scope: !1205)
!4491 = !DILocation(line: 51, column: 26, scope: !4460, inlinedAt: !4483)
!4492 = !DILocation(line: 51, column: 10, scope: !4460, inlinedAt: !4483)
!4493 = !DILocation(line: 103, column: 56, scope: !1211)
!4494 = !DILocation(line: 105, column: 33, scope: !1210)
!4495 = !DILocation(line: 0, scope: !1210)
!4496 = !DILocation(line: 106, column: 15, scope: !1210)
!4497 = !DILocation(line: 107, column: 21, scope: !1210)
!4498 = !DILocation(line: 112, column: 17, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !1205, file: !1190, line: 112, column: 15)
!4500 = !DILocation(line: 112, column: 15, scope: !1205)
!4501 = !DILocation(line: 114, column: 23, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4499, file: !1190, line: 113, column: 13)
!4503 = !DILocation(line: 117, column: 22, scope: !4502)
!4504 = !DILocation(line: 117, column: 15, scope: !4502)
!4505 = !DILocation(line: 126, column: 21, scope: !1193)
!4506 = !DILocation(line: 124, column: 16, scope: !1193)
!4507 = !DILocation(line: 131, column: 20, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !1193, file: !1190, line: 131, column: 7)
!4509 = !DILocation(line: 131, column: 7, scope: !1193)
!4510 = !DILocation(line: 133, column: 11, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !1190, line: 133, column: 11)
!4512 = distinct !DILexicalBlock(scope: !4508, file: !1190, line: 132, column: 5)
!4513 = !DILocation(line: 133, column: 17, scope: !4511)
!4514 = !DILocation(line: 133, column: 27, scope: !4511)
!4515 = !DILocation(line: 0, scope: !4460, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 133, column: 35, scope: !4511)
!4517 = !DILocation(line: 51, column: 10, scope: !4460, inlinedAt: !4516)
!4518 = !DILocation(line: 133, column: 33, scope: !4511)
!4519 = !DILocation(line: 133, column: 11, scope: !4512)
!4520 = !DILocation(line: 135, column: 19, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4511, file: !1190, line: 134, column: 9)
!4522 = !DILocation(line: 136, column: 14, scope: !4521)
!4523 = !DILocation(line: 137, column: 22, scope: !4521)
!4524 = !DILocation(line: 137, column: 11, scope: !4521)
!4525 = !DILocation(line: 142, column: 20, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !1193, file: !1190, line: 142, column: 7)
!4527 = !DILocation(line: 142, column: 46, scope: !4526)
!4528 = !DILocation(line: 142, column: 25, scope: !4526)
!4529 = !DILocation(line: 143, column: 17, scope: !4526)
!4530 = !DILocation(line: 143, column: 5, scope: !4526)
!4531 = !DILocation(line: 144, column: 31, scope: !1193)
!4532 = !DILocation(line: 0, scope: !4460, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 144, column: 7, scope: !1193)
!4534 = !DILocation(line: 51, column: 26, scope: !4460, inlinedAt: !4533)
!4535 = !DILocation(line: 51, column: 10, scope: !4460, inlinedAt: !4533)
!4536 = !DILocation(line: 145, column: 9, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !1193, file: !1190, line: 145, column: 7)
!4538 = !DILocation(line: 145, column: 7, scope: !1193)
!4539 = !DILocation(line: 150, column: 42, scope: !1193)
!4540 = !DILocation(line: 150, column: 35, scope: !1193)
!4541 = !DILocation(line: 151, column: 35, scope: !1193)
!4542 = !DILocation(line: 150, column: 11, scope: !1193)
!4543 = !DILocation(line: 153, column: 10, scope: !1214)
!4544 = !DILocation(line: 153, column: 7, scope: !1193)
!4545 = !DILocation(line: 156, column: 25, scope: !1213)
!4546 = !DILocation(line: 0, scope: !1213)
!4547 = !DILocation(line: 157, column: 7, scope: !1213)
!4548 = !DILocation(line: 158, column: 13, scope: !1213)
!4549 = !DILocation(line: 162, column: 17, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !1193, file: !1190, line: 162, column: 7)
!4551 = !DILocation(line: 164, column: 10, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4550, file: !1190, line: 163, column: 5)
!4553 = !DILocation(line: 165, column: 9, scope: !4552)
!4554 = !DILocation(line: 166, column: 5, scope: !4552)
!4555 = !DILocation(line: 167, column: 11, scope: !1193)
!4556 = !DILocation(line: 185, column: 9, scope: !1217)
!4557 = !DILocation(line: 185, column: 7, scope: !1193)
!4558 = !DILocation(line: 187, column: 21, scope: !1216)
!4559 = !DILocation(line: 0, scope: !1216)
!4560 = !DILocation(line: 189, column: 29, scope: !1216)
!4561 = !DILocation(line: 0, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !1216, file: !1190, line: 191, column: 7)
!4563 = !DILocation(line: 191, column: 31, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4562, file: !1190, line: 191, column: 7)
!4565 = !DILocation(line: 191, column: 7, scope: !4562)
!4566 = !DILocation(line: 193, column: 15, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !1190, line: 193, column: 15)
!4568 = distinct !DILexicalBlock(scope: !4564, file: !1190, line: 192, column: 9)
!4569 = !DILocation(line: 193, column: 39, scope: !4567)
!4570 = !DILocation(line: 193, column: 30, scope: !4567)
!4571 = !DILocation(line: 196, column: 14, scope: !4567)
!4572 = !DILocation(line: 196, column: 18, scope: !4567)
!4573 = !DILocation(line: 194, column: 15, scope: !4567)
!4574 = !DILocation(line: 194, column: 13, scope: !4567)
!4575 = !DILocation(line: 193, column: 21, scope: !4567)
!4576 = !DILocation(line: 201, column: 1, scope: !1193)
!4577 = distinct !{!4577, !4565, !4578}
!4578 = !DILocation(line: 197, column: 9, scope: !4562)
!4579 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1231, file: !1231, line: 269, type: !4580, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1230, retainedNodes: !4582)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!14, !14, !10, !68}
!4582 = !{!4583, !4584, !4585}
!4583 = !DILocalVariable(name: "category", arg: 1, scope: !4579, file: !1231, line: 269, type: !14)
!4584 = !DILocalVariable(name: "buf", arg: 2, scope: !4579, file: !1231, line: 269, type: !10)
!4585 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4579, file: !1231, line: 269, type: !68)
!4586 = !DILocation(line: 0, scope: !4579)
!4587 = !DILocalVariable(name: "category", arg: 1, scope: !4588, file: !1231, line: 91, type: !14)
!4588 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1231, file: !1231, line: 91, type: !4580, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1230, retainedNodes: !4589)
!4589 = !{!4587, !4590, !4591, !4592, !4593}
!4590 = !DILocalVariable(name: "buf", arg: 2, scope: !4588, file: !1231, line: 91, type: !10)
!4591 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4588, file: !1231, line: 91, type: !68)
!4592 = !DILocalVariable(name: "result", scope: !4588, file: !1231, line: 140, type: !12)
!4593 = !DILocalVariable(name: "length", scope: !4594, file: !1231, line: 154, type: !68)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !1231, line: 153, column: 5)
!4595 = distinct !DILexicalBlock(scope: !4588, file: !1231, line: 142, column: 7)
!4596 = !DILocation(line: 0, scope: !4588, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 274, column: 10, scope: !4579)
!4598 = !DILocalVariable(name: "category", arg: 1, scope: !4599, file: !1231, line: 60, type: !14)
!4599 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1231, file: !1231, line: 60, type: !4600, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1230, retainedNodes: !4602)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!12, !14}
!4602 = !{!4598, !4603}
!4603 = !DILocalVariable(name: "result", scope: !4599, file: !1231, line: 62, type: !12)
!4604 = !DILocation(line: 0, scope: !4599, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 140, column: 24, scope: !4588, inlinedAt: !4597)
!4606 = !DILocation(line: 62, column: 24, scope: !4599, inlinedAt: !4605)
!4607 = !DILocation(line: 142, column: 14, scope: !4595, inlinedAt: !4597)
!4608 = !DILocation(line: 142, column: 7, scope: !4588, inlinedAt: !4597)
!4609 = !DILocation(line: 145, column: 19, scope: !4610, inlinedAt: !4597)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !1231, line: 145, column: 11)
!4611 = distinct !DILexicalBlock(scope: !4595, file: !1231, line: 143, column: 5)
!4612 = !DILocation(line: 145, column: 11, scope: !4611, inlinedAt: !4597)
!4613 = !DILocation(line: 149, column: 16, scope: !4610, inlinedAt: !4597)
!4614 = !DILocation(line: 149, column: 9, scope: !4610, inlinedAt: !4597)
!4615 = !DILocation(line: 154, column: 23, scope: !4594, inlinedAt: !4597)
!4616 = !DILocation(line: 0, scope: !4594, inlinedAt: !4597)
!4617 = !DILocation(line: 155, column: 18, scope: !4618, inlinedAt: !4597)
!4618 = distinct !DILexicalBlock(scope: !4594, file: !1231, line: 155, column: 11)
!4619 = !DILocation(line: 155, column: 11, scope: !4594, inlinedAt: !4597)
!4620 = !DILocation(line: 157, column: 39, scope: !4621, inlinedAt: !4597)
!4621 = distinct !DILexicalBlock(scope: !4618, file: !1231, line: 156, column: 9)
!4622 = !DILocalVariable(name: "__dest", arg: 1, scope: !4623, file: !2530, line: 31, type: !4091)
!4623 = distinct !DISubprogram(name: "memcpy", scope: !2530, file: !2530, line: 31, type: !4089, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1230, retainedNodes: !4624)
!4624 = !{!4622, !4625, !4626}
!4625 = !DILocalVariable(name: "__src", arg: 2, scope: !4623, file: !2530, line: 31, type: !4092)
!4626 = !DILocalVariable(name: "__len", arg: 3, scope: !4623, file: !2530, line: 31, type: !68)
!4627 = !DILocation(line: 0, scope: !4623, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 157, column: 11, scope: !4621, inlinedAt: !4597)
!4629 = !DILocation(line: 34, column: 10, scope: !4623, inlinedAt: !4628)
!4630 = !DILocation(line: 158, column: 11, scope: !4621, inlinedAt: !4597)
!4631 = !DILocation(line: 162, column: 23, scope: !4632, inlinedAt: !4597)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !1231, line: 162, column: 15)
!4633 = distinct !DILexicalBlock(scope: !4618, file: !1231, line: 161, column: 9)
!4634 = !DILocation(line: 162, column: 15, scope: !4633, inlinedAt: !4597)
!4635 = !DILocation(line: 167, column: 44, scope: !4636, inlinedAt: !4597)
!4636 = distinct !DILexicalBlock(scope: !4632, file: !1231, line: 163, column: 13)
!4637 = !DILocation(line: 0, scope: !4623, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 167, column: 15, scope: !4636, inlinedAt: !4597)
!4639 = !DILocation(line: 34, column: 10, scope: !4623, inlinedAt: !4638)
!4640 = !DILocation(line: 168, column: 15, scope: !4636, inlinedAt: !4597)
!4641 = !DILocation(line: 168, column: 32, scope: !4636, inlinedAt: !4597)
!4642 = !DILocation(line: 169, column: 13, scope: !4636, inlinedAt: !4597)
!4643 = !DILocation(line: 0, scope: !4595, inlinedAt: !4597)
!4644 = !DILocation(line: 274, column: 3, scope: !4579)
!4645 = distinct !DISubprogram(name: "setlocale_null", scope: !1231, file: !1231, line: 301, type: !4600, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1230, retainedNodes: !4646)
!4646 = !{!4647}
!4647 = !DILocalVariable(name: "category", arg: 1, scope: !4645, file: !1231, line: 301, type: !14)
!4648 = !DILocation(line: 0, scope: !4645)
!4649 = !DILocation(line: 0, scope: !4599, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 304, column: 10, scope: !4645)
!4651 = !DILocation(line: 62, column: 24, scope: !4599, inlinedAt: !4650)
!4652 = !DILocation(line: 304, column: 3, scope: !4645)
!4653 = distinct !DISubprogram(name: "rpl_fclose", scope: !1234, file: !1234, line: 58, type: !4654, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1233, retainedNodes: !4658)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!14, !4656}
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3752, line: 7, baseType: !1240)
!4658 = !{!4659, !4660, !4661, !4662}
!4659 = !DILocalVariable(name: "fp", arg: 1, scope: !4653, file: !1234, line: 58, type: !4656)
!4660 = !DILocalVariable(name: "saved_errno", scope: !4653, file: !1234, line: 60, type: !14)
!4661 = !DILocalVariable(name: "fd", scope: !4653, file: !1234, line: 61, type: !14)
!4662 = !DILocalVariable(name: "result", scope: !4653, file: !1234, line: 62, type: !14)
!4663 = !DILocation(line: 0, scope: !4653)
!4664 = !DILocation(line: 65, column: 8, scope: !4653)
!4665 = !DILocation(line: 66, column: 10, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4653, file: !1234, line: 66, column: 7)
!4667 = !DILocation(line: 66, column: 7, scope: !4653)
!4668 = !DILocation(line: 67, column: 12, scope: !4666)
!4669 = !DILocation(line: 67, column: 5, scope: !4666)
!4670 = !DILocation(line: 72, column: 9, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4653, file: !1234, line: 72, column: 7)
!4672 = !DILocation(line: 72, column: 23, scope: !4671)
!4673 = !DILocation(line: 72, column: 33, scope: !4671)
!4674 = !DILocation(line: 72, column: 26, scope: !4671)
!4675 = !DILocation(line: 72, column: 59, scope: !4671)
!4676 = !DILocation(line: 73, column: 7, scope: !4671)
!4677 = !DILocation(line: 73, column: 10, scope: !4671)
!4678 = !DILocation(line: 72, column: 7, scope: !4653)
!4679 = !DILocation(line: 100, column: 12, scope: !4653)
!4680 = !DILocation(line: 105, column: 7, scope: !4653)
!4681 = !DILocation(line: 74, column: 19, scope: !4671)
!4682 = !DILocation(line: 105, column: 19, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4653, file: !1234, line: 105, column: 7)
!4684 = !DILocation(line: 107, column: 13, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4683, file: !1234, line: 106, column: 5)
!4686 = !DILocation(line: 109, column: 5, scope: !4685)
!4687 = !DILocation(line: 112, column: 1, scope: !4653)
!4688 = distinct !DISubprogram(name: "rpl_fflush", scope: !1277, file: !1277, line: 129, type: !4689, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1276, retainedNodes: !4693)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!14, !4691}
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3752, line: 7, baseType: !1283)
!4693 = !{!4694}
!4694 = !DILocalVariable(name: "stream", arg: 1, scope: !4688, file: !1277, line: 129, type: !4691)
!4695 = !DILocation(line: 0, scope: !4688)
!4696 = !DILocation(line: 150, column: 14, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4688, file: !1277, line: 150, column: 7)
!4698 = !DILocation(line: 150, column: 22, scope: !4697)
!4699 = !DILocation(line: 150, column: 27, scope: !4697)
!4700 = !DILocation(line: 150, column: 7, scope: !4688)
!4701 = !DILocation(line: 151, column: 12, scope: !4697)
!4702 = !DILocation(line: 151, column: 5, scope: !4697)
!4703 = !DILocalVariable(name: "fp", arg: 1, scope: !4704, file: !1277, line: 41, type: !4691)
!4704 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1277, file: !1277, line: 41, type: !4705, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1276, retainedNodes: !4707)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !4691}
!4707 = !{!4703}
!4708 = !DILocation(line: 0, scope: !4704, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 156, column: 3, scope: !4688)
!4710 = !DILocation(line: 43, column: 11, scope: !4711, inlinedAt: !4709)
!4711 = distinct !DILexicalBlock(scope: !4704, file: !1277, line: 43, column: 7)
!4712 = !DILocation(line: 43, column: 18, scope: !4711, inlinedAt: !4709)
!4713 = !DILocation(line: 43, column: 7, scope: !4704, inlinedAt: !4709)
!4714 = !DILocation(line: 45, column: 5, scope: !4711, inlinedAt: !4709)
!4715 = !DILocation(line: 158, column: 10, scope: !4688)
!4716 = !DILocation(line: 158, column: 3, scope: !4688)
!4717 = !DILocation(line: 235, column: 1, scope: !4688)
!4718 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1318, file: !1318, line: 28, type: !4719, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1317, retainedNodes: !4724)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!14, !4721, !4723, !14}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3752, line: 7, baseType: !1324)
!4723 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !16, line: 63, baseType: !42)
!4724 = !{!4725, !4726, !4727, !4728}
!4725 = !DILocalVariable(name: "fp", arg: 1, scope: !4718, file: !1318, line: 28, type: !4721)
!4726 = !DILocalVariable(name: "offset", arg: 2, scope: !4718, file: !1318, line: 28, type: !4723)
!4727 = !DILocalVariable(name: "whence", arg: 3, scope: !4718, file: !1318, line: 28, type: !14)
!4728 = !DILocalVariable(name: "pos", scope: !4729, file: !1318, line: 117, type: !4723)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !1318, line: 113, column: 5)
!4730 = distinct !DILexicalBlock(scope: !4718, file: !1318, line: 52, column: 7)
!4731 = !DILocation(line: 0, scope: !4718)
!4732 = !DILocation(line: 52, column: 11, scope: !4730)
!4733 = !{!1814, !1396, i64 16}
!4734 = !DILocation(line: 52, column: 31, scope: !4730)
!4735 = !{!1814, !1396, i64 8}
!4736 = !DILocation(line: 52, column: 24, scope: !4730)
!4737 = !DILocation(line: 53, column: 7, scope: !4730)
!4738 = !DILocation(line: 53, column: 14, scope: !4730)
!4739 = !DILocation(line: 53, column: 35, scope: !4730)
!4740 = !{!1814, !1396, i64 32}
!4741 = !DILocation(line: 53, column: 28, scope: !4730)
!4742 = !DILocation(line: 54, column: 7, scope: !4730)
!4743 = !DILocation(line: 54, column: 14, scope: !4730)
!4744 = !{!1814, !1396, i64 72}
!4745 = !DILocation(line: 54, column: 28, scope: !4730)
!4746 = !DILocation(line: 52, column: 7, scope: !4718)
!4747 = !DILocation(line: 117, column: 26, scope: !4729)
!4748 = !DILocation(line: 117, column: 19, scope: !4729)
!4749 = !DILocation(line: 0, scope: !4729)
!4750 = !DILocation(line: 118, column: 15, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4729, file: !1318, line: 118, column: 11)
!4752 = !DILocation(line: 118, column: 11, scope: !4729)
!4753 = !DILocation(line: 129, column: 11, scope: !4729)
!4754 = !DILocation(line: 129, column: 18, scope: !4729)
!4755 = !DILocation(line: 130, column: 11, scope: !4729)
!4756 = !DILocation(line: 130, column: 19, scope: !4729)
!4757 = !{!1814, !1815, i64 144}
!4758 = !DILocation(line: 161, column: 7, scope: !4729)
!4759 = !DILocation(line: 163, column: 10, scope: !4718)
!4760 = !DILocation(line: 163, column: 3, scope: !4718)
!4761 = !DILocation(line: 164, column: 1, scope: !4718)
