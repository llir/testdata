; ModuleID = 'coreutils-8.32/src/chroot.bc'
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
@.str.1 = private unnamed_addr constant [64 x i8] c"Usage: %s [OPTION] NEWROOT [COMMAND [ARG]...]\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Run COMMAND with root directory set to NEWROOT.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [70 x i8] c"  --groups=G_LIST        specify supplementary groups as g1,g2,..,gN\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"  --userspec=USER:GROUP  specify user and group (ID or name) to use\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  --skip-chdir           do not change working directory to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"\0AIf no command is given, run '\22$SHELL\22 -i' (default: '/bin/sh -i').\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_opts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 258 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"Roland McGrath\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"option --skip-chdir only permitted if NEWROOT is old %s\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"cannot change root directory to %s\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"cannot chdir to root directory\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"no group specified for unknown uid: %d\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"failed to get supplemental groups\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"failed to set supplemental groups\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"failed to set group-ID\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"failed to set user-ID\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"invalid group %s\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"invalid group list %s\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"userspec\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"skip-chdir\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), align 8, !dbg !264
@.str.54 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !269
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !312
@.str.57 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.58 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.59 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !315
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !321
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !362
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !433
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !439
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !441
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !448
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !455
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !443
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !457
@.str.3.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.2.96 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.1.97 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.99 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.100 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.101 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.102 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.103 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.104 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.105 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.106 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.107 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.108 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.109 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.110 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.111 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.112 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.113 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.116 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.117 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.118 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.119 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.120 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.121 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.122 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !463
@.str.1.135 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.141 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.142 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.145 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.146 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.155 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.160 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.161 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1271 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1276, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 %0, metadata !1275, metadata !DIExpression()), !dbg !1296
  %3 = icmp eq i32 %0, 0, !dbg !1297
  br i1 %3, label %9, label %4, !dbg !1298

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1299, !tbaa !1301
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1299
  %7 = load i8*, i8** @program_name, align 8, !dbg !1299, !tbaa !1301
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1299
  br label %70, !dbg !1299

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1305
  %11 = load i8*, i8** @program_name, align 8, !dbg !1305, !tbaa !1301
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #18, !dbg !1305
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1306
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1306, !tbaa !1301
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1306
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1307
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1307, !tbaa !1301
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1307
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1308
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1308, !tbaa !1301
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1308
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1309
  %23 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1309
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i8* %23) #18, !dbg !1309
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #18, !dbg !1310
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1310, !tbaa !1301
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1310
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #18, !dbg !1311
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1311, !tbaa !1301
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1311
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 5) #18, !dbg !1312
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1312, !tbaa !1301
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1312
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !1279, metadata !DIExpression()) #18, !dbg !1313
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1314
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #18, !dbg !1314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1292
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !1280, metadata !DIExpression()) #18, !dbg !1313
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1281, metadata !DIExpression()) #18, !dbg !1313
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1315
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1281, metadata !DIExpression()) #18, !dbg !1313
  br label %36, !dbg !1316

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1281, metadata !DIExpression()) #18, !dbg !1313
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %37) #21, !dbg !1317
  %40 = icmp eq i32 %39, 0, !dbg !1317
  br i1 %40, label %46, label %41, !dbg !1316

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !1318
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1281, metadata !DIExpression()) #18, !dbg !1313
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !1319
  %44 = load i8*, i8** %43, align 8, !dbg !1319, !tbaa !1320
  %45 = icmp eq i8* %44, null, !dbg !1322
  br i1 %45, label %46, label %36, !dbg !1323, !llvm.loop !1324

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1281, metadata !DIExpression()) #18, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1281, metadata !DIExpression()) #18, !dbg !1313
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !1325
  %49 = load i8*, i8** %48, align 8, !dbg !1325, !tbaa !1327
  %50 = icmp eq i8* %49, null, !dbg !1328
  %51 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %49, !dbg !1329
  call void @llvm.dbg.value(metadata i8* %51, metadata !1280, metadata !DIExpression()) #18, !dbg !1313
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #18, !dbg !1330
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0)) #18, !dbg !1330
  %54 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %54, metadata !1288, metadata !DIExpression()) #18, !dbg !1313
  %55 = icmp eq i8* %54, null, !dbg !1332
  br i1 %55, label %63, label %56, !dbg !1334

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #21, !dbg !1335
  %58 = icmp eq i32 %57, 0, !dbg !1335
  br i1 %58, label %63, label %59, !dbg !1336

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.42, i64 0, i64 0), i32 5) #18, !dbg !1337
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1337, !tbaa !1301
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #18, !dbg !1337
  br label %63, !dbg !1339

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i32 5) #18, !dbg !1340
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1340
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #18, !dbg !1341
  %67 = icmp eq i8* %51, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), !dbg !1341
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1341
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #18, !dbg !1341
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #18, !dbg !1342
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #22, !dbg !1343
  unreachable, !dbg !1343
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !68 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !78 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !142 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1344 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1348, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8** %1, metadata !1349, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* null, metadata !1351, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* null, metadata !1352, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* null, metadata !1353, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 0, metadata !1354, metadata !DIExpression()), !dbg !1397
  %8 = bitcast i32* %3 to i8*, !dbg !1398
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #18, !dbg !1398
  call void @llvm.dbg.value(metadata i32 -1, metadata !1355, metadata !DIExpression()), !dbg !1397
  store i32 -1, i32* %3, align 4, !dbg !1399, !tbaa !1400
  %9 = bitcast i32* %4 to i8*, !dbg !1402
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i32 -1, metadata !1356, metadata !DIExpression()), !dbg !1397
  store i32 -1, i32* %4, align 4, !dbg !1403, !tbaa !1400
  %10 = bitcast i32** %5 to i8*, !dbg !1404
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #18, !dbg !1404
  call void @llvm.dbg.value(metadata i32* null, metadata !1357, metadata !DIExpression()), !dbg !1397
  store i32* null, i32** %5, align 8, !dbg !1405, !tbaa !1301
  %11 = bitcast i64* %6 to i8*, !dbg !1406
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #18, !dbg !1406
  call void @llvm.dbg.value(metadata i64 0, metadata !1358, metadata !DIExpression()), !dbg !1397
  store i64 0, i64* %6, align 8, !dbg !1407, !tbaa !1408
  %12 = load i8*, i8** %1, align 8, !dbg !1410, !tbaa !1301
  tail call void @set_program_name(i8* %12) #18, !dbg !1411
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !1412
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !1413
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !1414
  call void @llvm.dbg.value(metadata i32 125, metadata !1415, metadata !DIExpression()), !dbg !1418
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !1420, !tbaa !1400
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1422
  br label %17, !dbg !1423

17:                                               ; preds = %24, %2
  %18 = phi i8 [ 0, %2 ], [ 1, %24 ]
  %19 = phi i8* [ null, %2 ], [ %22, %24 ]
  %20 = phi i8* [ null, %2 ], [ %25, %24 ]
  br label %21, !dbg !1423

21:                                               ; preds = %17, %38
  %22 = phi i8* [ %19, %17 ], [ %39, %38 ]
  %23 = phi i8* [ %20, %17 ], [ %25, %38 ]
  br label %24, !dbg !1423

24:                                               ; preds = %36, %21
  %25 = phi i8* [ %23, %21 ], [ %28, %36 ], !dbg !1424
  call void @llvm.dbg.value(metadata i8* %25, metadata !1351, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %22, metadata !1353, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %18, metadata !1354, metadata !DIExpression()), !dbg !1397
  %26 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_opts, i64 0, i64 0), i32* null) #18, !dbg !1425
  call void @llvm.dbg.value(metadata i32 %26, metadata !1350, metadata !DIExpression()), !dbg !1397
  switch i32 %26, label %44 [
    i32 -1, label %45
    i32 257, label %27
    i32 256, label %38
    i32 258, label %17
    i32 -130, label %40
    i32 -131, label %41
  ], !dbg !1423, !llvm.loop !1426

27:                                               ; preds = %24
  %28 = load i8*, i8** @optarg, align 8, !dbg !1428, !tbaa !1301
  call void @llvm.dbg.value(metadata i8* %28, metadata !1351, metadata !DIExpression()), !dbg !1397
  %29 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %28) #21, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %29, metadata !1359, metadata !DIExpression()), !dbg !1430
  %30 = icmp eq i64 %29, 0, !dbg !1431
  br i1 %30, label %36, label %31, !dbg !1433

31:                                               ; preds = %27
  %32 = add i64 %29, -1, !dbg !1434
  %33 = getelementptr inbounds i8, i8* %28, i64 %32, !dbg !1435
  %34 = load i8, i8* %33, align 1, !dbg !1435, !tbaa !1436
  %35 = icmp eq i8 %34, 58, !dbg !1437
  br i1 %35, label %37, label %36, !dbg !1438

36:                                               ; preds = %31, %37, %27
  br label %24, !dbg !1397, !llvm.loop !1426

37:                                               ; preds = %31
  store i8 0, i8* %33, align 1, !dbg !1439, !tbaa !1436
  br label %36, !dbg !1440

38:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %25, metadata !1351, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %25, metadata !1351, metadata !DIExpression()), !dbg !1397
  %39 = load i8*, i8** @optarg, align 8, !dbg !1441, !tbaa !1301
  call void @llvm.dbg.value(metadata i8* %39, metadata !1353, metadata !DIExpression()), !dbg !1397
  br label %21, !dbg !1442, !llvm.loop !1426

40:                                               ; preds = %24
  tail call void @usage(i32 0) #23, !dbg !1443
  unreachable, !dbg !1443

41:                                               ; preds = %24
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1444, !tbaa !1301
  %43 = load i8*, i8** @Version, align 8, !dbg !1444, !tbaa !1301
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* null) #18, !dbg !1444
  tail call void @exit(i32 0) #22, !dbg !1444
  unreachable, !dbg !1444

44:                                               ; preds = %24
  tail call void @usage(i32 125) #23, !dbg !1445
  unreachable, !dbg !1445

45:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %25, metadata !1351, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %25, metadata !1351, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %18, metadata !1354, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %22, metadata !1353, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %25, metadata !1351, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %18, metadata !1354, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %22, metadata !1353, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %25, metadata !1351, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %18, metadata !1354, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %22, metadata !1353, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %25, metadata !1351, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %18, metadata !1354, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %22, metadata !1353, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %25, metadata !1351, metadata !DIExpression()), !dbg !1397
  %46 = load i32, i32* @optind, align 4, !dbg !1446, !tbaa !1400
  %47 = icmp slt i32 %46, %0, !dbg !1448
  br i1 %47, label %50, label %48, !dbg !1449

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 5) #18, !dbg !1450
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49) #18, !dbg !1452
  tail call void @usage(i32 125) #23, !dbg !1453
  unreachable, !dbg !1453

50:                                               ; preds = %45
  %51 = sext i32 %46 to i64, !dbg !1454
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !1454
  %53 = load i8*, i8** %52, align 8, !dbg !1454, !tbaa !1301
  call void @llvm.dbg.value(metadata i8* %53, metadata !1363, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %53, metadata !1455, metadata !DIExpression()) #18, !dbg !1462
  %54 = tail call i8* @canonicalize_file_name(i8* %53) #18, !dbg !1464
  call void @llvm.dbg.value(metadata i8* %54, metadata !1460, metadata !DIExpression()) #18, !dbg !1462
  %55 = icmp eq i8* %54, null, !dbg !1465
  br i1 %55, label %59, label %56, !dbg !1466

56:                                               ; preds = %50
  %57 = tail call i32 @strcmp(i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %54) #21, !dbg !1467
  %58 = icmp eq i32 %57, 0, !dbg !1467
  br label %59

59:                                               ; preds = %50, %56
  %60 = phi i1 [ false, %50 ], [ %58, %56 ], !dbg !1462
  call void @llvm.dbg.value(metadata i1 %60, metadata !1461, metadata !DIExpression()) #18, !dbg !1462
  tail call void @free(i8* %54) #18, !dbg !1468
  call void @llvm.dbg.value(metadata i1 %60, metadata !1364, metadata !DIExpression()), !dbg !1397
  %61 = icmp eq i8 %18, 0, !dbg !1469
  %62 = or i1 %61, %60, !dbg !1471
  br i1 %62, label %66, label %63, !dbg !1471

63:                                               ; preds = %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 5) #18, !dbg !1472
  %65 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1474
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64, i8* %65) #18, !dbg !1475
  tail call void @usage(i32 125) #23, !dbg !1476
  unreachable, !dbg !1476

66:                                               ; preds = %59
  br i1 %60, label %110, label %67, !dbg !1477

67:                                               ; preds = %66
  %68 = icmp eq i8* %25, null, !dbg !1478
  br i1 %68, label %71, label %69, !dbg !1479

69:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32* %3, metadata !1355, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  call void @llvm.dbg.value(metadata i32* %4, metadata !1356, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  %70 = call i8* @parse_user_spec(i8* nonnull %25, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #18, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %70, metadata !1365, metadata !DIExpression()), !dbg !1481
  br label %71, !dbg !1482

71:                                               ; preds = %67, %69
  %72 = load i32, i32* %3, align 4, !dbg !1483, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %72, metadata !1355, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %72, metadata !1484, metadata !DIExpression()), !dbg !1489
  %73 = icmp eq i32 %72, -1, !dbg !1491
  br i1 %73, label %91, label %74, !dbg !1492

74:                                               ; preds = %71
  %75 = icmp eq i8* %22, null, !dbg !1493
  %76 = load i32, i32* %4, align 4, !dbg !1494
  %77 = icmp eq i32 %76, -1, !dbg !1495
  %78 = or i1 %75, %77, !dbg !1502
  br i1 %78, label %79, label %94, !dbg !1502

79:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 %72, metadata !1355, metadata !DIExpression()), !dbg !1397
  %80 = call %struct.passwd* @getpwuid(i32 %72) #18, !dbg !1503
  call void @llvm.dbg.value(metadata %struct.passwd* %80, metadata !1370, metadata !DIExpression()), !dbg !1505
  %81 = icmp eq %struct.passwd* %80, null, !dbg !1506
  br i1 %81, label %91, label %82, !dbg !1507

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4, !dbg !1508, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %83, metadata !1356, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %83, metadata !1500, metadata !DIExpression()), !dbg !1511
  %84 = icmp eq i32 %83, -1, !dbg !1513
  br i1 %84, label %85, label %88, !dbg !1514

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i64 0, i32 3, !dbg !1515
  %87 = load i32, i32* %86, align 4, !dbg !1515, !tbaa !1516
  call void @llvm.dbg.value(metadata i32 %87, metadata !1356, metadata !DIExpression()), !dbg !1397
  store i32 %87, i32* %4, align 4, !dbg !1518, !tbaa !1400
  br label %88, !dbg !1519

88:                                               ; preds = %85, %82
  %89 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i64 0, i32 0, !dbg !1520
  %90 = load i8*, i8** %89, align 8, !dbg !1520, !tbaa !1521
  call void @llvm.dbg.value(metadata i8* %90, metadata !1352, metadata !DIExpression()), !dbg !1397
  br label %91, !dbg !1522

91:                                               ; preds = %88, %79, %71
  %92 = phi i8* [ null, %71 ], [ %90, %88 ], [ null, %79 ], !dbg !1397
  call void @llvm.dbg.value(metadata i8* %92, metadata !1352, metadata !DIExpression()), !dbg !1397
  %93 = icmp eq i8* %22, null, !dbg !1523
  br i1 %93, label %100, label %94, !dbg !1524

94:                                               ; preds = %91, %74
  %95 = phi i8* [ %92, %91 ], [ null, %74 ]
  %96 = load i8, i8* %22, align 1, !dbg !1525, !tbaa !1436
  %97 = icmp eq i8 %96, 0, !dbg !1525
  br i1 %97, label %110, label %98, !dbg !1526

98:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i32** %5, metadata !1357, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  call void @llvm.dbg.value(metadata i64* %6, metadata !1358, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  %99 = call fastcc i32 @parse_additional_groups(i8* nonnull %22, i32** nonnull %5, i64* nonnull %6, i1 zeroext false), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %99, metadata !1375, metadata !DIExpression()), !dbg !1528
  br label %110, !dbg !1529

100:                                              ; preds = %91
  %101 = load i32, i32* %4, align 4, !dbg !1530, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %101, metadata !1356, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %101, metadata !1500, metadata !DIExpression()), !dbg !1531
  %102 = icmp ne i32 %101, -1, !dbg !1533
  %103 = icmp ne i8* %92, null, !dbg !1534
  %104 = and i1 %103, %102, !dbg !1535
  br i1 %104, label %105, label %110, !dbg !1535

105:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i32 %101, metadata !1356, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32** %5, metadata !1357, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  %106 = call i32 @xgetgroups(i8* nonnull %92, i32 %101, i32** nonnull %5) #18, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %106, metadata !1378, metadata !DIExpression()), !dbg !1537
  %107 = icmp sgt i32 %106, 0, !dbg !1538
  br i1 %107, label %108, label %110, !dbg !1540

108:                                              ; preds = %105
  %109 = zext i32 %106 to i64, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %109, metadata !1358, metadata !DIExpression()), !dbg !1397
  store i64 %109, i64* %6, align 8, !dbg !1542, !tbaa !1408
  br label %110, !dbg !1543

110:                                              ; preds = %94, %105, %108, %98, %100, %66
  %111 = phi i8* [ null, %66 ], [ %95, %98 ], [ %92, %100 ], [ %92, %108 ], [ %92, %105 ], [ %95, %94 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8* %111, metadata !1352, metadata !DIExpression()), !dbg !1397
  %112 = call i32 @chroot(i8* %53) #18, !dbg !1545
  %113 = icmp eq i32 %112, 0, !dbg !1547
  br i1 %113, label %119, label %114, !dbg !1548

114:                                              ; preds = %110
  %115 = tail call i32* @__errno_location() #24, !dbg !1549
  %116 = load i32, i32* %115, align 4, !dbg !1549, !tbaa !1400
  %117 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 5) #18, !dbg !1549
  %118 = call i8* @quotearg_style(i32 4, i8* %53) #18, !dbg !1549
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %116, i8* %117, i8* %118) #18, !dbg !1549
  unreachable, !dbg !1549

119:                                              ; preds = %110
  br i1 %61, label %120, label %127, !dbg !1550

120:                                              ; preds = %119
  %121 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1552
  %122 = icmp eq i32 %121, 0, !dbg !1552
  br i1 %122, label %127, label %123, !dbg !1553

123:                                              ; preds = %120
  %124 = tail call i32* @__errno_location() #24, !dbg !1554
  %125 = load i32, i32* %124, align 4, !dbg !1554, !tbaa !1400
  %126 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 5) #18, !dbg !1554
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %125, i8* %126) #18, !dbg !1554
  unreachable, !dbg !1554

127:                                              ; preds = %120, %119
  %128 = load i32, i32* @optind, align 4, !dbg !1555, !tbaa !1400
  %129 = add nsw i32 %128, 1, !dbg !1556
  %130 = icmp eq i32 %129, %0, !dbg !1557
  br i1 %130, label %131, label %137, !dbg !1558

131:                                              ; preds = %127
  %132 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #18, !dbg !1559
  call void @llvm.dbg.value(metadata i8* %132, metadata !1381, metadata !DIExpression()), !dbg !1560
  %133 = icmp eq i8* %132, null, !dbg !1561
  %134 = select i1 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %132, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %134, metadata !1381, metadata !DIExpression()), !dbg !1560
  store i8* %134, i8** %1, align 8, !dbg !1564, !tbaa !1301
  %135 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1565
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %135, align 8, !dbg !1566, !tbaa !1301
  %136 = getelementptr inbounds i8*, i8** %1, i64 2, !dbg !1567
  store i8* null, i8** %136, align 8, !dbg !1568, !tbaa !1301
  br label %140, !dbg !1569

137:                                              ; preds = %127
  %138 = sext i32 %129 to i64, !dbg !1570
  %139 = getelementptr inbounds i8*, i8** %1, i64 %138, !dbg !1570
  call void @llvm.dbg.value(metadata i8** %139, metadata !1349, metadata !DIExpression()), !dbg !1397
  br label %140

140:                                              ; preds = %137, %131
  %141 = phi i8** [ %1, %131 ], [ %139, %137 ]
  call void @llvm.dbg.value(metadata i8** %141, metadata !1349, metadata !DIExpression()), !dbg !1397
  %142 = icmp eq i8* %25, null, !dbg !1572
  br i1 %142, label %155, label %143, !dbg !1573

143:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i32* %3, metadata !1355, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  call void @llvm.dbg.value(metadata i32* %4, metadata !1356, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  %144 = call i8* @parse_user_spec(i8* nonnull %25, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #18, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %144, metadata !1384, metadata !DIExpression()), !dbg !1575
  %145 = icmp eq i8* %144, null, !dbg !1576
  br i1 %145, label %155, label %146, !dbg !1578

146:                                              ; preds = %143
  %147 = load i32, i32* %3, align 4, !dbg !1579, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %147, metadata !1355, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %147, metadata !1484, metadata !DIExpression()), !dbg !1580
  %148 = icmp eq i32 %147, -1, !dbg !1582
  br i1 %148, label %149, label %158, !dbg !1583

149:                                              ; preds = %146
  %150 = load i32, i32* %4, align 4, !dbg !1584, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %150, metadata !1356, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %150, metadata !1500, metadata !DIExpression()), !dbg !1585
  %151 = icmp eq i32 %150, -1, !dbg !1587
  br i1 %151, label %152, label %185, !dbg !1588

152:                                              ; preds = %149
  %153 = tail call i32* @__errno_location() #24, !dbg !1589
  %154 = load i32, i32* %153, align 4, !dbg !1589, !tbaa !1400
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %144) #18, !dbg !1589
  unreachable, !dbg !1589

155:                                              ; preds = %143, %140
  %156 = load i32, i32* %3, align 4, !dbg !1590, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %156, metadata !1355, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %156, metadata !1484, metadata !DIExpression()), !dbg !1591
  %157 = icmp eq i32 %156, -1, !dbg !1593
  br i1 %157, label %185, label %158, !dbg !1594

158:                                              ; preds = %146, %155
  %159 = phi i32 [ %156, %155 ], [ %147, %146 ]
  %160 = icmp eq i8* %22, null, !dbg !1595
  %161 = load i32, i32* %4, align 4, !dbg !1596
  %162 = icmp eq i32 %161, -1, !dbg !1597
  %163 = or i1 %160, %162, !dbg !1599
  br i1 %163, label %167, label %164, !dbg !1599

164:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8* %186, metadata !1352, metadata !DIExpression()), !dbg !1397
  %165 = load i32*, i32** %5, align 8, !dbg !1600, !tbaa !1301
  call void @llvm.dbg.value(metadata i32* %187, metadata !1357, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32* %187, metadata !1390, metadata !DIExpression()), !dbg !1397
  %166 = bitcast i32** %7 to i8*, !dbg !1601
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %166) #18, !dbg !1601
  call void @llvm.dbg.value(metadata i32* null, metadata !1391, metadata !DIExpression()), !dbg !1397
  store i32* null, i32** %7, align 8, !dbg !1602, !tbaa !1301
  br label %190, !dbg !1603

167:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i32 %156, metadata !1355, metadata !DIExpression()), !dbg !1397
  %168 = call %struct.passwd* @getpwuid(i32 %159) #18, !dbg !1604
  call void @llvm.dbg.value(metadata %struct.passwd* %168, metadata !1387, metadata !DIExpression()), !dbg !1606
  %169 = icmp eq %struct.passwd* %168, null, !dbg !1607
  %170 = load i32, i32* %4, align 4, !dbg !1608, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %170, metadata !1356, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %170, metadata !1500, metadata !DIExpression()), !dbg !1609
  %171 = icmp eq i32 %170, -1, !dbg !1611
  br i1 %169, label %179, label %172, !dbg !1612

172:                                              ; preds = %167
  br i1 %171, label %173, label %176, !dbg !1613

173:                                              ; preds = %172
  %174 = getelementptr inbounds %struct.passwd, %struct.passwd* %168, i64 0, i32 3, !dbg !1615
  %175 = load i32, i32* %174, align 4, !dbg !1615, !tbaa !1516
  call void @llvm.dbg.value(metadata i32 %175, metadata !1356, metadata !DIExpression()), !dbg !1397
  store i32 %175, i32* %4, align 4, !dbg !1617, !tbaa !1400
  br label %176, !dbg !1618

176:                                              ; preds = %173, %172
  %177 = getelementptr inbounds %struct.passwd, %struct.passwd* %168, i64 0, i32 0, !dbg !1619
  %178 = load i8*, i8** %177, align 8, !dbg !1619, !tbaa !1521
  call void @llvm.dbg.value(metadata i8* %178, metadata !1352, metadata !DIExpression()), !dbg !1397
  br label %185, !dbg !1620

179:                                              ; preds = %167
  br i1 %171, label %180, label %185, !dbg !1621

180:                                              ; preds = %179
  %181 = tail call i32* @__errno_location() #24, !dbg !1622
  %182 = load i32, i32* %181, align 4, !dbg !1622, !tbaa !1400
  %183 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32 5) #18, !dbg !1622
  %184 = load i32, i32* %3, align 4, !dbg !1622, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %184, metadata !1355, metadata !DIExpression()), !dbg !1397
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %182, i8* %183, i32 %184) #18, !dbg !1622
  unreachable, !dbg !1622

185:                                              ; preds = %149, %176, %179, %155
  %186 = phi i8* [ %111, %155 ], [ %178, %176 ], [ %111, %179 ], [ %111, %149 ], !dbg !1397
  call void @llvm.dbg.value(metadata i8* %186, metadata !1352, metadata !DIExpression()), !dbg !1397
  %187 = load i32*, i32** %5, align 8, !dbg !1600, !tbaa !1301
  call void @llvm.dbg.value(metadata i32* %187, metadata !1357, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32* %187, metadata !1390, metadata !DIExpression()), !dbg !1397
  %188 = bitcast i32** %7 to i8*, !dbg !1601
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %188) #18, !dbg !1601
  call void @llvm.dbg.value(metadata i32* null, metadata !1391, metadata !DIExpression()), !dbg !1397
  store i32* null, i32** %7, align 8, !dbg !1602, !tbaa !1301
  %189 = icmp eq i8* %22, null, !dbg !1625
  br i1 %189, label %205, label %190, !dbg !1603

190:                                              ; preds = %185, %164
  %191 = phi i8* [ %166, %164 ], [ %188, %185 ]
  %192 = phi i32* [ %165, %164 ], [ %187, %185 ]
  %193 = load i8, i8* %22, align 1, !dbg !1626, !tbaa !1436
  %194 = icmp eq i8 %193, 0, !dbg !1626
  br i1 %194, label %227, label %195, !dbg !1627

195:                                              ; preds = %190
  %196 = load i64, i64* %6, align 8, !dbg !1628, !tbaa !1408
  call void @llvm.dbg.value(metadata i64 %196, metadata !1358, metadata !DIExpression()), !dbg !1397
  %197 = icmp eq i64 %196, 0, !dbg !1631
  call void @llvm.dbg.value(metadata i64* %6, metadata !1358, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  call void @llvm.dbg.value(metadata i32** %7, metadata !1391, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  %198 = call fastcc i32 @parse_additional_groups(i8* nonnull %22, i32** nonnull %7, i64* nonnull %6, i1 zeroext %197), !dbg !1632
  %199 = icmp eq i32 %198, 0, !dbg !1633
  br i1 %199, label %203, label %200, !dbg !1634

200:                                              ; preds = %195
  %201 = load i64, i64* %6, align 8, !dbg !1635, !tbaa !1408
  call void @llvm.dbg.value(metadata i64 %201, metadata !1358, metadata !DIExpression()), !dbg !1397
  %202 = icmp eq i64 %201, 0, !dbg !1635
  br i1 %202, label %272, label %227, !dbg !1638

203:                                              ; preds = %195
  %204 = load i32*, i32** %7, align 8, !dbg !1639, !tbaa !1301
  call void @llvm.dbg.value(metadata i32* %204, metadata !1391, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32* %204, metadata !1390, metadata !DIExpression()), !dbg !1397
  br label %227

205:                                              ; preds = %185
  %206 = load i32, i32* %4, align 4, !dbg !1640, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %206, metadata !1356, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %206, metadata !1500, metadata !DIExpression()), !dbg !1641
  %207 = icmp ne i32 %206, -1, !dbg !1643
  %208 = icmp ne i8* %186, null, !dbg !1644
  %209 = and i1 %208, %207, !dbg !1645
  br i1 %209, label %210, label %223, !dbg !1645

210:                                              ; preds = %205
  call void @llvm.dbg.value(metadata i32 %206, metadata !1356, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32** %7, metadata !1391, metadata !DIExpression(DW_OP_deref)), !dbg !1397
  %211 = call i32 @xgetgroups(i8* nonnull %186, i32 %206, i32** nonnull %7) #18, !dbg !1646
  call void @llvm.dbg.value(metadata i32 %211, metadata !1392, metadata !DIExpression()), !dbg !1647
  %212 = icmp slt i32 %211, 1, !dbg !1648
  br i1 %212, label %213, label %220, !dbg !1650

213:                                              ; preds = %210
  %214 = load i64, i64* %6, align 8, !dbg !1651, !tbaa !1408
  call void @llvm.dbg.value(metadata i64 %214, metadata !1358, metadata !DIExpression()), !dbg !1397
  %215 = icmp eq i64 %214, 0, !dbg !1651
  br i1 %215, label %216, label %223, !dbg !1654

216:                                              ; preds = %213
  %217 = tail call i32* @__errno_location() #24, !dbg !1655
  %218 = load i32, i32* %217, align 4, !dbg !1655, !tbaa !1400
  %219 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i32 5) #18, !dbg !1655
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %218, i8* %219) #18, !dbg !1655
  unreachable, !dbg !1655

220:                                              ; preds = %210
  %221 = zext i32 %211 to i64, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %221, metadata !1358, metadata !DIExpression()), !dbg !1397
  store i64 %221, i64* %6, align 8, !dbg !1658, !tbaa !1408
  %222 = load i32*, i32** %7, align 8, !dbg !1659, !tbaa !1301
  call void @llvm.dbg.value(metadata i32* %222, metadata !1391, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32* %222, metadata !1390, metadata !DIExpression()), !dbg !1397
  br label %223

223:                                              ; preds = %220, %213, %205
  %224 = phi i32* [ %187, %205 ], [ %187, %213 ], [ %222, %220 ], !dbg !1397
  call void @llvm.dbg.value(metadata i32* %224, metadata !1390, metadata !DIExpression()), !dbg !1397
  %225 = load i32, i32* %3, align 4, !dbg !1660, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %225, metadata !1355, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %225, metadata !1484, metadata !DIExpression()), !dbg !1662
  %226 = icmp eq i32 %225, -1, !dbg !1664
  br i1 %226, label %237, label %227, !dbg !1665

227:                                              ; preds = %223, %190, %203, %200
  %228 = phi i32* [ %224, %223 ], [ %192, %190 ], [ %204, %203 ], [ %192, %200 ]
  %229 = phi i8* [ %188, %223 ], [ %191, %190 ], [ %191, %203 ], [ %191, %200 ]
  %230 = load i64, i64* %6, align 8, !dbg !1666, !tbaa !1408
  call void @llvm.dbg.value(metadata i64 %230, metadata !1358, metadata !DIExpression()), !dbg !1397
  %231 = call i32 @setgroups(i64 %230, i32* %228) #18, !dbg !1667
  %232 = icmp eq i32 %231, 0, !dbg !1668
  br i1 %232, label %237, label %233, !dbg !1669

233:                                              ; preds = %227
  %234 = tail call i32* @__errno_location() #24, !dbg !1670
  %235 = load i32, i32* %234, align 4, !dbg !1670, !tbaa !1400
  %236 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1670
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %235, i8* %236) #18, !dbg !1670
  unreachable, !dbg !1670

237:                                              ; preds = %223, %227
  %238 = phi i8* [ %229, %227 ], [ %188, %223 ]
  %239 = bitcast i32** %7 to i8**, !dbg !1671
  %240 = load i8*, i8** %239, align 8, !dbg !1671, !tbaa !1301
  call void @llvm.dbg.value(metadata i32* undef, metadata !1391, metadata !DIExpression()), !dbg !1397
  call void @free(i8* %240) #18, !dbg !1672
  %241 = bitcast i32** %5 to i8**, !dbg !1673
  %242 = load i8*, i8** %241, align 8, !dbg !1673, !tbaa !1301
  call void @llvm.dbg.value(metadata i32* undef, metadata !1357, metadata !DIExpression()), !dbg !1397
  call void @free(i8* %242) #18, !dbg !1674
  %243 = load i32, i32* %4, align 4, !dbg !1675, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %243, metadata !1356, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %243, metadata !1500, metadata !DIExpression()), !dbg !1677
  %244 = icmp eq i32 %243, -1, !dbg !1679
  br i1 %244, label %252, label %245, !dbg !1680

245:                                              ; preds = %237
  call void @llvm.dbg.value(metadata i32 %243, metadata !1356, metadata !DIExpression()), !dbg !1397
  %246 = call i32 @setgid(i32 %243) #18, !dbg !1681
  %247 = icmp eq i32 %246, 0, !dbg !1681
  br i1 %247, label %252, label %248, !dbg !1682

248:                                              ; preds = %245
  %249 = tail call i32* @__errno_location() #24, !dbg !1683
  %250 = load i32, i32* %249, align 4, !dbg !1683, !tbaa !1400
  %251 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1683
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %250, i8* %251) #18, !dbg !1683
  unreachable, !dbg !1683

252:                                              ; preds = %245, %237
  %253 = load i32, i32* %3, align 4, !dbg !1684, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %253, metadata !1355, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %253, metadata !1484, metadata !DIExpression()), !dbg !1686
  %254 = icmp eq i32 %253, -1, !dbg !1688
  br i1 %254, label %262, label %255, !dbg !1689

255:                                              ; preds = %252
  call void @llvm.dbg.value(metadata i32 %253, metadata !1355, metadata !DIExpression()), !dbg !1397
  %256 = call i32 @setuid(i32 %253) #18, !dbg !1690
  %257 = icmp eq i32 %256, 0, !dbg !1690
  br i1 %257, label %262, label %258, !dbg !1691

258:                                              ; preds = %255
  %259 = tail call i32* @__errno_location() #24, !dbg !1692
  %260 = load i32, i32* %259, align 4, !dbg !1692, !tbaa !1400
  %261 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i32 5) #18, !dbg !1692
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %260, i8* %261) #18, !dbg !1692
  unreachable, !dbg !1692

262:                                              ; preds = %255, %252
  %263 = load i8*, i8** %141, align 8, !dbg !1693, !tbaa !1301
  %264 = call i32 @execvp(i8* %263, i8** nonnull %141) #18, !dbg !1694
  %265 = tail call i32* @__errno_location() #24, !dbg !1695
  %266 = load i32, i32* %265, align 4, !dbg !1695, !tbaa !1400
  %267 = icmp eq i32 %266, 2, !dbg !1696
  %268 = select i1 %267, i32 127, i32 126, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %268, metadata !1396, metadata !DIExpression()), !dbg !1397
  %269 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 5) #18, !dbg !1697
  %270 = load i8*, i8** %141, align 8, !dbg !1698, !tbaa !1301
  %271 = call i8* @quote(i8* %270) #18, !dbg !1699
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %266, i8* %269, i8* %271) #18, !dbg !1700
  br label %272

272:                                              ; preds = %200, %262
  %273 = phi i8* [ %238, %262 ], [ %191, %200 ]
  %274 = phi i32 [ %268, %262 ], [ 125, %200 ], !dbg !1397
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %273) #18, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #18, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #18, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #18, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #18, !dbg !1701
  ret i32 %274, !dbg !1701
}

; Function Attrs: nounwind
declare !dbg !146 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !149 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !152 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !159 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

declare !dbg !178 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !235 i8* @canonicalize_file_name(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !221 void @free(i8* nocapture) local_unnamed_addr #2

declare !dbg !188 %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_additional_groups(i8* %0, i32** nocapture %1, i64* nocapture %2, i1 zeroext %3) unnamed_addr #8 !dbg !1702 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1706, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32** %1, metadata !1707, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64* %2, metadata !1708, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i1 %3, metadata !1709, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* null, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 0, metadata !1711, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 0, metadata !1712, metadata !DIExpression()), !dbg !1721
  %6 = tail call noalias i8* @xstrdup(i8* %0) #18, !dbg !1722
  call void @llvm.dbg.value(metadata i8* %6, metadata !1713, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 0, metadata !1715, metadata !DIExpression()), !dbg !1721
  %7 = tail call i8* @strtok(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #18, !dbg !1723
  call void @llvm.dbg.value(metadata i8* %7, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 0, metadata !1715, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* null, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 0, metadata !1712, metadata !DIExpression()), !dbg !1721
  %8 = icmp eq i8* %7, null, !dbg !1724
  br i1 %8, label %93, label %9, !dbg !1724

9:                                                ; preds = %4
  %10 = bitcast i64* %5 to i8*, !dbg !1725
  br label %11, !dbg !1724

11:                                               ; preds = %9, %86
  %12 = phi i32 [ 0, %9 ], [ %90, %86 ]
  %13 = phi i8* [ %7, %9 ], [ %91, %86 ]
  %14 = phi i32* [ null, %9 ], [ %89, %86 ]
  %15 = phi i64 [ 0, %9 ], [ %88, %86 ]
  %16 = phi i64 [ 0, %9 ], [ %87, %86 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !1715, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* %13, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %14, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %15, metadata !1712, metadata !DIExpression()), !dbg !1721
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #18, !dbg !1726
  call void @llvm.dbg.value(metadata i64* %5, metadata !1720, metadata !DIExpression(DW_OP_deref)), !dbg !1725
  %17 = call i32 @xstrtoumax(i8* nonnull %13, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !1727
  %18 = icmp eq i32 %17, 0, !dbg !1729
  %19 = load i64, i64* %5, align 8, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %19, metadata !1720, metadata !DIExpression()), !dbg !1725
  %20 = icmp ult i64 %19, 4294967296, !dbg !1731
  %21 = and i1 %18, %20, !dbg !1732
  br i1 %21, label %22, label %43, !dbg !1732

22:                                               ; preds = %11
  %23 = tail call i16** @__ctype_b_loc() #24, !dbg !1733
  %24 = load i16*, i16** %23, align 8, !dbg !1733, !tbaa !1301
  br label %25, !dbg !1735

25:                                               ; preds = %25, %22
  %26 = phi i8* [ %33, %25 ], [ %13, %22 ], !dbg !1736
  call void @llvm.dbg.value(metadata i8* %26, metadata !1714, metadata !DIExpression()), !dbg !1721
  %27 = load i8, i8* %26, align 1, !dbg !1737, !tbaa !1436
  %28 = zext i8 %27 to i64, !dbg !1737
  %29 = getelementptr inbounds i16, i16* %24, i64 %28, !dbg !1737
  %30 = load i16, i16* %29, align 2, !dbg !1737, !tbaa !1738
  %31 = and i16 %30, 8192, !dbg !1737
  %32 = icmp eq i16 %31, 0, !dbg !1735
  %33 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %33, metadata !1714, metadata !DIExpression()), !dbg !1721
  br i1 %32, label %34, label %25, !dbg !1735, !llvm.loop !1741

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8* %26, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* %26, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* %26, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* %26, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* %26, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* %26, metadata !1714, metadata !DIExpression()), !dbg !1721
  %35 = icmp eq i8 %27, 43, !dbg !1742
  br i1 %35, label %56, label %36, !dbg !1744

36:                                               ; preds = %34
  %37 = call %struct.group* @getgrnam(i8* nonnull %26) #18, !dbg !1745
  call void @llvm.dbg.value(metadata %struct.group* %37, metadata !1716, metadata !DIExpression()), !dbg !1725
  %38 = icmp eq %struct.group* %37, null, !dbg !1747
  br i1 %38, label %56, label %39, !dbg !1749

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.group, %struct.group* %37, i64 0, i32 2, !dbg !1750
  %41 = load i32, i32* %40, align 8, !dbg !1750, !tbaa !1751
  %42 = zext i32 %41 to i64, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %42, metadata !1720, metadata !DIExpression()), !dbg !1725
  store i64 %42, i64* %5, align 8, !dbg !1754, !tbaa !1408
  br label %56, !dbg !1755

43:                                               ; preds = %11
  %44 = call %struct.group* @getgrnam(i8* nonnull %13) #18, !dbg !1756
  call void @llvm.dbg.value(metadata %struct.group* %44, metadata !1716, metadata !DIExpression()), !dbg !1725
  %45 = icmp eq %struct.group* %44, null, !dbg !1758
  br i1 %45, label %50, label %46, !dbg !1760

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.group, %struct.group* %44, i64 0, i32 2, !dbg !1761
  %48 = load i32, i32* %47, align 8, !dbg !1761, !tbaa !1751
  %49 = zext i32 %48 to i64, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %49, metadata !1720, metadata !DIExpression()), !dbg !1725
  store i64 %49, i64* %5, align 8, !dbg !1763, !tbaa !1408
  br label %56, !dbg !1764

50:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1716, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8* %13, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 -1, metadata !1715, metadata !DIExpression()), !dbg !1721
  br i1 %3, label %51, label %85, !dbg !1765

51:                                               ; preds = %50
  %52 = tail call i32* @__errno_location() #24, !dbg !1768
  %53 = load i32, i32* %52, align 4, !dbg !1768, !tbaa !1400
  %54 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i32 5) #18, !dbg !1771
  %55 = call i8* @quote(i8* nonnull %13) #18, !dbg !1772
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %53, i8* %54, i8* %55) #18, !dbg !1773
  br label %86, !dbg !1774

56:                                               ; preds = %46, %36, %34, %39
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1716, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8* undef, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %16, metadata !1711, metadata !DIExpression()), !dbg !1721
  %57 = icmp eq i64 %15, %16, !dbg !1775
  br i1 %57, label %58, label %78, !dbg !1777

58:                                               ; preds = %56
  %59 = bitcast i32* %14 to i8*, !dbg !1778
  call void @llvm.dbg.value(metadata i8* %59, metadata !61, metadata !DIExpression()) #18, !dbg !1779
  call void @llvm.dbg.value(metadata i64 4, metadata !63, metadata !DIExpression()) #18, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %16, metadata !64, metadata !DIExpression()) #18, !dbg !1779
  %60 = icmp eq i32* %14, null, !dbg !1781
  br i1 %60, label %61, label %66, !dbg !1783

61:                                               ; preds = %58
  %62 = icmp eq i64 %15, 0, !dbg !1784
  br i1 %62, label %73, label %63, !dbg !1787

63:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 %16, metadata !64, metadata !DIExpression()) #18, !dbg !1779
  %64 = icmp ugt i64 %15, 2305843009213693951, !dbg !1788
  br i1 %64, label %65, label %73, !dbg !1790

65:                                               ; preds = %63
  call void @xalloc_die() #22, !dbg !1791
  unreachable, !dbg !1791

66:                                               ; preds = %58
  %67 = icmp ult i64 %15, 1537228672809129301, !dbg !1792
  br i1 %67, label %69, label %68, !dbg !1795

68:                                               ; preds = %66
  call void @xalloc_die() #22, !dbg !1796
  unreachable, !dbg !1796

69:                                               ; preds = %66
  %70 = lshr i64 %15, 1, !dbg !1797
  %71 = add nuw nsw i64 %15, 1, !dbg !1798
  %72 = add nuw nsw i64 %71, %70, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %72, metadata !64, metadata !DIExpression()) #18, !dbg !1779
  br label %73

73:                                               ; preds = %61, %63, %69
  %74 = phi i64 [ %72, %69 ], [ %15, %63 ], [ 32, %61 ], !dbg !1779
  call void @llvm.dbg.value(metadata i64 %74, metadata !64, metadata !DIExpression()) #18, !dbg !1779
  %75 = shl nuw nsw i64 %74, 2, !dbg !1800
  %76 = call i8* @xrealloc(i8* %59, i64 %75) #18, !dbg !1801
  %77 = bitcast i8* %76 to i32*, !dbg !1778
  call void @llvm.dbg.value(metadata i32* %77, metadata !1710, metadata !DIExpression()), !dbg !1721
  br label %78, !dbg !1802

78:                                               ; preds = %73, %56
  %79 = phi i64 [ %74, %73 ], [ %16, %56 ], !dbg !1721
  %80 = phi i32* [ %77, %73 ], [ %14, %56 ], !dbg !1721
  call void @llvm.dbg.value(metadata i32* %80, metadata !1710, metadata !DIExpression()), !dbg !1721
  %81 = load i64, i64* %5, align 8, !dbg !1803, !tbaa !1408
  call void @llvm.dbg.value(metadata i64 %81, metadata !1720, metadata !DIExpression()), !dbg !1725
  %82 = trunc i64 %81 to i32, !dbg !1803
  %83 = add i64 %15, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %83, metadata !1712, metadata !DIExpression()), !dbg !1721
  %84 = getelementptr inbounds i32, i32* %80, i64 %15, !dbg !1805
  store i32 %82, i32* %84, align 4, !dbg !1806, !tbaa !1400
  br label %86, !dbg !1807

85:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32* %14, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %14, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %14, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %14, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %14, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %15, metadata !1712, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %15, metadata !1712, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %14, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 -1, metadata !1715, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %14, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %15, metadata !1712, metadata !DIExpression()), !dbg !1721
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #18, !dbg !1807
  call void @llvm.dbg.value(metadata i32 %96, metadata !1715, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %95, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %94, metadata !1712, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 %102, metadata !1715, metadata !DIExpression()), !dbg !1721
  store i32* %14, i32** %1, align 8, !dbg !1808, !tbaa !1301
  br label %109, !dbg !1809

86:                                               ; preds = %51, %78
  %87 = phi i64 [ %79, %78 ], [ %16, %51 ]
  %88 = phi i64 [ %83, %78 ], [ %15, %51 ]
  %89 = phi i32* [ %80, %78 ], [ %14, %51 ]
  %90 = phi i32 [ %12, %78 ], [ -1, %51 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !1715, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* undef, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 undef, metadata !1712, metadata !DIExpression()), !dbg !1721
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #18, !dbg !1807
  %91 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #18, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %90, metadata !1715, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* %91, metadata !1714, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %89, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %88, metadata !1712, metadata !DIExpression()), !dbg !1721
  %92 = icmp eq i8* %91, null, !dbg !1724
  br i1 %92, label %93, label %11, !dbg !1724, !llvm.loop !1811

93:                                               ; preds = %86, %4
  %94 = phi i64 [ 0, %4 ], [ %88, %86 ]
  %95 = phi i32* [ null, %4 ], [ %89, %86 ]
  %96 = phi i32 [ 0, %4 ], [ %90, %86 ], !dbg !1721
  call void @llvm.dbg.value(metadata i32 %96, metadata !1715, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32* %95, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %94, metadata !1712, metadata !DIExpression()), !dbg !1721
  %97 = icmp ne i32 %96, 0, !dbg !1813
  %98 = icmp ne i64 %94, 0, !dbg !1815
  %99 = or i1 %98, %97, !dbg !1816
  %100 = xor i1 %3, true, !dbg !1816
  %101 = or i1 %99, %100, !dbg !1816
  %102 = select i1 %99, i32 %96, i32 -1, !dbg !1816
  br i1 %101, label %106, label %103, !dbg !1816

103:                                              ; preds = %93
  %104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i32 5) #18, !dbg !1817
  %105 = call i8* @quote(i8* %0) #18, !dbg !1820
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %104, i8* %105) #18, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %102, metadata !1715, metadata !DIExpression()), !dbg !1721
  store i32* %95, i32** %1, align 8, !dbg !1808, !tbaa !1301
  br label %109, !dbg !1809

106:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i32 %102, metadata !1715, metadata !DIExpression()), !dbg !1721
  store i32* %95, i32** %1, align 8, !dbg !1808, !tbaa !1301
  %107 = icmp eq i32 %102, 0, !dbg !1822
  br i1 %107, label %108, label %109, !dbg !1809

108:                                              ; preds = %106
  store i64 %94, i64* %2, align 8, !dbg !1824, !tbaa !1408
  br label %109, !dbg !1825

109:                                              ; preds = %85, %103, %108, %106
  %110 = phi i32 [ -1, %103 ], [ 0, %108 ], [ %102, %106 ], [ -1, %85 ]
  call void @free(i8* %6) #18, !dbg !1826
  ret i32 %110, !dbg !1827
}

; Function Attrs: nounwind
declare !dbg !209 i32 @chroot(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !213 i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare !dbg !214 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !215 i32 @setgroups(i64, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !224 i32 @setgid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !227 i32 @setuid(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !228 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

declare !dbg !244 %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1830, metadata !DIExpression()), !dbg !1831
  store i8* %0, i8** @file_name, align 8, !dbg !1832, !tbaa !1301
  ret void, !dbg !1833
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1834 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1838, metadata !DIExpression()), !dbg !1839
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1840, !tbaa !1841
  ret void, !dbg !1843
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1844 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1849, !tbaa !1301
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1850
  %3 = icmp eq i32 %2, 0, !dbg !1851
  br i1 %3, label %22, label %4, !dbg !1852

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1853, !tbaa !1841, !range !1854
  %6 = icmp eq i8 %5, 0, !dbg !1853
  br i1 %6, label %11, label %7, !dbg !1855

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1856
  %9 = load i32, i32* %8, align 4, !dbg !1856, !tbaa !1400
  %10 = icmp eq i32 %9, 32, !dbg !1857
  br i1 %10, label %22, label %11, !dbg !1858

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i32 5) #18, !dbg !1859
  call void @llvm.dbg.value(metadata i8* %12, metadata !1846, metadata !DIExpression()), !dbg !1860
  %13 = load i8*, i8** @file_name, align 8, !dbg !1861, !tbaa !1301
  %14 = icmp eq i8* %13, null, !dbg !1861
  %15 = tail call i32* @__errno_location() #24, !dbg !1863
  %16 = load i32, i32* %15, align 4, !dbg !1863, !tbaa !1400
  br i1 %14, label %19, label %17, !dbg !1864

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1865
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.58, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1866
  br label %20, !dbg !1866

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.59, i64 0, i64 0), i8* %12) #18, !dbg !1867
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1868, !tbaa !1400
  tail call void @_exit(i32 %21) #22, !dbg !1869
  unreachable, !dbg !1869

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1870, !tbaa !1301
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1872
  %25 = icmp eq i32 %24, 0, !dbg !1873
  br i1 %25, label %28, label %26, !dbg !1874

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1875, !tbaa !1400
  tail call void @_exit(i32 %27) #22, !dbg !1876
  unreachable, !dbg !1876

28:                                               ; preds = %22
  ret void, !dbg !1877
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1878 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1880, metadata !DIExpression()), !dbg !1883
  %2 = icmp eq i8* %0, null, !dbg !1884
  br i1 %2, label %3, label %6, !dbg !1886

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1887, !tbaa !1301
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1889
  tail call void @abort() #22, !dbg !1890
  unreachable, !dbg !1890

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1891
  call void @llvm.dbg.value(metadata i8* %7, metadata !1881, metadata !DIExpression()), !dbg !1883
  %8 = icmp eq i8* %7, null, !dbg !1892
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1893
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1893
  call void @llvm.dbg.value(metadata i8* %10, metadata !1882, metadata !DIExpression()), !dbg !1883
  %11 = ptrtoint i8* %10 to i64, !dbg !1894
  %12 = ptrtoint i8* %0 to i64, !dbg !1894
  %13 = sub i64 %11, %12, !dbg !1894
  %14 = icmp sgt i64 %13, 6, !dbg !1896
  br i1 %14, label %15, label %24, !dbg !1897

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1898
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #21, !dbg !1899
  %18 = icmp eq i32 %17, 0, !dbg !1900
  br i1 %18, label %19, label %24, !dbg !1901

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1880, metadata !DIExpression()), !dbg !1883
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #21, !dbg !1902
  %21 = icmp eq i32 %20, 0, !dbg !1905
  br i1 %21, label %22, label %24, !dbg !1906

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1907
  call void @llvm.dbg.value(metadata i8* %23, metadata !1880, metadata !DIExpression()), !dbg !1883
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1909, !tbaa !1301
  br label %24, !dbg !1910

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1880, metadata !DIExpression()), !dbg !1883
  store i8* %25, i8** @program_name, align 8, !dbg !1911, !tbaa !1301
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1912, !tbaa !1301
  ret void, !dbg !1913
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1914 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1919, metadata !DIExpression()), !dbg !1922
  %2 = tail call i32* @__errno_location() #24, !dbg !1923
  %3 = load i32, i32* %2, align 4, !dbg !1923, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %3, metadata !1920, metadata !DIExpression()), !dbg !1922
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1924
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1924
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1924
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1925
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1925
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1921, metadata !DIExpression()), !dbg !1922
  store i32 %3, i32* %2, align 4, !dbg !1926, !tbaa !1400
  ret %struct.quoting_options* %8, !dbg !1927
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1928 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1932, metadata !DIExpression()), !dbg !1933
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1934
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1934
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1935
  %5 = load i32, i32* %4, align 8, !dbg !1935, !tbaa !1936
  ret i32 %5, !dbg !1938
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1939 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1943, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 %1, metadata !1944, metadata !DIExpression()), !dbg !1945
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1946
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1946
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1947
  store i32 %1, i32* %5, align 8, !dbg !1948, !tbaa !1936
  ret void, !dbg !1949
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1950 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1954, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %1, metadata !1955, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32 %2, metadata !1956, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8 %1, metadata !1957, metadata !DIExpression()), !dbg !1962
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1963
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1963
  %6 = lshr i8 %1, 5, !dbg !1964
  %7 = zext i8 %6 to i64, !dbg !1964
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1965
  call void @llvm.dbg.value(metadata i32* %8, metadata !1959, metadata !DIExpression()), !dbg !1962
  %9 = and i8 %1, 31, !dbg !1966
  %10 = zext i8 %9 to i32, !dbg !1966
  call void @llvm.dbg.value(metadata i32 %10, metadata !1960, metadata !DIExpression()), !dbg !1962
  %11 = load i32, i32* %8, align 4, !dbg !1967, !tbaa !1400
  %12 = lshr i32 %11, %10, !dbg !1968
  %13 = and i32 %12, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %13, metadata !1961, metadata !DIExpression()), !dbg !1962
  %14 = and i32 %2, 1, !dbg !1970
  %15 = xor i32 %13, %14, !dbg !1971
  %16 = shl i32 %15, %10, !dbg !1972
  %17 = xor i32 %16, %11, !dbg !1973
  store i32 %17, i32* %8, align 4, !dbg !1973, !tbaa !1400
  ret i32 %13, !dbg !1974
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1975 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1979, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i32 %1, metadata !1980, metadata !DIExpression()), !dbg !1982
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1983
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1985
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1979, metadata !DIExpression()), !dbg !1982
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1986
  %6 = load i32, i32* %5, align 4, !dbg !1986, !tbaa !1987
  call void @llvm.dbg.value(metadata i32 %6, metadata !1981, metadata !DIExpression()), !dbg !1982
  store i32 %1, i32* %5, align 4, !dbg !1988, !tbaa !1987
  ret i32 %6, !dbg !1989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1990 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1994, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %1, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %2, metadata !1996, metadata !DIExpression()), !dbg !1997
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1998
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()), !dbg !1997
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2001
  store i32 10, i32* %6, align 8, !dbg !2002, !tbaa !1936
  %7 = icmp ne i8* %1, null, !dbg !2003
  %8 = icmp ne i8* %2, null, !dbg !2005
  %9 = and i1 %7, %8, !dbg !2006
  br i1 %9, label %11, label %10, !dbg !2006

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2007
  unreachable, !dbg !2007

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2008
  store i8* %1, i8** %12, align 8, !dbg !2009, !tbaa !2010
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2011
  store i8* %2, i8** %13, align 8, !dbg !2012, !tbaa !2013
  ret void, !dbg !2014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2019, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64 %1, metadata !2020, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %2, metadata !2021, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64 %3, metadata !2022, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2023, metadata !DIExpression()), !dbg !2027
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2028
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2028
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2024, metadata !DIExpression()), !dbg !2027
  %8 = tail call i32* @__errno_location() #24, !dbg !2029
  %9 = load i32, i32* %8, align 4, !dbg !2029, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %9, metadata !2025, metadata !DIExpression()), !dbg !2027
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2030
  %11 = load i32, i32* %10, align 8, !dbg !2030, !tbaa !1936
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2031
  %13 = load i32, i32* %12, align 4, !dbg !2031, !tbaa !1987
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2032
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2033
  %16 = load i8*, i8** %15, align 8, !dbg !2033, !tbaa !2010
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2034
  %18 = load i8*, i8** %17, align 8, !dbg !2034, !tbaa !2013
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %19, metadata !2026, metadata !DIExpression()), !dbg !2027
  store i32 %9, i32* %8, align 4, !dbg !2036, !tbaa !1400
  ret i64 %19, !dbg !2037
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2038 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2042, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %1, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %2, metadata !2044, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %3, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 %4, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 %5, metadata !2047, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32* %6, metadata !2048, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %7, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %8, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 0, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 0, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* null, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 0, metadata !2055, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2100
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !2101
  %14 = icmp eq i64 %13, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i1 %14, metadata !2057, metadata !DIExpression()), !dbg !2100
  %15 = lshr i32 %5, 1, !dbg !2103
  %16 = trunc i32 %15 to i8, !dbg !2103
  %17 = and i8 %16, 1, !dbg !2103
  call void @llvm.dbg.value(metadata i8 %17, metadata !2058, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 1, metadata !2061, metadata !DIExpression()), !dbg !2100
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2104
  %19 = and i32 %5, 4, !dbg !2106
  %20 = icmp eq i32 %19, 0, !dbg !2106
  %21 = and i32 %5, 1, !dbg !2109
  %22 = icmp eq i32 %21, 0, !dbg !2109
  %23 = bitcast i64* %10 to i8*, !dbg !2112
  %24 = bitcast i32* %12 to i8*, !dbg !2113
  %25 = icmp eq i32* %6, null, !dbg !2114
  br label %26, !dbg !2116

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2117
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2118
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2119
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2120
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2100
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2121
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2122
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2123
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %38, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %37, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %36, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %35, metadata !2058, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %34, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %33, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %32, metadata !2055, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %31, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %30, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 0, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %29, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %28, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 %27, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.label(metadata !2094), !dbg !2124
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
  ], !dbg !2125

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 1, metadata !2058, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %35, metadata !2058, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 5, metadata !2046, metadata !DIExpression()), !dbg !2100
  br label %92, !dbg !2126

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2058, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 5, metadata !2046, metadata !DIExpression()), !dbg !2100
  %42 = and i8 %35, 1, !dbg !2128
  %43 = icmp eq i8 %42, 0, !dbg !2128
  br i1 %43, label %44, label %92, !dbg !2126

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2130
  br i1 %45, label %92, label %46, !dbg !2133

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2130, !tbaa !1436
  br label %92, !dbg !2130

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %27), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %48, metadata !2049, metadata !DIExpression()), !dbg !2100
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %27), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %49, metadata !2050, metadata !DIExpression()), !dbg !2100
  br label %50, !dbg !2139

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %51, metadata !2049, metadata !DIExpression()), !dbg !2100
  %53 = and i8 %35, 1, !dbg !2140
  %54 = icmp eq i8 %53, 0, !dbg !2140
  br i1 %54, label %55, label %70, !dbg !2142

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 0, metadata !2052, metadata !DIExpression()), !dbg !2100
  %56 = load i8, i8* %51, align 1, !dbg !2143, !tbaa !1436
  %57 = icmp eq i8 %56, 0, !dbg !2146
  br i1 %57, label %70, label %58, !dbg !2146

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %61, metadata !2052, metadata !DIExpression()), !dbg !2100
  %62 = icmp ult i64 %61, %39, !dbg !2147
  br i1 %62, label %63, label %65, !dbg !2150

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2147
  store i8 %59, i8* %64, align 1, !dbg !2147, !tbaa !1436
  br label %65, !dbg !2147

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %66, metadata !2052, metadata !DIExpression()), !dbg !2100
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2151
  call void @llvm.dbg.value(metadata i8* %67, metadata !2054, metadata !DIExpression()), !dbg !2100
  %68 = load i8, i8* %67, align 1, !dbg !2143, !tbaa !1436
  %69 = icmp eq i8 %68, 0, !dbg !2146
  br i1 %69, label %70, label %58, !dbg !2146, !llvm.loop !2152

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2154
  call void @llvm.dbg.value(metadata i64 %71, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 1, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %52, metadata !2054, metadata !DIExpression()), !dbg !2100
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %72, metadata !2055, metadata !DIExpression()), !dbg !2100
  br label %92, !dbg !2156

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2056, metadata !DIExpression()), !dbg !2100
  br label %74, !dbg !2157

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2100
  call void @llvm.dbg.value(metadata i8 %75, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 1, metadata !2058, metadata !DIExpression()), !dbg !2100
  br label %76, !dbg !2158

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2120
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2100
  call void @llvm.dbg.value(metadata i8 %78, metadata !2058, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %77, metadata !2056, metadata !DIExpression()), !dbg !2100
  %79 = and i8 %78, 1, !dbg !2159
  %80 = icmp eq i8 %79, 0, !dbg !2159
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2161
  br label %82, !dbg !2161

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2100
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2103
  call void @llvm.dbg.value(metadata i8 %84, metadata !2058, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %83, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  %85 = and i8 %84, 1, !dbg !2162
  %86 = icmp eq i8 %85, 0, !dbg !2162
  br i1 %86, label %87, label %92, !dbg !2164

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2165
  br i1 %88, label %92, label %89, !dbg !2168

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2165, !tbaa !1436
  br label %92, !dbg !2165

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2100
  br label %92, !dbg !2169

91:                                               ; preds = %26
  call void @abort() #22, !dbg !2170
  unreachable, !dbg !2170

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2154
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %40 ], !dbg !2100
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2100
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2100
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2100
  call void @llvm.dbg.value(metadata i8 %100, metadata !2058, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %98, metadata !2055, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %96, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 %93, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 0, metadata !2051, metadata !DIExpression()), !dbg !2100
  %101 = and i8 %99, 1, !dbg !2171
  %102 = icmp ne i8 %101, 0, !dbg !2171
  %103 = icmp ne i32 %93, 2, !dbg !2171
  %104 = and i1 %103, %102, !dbg !2171
  %105 = icmp ne i64 %98, 0, !dbg !2171
  %106 = and i1 %105, %104, !dbg !2171
  %107 = icmp ugt i64 %98, 1, !dbg !2171
  %108 = and i8 %100, 1, !dbg !2173
  %109 = icmp eq i8 %108, 0, !dbg !2173
  %110 = icmp eq i32 %93, 2, !dbg !2176
  %111 = or i1 %103, %109, !dbg !2178
  %112 = icmp ne i8 %108, 0, !dbg !2180
  %113 = and i1 %110, %112, !dbg !2180
  %114 = xor i1 %102, true, !dbg !2181
  %115 = xor i1 %104, true, !dbg !2114
  %116 = and i1 %109, %115, !dbg !2114
  %117 = or i1 %25, %116, !dbg !2114
  %118 = and i8 %99, %100, !dbg !2182
  %119 = and i8 %118, 1, !dbg !2182
  %120 = icmp ne i8 %119, 0, !dbg !2182
  %121 = and i1 %120, %105, !dbg !2182
  br label %122, !dbg !2184

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2185
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2154
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2117
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2121
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2122
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2123
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %126, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %123, metadata !2051, metadata !DIExpression()), !dbg !2100
  %131 = icmp eq i64 %126, -1, !dbg !2186
  br i1 %131, label %132, label %136, !dbg !2187

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2188
  %134 = load i8, i8* %133, align 1, !dbg !2188, !tbaa !1436
  %135 = icmp eq i8 %134, 0, !dbg !2189
  br i1 %135, label %581, label %138, !dbg !2190

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2191
  br i1 %137, label %581, label %138, !dbg !2190

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2067, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2192
  br i1 %106, label %139, label %154, !dbg !2193

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2194
  %141 = and i1 %107, %131, !dbg !2195
  br i1 %141, label %142, label %144, !dbg !2195

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %143, metadata !2045, metadata !DIExpression()), !dbg !2100
  br label %144, !dbg !2197

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2045, metadata !DIExpression()), !dbg !2100
  %146 = icmp ugt i64 %140, %145, !dbg !2198
  br i1 %146, label %154, label %147, !dbg !2199

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2200
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2201
  %150 = icmp ne i32 %149, 0, !dbg !2202
  %151 = or i1 %150, %109, !dbg !2203
  %152 = xor i1 %150, true, !dbg !2203
  %153 = zext i1 %152 to i8, !dbg !2203
  br i1 %151, label %154, label %639, !dbg !2203

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2192
  call void @llvm.dbg.value(metadata i8 %156, metadata !2067, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %155, metadata !2045, metadata !DIExpression()), !dbg !2100
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2204
  %158 = load i8, i8* %157, align 1, !dbg !2204, !tbaa !1436
  call void @llvm.dbg.value(metadata i8 %158, metadata !2062, metadata !DIExpression()), !dbg !2192
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
  ], !dbg !2205

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2206

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2207

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2068, metadata !DIExpression()), !dbg !2192
  %162 = and i8 %127, 1, !dbg !2210
  %163 = icmp eq i8 %162, 0, !dbg !2210
  %164 = and i1 %110, %163, !dbg !2210
  br i1 %164, label %165, label %181, !dbg !2210

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2212
  br i1 %166, label %167, label %169, !dbg !2216

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2212
  store i8 39, i8* %168, align 1, !dbg !2212, !tbaa !1436
  br label %169, !dbg !2212

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %170, metadata !2052, metadata !DIExpression()), !dbg !2100
  %171 = icmp ult i64 %170, %130, !dbg !2217
  br i1 %171, label %172, label %174, !dbg !2220

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2217
  store i8 36, i8* %173, align 1, !dbg !2217, !tbaa !1436
  br label %174, !dbg !2217

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %175, metadata !2052, metadata !DIExpression()), !dbg !2100
  %176 = icmp ult i64 %175, %130, !dbg !2221
  br i1 %176, label %177, label %179, !dbg !2224

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2221
  store i8 39, i8* %178, align 1, !dbg !2221, !tbaa !1436
  br label %179, !dbg !2221

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %180, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2100
  br label %181, !dbg !2225

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2100
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2100
  call void @llvm.dbg.value(metadata i8 %183, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %182, metadata !2052, metadata !DIExpression()), !dbg !2100
  %184 = icmp ult i64 %182, %130, !dbg !2226
  br i1 %184, label %185, label %187, !dbg !2229

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2226
  store i8 92, i8* %186, align 1, !dbg !2226, !tbaa !1436
  br label %187, !dbg !2226

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %188, metadata !2052, metadata !DIExpression()), !dbg !2100
  br i1 %103, label %189, label %463, !dbg !2230

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2232
  %191 = icmp ult i64 %190, %155, !dbg !2233
  br i1 %191, label %192, label %463, !dbg !2234

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2235
  %194 = load i8, i8* %193, align 1, !dbg !2235, !tbaa !1436
  %195 = add i8 %194, -48, !dbg !2236
  %196 = icmp ult i8 %195, 10, !dbg !2236
  br i1 %196, label %197, label %463, !dbg !2236

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2237
  br i1 %198, label %199, label %201, !dbg !2241

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2237
  store i8 48, i8* %200, align 1, !dbg !2237, !tbaa !1436
  br label %201, !dbg !2237

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %202, metadata !2052, metadata !DIExpression()), !dbg !2100
  %203 = icmp ult i64 %202, %130, !dbg !2242
  br i1 %203, label %204, label %206, !dbg !2245

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2242
  store i8 48, i8* %205, align 1, !dbg !2242, !tbaa !1436
  br label %206, !dbg !2242

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %207, metadata !2052, metadata !DIExpression()), !dbg !2100
  br label %463, !dbg !2246

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2247

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2248

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2249

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2250

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2251
  %214 = icmp ult i64 %213, %155, !dbg !2252
  br i1 %214, label %215, label %463, !dbg !2253

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2254
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2255
  %218 = load i8, i8* %217, align 1, !dbg !2255, !tbaa !1436
  %219 = icmp eq i8 %218, 63, !dbg !2256
  br i1 %219, label %220, label %463, !dbg !2257

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2258
  %222 = load i8, i8* %221, align 1, !dbg !2258, !tbaa !1436
  %223 = sext i8 %222 to i32, !dbg !2258
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
  ], !dbg !2259

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2260

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2062, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %213, metadata !2051, metadata !DIExpression()), !dbg !2100
  %226 = icmp ult i64 %124, %130, !dbg !2262
  br i1 %226, label %227, label %229, !dbg !2265

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2262
  store i8 63, i8* %228, align 1, !dbg !2262, !tbaa !1436
  br label %229, !dbg !2262

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %230, metadata !2052, metadata !DIExpression()), !dbg !2100
  %231 = icmp ult i64 %230, %130, !dbg !2266
  br i1 %231, label %232, label %234, !dbg !2269

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2266
  store i8 34, i8* %233, align 1, !dbg !2266, !tbaa !1436
  br label %234, !dbg !2266

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %235, metadata !2052, metadata !DIExpression()), !dbg !2100
  %236 = icmp ult i64 %235, %130, !dbg !2270
  br i1 %236, label %237, label %239, !dbg !2273

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2270
  store i8 34, i8* %238, align 1, !dbg !2270, !tbaa !1436
  br label %239, !dbg !2270

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %240, metadata !2052, metadata !DIExpression()), !dbg !2100
  %241 = icmp ult i64 %240, %130, !dbg !2274
  br i1 %241, label %242, label %244, !dbg !2277

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2274
  store i8 63, i8* %243, align 1, !dbg !2274, !tbaa !1436
  br label %244, !dbg !2274

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %245, metadata !2052, metadata !DIExpression()), !dbg !2100
  br label %463, !dbg !2278

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2066, metadata !DIExpression()), !dbg !2192
  br label %256, !dbg !2279

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2066, metadata !DIExpression()), !dbg !2192
  br label %256, !dbg !2280

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2066, metadata !DIExpression()), !dbg !2192
  br label %254, !dbg !2281

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2066, metadata !DIExpression()), !dbg !2192
  br label %254, !dbg !2282

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2066, metadata !DIExpression()), !dbg !2192
  br label %256, !dbg !2283

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2066, metadata !DIExpression()), !dbg !2192
  br i1 %110, label %252, label %253, !dbg !2284

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2285

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2288

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2289
  call void @llvm.dbg.value(metadata i8 %255, metadata !2066, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.label(metadata !2095), !dbg !2290
  br i1 %111, label %256, label %625, !dbg !2291

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2289
  call void @llvm.dbg.value(metadata i8 %257, metadata !2066, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.label(metadata !2096), !dbg !2293
  br i1 %102, label %488, label %463, !dbg !2294

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2295

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2296, !tbaa !1436
  %261 = icmp eq i8 %260, 0, !dbg !2297
  br i1 %261, label %262, label %463, !dbg !2298

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2299
  br i1 %263, label %264, label %463, !dbg !2301

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2069, metadata !DIExpression()), !dbg !2192
  br label %265, !dbg !2302

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2192
  call void @llvm.dbg.value(metadata i8 %266, metadata !2069, metadata !DIExpression()), !dbg !2192
  br i1 %111, label %463, label %625, !dbg !2303

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 1, metadata !2069, metadata !DIExpression()), !dbg !2192
  br i1 %110, label %268, label %463, !dbg !2304

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2305

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2307
  %271 = icmp ne i64 %125, 0, !dbg !2309
  %272 = or i1 %271, %270, !dbg !2310
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2310
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %274, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %273, metadata !2053, metadata !DIExpression()), !dbg !2100
  %275 = icmp ult i64 %124, %274, !dbg !2311
  br i1 %275, label %276, label %278, !dbg !2314

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2311
  store i8 39, i8* %277, align 1, !dbg !2311, !tbaa !1436
  br label %278, !dbg !2311

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %279, metadata !2052, metadata !DIExpression()), !dbg !2100
  %280 = icmp ult i64 %279, %274, !dbg !2315
  br i1 %280, label %281, label %283, !dbg !2318

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2315
  store i8 92, i8* %282, align 1, !dbg !2315, !tbaa !1436
  br label %283, !dbg !2315

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %284, metadata !2052, metadata !DIExpression()), !dbg !2100
  %285 = icmp ult i64 %284, %274, !dbg !2319
  br i1 %285, label %286, label %288, !dbg !2322

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2319
  store i8 39, i8* %287, align 1, !dbg !2319, !tbaa !1436
  br label %288, !dbg !2319

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %289, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2100
  br label %463, !dbg !2323

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2324

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2070, metadata !DIExpression()), !dbg !2325
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2326
  %293 = load i16*, i16** %292, align 8, !dbg !2326, !tbaa !1301
  %294 = zext i8 %158 to i64, !dbg !2326
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2326
  %296 = load i16, i16* %295, align 2, !dbg !2326, !tbaa !1738
  %297 = lshr i16 %296, 14, !dbg !2328
  %298 = trunc i16 %297 to i8, !dbg !2328
  %299 = and i8 %298, 1, !dbg !2328
  call void @llvm.dbg.value(metadata i8 %299, metadata !2073, metadata !DIExpression()), !dbg !2325
  br label %355, !dbg !2329

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2330
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2074, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %23, metadata !2332, metadata !DIExpression()) #18, !dbg !2340
  call void @llvm.dbg.value(metadata i32 0, metadata !2338, metadata !DIExpression()) #18, !dbg !2340
  call void @llvm.dbg.value(metadata i64 8, metadata !2339, metadata !DIExpression()) #18, !dbg !2340
  store i64 0, i64* %10, align 8, !dbg !2342
  call void @llvm.dbg.value(metadata i64 0, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 1, metadata !2073, metadata !DIExpression()), !dbg !2325
  %301 = icmp eq i64 %155, -1, !dbg !2343
  br i1 %301, label %302, label %304, !dbg !2345

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %303, metadata !2045, metadata !DIExpression()), !dbg !2100
  br label %304, !dbg !2347

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2192
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  br label %306, !dbg !2348

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2349
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2350
  call void @llvm.dbg.value(metadata i8 %308, metadata !2073, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %307, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2351
  %309 = add i64 %307, %123, !dbg !2352
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2353
  %311 = sub i64 %305, %309, !dbg !2354
  call void @llvm.dbg.value(metadata i32* %12, metadata !2080, metadata !DIExpression(DW_OP_deref)), !dbg !2113
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %312, metadata !2083, metadata !DIExpression()), !dbg !2113
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2356

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %307, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %307, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %307, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %307, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %307, metadata !2070, metadata !DIExpression()), !dbg !2325
  %314 = icmp ugt i64 %305, %309, !dbg !2357
  br i1 %314, label %315, label %340, !dbg !2359

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2360
  br label %317, !dbg !2360

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2070, metadata !DIExpression()), !dbg !2325
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2361
  %321 = load i8, i8* %320, align 1, !dbg !2361, !tbaa !1436
  %322 = icmp eq i8 %321, 0, !dbg !2359
  br i1 %322, label %340, label %323, !dbg !2360

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %324, metadata !2070, metadata !DIExpression()), !dbg !2325
  %325 = add i64 %324, %123, !dbg !2363
  %326 = icmp ult i64 %325, %305, !dbg !2357
  br i1 %326, label %317, label %340, !dbg !2359, !llvm.loop !2364

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2365
  %329 = and i1 %113, %328, !dbg !2368
  call void @llvm.dbg.value(metadata i64 1, metadata !2084, metadata !DIExpression()), !dbg !2369
  br i1 %329, label %330, label %343, !dbg !2368

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2084, metadata !DIExpression()), !dbg !2369
  %332 = add i64 %331, %309, !dbg !2370
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2371
  %334 = load i8, i8* %333, align 1, !dbg !2371, !tbaa !1436
  %335 = sext i8 %334 to i32, !dbg !2371
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2372

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %337, metadata !2084, metadata !DIExpression()), !dbg !2369
  %338 = icmp eq i64 %337, %312, !dbg !2365
  br i1 %338, label %343, label %330, !dbg !2374, !llvm.loop !2375

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 %308, metadata !2073, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %307, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 %308, metadata !2073, metadata !DIExpression()), !dbg !2325
  br label %340, !dbg !2377

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2377
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2378, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %344, metadata !2080, metadata !DIExpression()), !dbg !2113
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2380
  %346 = icmp eq i32 %345, 0, !dbg !2380
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2381
  call void @llvm.dbg.value(metadata i8 %347, metadata !2073, metadata !DIExpression()), !dbg !2325
  %348 = add i64 %312, %307, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %348, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 %347, metadata !2073, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %348, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2377
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2383
  %350 = icmp eq i32 %349, 0, !dbg !2384
  br i1 %350, label %306, label %351, !dbg !2385, !llvm.loop !2386

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2388
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 2, metadata !2046, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %99, metadata !2056, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %305, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2388
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2192
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2389
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2389
  call void @llvm.dbg.value(metadata i8 %358, metadata !2073, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %357, metadata !2070, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %356, metadata !2045, metadata !DIExpression()), !dbg !2100
  %359 = and i8 %358, 1, !dbg !2390
  %360 = icmp ne i8 %359, 0, !dbg !2390
  call void @llvm.dbg.value(metadata i8 %359, metadata !2069, metadata !DIExpression()), !dbg !2192
  %361 = icmp ult i64 %357, 2, !dbg !2391
  %362 = or i1 %360, %114, !dbg !2392
  %363 = and i1 %361, %362, !dbg !2393
  br i1 %363, label %463, label %364, !dbg !2393

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %365, metadata !2091, metadata !DIExpression()), !dbg !2395
  br label %366, !dbg !2396

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2185
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2100
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2121
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2192
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2192
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2397
  call void @llvm.dbg.value(metadata i8 %372, metadata !2068, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %371, metadata !2067, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %370, metadata !2062, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %369, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %368, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %367, metadata !2051, metadata !DIExpression()), !dbg !2100
  br i1 %362, label %419, label %373, !dbg !2398

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2403

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2068, metadata !DIExpression()), !dbg !2192
  %375 = and i8 %369, 1, !dbg !2406
  %376 = icmp eq i8 %375, 0, !dbg !2406
  %377 = and i1 %110, %376, !dbg !2406
  br i1 %377, label %378, label %394, !dbg !2406

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2408
  br i1 %379, label %380, label %382, !dbg !2412

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2408
  store i8 39, i8* %381, align 1, !dbg !2408, !tbaa !1436
  br label %382, !dbg !2408

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %383, metadata !2052, metadata !DIExpression()), !dbg !2100
  %384 = icmp ult i64 %383, %130, !dbg !2413
  br i1 %384, label %385, label %387, !dbg !2416

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2413
  store i8 36, i8* %386, align 1, !dbg !2413, !tbaa !1436
  br label %387, !dbg !2413

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %388, metadata !2052, metadata !DIExpression()), !dbg !2100
  %389 = icmp ult i64 %388, %130, !dbg !2417
  br i1 %389, label %390, label %392, !dbg !2420

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2417
  store i8 39, i8* %391, align 1, !dbg !2417, !tbaa !1436
  br label %392, !dbg !2417

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %393, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2100
  br label %394, !dbg !2421

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2100
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2100
  call void @llvm.dbg.value(metadata i8 %396, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %395, metadata !2052, metadata !DIExpression()), !dbg !2100
  %397 = icmp ult i64 %395, %130, !dbg !2422
  br i1 %397, label %398, label %400, !dbg !2425

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2422
  store i8 92, i8* %399, align 1, !dbg !2422, !tbaa !1436
  br label %400, !dbg !2422

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %401, metadata !2052, metadata !DIExpression()), !dbg !2100
  %402 = icmp ult i64 %401, %130, !dbg !2426
  br i1 %402, label %403, label %407, !dbg !2429

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2426
  %405 = or i8 %404, 48, !dbg !2426
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2426
  store i8 %405, i8* %406, align 1, !dbg !2426, !tbaa !1436
  br label %407, !dbg !2426

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %408, metadata !2052, metadata !DIExpression()), !dbg !2100
  %409 = icmp ult i64 %408, %130, !dbg !2430
  br i1 %409, label %410, label %415, !dbg !2433

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2430
  %412 = and i8 %411, 7, !dbg !2430
  %413 = or i8 %412, 48, !dbg !2430
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2430
  store i8 %413, i8* %414, align 1, !dbg !2430, !tbaa !1436
  br label %415, !dbg !2430

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %416, metadata !2052, metadata !DIExpression()), !dbg !2100
  %417 = and i8 %370, 7, !dbg !2434
  %418 = or i8 %417, 48, !dbg !2435
  call void @llvm.dbg.value(metadata i8 %418, metadata !2062, metadata !DIExpression()), !dbg !2192
  br label %428, !dbg !2436

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2437
  %421 = icmp eq i8 %420, 0, !dbg !2437
  br i1 %421, label %428, label %422, !dbg !2439

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2440
  br i1 %423, label %424, label %426, !dbg !2444

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2440
  store i8 92, i8* %425, align 1, !dbg !2440, !tbaa !1436
  br label %426, !dbg !2440

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %427, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2067, metadata !DIExpression()), !dbg !2192
  br label %428, !dbg !2445

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2100
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2121
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2192
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2192
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2192
  call void @llvm.dbg.value(metadata i8 %433, metadata !2068, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %432, metadata !2067, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %431, metadata !2062, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %430, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %429, metadata !2052, metadata !DIExpression()), !dbg !2100
  %434 = add i64 %367, 1, !dbg !2446
  %435 = icmp ugt i64 %365, %434, !dbg !2448
  br i1 %435, label %436, label %526, !dbg !2449

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2450
  %438 = icmp ne i8 %437, 0, !dbg !2450
  %439 = and i8 %433, 1, !dbg !2450
  %440 = icmp eq i8 %439, 0, !dbg !2450
  %441 = and i1 %438, %440, !dbg !2450
  br i1 %441, label %442, label %453, !dbg !2450

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2453
  br i1 %443, label %444, label %446, !dbg !2457

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2453
  store i8 39, i8* %445, align 1, !dbg !2453, !tbaa !1436
  br label %446, !dbg !2453

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %447, metadata !2052, metadata !DIExpression()), !dbg !2100
  %448 = icmp ult i64 %447, %130, !dbg !2458
  br i1 %448, label %449, label %451, !dbg !2461

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2458
  store i8 39, i8* %450, align 1, !dbg !2458, !tbaa !1436
  br label %451, !dbg !2458

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %452, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2100
  br label %453, !dbg !2462

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2463
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2100
  call void @llvm.dbg.value(metadata i8 %455, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %454, metadata !2052, metadata !DIExpression()), !dbg !2100
  %456 = icmp ult i64 %454, %130, !dbg !2464
  br i1 %456, label %457, label %459, !dbg !2467

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2464
  store i8 %431, i8* %458, align 1, !dbg !2464, !tbaa !1436
  br label %459, !dbg !2464

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %460, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %434, metadata !2051, metadata !DIExpression()), !dbg !2100
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2468
  %462 = load i8, i8* %461, align 1, !dbg !2468, !tbaa !1436
  call void @llvm.dbg.value(metadata i8 %462, metadata !2062, metadata !DIExpression()), !dbg !2192
  br label %366, !dbg !2469, !llvm.loop !2470

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2185
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2100
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2117
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2473
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2100
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2100
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2192
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2192
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2192
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %472, metadata !2069, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %471, metadata !2068, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %156, metadata !2067, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %470, metadata !2062, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %469, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %468, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %467, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %466, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %465, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %464, metadata !2051, metadata !DIExpression()), !dbg !2100
  br i1 %117, label %486, label %474, !dbg !2474

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2475
  %476 = zext i8 %475 to i64, !dbg !2475
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2476
  %478 = load i32, i32* %477, align 4, !dbg !2476, !tbaa !1400
  %479 = and i8 %470, 31, !dbg !2477
  %480 = zext i8 %479 to i32, !dbg !2477
  %481 = shl nuw i32 1, %480, !dbg !2478
  %482 = and i32 %478, %481, !dbg !2478
  %483 = icmp eq i32 %482, 0, !dbg !2478
  %484 = icmp eq i8 %156, 0, !dbg !2479
  %485 = and i1 %484, %483, !dbg !2480
  br i1 %485, label %526, label %488, !dbg !2480

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2479
  br i1 %487, label %526, label %488, !dbg !2481

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2482
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2100
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2117
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2473
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2121
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2122
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2192
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2192
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %496, metadata !2069, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %495, metadata !2062, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %494, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %493, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %492, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %491, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %490, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %489, metadata !2051, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.label(metadata !2097), !dbg !2483
  br i1 %109, label %498, label %629, !dbg !2484

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2068, metadata !DIExpression()), !dbg !2192
  %499 = and i8 %493, 1, !dbg !2486
  %500 = icmp eq i8 %499, 0, !dbg !2486
  %501 = and i1 %110, %500, !dbg !2486
  br i1 %501, label %502, label %518, !dbg !2486

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2488
  br i1 %503, label %504, label %506, !dbg !2492

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2488
  store i8 39, i8* %505, align 1, !dbg !2488, !tbaa !1436
  br label %506, !dbg !2488

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %507, metadata !2052, metadata !DIExpression()), !dbg !2100
  %508 = icmp ult i64 %507, %497, !dbg !2493
  br i1 %508, label %509, label %511, !dbg !2496

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2493
  store i8 36, i8* %510, align 1, !dbg !2493, !tbaa !1436
  br label %511, !dbg !2493

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %512, metadata !2052, metadata !DIExpression()), !dbg !2100
  %513 = icmp ult i64 %512, %497, !dbg !2497
  br i1 %513, label %514, label %516, !dbg !2500

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2497
  store i8 39, i8* %515, align 1, !dbg !2497, !tbaa !1436
  br label %516, !dbg !2497

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %517, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2100
  br label %518, !dbg !2501

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2192
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2100
  call void @llvm.dbg.value(metadata i8 %520, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %519, metadata !2052, metadata !DIExpression()), !dbg !2100
  %521 = icmp ult i64 %519, %497, !dbg !2502
  br i1 %521, label %522, label %524, !dbg !2505

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2502
  store i8 92, i8* %523, align 1, !dbg !2502, !tbaa !1436
  br label %524, !dbg !2502

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %525, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %536, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %535, metadata !2069, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %534, metadata !2068, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %533, metadata !2062, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %532, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %531, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %530, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %529, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %528, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %527, metadata !2051, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.label(metadata !2098), !dbg !2506
  br label %553, !dbg !2507

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2482
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2100
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2117
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2473
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2121
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2122
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2510
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2192
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2192
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %535, metadata !2069, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %534, metadata !2068, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %533, metadata !2062, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %532, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %531, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %530, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %529, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %528, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %527, metadata !2051, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.label(metadata !2098), !dbg !2506
  %537 = and i8 %531, 1, !dbg !2507
  %538 = icmp ne i8 %537, 0, !dbg !2507
  %539 = and i8 %534, 1, !dbg !2507
  %540 = icmp eq i8 %539, 0, !dbg !2507
  %541 = and i1 %538, %540, !dbg !2507
  br i1 %541, label %542, label %553, !dbg !2507

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2511
  br i1 %543, label %544, label %546, !dbg !2515

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2511
  store i8 39, i8* %545, align 1, !dbg !2511, !tbaa !1436
  br label %546, !dbg !2511

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %547, metadata !2052, metadata !DIExpression()), !dbg !2100
  %548 = icmp ult i64 %547, %536, !dbg !2516
  br i1 %548, label %549, label %551, !dbg !2519

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2516
  store i8 39, i8* %550, align 1, !dbg !2516, !tbaa !1436
  br label %551, !dbg !2516

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %552, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2100
  br label %553, !dbg !2520

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2192
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2100
  call void @llvm.dbg.value(metadata i8 %562, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %561, metadata !2052, metadata !DIExpression()), !dbg !2100
  %563 = icmp ult i64 %561, %554, !dbg !2521
  br i1 %563, label %564, label %566, !dbg !2524

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2521
  store i8 %556, i8* %565, align 1, !dbg !2521, !tbaa !1436
  br label %566, !dbg !2521

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %567, metadata !2052, metadata !DIExpression()), !dbg !2100
  %568 = and i8 %555, 1, !dbg !2525
  %569 = icmp eq i8 %568, 0, !dbg !2525
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2527
  call void @llvm.dbg.value(metadata i8 %570, metadata !2061, metadata !DIExpression()), !dbg !2100
  br label %571, !dbg !2528

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2482
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2100
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2117
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2473
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2121
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2100
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2123
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %578, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %577, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %576, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %575, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %574, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %573, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %572, metadata !2051, metadata !DIExpression()), !dbg !2100
  %580 = add i64 %572, 1, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %580, metadata !2051, metadata !DIExpression()), !dbg !2100
  br label %122, !dbg !2530, !llvm.loop !2531

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %127, metadata !2059, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %128, metadata !2060, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %129, metadata !2061, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  %583 = icmp eq i64 %124, 0, !dbg !2533
  %584 = and i1 %110, %583, !dbg !2535
  %585 = xor i1 %584, true, !dbg !2535
  %586 = or i1 %109, %585, !dbg !2535
  br i1 %586, label %587, label %629, !dbg !2535

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2536
  %589 = xor i1 %588, true, !dbg !2536
  %590 = and i8 %128, 1, !dbg !2538
  %591 = icmp eq i8 %590, 0, !dbg !2538
  %592 = or i1 %591, %589, !dbg !2536
  br i1 %592, label %602, label %593, !dbg !2536

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2539
  %595 = icmp eq i8 %594, 0, !dbg !2539
  br i1 %595, label %598, label %596, !dbg !2542

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %94, metadata !2049, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %95, metadata !2050, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %125, metadata !2053, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %582, metadata !2045, metadata !DIExpression()), !dbg !2100
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2543
  br label %645, !dbg !2544

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2545
  %600 = icmp ne i64 %125, 0, !dbg !2547
  %601 = and i1 %600, %599, !dbg !2548
  br i1 %601, label %26, label %602, !dbg !2548

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %130, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  %603 = icmp ne i8* %97, null, !dbg !2549
  %604 = and i1 %603, %109, !dbg !2551
  br i1 %604, label %605, label %620, !dbg !2551

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %124, metadata !2052, metadata !DIExpression()), !dbg !2100
  %606 = load i8, i8* %97, align 1, !dbg !2552, !tbaa !1436
  %607 = icmp eq i8 %606, 0, !dbg !2555
  br i1 %607, label %620, label %608, !dbg !2555

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2054, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %611, metadata !2052, metadata !DIExpression()), !dbg !2100
  %612 = icmp ult i64 %611, %130, !dbg !2556
  br i1 %612, label %613, label %615, !dbg !2559

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2556
  store i8 %609, i8* %614, align 1, !dbg !2556, !tbaa !1436
  br label %615, !dbg !2556

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %616, metadata !2052, metadata !DIExpression()), !dbg !2100
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2560
  call void @llvm.dbg.value(metadata i8* %617, metadata !2054, metadata !DIExpression()), !dbg !2100
  %618 = load i8, i8* %617, align 1, !dbg !2552, !tbaa !1436
  %619 = icmp eq i8 %618, 0, !dbg !2555
  br i1 %619, label %620, label %608, !dbg !2555, !llvm.loop !2561

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2154
  call void @llvm.dbg.value(metadata i64 %621, metadata !2052, metadata !DIExpression()), !dbg !2100
  %622 = icmp ult i64 %621, %130, !dbg !2563
  br i1 %622, label %623, label %645, !dbg !2565

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2566
  store i8 0, i8* %624, align 1, !dbg !2567, !tbaa !1436
  br label %645, !dbg !2566

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %630, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.label(metadata !2099), !dbg !2568
  %627 = icmp eq i8 %101, 0, !dbg !2569
  %628 = select i1 %627, i32 2, i32 4, !dbg !2569
  br label %635, !dbg !2569

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2043, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %630, metadata !2045, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.label(metadata !2099), !dbg !2568
  %632 = icmp eq i32 %93, 2, !dbg !2571
  %633 = icmp eq i8 %101, 0, !dbg !2569
  %634 = select i1 %633, i32 2, i32 4, !dbg !2569
  br i1 %632, label %635, label %639, !dbg !2569

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2569

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2046, metadata !DIExpression()), !dbg !2100
  %643 = and i32 %5, -3, !dbg !2572
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2573
  br label %645, !dbg !2574

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2575
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2576 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2580, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %1, metadata !2581, metadata !DIExpression()), !dbg !2584
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %3, metadata !2582, metadata !DIExpression()), !dbg !2584
  %4 = icmp eq i8* %3, %0, !dbg !2586
  br i1 %4, label %5, label %71, !dbg !2588

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2589
  call void @llvm.dbg.value(metadata i8* %6, metadata !2583, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %6, metadata !2590, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8* undef, metadata !2596, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 85, metadata !2597, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 84, metadata !2598, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 70, metadata !2599, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 45, metadata !2600, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 56, metadata !2601, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 0, metadata !2602, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 0, metadata !2603, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 0, metadata !2604, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2606
  %7 = load i8, i8* %6, align 1, !dbg !2609, !tbaa !1436
  %8 = and i8 %7, -33, !dbg !2609
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2609

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2611, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* undef, metadata !2616, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 84, metadata !2617, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 70, metadata !2618, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 45, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 56, metadata !2620, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2621, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2623, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2625
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2629
  %11 = load i8, i8* %10, align 1, !dbg !2629, !tbaa !1436
  %12 = and i8 %11, -33, !dbg !2629
  %13 = icmp eq i8 %12, 84, !dbg !2629
  br i1 %13, label %14, label %68, !dbg !2629

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2631, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* undef, metadata !2636, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 70, metadata !2637, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 45, metadata !2638, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 56, metadata !2639, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2640, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2644
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2648
  %16 = load i8, i8* %15, align 1, !dbg !2648, !tbaa !1436
  %17 = and i8 %16, -33, !dbg !2648
  %18 = icmp eq i8 %17, 70, !dbg !2648
  br i1 %18, label %19, label %68, !dbg !2648

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2650, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8* undef, metadata !2655, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 45, metadata !2656, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 56, metadata !2657, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 0, metadata !2658, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2662
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2666
  %21 = load i8, i8* %20, align 1, !dbg !2666, !tbaa !1436
  %22 = icmp eq i8 %21, 45, !dbg !2666
  br i1 %22, label %23, label %68, !dbg !2668

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2669, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8* undef, metadata !2674, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 56, metadata !2675, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2676, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2677, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2678, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2680
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2684
  %25 = load i8, i8* %24, align 1, !dbg !2684, !tbaa !1436
  %26 = icmp eq i8 %25, 56, !dbg !2684
  br i1 %26, label %27, label %68, !dbg !2686

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2687, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* undef, metadata !2692, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2693, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2694, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2697
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2701
  %29 = load i8, i8* %28, align 1, !dbg !2701, !tbaa !1436
  %30 = icmp eq i8 %29, 0, !dbg !2701
  br i1 %30, label %31, label %68, !dbg !2703

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2704, !tbaa !1436
  %33 = icmp eq i8 %32, 96, !dbg !2705
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2704
  br label %71, !dbg !2706

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2611, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* undef, metadata !2616, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 66, metadata !2617, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 49, metadata !2618, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 56, metadata !2619, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 48, metadata !2620, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 51, metadata !2621, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 48, metadata !2622, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 0, metadata !2623, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2707
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2711
  %37 = load i8, i8* %36, align 1, !dbg !2711, !tbaa !1436
  %38 = and i8 %37, -33, !dbg !2711
  %39 = icmp eq i8 %38, 66, !dbg !2711
  br i1 %39, label %40, label %68, !dbg !2711

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2631, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8* undef, metadata !2636, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 49, metadata !2637, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 56, metadata !2638, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 48, metadata !2639, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 51, metadata !2640, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 48, metadata !2641, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2712
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2714
  %42 = load i8, i8* %41, align 1, !dbg !2714, !tbaa !1436
  %43 = icmp eq i8 %42, 49, !dbg !2714
  br i1 %43, label %44, label %68, !dbg !2715

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2650, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8* undef, metadata !2655, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 56, metadata !2656, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 48, metadata !2657, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 51, metadata !2658, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 48, metadata !2659, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2716
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2718
  %46 = load i8, i8* %45, align 1, !dbg !2718, !tbaa !1436
  %47 = icmp eq i8 %46, 56, !dbg !2718
  br i1 %47, label %48, label %68, !dbg !2719

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2669, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8* undef, metadata !2674, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 48, metadata !2675, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 51, metadata !2676, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 48, metadata !2677, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 0, metadata !2678, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2720
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2722
  %50 = load i8, i8* %49, align 1, !dbg !2722, !tbaa !1436
  %51 = icmp eq i8 %50, 48, !dbg !2722
  br i1 %51, label %52, label %68, !dbg !2723

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2687, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* undef, metadata !2692, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 51, metadata !2693, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 48, metadata !2694, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2724
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2726
  %54 = load i8, i8* %53, align 1, !dbg !2726, !tbaa !1436
  %55 = icmp eq i8 %54, 51, !dbg !2726
  br i1 %55, label %56, label %68, !dbg !2727

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2728, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* undef, metadata !2733, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 48, metadata !2734, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 0, metadata !2736, metadata !DIExpression()), !dbg !2737
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2741
  %58 = load i8, i8* %57, align 1, !dbg !2741, !tbaa !1436
  %59 = icmp eq i8 %58, 48, !dbg !2741
  br i1 %59, label %60, label %68, !dbg !2743

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2744, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* undef, metadata !2749, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, metadata !2750, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, metadata !2751, metadata !DIExpression()), !dbg !2752
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2756
  %62 = load i8, i8* %61, align 1, !dbg !2756, !tbaa !1436
  %63 = icmp eq i8 %62, 0, !dbg !2756
  br i1 %63, label %64, label %68, !dbg !2758

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2759, !tbaa !1436
  %66 = icmp eq i8 %65, 96, !dbg !2760
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2759
  br label %71, !dbg !2761

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2762
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2763
  br label %71, !dbg !2764

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2584
  ret i8* %72, !dbg !2765
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !413 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !415 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2766 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %1, metadata !2771, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2772, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* %0, metadata !2774, metadata !DIExpression()) #18, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %1, metadata !2779, metadata !DIExpression()) #18, !dbg !2787
  call void @llvm.dbg.value(metadata i64* null, metadata !2780, metadata !DIExpression()) #18, !dbg !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2781, metadata !DIExpression()) #18, !dbg !2787
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2789
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2782, metadata !DIExpression()) #18, !dbg !2787
  %6 = tail call i32* @__errno_location() #24, !dbg !2790
  %7 = load i32, i32* %6, align 4, !dbg !2790, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %7, metadata !2783, metadata !DIExpression()) #18, !dbg !2787
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2791
  %9 = load i32, i32* %8, align 4, !dbg !2791, !tbaa !1987
  %10 = or i32 %9, 1, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %10, metadata !2784, metadata !DIExpression()) #18, !dbg !2787
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2793
  %12 = load i32, i32* %11, align 8, !dbg !2793, !tbaa !1936
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2794
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2795
  %15 = load i8*, i8** %14, align 8, !dbg !2795, !tbaa !2010
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2796
  %17 = load i8*, i8** %16, align 8, !dbg !2796, !tbaa !2013
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2797
  %19 = add i64 %18, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %19, metadata !2785, metadata !DIExpression()) #18, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %19, metadata !2799, metadata !DIExpression()) #18, !dbg !2804
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2806
  call void @llvm.dbg.value(metadata i8* %20, metadata !2786, metadata !DIExpression()) #18, !dbg !2787
  %21 = load i32, i32* %11, align 8, !dbg !2807, !tbaa !1936
  %22 = load i8*, i8** %14, align 8, !dbg !2808, !tbaa !2010
  %23 = load i8*, i8** %16, align 8, !dbg !2809, !tbaa !2013
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2810
  store i32 %7, i32* %6, align 4, !dbg !2811, !tbaa !1400
  ret i8* %20, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2775 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2774, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 %1, metadata !2779, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64* %2, metadata !2780, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2781, metadata !DIExpression()), !dbg !2813
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2814
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2814
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2782, metadata !DIExpression()), !dbg !2813
  %7 = tail call i32* @__errno_location() #24, !dbg !2815
  %8 = load i32, i32* %7, align 4, !dbg !2815, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %8, metadata !2783, metadata !DIExpression()), !dbg !2813
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2816
  %10 = load i32, i32* %9, align 4, !dbg !2816, !tbaa !1987
  %11 = icmp ne i64* %2, null, !dbg !2817
  %12 = xor i1 %11, true, !dbg !2817
  %13 = zext i1 %12 to i32, !dbg !2817
  %14 = or i32 %10, %13, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %14, metadata !2784, metadata !DIExpression()), !dbg !2813
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2819
  %16 = load i32, i32* %15, align 8, !dbg !2819, !tbaa !1936
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2820
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2821
  %19 = load i8*, i8** %18, align 8, !dbg !2821, !tbaa !2010
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2822
  %21 = load i8*, i8** %20, align 8, !dbg !2822, !tbaa !2013
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2823
  %23 = add i64 %22, 1, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %23, metadata !2785, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 %23, metadata !2799, metadata !DIExpression()) #18, !dbg !2825
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2827
  call void @llvm.dbg.value(metadata i8* %24, metadata !2786, metadata !DIExpression()), !dbg !2813
  %25 = load i32, i32* %15, align 8, !dbg !2828, !tbaa !1936
  %26 = load i8*, i8** %18, align 8, !dbg !2829, !tbaa !2010
  %27 = load i8*, i8** %20, align 8, !dbg !2830, !tbaa !2013
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2831
  store i32 %8, i32* %7, align 4, !dbg !2832, !tbaa !1400
  br i1 %11, label %29, label %30, !dbg !2833

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2834, !tbaa !1408
  br label %30, !dbg !2836

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2837
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2838 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2842, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2840, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 1, metadata !2841, metadata !DIExpression()), !dbg !2843
  %2 = load i32, i32* @nslots, align 4, !dbg !2844, !tbaa !1400
  %3 = icmp sgt i32 %2, 1, !dbg !2847
  br i1 %3, label %4, label %12, !dbg !2848

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2841, metadata !DIExpression()), !dbg !2843
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2849
  %7 = load i8*, i8** %6, align 8, !dbg !2849, !tbaa !2850
  tail call void @free(i8* %7) #18, !dbg !2852
  %8 = add nuw nsw i64 %5, 1, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %8, metadata !2841, metadata !DIExpression()), !dbg !2843
  %9 = load i32, i32* @nslots, align 4, !dbg !2844, !tbaa !1400
  %10 = sext i32 %9 to i64, !dbg !2847
  %11 = icmp slt i64 %8, %10, !dbg !2847
  br i1 %11, label %4, label %12, !dbg !2848, !llvm.loop !2854

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2856
  %14 = load i8*, i8** %13, align 8, !dbg !2856, !tbaa !2850
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2858
  br i1 %15, label %17, label %16, !dbg !2859

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2860
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2862, !tbaa !2863
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2864, !tbaa !2850
  br label %17, !dbg !2865

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2866
  br i1 %18, label %21, label %19, !dbg !2868

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2869
  tail call void @free(i8* %20) #18, !dbg !2871
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2872, !tbaa !1301
  br label %21, !dbg !2873

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2874, !tbaa !1400
  ret void, !dbg !2875
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2876 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2878, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %1, metadata !2879, metadata !DIExpression()), !dbg !2880
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2881
  ret i8* %3, !dbg !2882
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2883 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2887, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %1, metadata !2888, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %2, metadata !2889, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2890, metadata !DIExpression()), !dbg !2902
  %5 = tail call i32* @__errno_location() #24, !dbg !2903
  %6 = load i32, i32* %5, align 4, !dbg !2903, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %6, metadata !2891, metadata !DIExpression()), !dbg !2902
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2904, !tbaa !1301
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2892, metadata !DIExpression()), !dbg !2902
  %8 = icmp slt i32 %0, 0, !dbg !2905
  br i1 %8, label %9, label %10, !dbg !2907

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2908
  unreachable, !dbg !2908

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2909, !tbaa !1400
  %12 = icmp sgt i32 %11, %0, !dbg !2910
  br i1 %12, label %34, label %13, !dbg !2911

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2912
  call void @llvm.dbg.value(metadata i1 %14, metadata !2893, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2896, metadata !DIExpression()), !dbg !2913
  %15 = icmp eq i32 %0, 2147483647, !dbg !2914
  br i1 %15, label %16, label %17, !dbg !2916

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2917
  unreachable, !dbg !2917

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2918
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2918
  %20 = add nuw nsw i32 %0, 1, !dbg !2919
  %21 = sext i32 %20 to i64, !dbg !2920
  %22 = shl nuw nsw i64 %21, 4, !dbg !2921
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2922
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2922
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2892, metadata !DIExpression()), !dbg !2902
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2923, !tbaa !1301
  br i1 %14, label %25, label %26, !dbg !2924

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2925, !tbaa.struct !2927
  br label %26, !dbg !2928

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2929, !tbaa !1400
  %28 = sext i32 %27 to i64, !dbg !2930
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2930
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2931
  %31 = sub nsw i32 %20, %27, !dbg !2932
  %32 = sext i32 %31 to i64, !dbg !2933
  %33 = shl nsw i64 %32, 4, !dbg !2934
  call void @llvm.dbg.value(metadata i8* %30, metadata !2332, metadata !DIExpression()) #18, !dbg !2935
  call void @llvm.dbg.value(metadata i32 0, metadata !2338, metadata !DIExpression()) #18, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %33, metadata !2339, metadata !DIExpression()) #18, !dbg !2935
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2937
  store i32 %20, i32* @nslots, align 4, !dbg !2938, !tbaa !1400
  br label %34, !dbg !2939

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2902
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2892, metadata !DIExpression()), !dbg !2902
  %36 = zext i32 %0 to i64, !dbg !2940
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2941
  %38 = load i64, i64* %37, align 8, !dbg !2941, !tbaa !2863
  call void @llvm.dbg.value(metadata i64 %38, metadata !2897, metadata !DIExpression()), !dbg !2942
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2943
  %40 = load i8*, i8** %39, align 8, !dbg !2943, !tbaa !2850
  call void @llvm.dbg.value(metadata i8* %40, metadata !2899, metadata !DIExpression()), !dbg !2942
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2944
  %42 = load i32, i32* %41, align 4, !dbg !2944, !tbaa !1987
  %43 = or i32 %42, 1, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %43, metadata !2900, metadata !DIExpression()), !dbg !2942
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2946
  %45 = load i32, i32* %44, align 8, !dbg !2946, !tbaa !1936
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2947
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2948
  %48 = load i8*, i8** %47, align 8, !dbg !2948, !tbaa !2010
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2949
  %50 = load i8*, i8** %49, align 8, !dbg !2949, !tbaa !2013
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %51, metadata !2901, metadata !DIExpression()), !dbg !2942
  %52 = icmp ugt i64 %38, %51, !dbg !2951
  br i1 %52, label %63, label %53, !dbg !2953

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %54, metadata !2897, metadata !DIExpression()), !dbg !2942
  store i64 %54, i64* %37, align 8, !dbg !2956, !tbaa !2863
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2957
  br i1 %55, label %57, label %56, !dbg !2959

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2960
  br label %57, !dbg !2960

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2799, metadata !DIExpression()) #18, !dbg !2961
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2963
  call void @llvm.dbg.value(metadata i8* %58, metadata !2899, metadata !DIExpression()), !dbg !2942
  store i8* %58, i8** %39, align 8, !dbg !2964, !tbaa !2850
  %59 = load i32, i32* %44, align 8, !dbg !2965, !tbaa !1936
  %60 = load i8*, i8** %47, align 8, !dbg !2966, !tbaa !2010
  %61 = load i8*, i8** %49, align 8, !dbg !2967, !tbaa !2013
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2968
  br label %63, !dbg !2969

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2942
  call void @llvm.dbg.value(metadata i8* %64, metadata !2899, metadata !DIExpression()), !dbg !2942
  store i32 %6, i32* %5, align 4, !dbg !2970, !tbaa !1400
  ret i8* %64, !dbg !2971
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2972 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2976, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8* %1, metadata !2977, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %2, metadata !2978, metadata !DIExpression()), !dbg !2979
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2980
  ret i8* %4, !dbg !2981
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2982 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 0, metadata !2878, metadata !DIExpression()) #18, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %0, metadata !2879, metadata !DIExpression()) #18, !dbg !2986
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2988
  ret i8* %2, !dbg !2989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()) #18, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %0, metadata !2977, metadata !DIExpression()) #18, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()) #18, !dbg !2997
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2999
  ret i8* %3, !dbg !3000
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3001 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3005, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 %1, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8* %2, metadata !3007, metadata !DIExpression()), !dbg !3009
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3010
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3010
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3008, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 %1, metadata !3012, metadata !DIExpression()) #18, !dbg !3018
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3017, metadata !DIExpression()) #18, !dbg !3020
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3020, !alias.scope !3021
  %6 = icmp eq i32 %1, 10, !dbg !3024
  br i1 %6, label %7, label %8, !dbg !3026

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3027, !noalias !3021
  unreachable, !dbg !3027

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3028
  store i32 %1, i32* %9, align 8, !dbg !3029, !tbaa !1936, !alias.scope !3021
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3030
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3031
  ret i8* %10, !dbg !3032
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3033 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3037, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %1, metadata !3038, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %2, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %3, metadata !3040, metadata !DIExpression()), !dbg !3042
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3043
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3041, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %1, metadata !3012, metadata !DIExpression()) #18, !dbg !3045
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3017, metadata !DIExpression()) #18, !dbg !3047
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !3047, !alias.scope !3048
  %7 = icmp eq i32 %1, 10, !dbg !3051
  br i1 %7, label %8, label %9, !dbg !3052

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3053, !noalias !3048
  unreachable, !dbg !3053

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3054
  store i32 %1, i32* %10, align 8, !dbg !3055, !tbaa !1936, !alias.scope !3048
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3057
  ret i8* %11, !dbg !3058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3059 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3017, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3008, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %0, metadata !3061, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i8* %1, metadata !3062, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()) #18, !dbg !3068
  call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()) #18, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %1, metadata !3007, metadata !DIExpression()) #18, !dbg !3068
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3069
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %0, metadata !3012, metadata !DIExpression()) #18, !dbg !3070
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !3063, !alias.scope !3071
  %5 = icmp eq i32 %0, 10, !dbg !3074
  br i1 %5, label %6, label %7, !dbg !3075

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !3076, !noalias !3071
  unreachable, !dbg !3076

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3077
  store i32 %0, i32* %8, align 8, !dbg !3078, !tbaa !1936, !alias.scope !3071
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3079
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3080
  ret i8* %9, !dbg !3081
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3082 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3017, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3041, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 %0, metadata !3086, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8* %1, metadata !3087, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %2, metadata !3088, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 0, metadata !3037, metadata !DIExpression()) #18, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %0, metadata !3038, metadata !DIExpression()) #18, !dbg !3094
  call void @llvm.dbg.value(metadata i8* %1, metadata !3039, metadata !DIExpression()) #18, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %2, metadata !3040, metadata !DIExpression()) #18, !dbg !3094
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3095
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %0, metadata !3012, metadata !DIExpression()) #18, !dbg !3096
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3089, !alias.scope !3097
  %6 = icmp eq i32 %0, 10, !dbg !3100
  br i1 %6, label %7, label %8, !dbg !3101

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3102, !noalias !3097
  unreachable, !dbg !3102

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3103
  store i32 %0, i32* %9, align 8, !dbg !3104, !tbaa !1936, !alias.scope !3097
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !3105
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3106
  ret i8* %10, !dbg !3107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3108 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3112, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i8 %2, metadata !3114, metadata !DIExpression()), !dbg !3116
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3117
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3117
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3115, metadata !DIExpression()), !dbg !3118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3119, !tbaa.struct !3120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1954, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8 %2, metadata !1955, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 1, metadata !1956, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8 %2, metadata !1957, metadata !DIExpression()), !dbg !3121
  %6 = lshr i8 %2, 5, !dbg !3123
  %7 = zext i8 %6 to i64, !dbg !3123
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3124
  call void @llvm.dbg.value(metadata i32* %8, metadata !1959, metadata !DIExpression()), !dbg !3121
  %9 = and i8 %2, 31, !dbg !3125
  %10 = zext i8 %9 to i32, !dbg !3125
  call void @llvm.dbg.value(metadata i32 %10, metadata !1960, metadata !DIExpression()), !dbg !3121
  %11 = load i32, i32* %8, align 4, !dbg !3126, !tbaa !1400
  %12 = lshr i32 %11, %10, !dbg !3127
  %13 = and i32 %12, 1, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %13, metadata !1961, metadata !DIExpression()), !dbg !3121
  %14 = xor i32 %13, 1, !dbg !3129
  %15 = shl i32 %14, %10, !dbg !3130
  %16 = xor i32 %15, %11, !dbg !3131
  store i32 %16, i32* %8, align 4, !dbg !3131, !tbaa !1400
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3132
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3133
  ret i8* %17, !dbg !3134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3135 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3115, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %0, metadata !3139, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8 %1, metadata !3140, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8* %0, metadata !3112, metadata !DIExpression()) #18, !dbg !3144
  call void @llvm.dbg.value(metadata i64 -1, metadata !3113, metadata !DIExpression()) #18, !dbg !3144
  call void @llvm.dbg.value(metadata i8 %1, metadata !3114, metadata !DIExpression()) #18, !dbg !3144
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3145
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3146, !tbaa.struct !3120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1954, metadata !DIExpression()) #18, !dbg !3147
  call void @llvm.dbg.value(metadata i8 %1, metadata !1955, metadata !DIExpression()) #18, !dbg !3147
  call void @llvm.dbg.value(metadata i32 1, metadata !1956, metadata !DIExpression()) #18, !dbg !3147
  call void @llvm.dbg.value(metadata i8 %1, metadata !1957, metadata !DIExpression()) #18, !dbg !3147
  %5 = lshr i8 %1, 5, !dbg !3149
  %6 = zext i8 %5 to i64, !dbg !3149
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3150
  call void @llvm.dbg.value(metadata i32* %7, metadata !1959, metadata !DIExpression()) #18, !dbg !3147
  %8 = and i8 %1, 31, !dbg !3151
  %9 = zext i8 %8 to i32, !dbg !3151
  call void @llvm.dbg.value(metadata i32 %9, metadata !1960, metadata !DIExpression()) #18, !dbg !3147
  %10 = load i32, i32* %7, align 4, !dbg !3152, !tbaa !1400
  %11 = lshr i32 %10, %9, !dbg !3153
  %12 = and i32 %11, 1, !dbg !3154
  call void @llvm.dbg.value(metadata i32 %12, metadata !1961, metadata !DIExpression()) #18, !dbg !3147
  %13 = xor i32 %12, 1, !dbg !3155
  %14 = shl i32 %13, %9, !dbg !3156
  %15 = xor i32 %14, %10, !dbg !3157
  store i32 %15, i32* %7, align 4, !dbg !3157, !tbaa !1400
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3158
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3159
  ret i8* %16, !dbg !3160
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3161 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3115, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8* %0, metadata !3163, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i8* %0, metadata !3139, metadata !DIExpression()) #18, !dbg !3168
  call void @llvm.dbg.value(metadata i8 58, metadata !3140, metadata !DIExpression()) #18, !dbg !3168
  call void @llvm.dbg.value(metadata i8* %0, metadata !3112, metadata !DIExpression()) #18, !dbg !3169
  call void @llvm.dbg.value(metadata i64 -1, metadata !3113, metadata !DIExpression()) #18, !dbg !3169
  call void @llvm.dbg.value(metadata i8 58, metadata !3114, metadata !DIExpression()) #18, !dbg !3169
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3171, !tbaa.struct !3120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1954, metadata !DIExpression()) #18, !dbg !3172
  call void @llvm.dbg.value(metadata i8 58, metadata !1955, metadata !DIExpression()) #18, !dbg !3172
  call void @llvm.dbg.value(metadata i32 1, metadata !1956, metadata !DIExpression()) #18, !dbg !3172
  call void @llvm.dbg.value(metadata i8 58, metadata !1957, metadata !DIExpression()) #18, !dbg !3172
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3174
  call void @llvm.dbg.value(metadata i32* %4, metadata !1959, metadata !DIExpression()) #18, !dbg !3172
  call void @llvm.dbg.value(metadata i32 26, metadata !1960, metadata !DIExpression()) #18, !dbg !3172
  %5 = load i32, i32* %4, align 4, !dbg !3175, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %5, metadata !1961, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3172
  %6 = or i32 %5, 67108864, !dbg !3176
  store i32 %6, i32* %4, align 4, !dbg !3176, !tbaa !1400
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !3177
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3178
  ret i8* %7, !dbg !3179
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3180 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3115, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i8* %0, metadata !3182, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %1, metadata !3183, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %0, metadata !3112, metadata !DIExpression()) #18, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()) #18, !dbg !3187
  call void @llvm.dbg.value(metadata i8 58, metadata !3114, metadata !DIExpression()) #18, !dbg !3187
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3188
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3189, !tbaa.struct !3120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1954, metadata !DIExpression()) #18, !dbg !3190
  call void @llvm.dbg.value(metadata i8 58, metadata !1955, metadata !DIExpression()) #18, !dbg !3190
  call void @llvm.dbg.value(metadata i32 1, metadata !1956, metadata !DIExpression()) #18, !dbg !3190
  call void @llvm.dbg.value(metadata i8 58, metadata !1957, metadata !DIExpression()) #18, !dbg !3190
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3192
  call void @llvm.dbg.value(metadata i32* %5, metadata !1959, metadata !DIExpression()) #18, !dbg !3190
  call void @llvm.dbg.value(metadata i32 26, metadata !1960, metadata !DIExpression()) #18, !dbg !3190
  %6 = load i32, i32* %5, align 4, !dbg !3193, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %6, metadata !1961, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3190
  %7 = or i32 %6, 67108864, !dbg !3194
  store i32 %7, i32* %5, align 4, !dbg !3194, !tbaa !1400
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !3195
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3196
  ret i8* %8, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3198 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3204
  call void @llvm.dbg.value(metadata i32 %0, metadata !3200, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %1, metadata !3201, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8* %2, metadata !3202, metadata !DIExpression()), !dbg !3206
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3207
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3207
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3203, metadata !DIExpression()), !dbg !3208
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3209
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %1, metadata !3012, metadata !DIExpression()) #18, !dbg !3210
  call void @llvm.dbg.value(metadata i32 0, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3210
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3204, !alias.scope !3211
  %8 = icmp eq i32 %1, 10, !dbg !3214
  br i1 %8, label %9, label %10, !dbg !3215

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3216, !noalias !3211
  unreachable, !dbg !3216

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3017, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3210
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3209
  store i32 %1, i32* %11, align 8, !dbg !3209, !tbaa.struct !3120
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3209
  %13 = bitcast i32* %12 to i8*, !dbg !3209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3209, !tbaa.struct !3120
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1954, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i8 58, metadata !1955, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 1, metadata !1956, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i8 58, metadata !1957, metadata !DIExpression()), !dbg !3217
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3219
  call void @llvm.dbg.value(metadata i32* %14, metadata !1959, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 26, metadata !1960, metadata !DIExpression()), !dbg !3217
  %15 = load i32, i32* %14, align 4, !dbg !3220, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %15, metadata !1961, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3217
  %16 = or i32 %15, 67108864, !dbg !3221
  store i32 %16, i32* %14, align 4, !dbg !3221, !tbaa !1400
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3222
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3223
  ret i8* %17, !dbg !3224
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3225 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3233, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 %0, metadata !3229, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %1, metadata !3230, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %2, metadata !3231, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %3, metadata !3232, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 %0, metadata !3238, metadata !DIExpression()) #18, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %1, metadata !3239, metadata !DIExpression()) #18, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %2, metadata !3240, metadata !DIExpression()) #18, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %3, metadata !3241, metadata !DIExpression()) #18, !dbg !3246
  call void @llvm.dbg.value(metadata i64 -1, metadata !3242, metadata !DIExpression()) #18, !dbg !3246
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3247
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3248, !tbaa.struct !3120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()) #18, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %1, metadata !1995, metadata !DIExpression()) #18, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %2, metadata !1996, metadata !DIExpression()) #18, !dbg !3249
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()) #18, !dbg !3249
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3251
  store i32 10, i32* %7, align 8, !dbg !3252, !tbaa !1936
  %8 = icmp ne i8* %1, null, !dbg !3253
  %9 = icmp ne i8* %2, null, !dbg !3254
  %10 = and i1 %8, %9, !dbg !3255
  br i1 %10, label %12, label %11, !dbg !3255

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3256
  unreachable, !dbg !3256

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3257
  store i8* %1, i8** %13, align 8, !dbg !3258, !tbaa !2010
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3259
  store i8* %2, i8** %14, align 8, !dbg !3260, !tbaa !2013
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3261
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3262
  ret i8* %15, !dbg !3263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3234 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3238, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* %1, metadata !3239, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* %2, metadata !3240, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8* %3, metadata !3241, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %4, metadata !3242, metadata !DIExpression()), !dbg !3264
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3265
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3265
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3233, metadata !DIExpression()), !dbg !3266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3267, !tbaa.struct !3120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1994, metadata !DIExpression()) #18, !dbg !3268
  call void @llvm.dbg.value(metadata i8* %1, metadata !1995, metadata !DIExpression()) #18, !dbg !3268
  call void @llvm.dbg.value(metadata i8* %2, metadata !1996, metadata !DIExpression()) #18, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1994, metadata !DIExpression()) #18, !dbg !3268
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3270
  store i32 10, i32* %8, align 8, !dbg !3271, !tbaa !1936
  %9 = icmp ne i8* %1, null, !dbg !3272
  %10 = icmp ne i8* %2, null, !dbg !3273
  %11 = and i1 %9, %10, !dbg !3274
  br i1 %11, label %13, label %12, !dbg !3274

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3275
  unreachable, !dbg !3275

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3276
  store i8* %1, i8** %14, align 8, !dbg !3277, !tbaa !2010
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3278
  store i8* %2, i8** %15, align 8, !dbg !3279, !tbaa !2013
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3280
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3281
  ret i8* %16, !dbg !3282
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3283 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3233, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %0, metadata !3287, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %1, metadata !3288, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %2, metadata !3289, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i32 0, metadata !3229, metadata !DIExpression()) #18, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %0, metadata !3230, metadata !DIExpression()) #18, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %1, metadata !3231, metadata !DIExpression()) #18, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %2, metadata !3232, metadata !DIExpression()) #18, !dbg !3294
  call void @llvm.dbg.value(metadata i32 0, metadata !3238, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %1, metadata !3240, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %2, metadata !3241, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i64 -1, metadata !3242, metadata !DIExpression()) #18, !dbg !3295
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3296
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3297, !tbaa.struct !3120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1994, metadata !DIExpression()) #18, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %0, metadata !1995, metadata !DIExpression()) #18, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %1, metadata !1996, metadata !DIExpression()) #18, !dbg !3298
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1994, metadata !DIExpression()) #18, !dbg !3298
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3300
  store i32 10, i32* %6, align 8, !dbg !3301, !tbaa !1936
  %7 = icmp ne i8* %0, null, !dbg !3302
  %8 = icmp ne i8* %1, null, !dbg !3303
  %9 = and i1 %7, %8, !dbg !3304
  br i1 %9, label %11, label %10, !dbg !3304

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3305
  unreachable, !dbg !3305

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3306
  store i8* %0, i8** %12, align 8, !dbg !3307, !tbaa !2010
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3308
  store i8* %1, i8** %13, align 8, !dbg !3309, !tbaa !2013
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3310
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3311
  ret i8* %14, !dbg !3312
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3313 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3233, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* %0, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %1, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %2, metadata !3319, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %3, metadata !3320, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32 0, metadata !3238, metadata !DIExpression()) #18, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()) #18, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %1, metadata !3240, metadata !DIExpression()) #18, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %2, metadata !3241, metadata !DIExpression()) #18, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %3, metadata !3242, metadata !DIExpression()) #18, !dbg !3324
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3326, !tbaa.struct !3120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()) #18, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %0, metadata !1995, metadata !DIExpression()) #18, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %1, metadata !1996, metadata !DIExpression()) #18, !dbg !3327
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1994, metadata !DIExpression()) #18, !dbg !3327
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3329
  store i32 10, i32* %7, align 8, !dbg !3330, !tbaa !1936
  %8 = icmp ne i8* %0, null, !dbg !3331
  %9 = icmp ne i8* %1, null, !dbg !3332
  %10 = and i1 %8, %9, !dbg !3333
  br i1 %10, label %12, label %11, !dbg !3333

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3334
  unreachable, !dbg !3334

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3335
  store i8* %0, i8** %13, align 8, !dbg !3336, !tbaa !2010
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3337
  store i8* %1, i8** %14, align 8, !dbg !3338, !tbaa !2013
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3339
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3340
  ret i8* %15, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3342 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3346, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* %1, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %2, metadata !3348, metadata !DIExpression()), !dbg !3349
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3350
  ret i8* %4, !dbg !3351
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3352 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %1, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 0, metadata !3346, metadata !DIExpression()) #18, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %0, metadata !3347, metadata !DIExpression()) #18, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3348, metadata !DIExpression()) #18, !dbg !3359
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3361
  ret i8* %3, !dbg !3362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3367, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8* %1, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 %0, metadata !3346, metadata !DIExpression()) #18, !dbg !3370
  call void @llvm.dbg.value(metadata i8* %1, metadata !3347, metadata !DIExpression()) #18, !dbg !3370
  call void @llvm.dbg.value(metadata i64 -1, metadata !3348, metadata !DIExpression()) #18, !dbg !3370
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3372
  ret i8* %3, !dbg !3373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3374 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i32 0, metadata !3367, metadata !DIExpression()) #18, !dbg !3378
  call void @llvm.dbg.value(metadata i8* %0, metadata !3368, metadata !DIExpression()) #18, !dbg !3378
  call void @llvm.dbg.value(metadata i32 0, metadata !3346, metadata !DIExpression()) #18, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %0, metadata !3347, metadata !DIExpression()) #18, !dbg !3380
  call void @llvm.dbg.value(metadata i64 -1, metadata !3348, metadata !DIExpression()) #18, !dbg !3380
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3382
  ret i8* %2, !dbg !3383
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @parse_user_spec(i8* %0, i32* nocapture %1, i32* %2, i8** %3, i8** %4) local_unnamed_addr #8 !dbg !3384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3388, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32* %1, metadata !3389, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32* %2, metadata !3390, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8** %3, metadata !3391, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8** %4, metadata !3392, metadata !DIExpression()), !dbg !3398
  %6 = icmp eq i32* %2, null, !dbg !3399
  br i1 %6, label %9, label %7, !dbg !3399

7:                                                ; preds = %5
  %8 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 58) #21, !dbg !3400
  br label %9, !dbg !3399

9:                                                ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !3399
  call void @llvm.dbg.value(metadata i8* %10, metadata !3393, metadata !DIExpression()), !dbg !3398
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !3401
  call void @llvm.dbg.value(metadata i8* %11, metadata !3394, metadata !DIExpression()), !dbg !3398
  %12 = icmp ne i32* %2, null, !dbg !3402
  %13 = icmp eq i8* %10, null, !dbg !3403
  %14 = and i1 %12, %13, !dbg !3404
  %15 = icmp ne i8* %11, null, !dbg !3405
  %16 = and i1 %14, %15, !dbg !3404
  br i1 %16, label %17, label %24, !dbg !3404

17:                                               ; preds = %9
  %18 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 46) #21, !dbg !3406
  call void @llvm.dbg.value(metadata i8* %18, metadata !3395, metadata !DIExpression()), !dbg !3407
  %19 = icmp eq i8* %18, null, !dbg !3408
  br i1 %19, label %24, label %20, !dbg !3410

20:                                               ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !3411
  %22 = icmp eq i8* %21, null, !dbg !3411
  %23 = select i1 %22, i8* null, i8* %11, !dbg !3412
  ret i8* %23, !dbg !3412

24:                                               ; preds = %17, %9
  call void @llvm.dbg.value(metadata i8* %11, metadata !3394, metadata !DIExpression()), !dbg !3398
  ret i8* %11, !dbg !3413
}

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8* %0, i8* %1, i32* nocapture %2, i32* %3, i8** %4, i8** %5) unnamed_addr #8 !dbg !511 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !517, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %1, metadata !518, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32* %2, metadata !519, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32* %3, metadata !520, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8** %4, metadata !521, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8** %5, metadata !522, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* null, metadata !528, metadata !DIExpression()), !dbg !3414
  %10 = load i32, i32* %2, align 4, !dbg !3415, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %10, metadata !529, metadata !DIExpression()), !dbg !3414
  %11 = icmp ne i32* %3, null, !dbg !3416
  br i1 %11, label %12, label %14, !dbg !3416

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3417, !tbaa !1400
  br label %14, !dbg !3416

14:                                               ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3416
  call void @llvm.dbg.value(metadata i32 %15, metadata !530, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* null, metadata !523, metadata !DIExpression()), !dbg !3414
  %16 = icmp ne i8** %4, null, !dbg !3418
  br i1 %16, label %17, label %18, !dbg !3420

17:                                               ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3421, !tbaa !1301
  br label %18, !dbg !3422

18:                                               ; preds = %17, %14
  %19 = icmp ne i8** %5, null, !dbg !3423
  br i1 %19, label %20, label %21, !dbg !3425

20:                                               ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3426, !tbaa !1301
  br label %21, !dbg !3427

21:                                               ; preds = %20, %18
  call void @llvm.dbg.value(metadata i8* null, metadata !526, metadata !DIExpression()), !dbg !3414
  %22 = icmp eq i8* %1, null, !dbg !3428
  br i1 %22, label %23, label %28, !dbg !3429

23:                                               ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3430, !tbaa !1436
  %25 = icmp eq i8 %24, 0, !dbg !3430
  br i1 %25, label %137, label %26, !dbg !3433

26:                                               ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #18, !dbg !3434
  call void @llvm.dbg.value(metadata i8* %27, metadata !526, metadata !DIExpression()), !dbg !3414
  br label %43, !dbg !3435

28:                                               ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3436
  %30 = ptrtoint i8* %0 to i64, !dbg !3436
  %31 = sub i64 %29, %30, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %31, metadata !531, metadata !DIExpression()), !dbg !3437
  %32 = icmp eq i64 %31, 0, !dbg !3438
  br i1 %32, label %37, label %33, !dbg !3440

33:                                               ; preds = %28
  %34 = add i64 %31, 1, !dbg !3441
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %35, metadata !526, metadata !DIExpression()), !dbg !3414
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3444
  store i8 0, i8* %36, align 1, !dbg !3445, !tbaa !1436
  br label %37, !dbg !3446

37:                                               ; preds = %28, %33
  %38 = phi i8* [ %35, %33 ], [ null, %28 ], !dbg !3414
  call void @llvm.dbg.value(metadata i8* %38, metadata !526, metadata !DIExpression()), !dbg !3414
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3447
  %40 = load i8, i8* %39, align 1, !dbg !3448, !tbaa !1436
  %41 = icmp eq i8 %40, 0, !dbg !3449
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3450
  br label %43, !dbg !3450

43:                                               ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3450
  call void @llvm.dbg.value(metadata i8* %45, metadata !527, metadata !DIExpression()), !dbg !3414
  %46 = icmp eq i8* %44, null, !dbg !3451
  br i1 %46, label %97, label %47, !dbg !3452

47:                                               ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3453, !tbaa !1436
  %49 = icmp eq i8 %48, 43, !dbg !3454
  br i1 %49, label %53, label %50, !dbg !3453

50:                                               ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3455
  call void @llvm.dbg.value(metadata %struct.passwd* %51, metadata !524, metadata !DIExpression()), !dbg !3414
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3456
  br i1 %52, label %53, label %71, !dbg !3457

53:                                               ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3458
  %55 = icmp eq i8* %45, null, !dbg !3459
  %56 = and i1 %54, %55, !dbg !3459
  call void @llvm.dbg.value(metadata i1 %56, metadata !534, metadata !DIExpression()), !dbg !3460
  br i1 %56, label %92, label %57, !dbg !3461

57:                                               ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3462
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #18, !dbg !3462
  call void @llvm.dbg.value(metadata i64* %7, metadata !539, metadata !DIExpression(DW_OP_deref)), !dbg !3463
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.94, i64 0, i64 0)) #18, !dbg !3464
  %60 = icmp eq i32 %59, 0, !dbg !3466
  %61 = load i64, i64* %7, align 8, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %61, metadata !539, metadata !DIExpression()), !dbg !3463
  %62 = icmp ult i64 %61, 4294967296, !dbg !3468
  %63 = and i1 %60, %62, !dbg !3469
  br i1 %63, label %64, label %67, !dbg !3469

64:                                               ; preds = %57
  %65 = trunc i64 %61 to i32, !dbg !3470
  %66 = icmp eq i32 %65, -1, !dbg !3471
  br i1 %66, label %67, label %68, !dbg !3472

67:                                               ; preds = %64, %57
  br label %68

68:                                               ; preds = %64, %67
  %69 = phi i32 [ %10, %67 ], [ %65, %64 ], !dbg !3414
  %70 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i64 0, i64 0), %67 ], [ null, %64 ], !dbg !3414
  call void @llvm.dbg.value(metadata i8* %70, metadata !523, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %69, metadata !529, metadata !DIExpression()), !dbg !3414
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #18, !dbg !3473
  br label %92

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3474
  %73 = load i32, i32* %72, align 8, !dbg !3474, !tbaa !3475
  call void @llvm.dbg.value(metadata i32 %73, metadata !529, metadata !DIExpression()), !dbg !3414
  %74 = icmp eq i8* %45, null, !dbg !3476
  %75 = icmp ne i8* %1, null, !dbg !3477
  %76 = and i1 %75, %74, !dbg !3478
  br i1 %76, label %77, label %92, !dbg !3478

77:                                               ; preds = %71
  %78 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3479
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %78) #18, !dbg !3479
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !542, metadata !DIExpression()), !dbg !3480
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3481
  %80 = load i32, i32* %79, align 4, !dbg !3481, !tbaa !1516
  call void @llvm.dbg.value(metadata i32 %80, metadata !530, metadata !DIExpression()), !dbg !3414
  %81 = tail call %struct.group* @getgrgid(i32 %80) #18, !dbg !3482
  call void @llvm.dbg.value(metadata %struct.group* %81, metadata !525, metadata !DIExpression()), !dbg !3414
  %82 = icmp eq %struct.group* %81, null, !dbg !3483
  br i1 %82, label %86, label %83, !dbg !3483

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.group, %struct.group* %81, i64 0, i32 0, !dbg !3484
  %85 = load i8*, i8** %84, align 8, !dbg !3484, !tbaa !3485
  br label %89, !dbg !3483

86:                                               ; preds = %77
  %87 = zext i32 %80 to i64, !dbg !3486
  %88 = call i8* @umaxtostr(i64 %87, i8* nonnull %78) #18, !dbg !3487
  br label %89, !dbg !3483

89:                                               ; preds = %86, %83
  %90 = phi i8* [ %85, %83 ], [ %88, %86 ], !dbg !3483
  %91 = call noalias i8* @xstrdup(i8* %90) #18, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %91, metadata !528, metadata !DIExpression()), !dbg !3414
  call void @endgrent() #18, !dbg !3489
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %78) #18, !dbg !3490
  br label %92, !dbg !3491

92:                                               ; preds = %68, %53, %71, %89
  %93 = phi i8* [ %91, %89 ], [ null, %71 ], [ null, %53 ], [ null, %68 ], !dbg !3414
  %94 = phi i32 [ %73, %89 ], [ %73, %71 ], [ %10, %53 ], [ %69, %68 ], !dbg !3414
  %95 = phi i32 [ %80, %89 ], [ %15, %71 ], [ %15, %53 ], [ %15, %68 ], !dbg !3414
  %96 = phi i8* [ null, %89 ], [ null, %71 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.96, i64 0, i64 0), %53 ], [ %70, %68 ], !dbg !3414
  call void @llvm.dbg.value(metadata i8* %96, metadata !523, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %95, metadata !530, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %94, metadata !529, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %93, metadata !528, metadata !DIExpression()), !dbg !3414
  call void @endpwent() #18, !dbg !3492
  br label %97, !dbg !3493

97:                                               ; preds = %43, %92
  %98 = phi i8* [ %93, %92 ], [ null, %43 ], !dbg !3494
  %99 = phi i32 [ %94, %92 ], [ %10, %43 ], !dbg !3495
  %100 = phi i32 [ %95, %92 ], [ %15, %43 ], !dbg !3496
  %101 = phi i8* [ %96, %92 ], [ null, %43 ], !dbg !3414
  call void @llvm.dbg.value(metadata i8* %101, metadata !523, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %100, metadata !530, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %99, metadata !529, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %98, metadata !528, metadata !DIExpression()), !dbg !3414
  %102 = icmp ne i8* %45, null, !dbg !3497
  %103 = icmp eq i8* %101, null, !dbg !3498
  %104 = and i1 %102, %103, !dbg !3499
  br i1 %104, label %105, label %132, !dbg !3499

105:                                              ; preds = %97
  %106 = load i8, i8* %45, align 1, !dbg !3500, !tbaa !1436
  %107 = icmp eq i8 %106, 43, !dbg !3501
  br i1 %107, label %111, label %108, !dbg !3500

108:                                              ; preds = %105
  %109 = call %struct.group* @getgrnam(i8* nonnull %45) #18, !dbg !3502
  call void @llvm.dbg.value(metadata %struct.group* %109, metadata !525, metadata !DIExpression()), !dbg !3414
  %110 = icmp eq %struct.group* %109, null, !dbg !3503
  br i1 %110, label %111, label %125, !dbg !3504

111:                                              ; preds = %105, %108
  %112 = bitcast i64* %9 to i8*, !dbg !3505
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #18, !dbg !3505
  call void @llvm.dbg.value(metadata i64* %9, metadata !549, metadata !DIExpression(DW_OP_deref)), !dbg !3506
  %113 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.94, i64 0, i64 0)) #18, !dbg !3507
  %114 = icmp eq i32 %113, 0, !dbg !3509
  %115 = load i64, i64* %9, align 8, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %115, metadata !549, metadata !DIExpression()), !dbg !3506
  %116 = icmp ult i64 %115, 4294967296, !dbg !3511
  %117 = and i1 %114, %116, !dbg !3512
  br i1 %117, label %118, label %121, !dbg !3512

118:                                              ; preds = %111
  %119 = trunc i64 %115 to i32, !dbg !3513
  %120 = icmp eq i32 %119, -1, !dbg !3514
  br i1 %120, label %121, label %122, !dbg !3515

121:                                              ; preds = %118, %111
  br label %122

122:                                              ; preds = %118, %121
  %123 = phi i32 [ %100, %121 ], [ %119, %118 ], !dbg !3414
  %124 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.97, i64 0, i64 0), %121 ], [ null, %118 ], !dbg !3414
  call void @llvm.dbg.value(metadata i8* %124, metadata !523, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %123, metadata !530, metadata !DIExpression()), !dbg !3414
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #18, !dbg !3516
  br label %128, !dbg !3517

125:                                              ; preds = %108
  %126 = getelementptr inbounds %struct.group, %struct.group* %109, i64 0, i32 2, !dbg !3518
  %127 = load i32, i32* %126, align 8, !dbg !3518, !tbaa !1751
  call void @llvm.dbg.value(metadata i32 %127, metadata !530, metadata !DIExpression()), !dbg !3414
  br label %128

128:                                              ; preds = %125, %122
  %129 = phi i32 [ %123, %122 ], [ %127, %125 ], !dbg !3519
  %130 = phi i8* [ %124, %122 ], [ null, %125 ], !dbg !3520
  call void @llvm.dbg.value(metadata i8* %130, metadata !523, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %129, metadata !530, metadata !DIExpression()), !dbg !3414
  call void @endgrent() #18, !dbg !3522
  %131 = call noalias i8* @xstrdup(i8* nonnull %45) #18, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %131, metadata !528, metadata !DIExpression()), !dbg !3414
  br label %132, !dbg !3524

132:                                              ; preds = %128, %97
  %133 = phi i8* [ %131, %128 ], [ %98, %97 ], !dbg !3414
  %134 = phi i32 [ %129, %128 ], [ %100, %97 ], !dbg !3414
  %135 = phi i8* [ %130, %128 ], [ %101, %97 ], !dbg !3520
  call void @llvm.dbg.value(metadata i8* %135, metadata !523, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %134, metadata !530, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %133, metadata !528, metadata !DIExpression()), !dbg !3414
  %136 = icmp eq i8* %135, null, !dbg !3525
  br i1 %136, label %137, label %148, !dbg !3527

137:                                              ; preds = %23, %132
  %138 = phi i32 [ %134, %132 ], [ %15, %23 ]
  %139 = phi i8* [ %133, %132 ], [ null, %23 ]
  %140 = phi i8* [ %44, %132 ], [ null, %23 ]
  %141 = phi i32 [ %99, %132 ], [ %10, %23 ]
  store i32 %141, i32* %2, align 4, !dbg !3528, !tbaa !1400
  br i1 %11, label %142, label %143, !dbg !3530

142:                                              ; preds = %137
  store i32 %138, i32* %3, align 4, !dbg !3531, !tbaa !1400
  br label %143, !dbg !3533

143:                                              ; preds = %142, %137
  br i1 %16, label %144, label %145, !dbg !3534

144:                                              ; preds = %143
  store i8* %140, i8** %4, align 8, !dbg !3535, !tbaa !1301
  call void @llvm.dbg.value(metadata i8* null, metadata !526, metadata !DIExpression()), !dbg !3414
  br label %145, !dbg !3538

145:                                              ; preds = %144, %143
  %146 = phi i8* [ null, %144 ], [ %140, %143 ], !dbg !3414
  call void @llvm.dbg.value(metadata i8* %146, metadata !526, metadata !DIExpression()), !dbg !3414
  br i1 %19, label %147, label %148, !dbg !3539

147:                                              ; preds = %145
  store i8* %139, i8** %5, align 8, !dbg !3540, !tbaa !1301
  call void @llvm.dbg.value(metadata i8* null, metadata !528, metadata !DIExpression()), !dbg !3414
  br label %148, !dbg !3543

148:                                              ; preds = %145, %147, %132
  %149 = phi i1 [ true, %147 ], [ true, %145 ], [ false, %132 ]
  %150 = phi i8* [ null, %147 ], [ null, %145 ], [ %135, %132 ]
  %151 = phi i8* [ %146, %147 ], [ %146, %145 ], [ %44, %132 ], !dbg !3414
  %152 = phi i8* [ null, %147 ], [ %139, %145 ], [ %133, %132 ], !dbg !3414
  call void @llvm.dbg.value(metadata i8* %152, metadata !528, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %151, metadata !526, metadata !DIExpression()), !dbg !3414
  call void @free(i8* %151) #18, !dbg !3544
  call void @free(i8* %152) #18, !dbg !3545
  br i1 %149, label %155, label %153, !dbg !3546

153:                                              ; preds = %148
  %154 = call i8* @dcgettext(i8* null, i8* nonnull %150, i32 5) #18, !dbg !3547
  br label %155, !dbg !3546

155:                                              ; preds = %148, %153
  %156 = phi i8* [ %154, %153 ], [ null, %148 ], !dbg !3546
  ret i8* %156, !dbg !3548
}

; Function Attrs: nofree nounwind
declare !dbg !475 %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #4

declare !dbg !489 %struct.group* @getgrgid(i32) local_unnamed_addr #3

declare !dbg !503 void @endgrent() local_unnamed_addr #3

declare !dbg !504 void @endpwent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3549 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3557, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i8* %1, metadata !3558, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i8* %2, metadata !3559, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i8* %3, metadata !3560, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i8** %4, metadata !3561, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i64 %5, metadata !3562, metadata !DIExpression()), !dbg !3563
  %7 = icmp eq i8* %1, null, !dbg !3564
  br i1 %7, label %10, label %8, !dbg !3566

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3567
  br label %12, !dbg !3567

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.99, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3568
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.100, i64 0, i64 0), i32 5) #18, !dbg !3569
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3569
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.101, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3570
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.102, i64 0, i64 0), i32 5) #18, !dbg !3571
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.103, i64 0, i64 0)) #18, !dbg !3571
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.101, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3572
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
  ], !dbg !3573

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.104, i64 0, i64 0), i32 5) #18, !dbg !3574
  %21 = load i8*, i8** %4, align 8, !dbg !3574, !tbaa !1301
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3574
  br label %147, !dbg !3576

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.105, i64 0, i64 0), i32 5) #18, !dbg !3577
  %25 = load i8*, i8** %4, align 8, !dbg !3577, !tbaa !1301
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3577
  %27 = load i8*, i8** %26, align 8, !dbg !3577, !tbaa !1301
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3577
  br label %147, !dbg !3578

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.106, i64 0, i64 0), i32 5) #18, !dbg !3579
  %31 = load i8*, i8** %4, align 8, !dbg !3579, !tbaa !1301
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3579
  %33 = load i8*, i8** %32, align 8, !dbg !3579, !tbaa !1301
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3579
  %35 = load i8*, i8** %34, align 8, !dbg !3579, !tbaa !1301
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3579
  br label %147, !dbg !3580

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.107, i64 0, i64 0), i32 5) #18, !dbg !3581
  %39 = load i8*, i8** %4, align 8, !dbg !3581, !tbaa !1301
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3581
  %41 = load i8*, i8** %40, align 8, !dbg !3581, !tbaa !1301
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3581
  %43 = load i8*, i8** %42, align 8, !dbg !3581, !tbaa !1301
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3581
  %45 = load i8*, i8** %44, align 8, !dbg !3581, !tbaa !1301
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3581
  br label %147, !dbg !3582

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.108, i64 0, i64 0), i32 5) #18, !dbg !3583
  %49 = load i8*, i8** %4, align 8, !dbg !3583, !tbaa !1301
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3583
  %51 = load i8*, i8** %50, align 8, !dbg !3583, !tbaa !1301
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3583
  %53 = load i8*, i8** %52, align 8, !dbg !3583, !tbaa !1301
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3583
  %55 = load i8*, i8** %54, align 8, !dbg !3583, !tbaa !1301
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3583
  %57 = load i8*, i8** %56, align 8, !dbg !3583, !tbaa !1301
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3583
  br label %147, !dbg !3584

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.109, i64 0, i64 0), i32 5) #18, !dbg !3585
  %61 = load i8*, i8** %4, align 8, !dbg !3585, !tbaa !1301
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3585
  %63 = load i8*, i8** %62, align 8, !dbg !3585, !tbaa !1301
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3585
  %65 = load i8*, i8** %64, align 8, !dbg !3585, !tbaa !1301
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3585
  %67 = load i8*, i8** %66, align 8, !dbg !3585, !tbaa !1301
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3585
  %69 = load i8*, i8** %68, align 8, !dbg !3585, !tbaa !1301
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3585
  %71 = load i8*, i8** %70, align 8, !dbg !3585, !tbaa !1301
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3585
  br label %147, !dbg !3586

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.110, i64 0, i64 0), i32 5) #18, !dbg !3587
  %75 = load i8*, i8** %4, align 8, !dbg !3587, !tbaa !1301
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3587
  %77 = load i8*, i8** %76, align 8, !dbg !3587, !tbaa !1301
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3587
  %79 = load i8*, i8** %78, align 8, !dbg !3587, !tbaa !1301
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3587
  %81 = load i8*, i8** %80, align 8, !dbg !3587, !tbaa !1301
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3587
  %83 = load i8*, i8** %82, align 8, !dbg !3587, !tbaa !1301
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3587
  %85 = load i8*, i8** %84, align 8, !dbg !3587, !tbaa !1301
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3587
  %87 = load i8*, i8** %86, align 8, !dbg !3587, !tbaa !1301
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3587
  br label %147, !dbg !3588

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.111, i64 0, i64 0), i32 5) #18, !dbg !3589
  %91 = load i8*, i8** %4, align 8, !dbg !3589, !tbaa !1301
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3589
  %93 = load i8*, i8** %92, align 8, !dbg !3589, !tbaa !1301
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3589
  %95 = load i8*, i8** %94, align 8, !dbg !3589, !tbaa !1301
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3589
  %97 = load i8*, i8** %96, align 8, !dbg !3589, !tbaa !1301
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3589
  %99 = load i8*, i8** %98, align 8, !dbg !3589, !tbaa !1301
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3589
  %101 = load i8*, i8** %100, align 8, !dbg !3589, !tbaa !1301
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3589
  %103 = load i8*, i8** %102, align 8, !dbg !3589, !tbaa !1301
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3589
  %105 = load i8*, i8** %104, align 8, !dbg !3589, !tbaa !1301
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3589
  br label %147, !dbg !3590

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.112, i64 0, i64 0), i32 5) #18, !dbg !3591
  %109 = load i8*, i8** %4, align 8, !dbg !3591, !tbaa !1301
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3591
  %111 = load i8*, i8** %110, align 8, !dbg !3591, !tbaa !1301
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3591
  %113 = load i8*, i8** %112, align 8, !dbg !3591, !tbaa !1301
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3591
  %115 = load i8*, i8** %114, align 8, !dbg !3591, !tbaa !1301
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3591
  %117 = load i8*, i8** %116, align 8, !dbg !3591, !tbaa !1301
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3591
  %119 = load i8*, i8** %118, align 8, !dbg !3591, !tbaa !1301
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3591
  %121 = load i8*, i8** %120, align 8, !dbg !3591, !tbaa !1301
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3591
  %123 = load i8*, i8** %122, align 8, !dbg !3591, !tbaa !1301
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3591
  %125 = load i8*, i8** %124, align 8, !dbg !3591, !tbaa !1301
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3591
  br label %147, !dbg !3592

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.113, i64 0, i64 0), i32 5) #18, !dbg !3593
  %129 = load i8*, i8** %4, align 8, !dbg !3593, !tbaa !1301
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3593
  %131 = load i8*, i8** %130, align 8, !dbg !3593, !tbaa !1301
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3593
  %133 = load i8*, i8** %132, align 8, !dbg !3593, !tbaa !1301
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3593
  %135 = load i8*, i8** %134, align 8, !dbg !3593, !tbaa !1301
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3593
  %137 = load i8*, i8** %136, align 8, !dbg !3593, !tbaa !1301
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3593
  %139 = load i8*, i8** %138, align 8, !dbg !3593, !tbaa !1301
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3593
  %141 = load i8*, i8** %140, align 8, !dbg !3593, !tbaa !1301
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3593
  %143 = load i8*, i8** %142, align 8, !dbg !3593, !tbaa !1301
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3593
  %145 = load i8*, i8** %144, align 8, !dbg !3593, !tbaa !1301
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3593
  br label %147, !dbg !3594

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3595
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3596 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3600, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8* %1, metadata !3601, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8* %2, metadata !3602, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8* %3, metadata !3603, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8** %4, metadata !3604, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 0, metadata !3605, metadata !DIExpression()), !dbg !3606
  br label %6, !dbg !3607

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3609
  call void @llvm.dbg.value(metadata i64 %7, metadata !3605, metadata !DIExpression()), !dbg !3606
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3610
  %9 = load i8*, i8** %8, align 8, !dbg !3610, !tbaa !1301
  %10 = icmp eq i8* %9, null, !dbg !3612
  %11 = add i64 %7, 1, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %11, metadata !3605, metadata !DIExpression()), !dbg !3606
  br i1 %10, label %12, label %6, !dbg !3612, !llvm.loop !3614

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %7, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %7, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %7, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %7, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %7, metadata !3605, metadata !DIExpression()), !dbg !3606
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3616
  ret void, !dbg !3617
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3618 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3629, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8* %1, metadata !3630, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8* %2, metadata !3631, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8* %3, metadata !3632, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3633, metadata !DIExpression()), !dbg !3637
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3638
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3638
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 0, metadata !3634, metadata !DIExpression()), !dbg !3637
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3640
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3640
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3640
  %11 = load i32, i32* %8, align 8, !dbg !3643
  %12 = icmp ult i32 %11, 41, !dbg !3643
  br i1 %12, label %13, label %18, !dbg !3643

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3643
  %15 = zext i32 %11 to i64, !dbg !3643
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3643
  %17 = add nuw nsw i32 %11, 8, !dbg !3643
  store i32 %17, i32* %8, align 8, !dbg !3643
  br label %21, !dbg !3643

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3643
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3643
  store i8* %20, i8** %9, align 8, !dbg !3643
  br label %21, !dbg !3643

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3643
  %25 = load i8*, i8** %24, align 8, !dbg !3643
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3644
  store i8* %25, i8** %26, align 16, !dbg !3645, !tbaa !1301
  %27 = icmp eq i8* %25, null, !dbg !3646
  br i1 %27, label %30, label %28, !dbg !3647

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3634, metadata !DIExpression()), !dbg !3637
  %29 = icmp ult i32 %22, 41, !dbg !3643
  br i1 %29, label %35, label %32, !dbg !3643

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3648
  call void @llvm.dbg.value(metadata i64 %31, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 %31, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3649
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3650
  ret void, !dbg !3650

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3643
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3643
  store i8* %34, i8** %9, align 8, !dbg !3643
  br label %40, !dbg !3643

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3643
  %37 = zext i32 %22 to i64, !dbg !3643
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3643
  %39 = add nuw nsw i32 %22, 8, !dbg !3643
  store i32 %39, i32* %8, align 8, !dbg !3643
  br label %40, !dbg !3643

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3643
  %44 = load i8*, i8** %43, align 8, !dbg !3643
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3644
  store i8* %44, i8** %45, align 8, !dbg !3645, !tbaa !1301
  %46 = icmp eq i8* %44, null, !dbg !3646
  br i1 %46, label %30, label %47, !dbg !3647

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3634, metadata !DIExpression()), !dbg !3637
  %48 = icmp ult i32 %41, 41, !dbg !3643
  br i1 %48, label %52, label %49, !dbg !3643

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3643
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3643
  store i8* %51, i8** %9, align 8, !dbg !3643
  br label %57, !dbg !3643

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3643
  %54 = zext i32 %41 to i64, !dbg !3643
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3643
  %56 = add nuw nsw i32 %41, 8, !dbg !3643
  store i32 %56, i32* %8, align 8, !dbg !3643
  br label %57, !dbg !3643

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3643
  %61 = load i8*, i8** %60, align 8, !dbg !3643
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3644
  store i8* %61, i8** %62, align 16, !dbg !3645, !tbaa !1301
  %63 = icmp eq i8* %61, null, !dbg !3646
  br i1 %63, label %30, label %64, !dbg !3647

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3634, metadata !DIExpression()), !dbg !3637
  %65 = icmp ult i32 %58, 41, !dbg !3643
  br i1 %65, label %69, label %66, !dbg !3643

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3643
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3643
  store i8* %68, i8** %9, align 8, !dbg !3643
  br label %74, !dbg !3643

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3643
  %71 = zext i32 %58 to i64, !dbg !3643
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3643
  %73 = add nuw nsw i32 %58, 8, !dbg !3643
  store i32 %73, i32* %8, align 8, !dbg !3643
  br label %74, !dbg !3643

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3643
  %78 = load i8*, i8** %77, align 8, !dbg !3643
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3644
  store i8* %78, i8** %79, align 8, !dbg !3645, !tbaa !1301
  %80 = icmp eq i8* %78, null, !dbg !3646
  br i1 %80, label %30, label %81, !dbg !3647

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3634, metadata !DIExpression()), !dbg !3637
  %82 = icmp ult i32 %75, 41, !dbg !3643
  br i1 %82, label %86, label %83, !dbg !3643

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3643
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3643
  store i8* %85, i8** %9, align 8, !dbg !3643
  br label %91, !dbg !3643

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3643
  %88 = zext i32 %75 to i64, !dbg !3643
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3643
  %90 = add nuw nsw i32 %75, 8, !dbg !3643
  store i32 %90, i32* %8, align 8, !dbg !3643
  br label %91, !dbg !3643

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3643
  %95 = load i8*, i8** %94, align 8, !dbg !3643
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3644
  store i8* %95, i8** %96, align 16, !dbg !3645, !tbaa !1301
  %97 = icmp eq i8* %95, null, !dbg !3646
  br i1 %97, label %30, label %98, !dbg !3647

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3634, metadata !DIExpression()), !dbg !3637
  %99 = icmp ult i32 %92, 41, !dbg !3643
  br i1 %99, label %103, label %100, !dbg !3643

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3643
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3643
  store i8* %102, i8** %9, align 8, !dbg !3643
  br label %108, !dbg !3643

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3643
  %105 = zext i32 %92 to i64, !dbg !3643
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3643
  %107 = add nuw nsw i32 %92, 8, !dbg !3643
  store i32 %107, i32* %8, align 8, !dbg !3643
  br label %108, !dbg !3643

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3643
  %111 = load i8*, i8** %110, align 8, !dbg !3643
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3644
  store i8* %111, i8** %112, align 8, !dbg !3645, !tbaa !1301
  %113 = icmp eq i8* %111, null, !dbg !3646
  br i1 %113, label %30, label %114, !dbg !3647

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3634, metadata !DIExpression()), !dbg !3637
  %115 = load i8*, i8** %9, align 8, !dbg !3643
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3643
  store i8* %116, i8** %9, align 8, !dbg !3643
  %117 = bitcast i8* %115 to i8**, !dbg !3643
  %118 = load i8*, i8** %117, align 8, !dbg !3643
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3644
  store i8* %118, i8** %119, align 16, !dbg !3645, !tbaa !1301
  %120 = icmp eq i8* %118, null, !dbg !3646
  br i1 %120, label %30, label %121, !dbg !3647

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3634, metadata !DIExpression()), !dbg !3637
  %122 = load i8*, i8** %9, align 8, !dbg !3643
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3643
  store i8* %123, i8** %9, align 8, !dbg !3643
  %124 = bitcast i8* %122 to i8**, !dbg !3643
  %125 = load i8*, i8** %124, align 8, !dbg !3643
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3644
  store i8* %125, i8** %126, align 8, !dbg !3645, !tbaa !1301
  %127 = icmp eq i8* %125, null, !dbg !3646
  br i1 %127, label %30, label %128, !dbg !3647

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3634, metadata !DIExpression()), !dbg !3637
  %129 = load i8*, i8** %9, align 8, !dbg !3643
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3643
  store i8* %130, i8** %9, align 8, !dbg !3643
  %131 = bitcast i8* %129 to i8**, !dbg !3643
  %132 = load i8*, i8** %131, align 8, !dbg !3643
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3644
  store i8* %132, i8** %133, align 16, !dbg !3645, !tbaa !1301
  %134 = icmp eq i8* %132, null, !dbg !3646
  br i1 %134, label %30, label %135, !dbg !3647

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3634, metadata !DIExpression()), !dbg !3637
  %136 = load i8*, i8** %9, align 8, !dbg !3643
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3643
  store i8* %137, i8** %9, align 8, !dbg !3643
  %138 = bitcast i8* %136 to i8**, !dbg !3643
  %139 = load i8*, i8** %138, align 8, !dbg !3643
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3644
  store i8* %139, i8** %140, align 8, !dbg !3645, !tbaa !1301
  %141 = icmp eq i8* %139, null, !dbg !3646
  %142 = select i1 %141, i64 9, i64 10, !dbg !3647
  br label %30, !dbg !3647
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3651 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3655, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8* %1, metadata !3656, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8* %2, metadata !3657, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8* %3, metadata !3658, metadata !DIExpression()), !dbg !3665
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3666
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3666
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3659, metadata !DIExpression()), !dbg !3667
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3668
  call void @llvm.va_start(i8* nonnull %6), !dbg !3668
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3669
  call void @llvm.va_end(i8* nonnull %6), !dbg !3670
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3671
  ret void, !dbg !3671
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3672 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3673, !tbaa !1301
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.101, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3673
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.116, i64 0, i64 0), i32 5) #18, !dbg !3674
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.117, i64 0, i64 0)) #18, !dbg !3674
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.118, i64 0, i64 0), i32 5) #18, !dbg !3675
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.119, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.120, i64 0, i64 0)) #18, !dbg !3675
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.121, i64 0, i64 0), i32 5) #18, !dbg !3676
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.122, i64 0, i64 0)) #18, !dbg !3676
  ret void, !dbg !3677
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3678 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3682, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %1, metadata !3683, metadata !DIExpression()), !dbg !3684
  %3 = udiv i64 9223372036854775807, %1, !dbg !3685
  %4 = icmp ult i64 %3, %0, !dbg !3685
  br i1 %4, label %5, label %6, !dbg !3687

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3688
  unreachable, !dbg !3688

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %7, metadata !3690, metadata !DIExpression()) #18, !dbg !3696
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3698
  call void @llvm.dbg.value(metadata i8* %8, metadata !3695, metadata !DIExpression()) #18, !dbg !3696
  %9 = icmp eq i8* %8, null, !dbg !3699
  %10 = icmp ne i64 %7, 0, !dbg !3701
  %11 = and i1 %10, %9, !dbg !3702
  br i1 %11, label %12, label %13, !dbg !3702

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3703
  unreachable, !dbg !3703

13:                                               ; preds = %6
  ret i8* %8, !dbg !3704
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3691 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3690, metadata !DIExpression()), !dbg !3705
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3706
  call void @llvm.dbg.value(metadata i8* %2, metadata !3695, metadata !DIExpression()), !dbg !3705
  %3 = icmp eq i8* %2, null, !dbg !3707
  %4 = icmp ne i64 %0, 0, !dbg !3708
  %5 = and i1 %4, %3, !dbg !3709
  br i1 %5, label %6, label %7, !dbg !3709

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3710
  unreachable, !dbg !3710

7:                                                ; preds = %1
  ret i8* %2, !dbg !3711
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3712 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %1, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %2, metadata !3718, metadata !DIExpression()), !dbg !3719
  %4 = udiv i64 9223372036854775807, %2, !dbg !3720
  %5 = icmp ult i64 %4, %1, !dbg !3720
  br i1 %5, label %6, label %7, !dbg !3722

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3723
  unreachable, !dbg !3723

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %0, metadata !3725, metadata !DIExpression()) #18, !dbg !3731
  call void @llvm.dbg.value(metadata i64 %8, metadata !3730, metadata !DIExpression()) #18, !dbg !3731
  %9 = icmp eq i64 %8, 0, !dbg !3733
  %10 = icmp ne i8* %0, null, !dbg !3735
  %11 = and i1 %10, %9, !dbg !3736
  br i1 %11, label %12, label %13, !dbg !3736

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3737
  br label %19, !dbg !3739

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3740
  call void @llvm.dbg.value(metadata i8* %14, metadata !3725, metadata !DIExpression()) #18, !dbg !3731
  %15 = icmp eq i8* %14, null, !dbg !3741
  %16 = icmp ne i64 %8, 0, !dbg !3743
  %17 = and i1 %16, %15, !dbg !3744
  br i1 %17, label %18, label %19, !dbg !3744

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3745
  unreachable, !dbg !3745

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3731
  ret i8* %20, !dbg !3746
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3726 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3725, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %1, metadata !3730, metadata !DIExpression()), !dbg !3747
  %3 = icmp eq i64 %1, 0, !dbg !3748
  %4 = icmp ne i8* %0, null, !dbg !3749
  %5 = and i1 %4, %3, !dbg !3750
  br i1 %5, label %6, label %7, !dbg !3750

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3751
  br label %13, !dbg !3752

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %8, metadata !3725, metadata !DIExpression()), !dbg !3747
  %9 = icmp eq i8* %8, null, !dbg !3754
  %10 = icmp ne i64 %1, 0, !dbg !3755
  %11 = and i1 %10, %9, !dbg !3756
  br i1 %11, label %12, label %13, !dbg !3756

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3757
  unreachable, !dbg !3757

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3747
  ret i8* %14, !dbg !3758
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !606, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64* %1, metadata !607, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %2, metadata !608, metadata !DIExpression()), !dbg !3759
  %4 = load i64, i64* %1, align 8, !dbg !3760, !tbaa !1408
  call void @llvm.dbg.value(metadata i64 %4, metadata !609, metadata !DIExpression()), !dbg !3759
  %5 = icmp eq i8* %0, null, !dbg !3761
  br i1 %5, label %6, label %20, !dbg !3763

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3764
  br i1 %7, label %8, label %13, !dbg !3767

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %9, metadata !609, metadata !DIExpression()), !dbg !3759
  %10 = icmp ugt i64 %2, 128, !dbg !3770
  %11 = zext i1 %10 to i64, !dbg !3770
  %12 = add nuw nsw i64 %9, %11, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %12, metadata !609, metadata !DIExpression()), !dbg !3759
  br label %13, !dbg !3772

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3759
  call void @llvm.dbg.value(metadata i64 %14, metadata !609, metadata !DIExpression()), !dbg !3759
  %15 = udiv i64 9223372036854775807, %2, !dbg !3773
  %16 = icmp ult i64 %15, %14, !dbg !3773
  br i1 %16, label %19, label %17, !dbg !3775

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !609, metadata !DIExpression()), !dbg !3759
  store i64 %14, i64* %1, align 8, !dbg !3776, !tbaa !1408
  %18 = mul i64 %14, %2, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %0, metadata !3725, metadata !DIExpression()) #18, !dbg !3778
  call void @llvm.dbg.value(metadata i64 %28, metadata !3730, metadata !DIExpression()) #18, !dbg !3778
  br label %31, !dbg !3780

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3781
  unreachable, !dbg !3781

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3782
  %22 = icmp ugt i64 %21, %4, !dbg !3785
  br i1 %22, label %24, label %23, !dbg !3786

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3787
  unreachable, !dbg !3787

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3788
  %26 = add nuw i64 %4, 1, !dbg !3789
  %27 = add i64 %26, %25, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %27, metadata !609, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %27, metadata !609, metadata !DIExpression()), !dbg !3759
  store i64 %27, i64* %1, align 8, !dbg !3776, !tbaa !1408
  %28 = mul i64 %27, %2, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %0, metadata !3725, metadata !DIExpression()) #18, !dbg !3778
  call void @llvm.dbg.value(metadata i64 %28, metadata !3730, metadata !DIExpression()) #18, !dbg !3778
  %29 = icmp eq i64 %28, 0, !dbg !3791
  br i1 %29, label %30, label %31, !dbg !3780

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3792
  br label %38, !dbg !3793

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %33, metadata !3725, metadata !DIExpression()) #18, !dbg !3778
  %34 = icmp eq i8* %33, null, !dbg !3795
  %35 = icmp ne i64 %32, 0, !dbg !3796
  %36 = and i1 %35, %34, !dbg !3797
  br i1 %36, label %37, label %38, !dbg !3797

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3798
  unreachable, !dbg !3798

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3778
  ret i8* %39, !dbg !3799
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3800 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3802, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i64 %0, metadata !3690, metadata !DIExpression()) #18, !dbg !3804
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3806
  call void @llvm.dbg.value(metadata i8* %2, metadata !3695, metadata !DIExpression()) #18, !dbg !3804
  %3 = icmp eq i8* %2, null, !dbg !3807
  %4 = icmp ne i64 %0, 0, !dbg !3808
  %5 = and i1 %4, %3, !dbg !3809
  br i1 %5, label %6, label %7, !dbg !3809

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3810
  unreachable, !dbg !3810

7:                                                ; preds = %1
  ret i8* %2, !dbg !3811
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3812 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3816, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i64* %1, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8* %0, metadata !606, metadata !DIExpression()) #18, !dbg !3819
  call void @llvm.dbg.value(metadata i64* %1, metadata !607, metadata !DIExpression()) #18, !dbg !3819
  call void @llvm.dbg.value(metadata i64 1, metadata !608, metadata !DIExpression()) #18, !dbg !3819
  %3 = load i64, i64* %1, align 8, !dbg !3821, !tbaa !1408
  call void @llvm.dbg.value(metadata i64 %3, metadata !609, metadata !DIExpression()) #18, !dbg !3819
  %4 = icmp eq i8* %0, null, !dbg !3822
  br i1 %4, label %5, label %12, !dbg !3823

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3824
  br i1 %6, label %9, label %7, !dbg !3825

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !609, metadata !DIExpression()) #18, !dbg !3819
  %8 = icmp slt i64 %3, 0, !dbg !3826
  br i1 %8, label %11, label %9, !dbg !3827

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !609, metadata !DIExpression()) #18, !dbg !3819
  store i64 %10, i64* %1, align 8, !dbg !3828, !tbaa !1408
  call void @llvm.dbg.value(metadata i8* %0, metadata !3725, metadata !DIExpression()) #18, !dbg !3829
  call void @llvm.dbg.value(metadata i64 %18, metadata !3730, metadata !DIExpression()) #18, !dbg !3829
  br label %21, !dbg !3831

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3832
  unreachable, !dbg !3832

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3833
  br i1 %13, label %15, label %14, !dbg !3834

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3835
  unreachable, !dbg !3835

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3836
  %17 = add nuw nsw i64 %3, 1, !dbg !3837
  %18 = add nuw nsw i64 %17, %16, !dbg !3838
  call void @llvm.dbg.value(metadata i64 %18, metadata !609, metadata !DIExpression()) #18, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %18, metadata !609, metadata !DIExpression()) #18, !dbg !3819
  store i64 %18, i64* %1, align 8, !dbg !3828, !tbaa !1408
  call void @llvm.dbg.value(metadata i8* %0, metadata !3725, metadata !DIExpression()) #18, !dbg !3829
  call void @llvm.dbg.value(metadata i64 %18, metadata !3730, metadata !DIExpression()) #18, !dbg !3829
  %19 = icmp eq i64 %18, 0, !dbg !3839
  br i1 %19, label %20, label %21, !dbg !3831

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3840
  br label %28, !dbg !3841

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3842
  call void @llvm.dbg.value(metadata i8* %23, metadata !3725, metadata !DIExpression()) #18, !dbg !3829
  %24 = icmp eq i8* %23, null, !dbg !3843
  %25 = icmp ne i64 %22, 0, !dbg !3844
  %26 = and i1 %25, %24, !dbg !3845
  br i1 %26, label %27, label %28, !dbg !3845

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3846
  unreachable, !dbg !3846

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3829
  ret i8* %29, !dbg !3847
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3848 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3850, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %0, metadata !3852, metadata !DIExpression()) #18, !dbg !3857
  call void @llvm.dbg.value(metadata i64 1, metadata !3855, metadata !DIExpression()) #18, !dbg !3857
  %2 = icmp slt i64 %0, 0, !dbg !3859
  br i1 %2, label %6, label %3, !dbg !3861

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3862
  call void @llvm.dbg.value(metadata i8* %4, metadata !3856, metadata !DIExpression()) #18, !dbg !3857
  %5 = icmp eq i8* %4, null, !dbg !3863
  br i1 %5, label %6, label %7, !dbg !3864

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3865
  unreachable, !dbg !3865

7:                                                ; preds = %3
  ret i8* %4, !dbg !3866
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3853 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3852, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %1, metadata !3855, metadata !DIExpression()), !dbg !3867
  %3 = udiv i64 9223372036854775807, %1, !dbg !3868
  %4 = icmp ult i64 %3, %0, !dbg !3868
  br i1 %4, label %8, label %5, !dbg !3869

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i8* %6, metadata !3856, metadata !DIExpression()), !dbg !3867
  %7 = icmp eq i8* %6, null, !dbg !3871
  br i1 %7, label %8, label %9, !dbg !3872

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3873
  unreachable, !dbg !3873

9:                                                ; preds = %5
  ret i8* %6, !dbg !3874
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3875 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3879, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %1, metadata !3880, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %1, metadata !3690, metadata !DIExpression()) #18, !dbg !3882
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %3, metadata !3695, metadata !DIExpression()) #18, !dbg !3882
  %4 = icmp eq i8* %3, null, !dbg !3885
  %5 = icmp ne i64 %1, 0, !dbg !3886
  %6 = and i1 %5, %4, !dbg !3887
  br i1 %6, label %7, label %8, !dbg !3887

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3888
  unreachable, !dbg !3888

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3889, metadata !DIExpression()) #18, !dbg !3898
  call void @llvm.dbg.value(metadata i8* %0, metadata !3896, metadata !DIExpression()) #18, !dbg !3898
  call void @llvm.dbg.value(metadata i64 %1, metadata !3897, metadata !DIExpression()) #18, !dbg !3898
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3900
  ret i8* %3, !dbg !3901
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3902 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3904, metadata !DIExpression()), !dbg !3905
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3906
  %3 = add i64 %2, 1, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %0, metadata !3879, metadata !DIExpression()) #18, !dbg !3908
  call void @llvm.dbg.value(metadata i64 %3, metadata !3880, metadata !DIExpression()) #18, !dbg !3908
  call void @llvm.dbg.value(metadata i64 %3, metadata !3690, metadata !DIExpression()) #18, !dbg !3910
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %4, metadata !3695, metadata !DIExpression()) #18, !dbg !3910
  %5 = icmp eq i8* %4, null, !dbg !3913
  %6 = icmp ne i64 %3, 0, !dbg !3914
  %7 = and i1 %6, %5, !dbg !3915
  br i1 %7, label %8, label %9, !dbg !3915

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3916
  unreachable, !dbg !3916

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3889, metadata !DIExpression()) #18, !dbg !3917
  call void @llvm.dbg.value(metadata i8* %0, metadata !3896, metadata !DIExpression()) #18, !dbg !3917
  call void @llvm.dbg.value(metadata i64 %3, metadata !3897, metadata !DIExpression()) #18, !dbg !3917
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3919
  ret i8* %4, !dbg !3920
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3921 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3922, !tbaa !1400
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.135, i64 0, i64 0), i32 5) #18, !dbg !3923
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i64 0, i64 0), i8* %2) #18, !dbg !3924
  tail call void @abort() #22, !dbg !3925
  unreachable, !dbg !3925
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xgetgroups(i8* %0, i32 %1, i32** %2) local_unnamed_addr #8 !dbg !3926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3928, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %1, metadata !3929, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32** %2, metadata !3930, metadata !DIExpression()), !dbg !3932
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #18, !dbg !3933
  call void @llvm.dbg.value(metadata i32 %4, metadata !3931, metadata !DIExpression()), !dbg !3932
  %5 = icmp eq i32 %4, -1, !dbg !3934
  br i1 %5, label %6, label %11, !dbg !3936

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #24, !dbg !3937
  %8 = load i32, i32* %7, align 4, !dbg !3937, !tbaa !1400
  %9 = icmp eq i32 %8, 12, !dbg !3938
  br i1 %9, label %10, label %11, !dbg !3939

10:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3940
  unreachable, !dbg !3940

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3941
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoul(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3942 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3948, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i8** %1, metadata !3949, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 %2, metadata !3950, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i64* %3, metadata !3951, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i8* %4, metadata !3952, metadata !DIExpression()), !dbg !3966
  %7 = bitcast i8** %6 to i8*, !dbg !3967
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #18, !dbg !3967
  call void @llvm.dbg.value(metadata i32 0, metadata !3956, metadata !DIExpression()), !dbg !3966
  %8 = icmp ult i32 %2, 37, !dbg !3968
  br i1 %8, label %10, label %9, !dbg !3968

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.141, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.142, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #22, !dbg !3968
  unreachable, !dbg !3968

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3971
  call void @llvm.dbg.value(metadata i8** %25, metadata !3954, metadata !DIExpression()), !dbg !3966
  %12 = tail call i32* @__errno_location() #24, !dbg !3972
  store i32 0, i32* %12, align 4, !dbg !3973, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %0, metadata !3957, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i8 undef, metadata !3960, metadata !DIExpression()), !dbg !3974
  %13 = tail call i16** @__ctype_b_loc() #24, !dbg !3974
  %14 = load i16*, i16** %13, align 8, !dbg !3974, !tbaa !1301
  br label %15, !dbg !3975

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3974
  %17 = load i8, i8* %16, align 1, !dbg !3974, !tbaa !1436
  call void @llvm.dbg.value(metadata i8 %17, metadata !3960, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i8* %16, metadata !3957, metadata !DIExpression()), !dbg !3974
  %18 = zext i8 %17 to i64, !dbg !3976
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3976
  %20 = load i16, i16* %19, align 2, !dbg !3976, !tbaa !1738
  %21 = and i16 %20, 8192, !dbg !3976
  %22 = icmp eq i16 %21, 0, !dbg !3975
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3977
  call void @llvm.dbg.value(metadata i8* %23, metadata !3957, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i8 undef, metadata !3960, metadata !DIExpression()), !dbg !3974
  br i1 %22, label %24, label %15, !dbg !3975, !llvm.loop !3978

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3971
  %26 = icmp eq i8 %17, 45, !dbg !3980
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #18, !dbg !3982
  call void @llvm.dbg.value(metadata i64 %28, metadata !3955, metadata !DIExpression()), !dbg !3966
  %29 = load i8*, i8** %25, align 8, !dbg !3983, !tbaa !1301
  %30 = icmp eq i8* %29, %0, !dbg !3985
  br i1 %30, label %31, label %40, !dbg !3986

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3987
  br i1 %32, label %285, label %33, !dbg !3990

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3991, !tbaa !1436
  %35 = icmp eq i8 %34, 0, !dbg !3991
  br i1 %35, label %285, label %36, !dbg !3992

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3991
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #21, !dbg !3993
  %39 = icmp eq i8* %38, null, !dbg !3993
  br i1 %39, label %285, label %47, !dbg !3994

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3995, !tbaa !1400
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3997

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3956, metadata !DIExpression()), !dbg !3966
  br label %43, !dbg !3998

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3966
  call void @llvm.dbg.value(metadata i32 %44, metadata !3956, metadata !DIExpression()), !dbg !3966
  %45 = icmp eq i8* %4, null, !dbg !4000
  br i1 %45, label %46, label %47, !dbg !4002

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3955, metadata !DIExpression()), !dbg !3966
  store i64 %28, i64* %3, align 8, !dbg !4003, !tbaa !1408
  br label %285, !dbg !4005

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4006, !tbaa !1436
  %51 = sext i8 %50 to i32, !dbg !4006
  %52 = icmp eq i8 %50, 0, !dbg !4007
  br i1 %52, label %282, label %53, !dbg !4008

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3961, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 1, metadata !3964, metadata !DIExpression()), !dbg !4009
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #21, !dbg !4010
  %55 = icmp eq i8* %54, null, !dbg !4010
  br i1 %55, label %56, label %58, !dbg !4012

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3955, metadata !DIExpression()), !dbg !3966
  store i64 %49, i64* %3, align 8, !dbg !4013, !tbaa !1408
  %57 = or i32 %48, 2, !dbg !4015
  br label %285, !dbg !4016

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
  ], !dbg !4017

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #21, !dbg !4018
  %61 = icmp eq i8* %60, null, !dbg !4018
  br i1 %61, label %72, label %62, !dbg !4021

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4022
  %64 = load i8, i8* %63, align 1, !dbg !4022, !tbaa !1436
  %65 = sext i8 %64 to i32, !dbg !4022
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4023

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4024
  %68 = load i8, i8* %67, align 1, !dbg !4024, !tbaa !1436
  %69 = icmp eq i8 %68, 66, !dbg !4027
  %70 = select i1 %69, i64 3, i64 1, !dbg !4028
  br label %72, !dbg !4028

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3961, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 2, metadata !3964, metadata !DIExpression()), !dbg !4009
  br label %72, !dbg !4029

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3964, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3961, metadata !DIExpression()), !dbg !4009
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
  ], !dbg !4030

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()) #18, !dbg !4039
  call void @llvm.dbg.value(metadata i32 6, metadata !4038, metadata !DIExpression()) #18, !dbg !4039
  call void @llvm.dbg.value(metadata i32 undef, metadata !4042, metadata !DIExpression()) #18, !dbg !4048
  %76 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4050
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4050
  %78 = mul i64 %49, %73, !dbg !4052
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4052
  call void @llvm.dbg.value(metadata i1 %77, metadata !4031, metadata !DIExpression()) #18, !dbg !4039
  call void @llvm.dbg.value(metadata i32 5, metadata !4038, metadata !DIExpression()) #18, !dbg !4039
  %80 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #18, !dbg !4050
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4050
  %82 = mul i64 %79, %73, !dbg !4052
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4052
  %84 = or i1 %77, %81, !dbg !4053
  call void @llvm.dbg.value(metadata i1 %84, metadata !4031, metadata !DIExpression()) #18, !dbg !4039
  call void @llvm.dbg.value(metadata i32 4, metadata !4038, metadata !DIExpression()) #18, !dbg !4039
  %85 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #18, !dbg !4050
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4050
  %87 = mul i64 %83, %73, !dbg !4052
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4052
  %89 = or i1 %84, %86, !dbg !4053
  call void @llvm.dbg.value(metadata i1 %89, metadata !4031, metadata !DIExpression()) #18, !dbg !4039
  call void @llvm.dbg.value(metadata i32 3, metadata !4038, metadata !DIExpression()) #18, !dbg !4039
  %90 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #18, !dbg !4050
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4050
  %92 = mul i64 %88, %73, !dbg !4052
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4052
  %94 = or i1 %89, %91, !dbg !4053
  call void @llvm.dbg.value(metadata i1 %94, metadata !4031, metadata !DIExpression()) #18, !dbg !4039
  call void @llvm.dbg.value(metadata i32 2, metadata !4038, metadata !DIExpression()) #18, !dbg !4039
  %95 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #18, !dbg !4050
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4050
  %97 = mul i64 %93, %73, !dbg !4052
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4052
  %99 = or i1 %94, %96, !dbg !4053
  call void @llvm.dbg.value(metadata i1 %99, metadata !4031, metadata !DIExpression()) #18, !dbg !4039
  call void @llvm.dbg.value(metadata i32 1, metadata !4038, metadata !DIExpression()) #18, !dbg !4039
  %100 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #18, !dbg !4050
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4050
  %102 = mul i64 %98, %73, !dbg !4052
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4052
  %104 = or i1 %99, %101, !dbg !4053
  call void @llvm.dbg.value(metadata i1 %104, metadata !4031, metadata !DIExpression()) #18, !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression()) #18, !dbg !4039
  %105 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #18, !dbg !4050
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4050
  %107 = mul i64 %103, %73, !dbg !4052
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4052
  %109 = or i1 %104, %106, !dbg !4053
  call void @llvm.dbg.value(metadata i1 %109, metadata !4031, metadata !DIExpression()) #18, !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4039
  br label %272, !dbg !4054

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 7, metadata !4038, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 undef, metadata !4042, metadata !DIExpression()) #18, !dbg !4057
  %111 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4059
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4059
  %113 = mul i64 %49, %73, !dbg !4060
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4060
  call void @llvm.dbg.value(metadata i1 %112, metadata !4031, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 6, metadata !4038, metadata !DIExpression()) #18, !dbg !4055
  %115 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #18, !dbg !4059
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4059
  %117 = mul i64 %114, %73, !dbg !4060
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4060
  %119 = or i1 %112, %116, !dbg !4061
  call void @llvm.dbg.value(metadata i1 %119, metadata !4031, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 5, metadata !4038, metadata !DIExpression()) #18, !dbg !4055
  %120 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #18, !dbg !4059
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4059
  %122 = mul i64 %118, %73, !dbg !4060
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4060
  %124 = or i1 %119, %121, !dbg !4061
  call void @llvm.dbg.value(metadata i1 %124, metadata !4031, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 4, metadata !4038, metadata !DIExpression()) #18, !dbg !4055
  %125 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #18, !dbg !4059
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4059
  %127 = mul i64 %123, %73, !dbg !4060
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4060
  %129 = or i1 %124, %126, !dbg !4061
  call void @llvm.dbg.value(metadata i1 %129, metadata !4031, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 3, metadata !4038, metadata !DIExpression()) #18, !dbg !4055
  %130 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #18, !dbg !4059
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4059
  %132 = mul i64 %128, %73, !dbg !4060
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4060
  %134 = or i1 %129, %131, !dbg !4061
  call void @llvm.dbg.value(metadata i1 %134, metadata !4031, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 2, metadata !4038, metadata !DIExpression()) #18, !dbg !4055
  %135 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #18, !dbg !4059
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4059
  %137 = mul i64 %133, %73, !dbg !4060
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4060
  %139 = or i1 %134, %136, !dbg !4061
  call void @llvm.dbg.value(metadata i1 %139, metadata !4031, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 1, metadata !4038, metadata !DIExpression()) #18, !dbg !4055
  %140 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #18, !dbg !4059
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4059
  %142 = mul i64 %138, %73, !dbg !4060
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4060
  %144 = or i1 %139, %141, !dbg !4061
  call void @llvm.dbg.value(metadata i1 %144, metadata !4031, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression()) #18, !dbg !4055
  %145 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #18, !dbg !4059
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4059
  %147 = mul i64 %143, %73, !dbg !4060
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4060
  %149 = or i1 %144, %146, !dbg !4061
  call void @llvm.dbg.value(metadata i1 %149, metadata !4031, metadata !DIExpression()) #18, !dbg !4055
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4055
  br label %272, !dbg !4054

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()) #18, !dbg !4062
  call void @llvm.dbg.value(metadata i32 4, metadata !4038, metadata !DIExpression()) #18, !dbg !4062
  call void @llvm.dbg.value(metadata i32 undef, metadata !4042, metadata !DIExpression()) #18, !dbg !4064
  %151 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4066
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4066
  %153 = mul i64 %49, %73, !dbg !4067
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4067
  call void @llvm.dbg.value(metadata i1 %152, metadata !4031, metadata !DIExpression()) #18, !dbg !4062
  call void @llvm.dbg.value(metadata i32 3, metadata !4038, metadata !DIExpression()) #18, !dbg !4062
  %155 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #18, !dbg !4066
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4066
  %157 = mul i64 %154, %73, !dbg !4067
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4067
  %159 = or i1 %152, %156, !dbg !4068
  call void @llvm.dbg.value(metadata i1 %159, metadata !4031, metadata !DIExpression()) #18, !dbg !4062
  call void @llvm.dbg.value(metadata i32 2, metadata !4038, metadata !DIExpression()) #18, !dbg !4062
  %160 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #18, !dbg !4066
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4066
  %162 = mul i64 %158, %73, !dbg !4067
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4067
  %164 = or i1 %159, %161, !dbg !4068
  call void @llvm.dbg.value(metadata i1 %164, metadata !4031, metadata !DIExpression()) #18, !dbg !4062
  call void @llvm.dbg.value(metadata i32 1, metadata !4038, metadata !DIExpression()) #18, !dbg !4062
  %165 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #18, !dbg !4066
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4066
  %167 = mul i64 %163, %73, !dbg !4067
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4067
  %169 = or i1 %164, %166, !dbg !4068
  call void @llvm.dbg.value(metadata i1 %169, metadata !4031, metadata !DIExpression()) #18, !dbg !4062
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression()) #18, !dbg !4062
  %170 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #18, !dbg !4066
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4066
  %172 = mul i64 %168, %73, !dbg !4067
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4067
  %174 = or i1 %169, %171, !dbg !4068
  call void @llvm.dbg.value(metadata i1 %174, metadata !4031, metadata !DIExpression()) #18, !dbg !4062
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4062
  br label %272, !dbg !4054

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()) #18, !dbg !4069
  call void @llvm.dbg.value(metadata i32 5, metadata !4038, metadata !DIExpression()) #18, !dbg !4069
  call void @llvm.dbg.value(metadata i32 undef, metadata !4042, metadata !DIExpression()) #18, !dbg !4071
  %176 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4073
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4073
  %178 = mul i64 %49, %73, !dbg !4074
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4074
  call void @llvm.dbg.value(metadata i1 %177, metadata !4031, metadata !DIExpression()) #18, !dbg !4069
  call void @llvm.dbg.value(metadata i32 4, metadata !4038, metadata !DIExpression()) #18, !dbg !4069
  %180 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #18, !dbg !4073
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4073
  %182 = mul i64 %179, %73, !dbg !4074
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4074
  %184 = or i1 %177, %181, !dbg !4075
  call void @llvm.dbg.value(metadata i1 %184, metadata !4031, metadata !DIExpression()) #18, !dbg !4069
  call void @llvm.dbg.value(metadata i32 3, metadata !4038, metadata !DIExpression()) #18, !dbg !4069
  %185 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #18, !dbg !4073
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4073
  %187 = mul i64 %183, %73, !dbg !4074
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4074
  %189 = or i1 %184, %186, !dbg !4075
  call void @llvm.dbg.value(metadata i1 %189, metadata !4031, metadata !DIExpression()) #18, !dbg !4069
  call void @llvm.dbg.value(metadata i32 2, metadata !4038, metadata !DIExpression()) #18, !dbg !4069
  %190 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #18, !dbg !4073
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4073
  %192 = mul i64 %188, %73, !dbg !4074
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4074
  %194 = or i1 %189, %191, !dbg !4075
  call void @llvm.dbg.value(metadata i1 %194, metadata !4031, metadata !DIExpression()) #18, !dbg !4069
  call void @llvm.dbg.value(metadata i32 1, metadata !4038, metadata !DIExpression()) #18, !dbg !4069
  %195 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #18, !dbg !4073
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4073
  %197 = mul i64 %193, %73, !dbg !4074
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4074
  %199 = or i1 %194, %196, !dbg !4075
  call void @llvm.dbg.value(metadata i1 %199, metadata !4031, metadata !DIExpression()) #18, !dbg !4069
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression()) #18, !dbg !4069
  %200 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #18, !dbg !4073
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4073
  %202 = mul i64 %198, %73, !dbg !4074
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4074
  %204 = or i1 %199, %201, !dbg !4075
  call void @llvm.dbg.value(metadata i1 %204, metadata !4031, metadata !DIExpression()) #18, !dbg !4069
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4069
  br label %272, !dbg !4054

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4042, metadata !DIExpression()) #18, !dbg !4076
  %206 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #18, !dbg !4078
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4078
  %208 = shl i64 %49, 9, !dbg !4079
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4079
  call void @llvm.dbg.value(metadata i1 %207, metadata !3965, metadata !DIExpression()), !dbg !4009
  br label %272, !dbg !4080

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4042, metadata !DIExpression()) #18, !dbg !4081
  %211 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #18, !dbg !4083
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4083
  %213 = shl i64 %49, 10, !dbg !4084
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4084
  call void @llvm.dbg.value(metadata i1 %212, metadata !3965, metadata !DIExpression()), !dbg !4009
  br label %272, !dbg !4085

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4037, metadata !DIExpression()) #18, !dbg !4086
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()) #18, !dbg !4086
  call void @llvm.dbg.value(metadata i32 2, metadata !4038, metadata !DIExpression()) #18, !dbg !4086
  call void @llvm.dbg.value(metadata i32 undef, metadata !4042, metadata !DIExpression()) #18, !dbg !4088
  %216 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4090
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4090
  %218 = mul i64 %49, %73, !dbg !4091
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4091
  call void @llvm.dbg.value(metadata i1 %217, metadata !4031, metadata !DIExpression()) #18, !dbg !4086
  call void @llvm.dbg.value(metadata i32 1, metadata !4038, metadata !DIExpression()) #18, !dbg !4086
  %220 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #18, !dbg !4090
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4090
  %222 = mul i64 %219, %73, !dbg !4091
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4091
  %224 = or i1 %217, %221, !dbg !4092
  call void @llvm.dbg.value(metadata i1 %224, metadata !4031, metadata !DIExpression()) #18, !dbg !4086
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression()) #18, !dbg !4086
  %225 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #18, !dbg !4090
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4090
  %227 = mul i64 %223, %73, !dbg !4091
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4091
  %229 = or i1 %224, %226, !dbg !4092
  call void @llvm.dbg.value(metadata i1 %229, metadata !4031, metadata !DIExpression()) #18, !dbg !4086
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4086
  br label %272, !dbg !4054

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4037, metadata !DIExpression()) #18, !dbg !4093
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()) #18, !dbg !4093
  call void @llvm.dbg.value(metadata i32 undef, metadata !4038, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4093
  call void @llvm.dbg.value(metadata i32 undef, metadata !4042, metadata !DIExpression()) #18, !dbg !4095
  %231 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4097
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4097
  %233 = mul i64 %49, %73, !dbg !4098
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4098
  call void @llvm.dbg.value(metadata i1 %232, metadata !4031, metadata !DIExpression()) #18, !dbg !4093
  call void @llvm.dbg.value(metadata i32 undef, metadata !4038, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4093
  br label %272, !dbg !4054

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4037, metadata !DIExpression()) #18, !dbg !4099
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()) #18, !dbg !4099
  call void @llvm.dbg.value(metadata i32 1, metadata !4038, metadata !DIExpression()) #18, !dbg !4099
  call void @llvm.dbg.value(metadata i32 undef, metadata !4042, metadata !DIExpression()) #18, !dbg !4101
  %236 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4103
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !4103
  %238 = mul i64 %49, %73, !dbg !4104
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !4104
  call void @llvm.dbg.value(metadata i1 %237, metadata !4031, metadata !DIExpression()) #18, !dbg !4099
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression()) #18, !dbg !4099
  %240 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #18, !dbg !4103
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4103
  %242 = mul i64 %239, %73, !dbg !4104
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4104
  %244 = or i1 %237, %241, !dbg !4105
  call void @llvm.dbg.value(metadata i1 %244, metadata !4031, metadata !DIExpression()) #18, !dbg !4099
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4099
  br label %272, !dbg !4054

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4037, metadata !DIExpression()) #18, !dbg !4106
  call void @llvm.dbg.value(metadata i32 0, metadata !4031, metadata !DIExpression()) #18, !dbg !4106
  call void @llvm.dbg.value(metadata i32 3, metadata !4038, metadata !DIExpression()) #18, !dbg !4106
  call void @llvm.dbg.value(metadata i32 undef, metadata !4042, metadata !DIExpression()) #18, !dbg !4108
  %246 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4110
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4110
  %248 = mul i64 %49, %73, !dbg !4111
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4111
  call void @llvm.dbg.value(metadata i1 %247, metadata !4031, metadata !DIExpression()) #18, !dbg !4106
  call void @llvm.dbg.value(metadata i32 2, metadata !4038, metadata !DIExpression()) #18, !dbg !4106
  %250 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #18, !dbg !4110
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4110
  %252 = mul i64 %249, %73, !dbg !4111
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4111
  %254 = or i1 %247, %251, !dbg !4112
  call void @llvm.dbg.value(metadata i1 %254, metadata !4031, metadata !DIExpression()) #18, !dbg !4106
  call void @llvm.dbg.value(metadata i32 1, metadata !4038, metadata !DIExpression()) #18, !dbg !4106
  %255 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #18, !dbg !4110
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4110
  %257 = mul i64 %253, %73, !dbg !4111
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4111
  %259 = or i1 %254, %256, !dbg !4112
  call void @llvm.dbg.value(metadata i1 %259, metadata !4031, metadata !DIExpression()) #18, !dbg !4106
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression()) #18, !dbg !4106
  %260 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #18, !dbg !4110
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4110
  %262 = mul i64 %258, %73, !dbg !4111
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4111
  %264 = or i1 %259, %261, !dbg !4112
  call void @llvm.dbg.value(metadata i1 %264, metadata !4031, metadata !DIExpression()) #18, !dbg !4106
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4106
  br label %272, !dbg !4054

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4042, metadata !DIExpression()) #18, !dbg !4113
  %266 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #18, !dbg !4115
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4115
  %268 = shl i64 %49, 1, !dbg !4116
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4116
  call void @llvm.dbg.value(metadata i1 %267, metadata !3965, metadata !DIExpression()), !dbg !4009
  br label %272, !dbg !4117

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3955, metadata !DIExpression()), !dbg !3966
  store i64 %49, i64* %3, align 8, !dbg !4118, !tbaa !1408
  %271 = or i32 %48, 2, !dbg !4119
  br label %285, !dbg !4120

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !3966
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4121
  call void @llvm.dbg.value(metadata i32 %275, metadata !3965, metadata !DIExpression()), !dbg !4009
  %276 = or i32 %48, %275, !dbg !4054
  call void @llvm.dbg.value(metadata i32 %276, metadata !3956, metadata !DIExpression()), !dbg !3966
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4122
  store i8* %277, i8** %25, align 8, !dbg !4122, !tbaa !1301
  %278 = load i8, i8* %277, align 1, !dbg !4123, !tbaa !1436
  %279 = icmp eq i8 %278, 0, !dbg !4123
  %280 = or i32 %276, 2, !dbg !4125
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4126
  call void @llvm.dbg.value(metadata i32 %281, metadata !3956, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 %281, metadata !3956, metadata !DIExpression()), !dbg !3966
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4127
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4128
  call void @llvm.dbg.value(metadata i32 %284, metadata !3956, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i64 %283, metadata !3955, metadata !DIExpression()), !dbg !3966
  store i64 %283, i64* %3, align 8, !dbg !4129, !tbaa !1408
  br label %285, !dbg !4130

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !3966
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #18, !dbg !4131
  ret i32 %286, !dbg !4131
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4132 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4137, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i8** %1, metadata !4138, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i32 %2, metadata !4139, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64* %3, metadata !4140, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i8* %4, metadata !4141, metadata !DIExpression()), !dbg !4155
  %7 = bitcast i8** %6 to i8*, !dbg !4156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #18, !dbg !4156
  call void @llvm.dbg.value(metadata i32 0, metadata !4145, metadata !DIExpression()), !dbg !4155
  %8 = icmp ult i32 %2, 37, !dbg !4157
  br i1 %8, label %10, label %9, !dbg !4157

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.145, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.146, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #22, !dbg !4157
  unreachable, !dbg !4157

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4160
  call void @llvm.dbg.value(metadata i8** %25, metadata !4143, metadata !DIExpression()), !dbg !4155
  %12 = tail call i32* @__errno_location() #24, !dbg !4161
  store i32 0, i32* %12, align 4, !dbg !4162, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %0, metadata !4146, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8 undef, metadata !4149, metadata !DIExpression()), !dbg !4163
  %13 = tail call i16** @__ctype_b_loc() #24, !dbg !4163
  %14 = load i16*, i16** %13, align 8, !dbg !4163, !tbaa !1301
  br label %15, !dbg !4164

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4163
  %17 = load i8, i8* %16, align 1, !dbg !4163, !tbaa !1436
  call void @llvm.dbg.value(metadata i8 %17, metadata !4149, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8* %16, metadata !4146, metadata !DIExpression()), !dbg !4163
  %18 = zext i8 %17 to i64, !dbg !4165
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4165
  %20 = load i16, i16* %19, align 2, !dbg !4165, !tbaa !1738
  %21 = and i16 %20, 8192, !dbg !4165
  %22 = icmp eq i16 %21, 0, !dbg !4164
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4166
  call void @llvm.dbg.value(metadata i8* %23, metadata !4146, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8 undef, metadata !4149, metadata !DIExpression()), !dbg !4163
  br i1 %22, label %24, label %15, !dbg !4164, !llvm.loop !4167

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4160
  %26 = icmp eq i8 %17, 45, !dbg !4169
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()) #18, !dbg !4181
  call void @llvm.dbg.value(metadata i8** %25, metadata !4179, metadata !DIExpression()) #18, !dbg !4181
  call void @llvm.dbg.value(metadata i32 %2, metadata !4180, metadata !DIExpression()) #18, !dbg !4181
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #18, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %28, metadata !4144, metadata !DIExpression()), !dbg !4155
  %29 = load i8*, i8** %25, align 8, !dbg !4184, !tbaa !1301
  %30 = icmp eq i8* %29, %0, !dbg !4186
  br i1 %30, label %31, label %40, !dbg !4187

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4188
  br i1 %32, label %285, label %33, !dbg !4191

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4192, !tbaa !1436
  %35 = icmp eq i8 %34, 0, !dbg !4192
  br i1 %35, label %285, label %36, !dbg !4193

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4192
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #21, !dbg !4194
  %39 = icmp eq i8* %38, null, !dbg !4194
  br i1 %39, label %285, label %47, !dbg !4195

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4196, !tbaa !1400
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4198

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4145, metadata !DIExpression()), !dbg !4155
  br label %43, !dbg !4199

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4155
  call void @llvm.dbg.value(metadata i32 %44, metadata !4145, metadata !DIExpression()), !dbg !4155
  %45 = icmp eq i8* %4, null, !dbg !4201
  br i1 %45, label %46, label %47, !dbg !4203

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4144, metadata !DIExpression()), !dbg !4155
  store i64 %28, i64* %3, align 8, !dbg !4204, !tbaa !1408
  br label %285, !dbg !4206

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4207, !tbaa !1436
  %51 = sext i8 %50 to i32, !dbg !4207
  %52 = icmp eq i8 %50, 0, !dbg !4208
  br i1 %52, label %282, label %53, !dbg !4209

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4150, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i32 1, metadata !4153, metadata !DIExpression()), !dbg !4210
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #21, !dbg !4211
  %55 = icmp eq i8* %54, null, !dbg !4211
  br i1 %55, label %56, label %58, !dbg !4213

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4144, metadata !DIExpression()), !dbg !4155
  store i64 %49, i64* %3, align 8, !dbg !4214, !tbaa !1408
  %57 = or i32 %48, 2, !dbg !4216
  br label %285, !dbg !4217

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
  ], !dbg !4218

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #21, !dbg !4219
  %61 = icmp eq i8* %60, null, !dbg !4219
  br i1 %61, label %72, label %62, !dbg !4222

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4223
  %64 = load i8, i8* %63, align 1, !dbg !4223, !tbaa !1436
  %65 = sext i8 %64 to i32, !dbg !4223
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4224

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4225
  %68 = load i8, i8* %67, align 1, !dbg !4225, !tbaa !1436
  %69 = icmp eq i8 %68, 66, !dbg !4228
  %70 = select i1 %69, i64 3, i64 1, !dbg !4229
  br label %72, !dbg !4229

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4150, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i32 2, metadata !4153, metadata !DIExpression()), !dbg !4210
  br label %72, !dbg !4230

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4153, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i32 undef, metadata !4150, metadata !DIExpression()), !dbg !4210
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
  ], !dbg !4231

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4232, metadata !DIExpression()) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32 6, metadata !4239, metadata !DIExpression()) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32 undef, metadata !4243, metadata !DIExpression()) #18, !dbg !4249
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4251
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4251
  %78 = mul i64 %49, %73, !dbg !4253
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4253
  call void @llvm.dbg.value(metadata i1 %77, metadata !4232, metadata !DIExpression()) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32 5, metadata !4239, metadata !DIExpression()) #18, !dbg !4240
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #18, !dbg !4251
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4251
  %82 = mul i64 %79, %73, !dbg !4253
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4253
  %84 = or i1 %77, %81, !dbg !4254
  call void @llvm.dbg.value(metadata i1 %84, metadata !4232, metadata !DIExpression()) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32 4, metadata !4239, metadata !DIExpression()) #18, !dbg !4240
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #18, !dbg !4251
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4251
  %87 = mul i64 %83, %73, !dbg !4253
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4253
  %89 = or i1 %84, %86, !dbg !4254
  call void @llvm.dbg.value(metadata i1 %89, metadata !4232, metadata !DIExpression()) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32 3, metadata !4239, metadata !DIExpression()) #18, !dbg !4240
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #18, !dbg !4251
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4251
  %92 = mul i64 %88, %73, !dbg !4253
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4253
  %94 = or i1 %89, %91, !dbg !4254
  call void @llvm.dbg.value(metadata i1 %94, metadata !4232, metadata !DIExpression()) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32 2, metadata !4239, metadata !DIExpression()) #18, !dbg !4240
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #18, !dbg !4251
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4251
  %97 = mul i64 %93, %73, !dbg !4253
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4253
  %99 = or i1 %94, %96, !dbg !4254
  call void @llvm.dbg.value(metadata i1 %99, metadata !4232, metadata !DIExpression()) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32 1, metadata !4239, metadata !DIExpression()) #18, !dbg !4240
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #18, !dbg !4251
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4251
  %102 = mul i64 %98, %73, !dbg !4253
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4253
  %104 = or i1 %99, %101, !dbg !4254
  call void @llvm.dbg.value(metadata i1 %104, metadata !4232, metadata !DIExpression()) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()) #18, !dbg !4240
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #18, !dbg !4251
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4251
  %107 = mul i64 %103, %73, !dbg !4253
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4253
  %109 = or i1 %104, %106, !dbg !4254
  call void @llvm.dbg.value(metadata i1 %109, metadata !4232, metadata !DIExpression()) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4240
  br label %272, !dbg !4255

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4232, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 7, metadata !4239, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 undef, metadata !4243, metadata !DIExpression()) #18, !dbg !4258
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4260
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4260
  %113 = mul i64 %49, %73, !dbg !4261
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4261
  call void @llvm.dbg.value(metadata i1 %112, metadata !4232, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 6, metadata !4239, metadata !DIExpression()) #18, !dbg !4256
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #18, !dbg !4260
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4260
  %117 = mul i64 %114, %73, !dbg !4261
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4261
  %119 = or i1 %112, %116, !dbg !4262
  call void @llvm.dbg.value(metadata i1 %119, metadata !4232, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 5, metadata !4239, metadata !DIExpression()) #18, !dbg !4256
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #18, !dbg !4260
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4260
  %122 = mul i64 %118, %73, !dbg !4261
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4261
  %124 = or i1 %119, %121, !dbg !4262
  call void @llvm.dbg.value(metadata i1 %124, metadata !4232, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 4, metadata !4239, metadata !DIExpression()) #18, !dbg !4256
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #18, !dbg !4260
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4260
  %127 = mul i64 %123, %73, !dbg !4261
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4261
  %129 = or i1 %124, %126, !dbg !4262
  call void @llvm.dbg.value(metadata i1 %129, metadata !4232, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 3, metadata !4239, metadata !DIExpression()) #18, !dbg !4256
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #18, !dbg !4260
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4260
  %132 = mul i64 %128, %73, !dbg !4261
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4261
  %134 = or i1 %129, %131, !dbg !4262
  call void @llvm.dbg.value(metadata i1 %134, metadata !4232, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 2, metadata !4239, metadata !DIExpression()) #18, !dbg !4256
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #18, !dbg !4260
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4260
  %137 = mul i64 %133, %73, !dbg !4261
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4261
  %139 = or i1 %134, %136, !dbg !4262
  call void @llvm.dbg.value(metadata i1 %139, metadata !4232, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 1, metadata !4239, metadata !DIExpression()) #18, !dbg !4256
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #18, !dbg !4260
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4260
  %142 = mul i64 %138, %73, !dbg !4261
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4261
  %144 = or i1 %139, %141, !dbg !4262
  call void @llvm.dbg.value(metadata i1 %144, metadata !4232, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()) #18, !dbg !4256
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #18, !dbg !4260
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4260
  %147 = mul i64 %143, %73, !dbg !4261
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4261
  %149 = or i1 %144, %146, !dbg !4262
  call void @llvm.dbg.value(metadata i1 %149, metadata !4232, metadata !DIExpression()) #18, !dbg !4256
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4256
  br label %272, !dbg !4255

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4232, metadata !DIExpression()) #18, !dbg !4263
  call void @llvm.dbg.value(metadata i32 4, metadata !4239, metadata !DIExpression()) #18, !dbg !4263
  call void @llvm.dbg.value(metadata i32 undef, metadata !4243, metadata !DIExpression()) #18, !dbg !4265
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4267
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4267
  %153 = mul i64 %49, %73, !dbg !4268
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4268
  call void @llvm.dbg.value(metadata i1 %152, metadata !4232, metadata !DIExpression()) #18, !dbg !4263
  call void @llvm.dbg.value(metadata i32 3, metadata !4239, metadata !DIExpression()) #18, !dbg !4263
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #18, !dbg !4267
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4267
  %157 = mul i64 %154, %73, !dbg !4268
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4268
  %159 = or i1 %152, %156, !dbg !4269
  call void @llvm.dbg.value(metadata i1 %159, metadata !4232, metadata !DIExpression()) #18, !dbg !4263
  call void @llvm.dbg.value(metadata i32 2, metadata !4239, metadata !DIExpression()) #18, !dbg !4263
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #18, !dbg !4267
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4267
  %162 = mul i64 %158, %73, !dbg !4268
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4268
  %164 = or i1 %159, %161, !dbg !4269
  call void @llvm.dbg.value(metadata i1 %164, metadata !4232, metadata !DIExpression()) #18, !dbg !4263
  call void @llvm.dbg.value(metadata i32 1, metadata !4239, metadata !DIExpression()) #18, !dbg !4263
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #18, !dbg !4267
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4267
  %167 = mul i64 %163, %73, !dbg !4268
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4268
  %169 = or i1 %164, %166, !dbg !4269
  call void @llvm.dbg.value(metadata i1 %169, metadata !4232, metadata !DIExpression()) #18, !dbg !4263
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()) #18, !dbg !4263
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #18, !dbg !4267
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4267
  %172 = mul i64 %168, %73, !dbg !4268
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4268
  %174 = or i1 %169, %171, !dbg !4269
  call void @llvm.dbg.value(metadata i1 %174, metadata !4232, metadata !DIExpression()) #18, !dbg !4263
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4263
  br label %272, !dbg !4255

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4232, metadata !DIExpression()) #18, !dbg !4270
  call void @llvm.dbg.value(metadata i32 5, metadata !4239, metadata !DIExpression()) #18, !dbg !4270
  call void @llvm.dbg.value(metadata i32 undef, metadata !4243, metadata !DIExpression()) #18, !dbg !4272
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4274
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4274
  %178 = mul i64 %49, %73, !dbg !4275
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4275
  call void @llvm.dbg.value(metadata i1 %177, metadata !4232, metadata !DIExpression()) #18, !dbg !4270
  call void @llvm.dbg.value(metadata i32 4, metadata !4239, metadata !DIExpression()) #18, !dbg !4270
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #18, !dbg !4274
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4274
  %182 = mul i64 %179, %73, !dbg !4275
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4275
  %184 = or i1 %177, %181, !dbg !4276
  call void @llvm.dbg.value(metadata i1 %184, metadata !4232, metadata !DIExpression()) #18, !dbg !4270
  call void @llvm.dbg.value(metadata i32 3, metadata !4239, metadata !DIExpression()) #18, !dbg !4270
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #18, !dbg !4274
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4274
  %187 = mul i64 %183, %73, !dbg !4275
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4275
  %189 = or i1 %184, %186, !dbg !4276
  call void @llvm.dbg.value(metadata i1 %189, metadata !4232, metadata !DIExpression()) #18, !dbg !4270
  call void @llvm.dbg.value(metadata i32 2, metadata !4239, metadata !DIExpression()) #18, !dbg !4270
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #18, !dbg !4274
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4274
  %192 = mul i64 %188, %73, !dbg !4275
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4275
  %194 = or i1 %189, %191, !dbg !4276
  call void @llvm.dbg.value(metadata i1 %194, metadata !4232, metadata !DIExpression()) #18, !dbg !4270
  call void @llvm.dbg.value(metadata i32 1, metadata !4239, metadata !DIExpression()) #18, !dbg !4270
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #18, !dbg !4274
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4274
  %197 = mul i64 %193, %73, !dbg !4275
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4275
  %199 = or i1 %194, %196, !dbg !4276
  call void @llvm.dbg.value(metadata i1 %199, metadata !4232, metadata !DIExpression()) #18, !dbg !4270
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()) #18, !dbg !4270
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #18, !dbg !4274
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4274
  %202 = mul i64 %198, %73, !dbg !4275
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4275
  %204 = or i1 %199, %201, !dbg !4276
  call void @llvm.dbg.value(metadata i1 %204, metadata !4232, metadata !DIExpression()) #18, !dbg !4270
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4270
  br label %272, !dbg !4255

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4243, metadata !DIExpression()) #18, !dbg !4277
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #18, !dbg !4279
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4279
  %208 = shl i64 %49, 9, !dbg !4280
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4280
  call void @llvm.dbg.value(metadata i1 %207, metadata !4154, metadata !DIExpression()), !dbg !4210
  br label %272, !dbg !4281

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4243, metadata !DIExpression()) #18, !dbg !4282
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #18, !dbg !4284
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4284
  %213 = shl i64 %49, 10, !dbg !4285
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4285
  call void @llvm.dbg.value(metadata i1 %212, metadata !4154, metadata !DIExpression()), !dbg !4210
  br label %272, !dbg !4286

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4238, metadata !DIExpression()) #18, !dbg !4287
  call void @llvm.dbg.value(metadata i32 0, metadata !4232, metadata !DIExpression()) #18, !dbg !4287
  call void @llvm.dbg.value(metadata i32 2, metadata !4239, metadata !DIExpression()) #18, !dbg !4287
  call void @llvm.dbg.value(metadata i32 undef, metadata !4243, metadata !DIExpression()) #18, !dbg !4289
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4291
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4291
  %218 = mul i64 %49, %73, !dbg !4292
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4292
  call void @llvm.dbg.value(metadata i1 %217, metadata !4232, metadata !DIExpression()) #18, !dbg !4287
  call void @llvm.dbg.value(metadata i32 1, metadata !4239, metadata !DIExpression()) #18, !dbg !4287
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #18, !dbg !4291
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4291
  %222 = mul i64 %219, %73, !dbg !4292
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4292
  %224 = or i1 %217, %221, !dbg !4293
  call void @llvm.dbg.value(metadata i1 %224, metadata !4232, metadata !DIExpression()) #18, !dbg !4287
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()) #18, !dbg !4287
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #18, !dbg !4291
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4291
  %227 = mul i64 %223, %73, !dbg !4292
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4292
  %229 = or i1 %224, %226, !dbg !4293
  call void @llvm.dbg.value(metadata i1 %229, metadata !4232, metadata !DIExpression()) #18, !dbg !4287
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4287
  br label %272, !dbg !4255

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4238, metadata !DIExpression()) #18, !dbg !4294
  call void @llvm.dbg.value(metadata i32 0, metadata !4232, metadata !DIExpression()) #18, !dbg !4294
  call void @llvm.dbg.value(metadata i32 undef, metadata !4239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4294
  call void @llvm.dbg.value(metadata i32 undef, metadata !4243, metadata !DIExpression()) #18, !dbg !4296
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4298
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4298
  %233 = mul i64 %49, %73, !dbg !4299
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4299
  call void @llvm.dbg.value(metadata i1 %232, metadata !4232, metadata !DIExpression()) #18, !dbg !4294
  call void @llvm.dbg.value(metadata i32 undef, metadata !4239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4294
  br label %272, !dbg !4255

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4238, metadata !DIExpression()) #18, !dbg !4300
  call void @llvm.dbg.value(metadata i32 0, metadata !4232, metadata !DIExpression()) #18, !dbg !4300
  call void @llvm.dbg.value(metadata i32 1, metadata !4239, metadata !DIExpression()) #18, !dbg !4300
  call void @llvm.dbg.value(metadata i32 undef, metadata !4243, metadata !DIExpression()) #18, !dbg !4302
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4304
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !4304
  %238 = mul i64 %49, %73, !dbg !4305
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !4305
  call void @llvm.dbg.value(metadata i1 %237, metadata !4232, metadata !DIExpression()) #18, !dbg !4300
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()) #18, !dbg !4300
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #18, !dbg !4304
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4304
  %242 = mul i64 %239, %73, !dbg !4305
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4305
  %244 = or i1 %237, %241, !dbg !4306
  call void @llvm.dbg.value(metadata i1 %244, metadata !4232, metadata !DIExpression()) #18, !dbg !4300
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4300
  br label %272, !dbg !4255

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4238, metadata !DIExpression()) #18, !dbg !4307
  call void @llvm.dbg.value(metadata i32 0, metadata !4232, metadata !DIExpression()) #18, !dbg !4307
  call void @llvm.dbg.value(metadata i32 3, metadata !4239, metadata !DIExpression()) #18, !dbg !4307
  call void @llvm.dbg.value(metadata i32 undef, metadata !4243, metadata !DIExpression()) #18, !dbg !4309
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4311
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4311
  %248 = mul i64 %49, %73, !dbg !4312
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4312
  call void @llvm.dbg.value(metadata i1 %247, metadata !4232, metadata !DIExpression()) #18, !dbg !4307
  call void @llvm.dbg.value(metadata i32 2, metadata !4239, metadata !DIExpression()) #18, !dbg !4307
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #18, !dbg !4311
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4311
  %252 = mul i64 %249, %73, !dbg !4312
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4312
  %254 = or i1 %247, %251, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %254, metadata !4232, metadata !DIExpression()) #18, !dbg !4307
  call void @llvm.dbg.value(metadata i32 1, metadata !4239, metadata !DIExpression()) #18, !dbg !4307
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #18, !dbg !4311
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4311
  %257 = mul i64 %253, %73, !dbg !4312
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4312
  %259 = or i1 %254, %256, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %259, metadata !4232, metadata !DIExpression()) #18, !dbg !4307
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()) #18, !dbg !4307
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #18, !dbg !4311
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4311
  %262 = mul i64 %258, %73, !dbg !4312
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4312
  %264 = or i1 %259, %261, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %264, metadata !4232, metadata !DIExpression()) #18, !dbg !4307
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4307
  br label %272, !dbg !4255

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4243, metadata !DIExpression()) #18, !dbg !4314
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #18, !dbg !4316
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4316
  %268 = shl i64 %49, 1, !dbg !4317
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4317
  call void @llvm.dbg.value(metadata i1 %267, metadata !4154, metadata !DIExpression()), !dbg !4210
  br label %272, !dbg !4318

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4144, metadata !DIExpression()), !dbg !4155
  store i64 %49, i64* %3, align 8, !dbg !4319, !tbaa !1408
  %271 = or i32 %48, 2, !dbg !4320
  br label %285, !dbg !4321

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !4155
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4322
  call void @llvm.dbg.value(metadata i32 %275, metadata !4154, metadata !DIExpression()), !dbg !4210
  %276 = or i32 %48, %275, !dbg !4255
  call void @llvm.dbg.value(metadata i32 %276, metadata !4145, metadata !DIExpression()), !dbg !4155
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4323
  store i8* %277, i8** %25, align 8, !dbg !4323, !tbaa !1301
  %278 = load i8, i8* %277, align 1, !dbg !4324, !tbaa !1436
  %279 = icmp eq i8 %278, 0, !dbg !4324
  %280 = or i32 %276, 2, !dbg !4326
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %281, metadata !4145, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i32 %281, metadata !4145, metadata !DIExpression()), !dbg !4155
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4328
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4329
  call void @llvm.dbg.value(metadata i32 %284, metadata !4145, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %283, metadata !4144, metadata !DIExpression()), !dbg !4155
  store i64 %283, i64* %3, align 8, !dbg !4330, !tbaa !1408
  br label %285, !dbg !4331

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !4155
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #18, !dbg !4332
  ret i32 %286, !dbg !4332
}

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !4333 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4335, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %1, metadata !4336, metadata !DIExpression()), !dbg !4341
  %3 = icmp eq i64 %0, 0, !dbg !4342
  %4 = icmp eq i64 %1, 0, !dbg !4343
  %5 = or i1 %3, %4, !dbg !4344
  br i1 %5, label %11, label %6, !dbg !4344

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4338, metadata !DIExpression()), !dbg !4345
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4346
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4346
  br i1 %8, label %9, label %11, !dbg !4348

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !4349
  store i32 12, i32* %10, align 4, !dbg !4351, !tbaa !1400
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4335, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %12, metadata !4336, metadata !DIExpression()), !dbg !4341
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !4352
  call void @llvm.dbg.value(metadata i8* %14, metadata !4337, metadata !DIExpression()), !dbg !4341
  br label %15, !dbg !4353

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4341
  ret i8* %16, !dbg !4354
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4355 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4363, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i8* %1, metadata !4364, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %2, metadata !4365, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4366, metadata !DIExpression()), !dbg !4372
  %6 = bitcast i32* %5 to i8*, !dbg !4373
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4373
  %7 = icmp eq i32* %0, null, !dbg !4374
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4376
  call void @llvm.dbg.value(metadata i32* %8, metadata !4363, metadata !DIExpression()), !dbg !4372
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !4377
  call void @llvm.dbg.value(metadata i64 %9, metadata !4367, metadata !DIExpression()), !dbg !4372
  %10 = icmp ugt i64 %9, -3, !dbg !4378
  %11 = icmp ne i64 %2, 0, !dbg !4379
  %12 = and i1 %11, %10, !dbg !4380
  br i1 %12, label %13, label %18, !dbg !4380

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !4381
  br i1 %14, label %18, label %15, !dbg !4382

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4383, !tbaa !1436
  call void @llvm.dbg.value(metadata i8 %16, metadata !4369, metadata !DIExpression()), !dbg !4384
  %17 = zext i8 %16 to i32, !dbg !4385
  store i32 %17, i32* %8, align 4, !dbg !4386, !tbaa !1400
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4372
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4387
  ret i64 %19, !dbg !4387
}

; Function Attrs: nounwind
declare !dbg !635 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4388 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4394, metadata !DIExpression()), !dbg !4399
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !4400
  call void @llvm.dbg.value(metadata i1 undef, metadata !4395, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4401, metadata !DIExpression()), !dbg !4405
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4407
  %4 = load i32, i32* %3, align 8, !dbg !4407, !tbaa !4408
  %5 = and i32 %4, 32, !dbg !4407
  %6 = icmp eq i32 %5, 0, !dbg !4410
  call void @llvm.dbg.value(metadata i1 %6, metadata !4397, metadata !DIExpression()), !dbg !4399
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !4411
  %8 = icmp ne i32 %7, 0, !dbg !4412
  call void @llvm.dbg.value(metadata i1 %8, metadata !4398, metadata !DIExpression()), !dbg !4399
  br i1 %6, label %9, label %19, !dbg !4413

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4415
  call void @llvm.dbg.value(metadata i1 %10, metadata !4395, metadata !DIExpression()), !dbg !4399
  %11 = xor i1 %8, true, !dbg !4416
  %12 = or i1 %10, %11, !dbg !4416
  %13 = sext i1 %8 to i32, !dbg !4416
  br i1 %12, label %22, label %14, !dbg !4416

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !4417
  %16 = load i32, i32* %15, align 4, !dbg !4417, !tbaa !1400
  %17 = icmp ne i32 %16, 9, !dbg !4418
  %18 = sext i1 %17 to i32, !dbg !4419
  br label %22, !dbg !4419

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4420

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !4422
  store i32 0, i32* %21, align 4, !dbg !4424, !tbaa !1400
  br label %22, !dbg !4422

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4399
  ret i32 %23, !dbg !4425
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4426 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4428, metadata !DIExpression()), !dbg !4433
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4434
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4434
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4429, metadata !DIExpression()), !dbg !4435
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !4436
  %5 = icmp eq i32 %4, 0, !dbg !4436
  br i1 %5, label %6, label %13, !dbg !4438

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4439
  %8 = load i16, i16* %7, align 16, !dbg !4439
  %9 = icmp eq i16 %8, 67, !dbg !4439
  br i1 %9, label %13, label %10, !dbg !4440

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i64 6), !dbg !4441
  %12 = icmp ne i32 %11, 0, !dbg !4442
  br label %13, !dbg !4440

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4433
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4443
  ret i1 %14, !dbg !4443
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #11 !dbg !4444 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4449, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i8* %1, metadata !4450, metadata !DIExpression()), !dbg !4452
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !4453
  call void @llvm.dbg.value(metadata i8* %3, metadata !4451, metadata !DIExpression()), !dbg !4452
  store i8 0, i8* %3, align 1, !dbg !4454, !tbaa !1436
  br label %4, !dbg !4455

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !4452
  call void @llvm.dbg.value(metadata i8* %6, metadata !4451, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i64 %5, metadata !4449, metadata !DIExpression()), !dbg !4452
  %7 = urem i64 %5, 10, !dbg !4456
  %8 = trunc i64 %7 to i8, !dbg !4459
  %9 = or i8 %8, 48, !dbg !4459
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !4460
  call void @llvm.dbg.value(metadata i8* %10, metadata !4451, metadata !DIExpression()), !dbg !4452
  store i8 %9, i8* %10, align 1, !dbg !4461, !tbaa !1436
  %11 = udiv i64 %5, 10, !dbg !4462
  call void @llvm.dbg.value(metadata i64 %11, metadata !4449, metadata !DIExpression()), !dbg !4452
  %12 = icmp ugt i64 %5, 9, !dbg !4463
  br i1 %12, label %4, label %13, !dbg !4464, !llvm.loop !4465

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !4451, metadata !DIExpression()), !dbg !4452
  ret i8* %10, !dbg !4468
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4469 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !4472
  call void @llvm.dbg.value(metadata i8* %1, metadata !4471, metadata !DIExpression()), !dbg !4473
  %2 = icmp eq i8* %1, null, !dbg !4474
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), i8* %1, !dbg !4476
  call void @llvm.dbg.value(metadata i8* %3, metadata !4471, metadata !DIExpression()), !dbg !4473
  %4 = load i8, i8* %3, align 1, !dbg !4477, !tbaa !1436
  %5 = icmp eq i8 %4, 0, !dbg !4481
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i8* %3, !dbg !4482
  call void @llvm.dbg.value(metadata i8* %6, metadata !4471, metadata !DIExpression()), !dbg !4473
  ret i8* %6, !dbg !4483
}

; Function Attrs: nounwind
declare !dbg !1093 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mgetgroups(i8* %0, i32 %1, i32** nocapture %2) local_unnamed_addr #8 !dbg !1100 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1105, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 %1, metadata !1106, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32** %2, metadata !1107, metadata !DIExpression()), !dbg !4484
  %5 = bitcast i32* %4 to i8*, !dbg !4485
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4485
  %6 = icmp eq i8* %0, null, !dbg !4486
  br i1 %6, label %43, label %7, !dbg !4487

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !1108, metadata !DIExpression()), !dbg !4484
  store i32 10, i32* %4, align 4, !dbg !4488, !tbaa !1400
  call void @llvm.dbg.value(metadata i32* null, metadata !4489, metadata !DIExpression()) #18, !dbg !4495
  call void @llvm.dbg.value(metadata i64 10, metadata !4494, metadata !DIExpression()) #18, !dbg !4495
  %8 = tail call dereferenceable_or_null(40) i8* @malloc(i64 40), !dbg !4497
  call void @llvm.dbg.value(metadata i8* %8, metadata !1110, metadata !DIExpression()), !dbg !4484
  %9 = icmp eq i8* %8, null, !dbg !4498
  br i1 %9, label %144, label %10, !dbg !4500

10:                                               ; preds = %7, %38
  %11 = phi i32 [ %39, %38 ], [ 10, %7 ], !dbg !4501
  %12 = phi i8* [ %29, %38 ], [ %8, %7 ]
  %13 = bitcast i8* %12 to i32*, !dbg !4502
  call void @llvm.dbg.value(metadata i32* %13, metadata !1110, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 %11, metadata !1108, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 %11, metadata !1115, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i32* %4, metadata !1108, metadata !DIExpression(DW_OP_deref)), !dbg !4484
  %14 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %13, i32* nonnull %4) #18, !dbg !4504
  call void @llvm.dbg.value(metadata i32 %14, metadata !1109, metadata !DIExpression()), !dbg !4484
  %15 = icmp slt i32 %14, 0, !dbg !4505
  %16 = load i32, i32* %4, align 4, !dbg !4503, !tbaa !1400
  %17 = icmp eq i32 %11, %16, !dbg !4507
  %18 = and i1 %15, %17, !dbg !4508
  call void @llvm.dbg.value(metadata i32 %16, metadata !1108, metadata !DIExpression()), !dbg !4484
  br i1 %18, label %19, label %21, !dbg !4508

19:                                               ; preds = %10
  %20 = shl nsw i32 %11, 1, !dbg !4509
  call void @llvm.dbg.value(metadata i32 %20, metadata !1108, metadata !DIExpression()), !dbg !4484
  store i32 %20, i32* %4, align 4, !dbg !4509, !tbaa !1400
  br label %21, !dbg !4510

21:                                               ; preds = %10, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !4511
  call void @llvm.dbg.value(metadata i32 %22, metadata !1108, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %13, metadata !4489, metadata !DIExpression()) #18, !dbg !4512
  call void @llvm.dbg.value(metadata i32 %22, metadata !4494, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !4512
  %23 = icmp slt i32 %22, 0, !dbg !4514
  br i1 %23, label %24, label %26, !dbg !4516

24:                                               ; preds = %21
  %25 = tail call i32* @__errno_location() #24, !dbg !4517
  store i32 12, i32* %25, align 4, !dbg !4519, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %29, metadata !1111, metadata !DIExpression()), !dbg !4503
  br label %33, !dbg !4520

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64, !dbg !4511
  call void @llvm.dbg.value(metadata i64 %27, metadata !4494, metadata !DIExpression()) #18, !dbg !4512
  %28 = shl nuw nsw i64 %27, 2, !dbg !4521
  %29 = call i8* @realloc(i8* nonnull %12, i64 %28) #18, !dbg !4522
  call void @llvm.dbg.value(metadata i8* %29, metadata !1111, metadata !DIExpression()), !dbg !4503
  %30 = icmp eq i8* %29, null, !dbg !4523
  br i1 %30, label %31, label %36, !dbg !4520

31:                                               ; preds = %26
  %32 = tail call i32* @__errno_location() #24, !dbg !4524
  br label %33, !dbg !4524

33:                                               ; preds = %31, %24
  %34 = phi i32* [ %32, %31 ], [ %25, %24 ], !dbg !4524
  %35 = load i32, i32* %34, align 4, !dbg !4524, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %35, metadata !1116, metadata !DIExpression()), !dbg !4525
  call void @free(i8* nonnull %12) #18, !dbg !4526
  store i32 %35, i32* %34, align 4, !dbg !4527, !tbaa !1400
  br label %144

36:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %29, metadata !1111, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i8* %29, metadata !1110, metadata !DIExpression()), !dbg !4484
  %37 = icmp sgt i32 %14, -1, !dbg !4528
  br i1 %37, label %40, label %38, !dbg !4530

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4, !dbg !4501, !tbaa !1400
  br label %10, !dbg !4530

40:                                               ; preds = %36
  %41 = bitcast i32** %2 to i8**, !dbg !4531
  store i8* %29, i8** %41, align 8, !dbg !4531, !tbaa !1301
  %42 = load i32, i32* %4, align 4, !dbg !4533, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %42, metadata !1108, metadata !DIExpression()), !dbg !4484
  br label %144, !dbg !4534

43:                                               ; preds = %3
  %44 = tail call i32 @getgroups(i32 0, i32* null) #18, !dbg !4535
  call void @llvm.dbg.value(metadata i32 %44, metadata !1108, metadata !DIExpression()), !dbg !4484
  store i32 %44, i32* %4, align 4, !dbg !4536, !tbaa !1400
  %45 = icmp slt i32 %44, 0, !dbg !4537
  br i1 %45, label %46, label %58, !dbg !4539

46:                                               ; preds = %43
  %47 = tail call i32* @__errno_location() #24, !dbg !4540
  %48 = load i32, i32* %47, align 4, !dbg !4540, !tbaa !1400
  %49 = icmp eq i32 %48, 38, !dbg !4543
  br i1 %49, label %50, label %144, !dbg !4544

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32* null, metadata !4489, metadata !DIExpression()) #18, !dbg !4545
  call void @llvm.dbg.value(metadata i64 1, metadata !4494, metadata !DIExpression()) #18, !dbg !4545
  %51 = tail call dereferenceable_or_null(4) i8* @malloc(i64 4), !dbg !4547
  call void @llvm.dbg.value(metadata i8* %51, metadata !1110, metadata !DIExpression()), !dbg !4484
  %52 = icmp eq i8* %51, null, !dbg !4548
  br i1 %52, label %144, label %53, !dbg !4549

53:                                               ; preds = %50
  %54 = bitcast i8* %51 to i32*, !dbg !4547
  call void @llvm.dbg.value(metadata i32* %54, metadata !1110, metadata !DIExpression()), !dbg !4484
  %55 = bitcast i32** %2 to i8**, !dbg !4550
  store i8* %51, i8** %55, align 8, !dbg !4550, !tbaa !1301
  store i32 %1, i32* %54, align 4, !dbg !4552, !tbaa !1400
  %56 = icmp ne i32 %1, -1, !dbg !4553
  %57 = zext i1 %56 to i32, !dbg !4553
  br label %144, !dbg !4554

58:                                               ; preds = %43
  %59 = icmp ne i32 %44, 0, !dbg !4555
  %60 = icmp eq i32 %1, -1, !dbg !4557
  %61 = and i1 %60, %59, !dbg !4558
  br i1 %61, label %64, label %62, !dbg !4558

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 %44, metadata !1108, metadata !DIExpression()), !dbg !4484
  %63 = add nuw nsw i32 %44, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i32 %63, metadata !1108, metadata !DIExpression()), !dbg !4484
  store i32 %63, i32* %4, align 4, !dbg !4559, !tbaa !1400
  br label %64, !dbg !4560

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %44, %58 ], [ %63, %62 ], !dbg !4561
  call void @llvm.dbg.value(metadata i32 %65, metadata !1108, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* null, metadata !4489, metadata !DIExpression()) #18, !dbg !4562
  call void @llvm.dbg.value(metadata i32 %65, metadata !4494, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !4562
  %66 = zext i32 %65 to i64, !dbg !4561
  call void @llvm.dbg.value(metadata i64 %66, metadata !4494, metadata !DIExpression()) #18, !dbg !4562
  %67 = shl nuw nsw i64 %66, 2, !dbg !4564
  %68 = tail call i8* @malloc(i64 %67), !dbg !4565
  %69 = bitcast i8* %68 to i32*, !dbg !4565
  call void @llvm.dbg.value(metadata i32* %69, metadata !1110, metadata !DIExpression()), !dbg !4484
  %70 = icmp eq i8* %68, null, !dbg !4566
  br i1 %70, label %144, label %71, !dbg !4568

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 undef, metadata !1108, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 %65, metadata !1108, metadata !DIExpression()), !dbg !4484
  %72 = icmp ne i32 %1, -1, !dbg !4569
  %73 = sext i1 %72 to i32, !dbg !4570
  %74 = add nsw i32 %65, %73, !dbg !4570
  %75 = zext i1 %72 to i64, !dbg !4571
  %76 = getelementptr inbounds i32, i32* %69, i64 %75, !dbg !4571
  %77 = tail call i32 @getgroups(i32 %74, i32* nonnull %76) #18, !dbg !4572
  call void @llvm.dbg.value(metadata i32 %77, metadata !1109, metadata !DIExpression()), !dbg !4484
  %78 = icmp slt i32 %77, 0, !dbg !4573
  br i1 %78, label %79, label %82, !dbg !4574

79:                                               ; preds = %71
  %80 = tail call i32* @__errno_location() #24, !dbg !4575
  %81 = load i32, i32* %80, align 4, !dbg !4575, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %81, metadata !1119, metadata !DIExpression()), !dbg !4576
  tail call void @free(i8* nonnull %68) #18, !dbg !4577
  store i32 %81, i32* %80, align 4, !dbg !4578, !tbaa !1400
  br label %144

82:                                               ; preds = %71
  br i1 %60, label %85, label %83, !dbg !4579

83:                                               ; preds = %82
  store i32 %1, i32* %69, align 4, !dbg !4581, !tbaa !1400
  %84 = add nuw nsw i32 %77, 1, !dbg !4583
  call void @llvm.dbg.value(metadata i32 %84, metadata !1109, metadata !DIExpression()), !dbg !4484
  br label %85, !dbg !4584

85:                                               ; preds = %82, %83
  %86 = phi i32 [ %84, %83 ], [ %77, %82 ], !dbg !4484
  call void @llvm.dbg.value(metadata i32 %86, metadata !1109, metadata !DIExpression()), !dbg !4484
  %87 = bitcast i32** %2 to i8**, !dbg !4585
  store i8* %68, i8** %87, align 8, !dbg !4585, !tbaa !1301
  %88 = icmp sgt i32 %86, 1, !dbg !4586
  br i1 %88, label %89, label %144, !dbg !4587

89:                                               ; preds = %85
  %90 = load i32, i32* %69, align 4, !dbg !4588, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %90, metadata !1122, metadata !DIExpression()), !dbg !4589
  %91 = zext i32 %86 to i64, !dbg !4590
  %92 = getelementptr inbounds i32, i32* %69, i64 %91, !dbg !4590
  call void @llvm.dbg.value(metadata i32* %92, metadata !1126, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i32* %69, metadata !1125, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4589
  %93 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !4591
  %94 = bitcast i8* %93 to i32*, !dbg !4591
  call void @llvm.dbg.value(metadata i32* %94, metadata !1125, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i32 %86, metadata !1109, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %69, metadata !1110, metadata !DIExpression()), !dbg !4484
  %95 = icmp ugt i32* %92, %94, !dbg !4593
  br i1 %95, label %96, label %144, !dbg !4595

96:                                               ; preds = %89
  %97 = shl nuw nsw i64 %91, 2, !dbg !4595
  %98 = add nsw i64 %97, -5, !dbg !4595
  %99 = and i64 %98, 4, !dbg !4595
  %100 = icmp eq i64 %99, 0, !dbg !4595
  br i1 %100, label %101, label %115, !dbg !4595

101:                                              ; preds = %96
  call void @llvm.dbg.value(metadata i32 %86, metadata !1109, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %69, metadata !1110, metadata !DIExpression()), !dbg !4484
  %102 = load i32, i32* %94, align 4, !dbg !4596, !tbaa !1400
  %103 = icmp eq i32 %102, %90, !dbg !4599
  br i1 %103, label %107, label %104, !dbg !4600

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !4601
  %106 = bitcast i8* %105 to i32*, !dbg !4601
  call void @llvm.dbg.value(metadata i32* %106, metadata !1110, metadata !DIExpression()), !dbg !4484
  store i32 %102, i32* %106, align 4, !dbg !4602, !tbaa !1400
  br label %109

107:                                              ; preds = %101
  %108 = add nsw i32 %86, -1, !dbg !4603
  call void @llvm.dbg.value(metadata i32 %108, metadata !1109, metadata !DIExpression()), !dbg !4484
  br label %109, !dbg !4604

109:                                              ; preds = %107, %104
  %110 = phi i32 [ %90, %107 ], [ %102, %104 ]
  %111 = phi i32* [ %69, %107 ], [ %106, %104 ], !dbg !4484
  %112 = phi i32 [ %108, %107 ], [ %86, %104 ], !dbg !4484
  call void @llvm.dbg.value(metadata i32 %112, metadata !1109, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %111, metadata !1110, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %94, metadata !1125, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4589
  %113 = getelementptr inbounds i8, i8* %68, i64 8, !dbg !4591
  %114 = bitcast i8* %113 to i32*, !dbg !4591
  call void @llvm.dbg.value(metadata i32* %114, metadata !1125, metadata !DIExpression()), !dbg !4589
  br label %115, !dbg !4595

115:                                              ; preds = %109, %96
  %116 = phi i32 [ %90, %96 ], [ %110, %109 ]
  %117 = phi i32* [ %94, %96 ], [ %114, %109 ]
  %118 = phi i32 [ %86, %96 ], [ %112, %109 ]
  %119 = phi i32* [ %69, %96 ], [ %111, %109 ]
  %120 = phi i32 [ undef, %96 ], [ %112, %109 ]
  %121 = icmp eq i64 %98, 3, !dbg !4595
  br i1 %121, label %144, label %122, !dbg !4595

122:                                              ; preds = %115, %150
  %123 = phi i32 [ %151, %150 ], [ %116, %115 ]
  %124 = phi i32* [ %154, %150 ], [ %117, %115 ]
  %125 = phi i32 [ %153, %150 ], [ %118, %115 ]
  %126 = phi i32* [ %152, %150 ], [ %119, %115 ]
  call void @llvm.dbg.value(metadata i32 %125, metadata !1109, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %126, metadata !1110, metadata !DIExpression()), !dbg !4484
  %127 = load i32, i32* %124, align 4, !dbg !4596, !tbaa !1400
  %128 = icmp eq i32 %127, %90, !dbg !4605
  %129 = icmp eq i32 %127, %123, !dbg !4599
  %130 = or i1 %128, %129, !dbg !4600
  br i1 %130, label %131, label %133, !dbg !4600

131:                                              ; preds = %122
  %132 = add nsw i32 %125, -1, !dbg !4603
  call void @llvm.dbg.value(metadata i32 %132, metadata !1109, metadata !DIExpression()), !dbg !4484
  br label %135, !dbg !4604

133:                                              ; preds = %122
  %134 = getelementptr inbounds i32, i32* %126, i64 1, !dbg !4601
  call void @llvm.dbg.value(metadata i32* %134, metadata !1110, metadata !DIExpression()), !dbg !4484
  store i32 %127, i32* %134, align 4, !dbg !4602, !tbaa !1400
  br label %135

135:                                              ; preds = %131, %133
  %136 = phi i32 [ %123, %131 ], [ %127, %133 ]
  %137 = phi i32* [ %126, %131 ], [ %134, %133 ], !dbg !4484
  %138 = phi i32 [ %132, %131 ], [ %125, %133 ], !dbg !4484
  call void @llvm.dbg.value(metadata i32 %138, metadata !1109, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %137, metadata !1110, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %124, metadata !1125, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4589
  %139 = getelementptr inbounds i32, i32* %124, i64 1, !dbg !4591
  call void @llvm.dbg.value(metadata i32* %139, metadata !1125, metadata !DIExpression()), !dbg !4589
  %140 = load i32, i32* %139, align 4, !dbg !4596, !tbaa !1400
  %141 = icmp eq i32 %140, %90, !dbg !4605
  %142 = icmp eq i32 %140, %136, !dbg !4599
  %143 = or i1 %141, %142, !dbg !4600
  br i1 %143, label %148, label %146, !dbg !4600

144:                                              ; preds = %115, %150, %89, %40, %33, %85, %64, %46, %50, %7, %79, %53
  %145 = phi i32 [ %57, %53 ], [ -1, %79 ], [ -1, %7 ], [ -1, %50 ], [ -1, %46 ], [ -1, %64 ], [ %86, %85 ], [ %42, %40 ], [ -1, %33 ], [ %86, %89 ], [ %120, %115 ], [ %153, %150 ], !dbg !4484
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4606
  ret i32 %145, !dbg !4606

146:                                              ; preds = %135
  %147 = getelementptr inbounds i32, i32* %137, i64 1, !dbg !4601
  call void @llvm.dbg.value(metadata i32* %147, metadata !1110, metadata !DIExpression()), !dbg !4484
  store i32 %140, i32* %147, align 4, !dbg !4602, !tbaa !1400
  br label %150

148:                                              ; preds = %135
  %149 = add nsw i32 %138, -1, !dbg !4603
  call void @llvm.dbg.value(metadata i32 %149, metadata !1109, metadata !DIExpression()), !dbg !4484
  br label %150, !dbg !4604

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %136, %148 ], [ %140, %146 ]
  %152 = phi i32* [ %137, %148 ], [ %147, %146 ], !dbg !4484
  %153 = phi i32 [ %149, %148 ], [ %138, %146 ], !dbg !4484
  call void @llvm.dbg.value(metadata i32 %153, metadata !1109, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %152, metadata !1110, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32* %139, metadata !1125, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4589
  %154 = getelementptr inbounds i32, i32* %124, i64 2, !dbg !4591
  call void @llvm.dbg.value(metadata i32* %154, metadata !1125, metadata !DIExpression()), !dbg !4589
  %155 = icmp ult i32* %154, %92, !dbg !4593
  br i1 %155, label %122, label %144, !dbg !4595, !llvm.loop !4607
}

declare !dbg !1130 i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4609 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4613, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i8* %1, metadata !4614, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i64 %2, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i32 %0, metadata !4617, metadata !DIExpression()) #18, !dbg !4626
  call void @llvm.dbg.value(metadata i8* %1, metadata !4620, metadata !DIExpression()) #18, !dbg !4626
  call void @llvm.dbg.value(metadata i64 %2, metadata !4621, metadata !DIExpression()) #18, !dbg !4626
  call void @llvm.dbg.value(metadata i32 %0, metadata !4628, metadata !DIExpression()) #18, !dbg !4634
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4636
  call void @llvm.dbg.value(metadata i8* %4, metadata !4633, metadata !DIExpression()) #18, !dbg !4634
  call void @llvm.dbg.value(metadata i8* %4, metadata !4622, metadata !DIExpression()) #18, !dbg !4626
  %5 = icmp eq i8* %4, null, !dbg !4637
  br i1 %5, label %6, label %9, !dbg !4638

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4639
  br i1 %7, label %19, label %8, !dbg !4642

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4643, !tbaa !1436
  br label %19, !dbg !4644

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !4645
  call void @llvm.dbg.value(metadata i64 %10, metadata !4623, metadata !DIExpression()) #18, !dbg !4646
  %11 = icmp ult i64 %10, %2, !dbg !4647
  br i1 %11, label %12, label %14, !dbg !4649

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4650
  call void @llvm.dbg.value(metadata i8* %1, metadata !4652, metadata !DIExpression()) #18, !dbg !4657
  call void @llvm.dbg.value(metadata i8* %4, metadata !4655, metadata !DIExpression()) #18, !dbg !4657
  call void @llvm.dbg.value(metadata i64 %13, metadata !4656, metadata !DIExpression()) #18, !dbg !4657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !4659
  br label %19, !dbg !4660

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4661
  br i1 %15, label %19, label %16, !dbg !4664

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4665
  call void @llvm.dbg.value(metadata i8* %1, metadata !4652, metadata !DIExpression()) #18, !dbg !4667
  call void @llvm.dbg.value(metadata i8* %4, metadata !4655, metadata !DIExpression()) #18, !dbg !4667
  call void @llvm.dbg.value(metadata i64 %17, metadata !4656, metadata !DIExpression()) #18, !dbg !4667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !4669
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4670
  store i8 0, i8* %18, align 1, !dbg !4671, !tbaa !1436
  br label %19, !dbg !4672

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4673
  ret i32 %20, !dbg !4674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4675 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4677, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i32 %0, metadata !4628, metadata !DIExpression()) #18, !dbg !4679
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4681
  call void @llvm.dbg.value(metadata i8* %2, metadata !4633, metadata !DIExpression()) #18, !dbg !4679
  ret i8* %2, !dbg !4682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4683 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4689, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i32 0, metadata !4690, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i32 0, metadata !4692, metadata !DIExpression()), !dbg !4693
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4694
  call void @llvm.dbg.value(metadata i32 %2, metadata !4691, metadata !DIExpression()), !dbg !4693
  %3 = icmp slt i32 %2, 0, !dbg !4695
  br i1 %3, label %4, label %6, !dbg !4697

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4698
  br label %24, !dbg !4699

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4700
  %8 = icmp eq i32 %7, 0, !dbg !4700
  br i1 %8, label %13, label %9, !dbg !4702

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4703
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !4704
  %12 = icmp eq i64 %11, -1, !dbg !4705
  br i1 %12, label %16, label %13, !dbg !4706

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !4707
  %15 = icmp eq i32 %14, 0, !dbg !4707
  br i1 %15, label %16, label %18, !dbg !4708

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4690, metadata !DIExpression()), !dbg !4693
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4709
  call void @llvm.dbg.value(metadata i32 %21, metadata !4692, metadata !DIExpression()), !dbg !4693
  br label %24, !dbg !4710

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4711
  %20 = load i32, i32* %19, align 4, !dbg !4711, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 %20, metadata !4690, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i32 %20, metadata !4690, metadata !DIExpression()), !dbg !4693
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4709
  call void @llvm.dbg.value(metadata i32 %21, metadata !4692, metadata !DIExpression()), !dbg !4693
  %22 = icmp eq i32 %20, 0, !dbg !4712
  br i1 %22, label %24, label %23, !dbg !4710

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4714, !tbaa !1400
  call void @llvm.dbg.value(metadata i32 -1, metadata !4692, metadata !DIExpression()), !dbg !4693
  br label %24, !dbg !4716

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4693
  ret i32 %25, !dbg !4717
}

; Function Attrs: nofree nounwind
declare !dbg !1143 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1178 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1179 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4718 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4724, metadata !DIExpression()), !dbg !4725
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4726
  br i1 %2, label %6, label %3, !dbg !4728

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4729
  %5 = icmp eq i32 %4, 0, !dbg !4729
  br i1 %5, label %6, label %8, !dbg !4730

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4731
  br label %17, !dbg !4732

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4733, metadata !DIExpression()) #18, !dbg !4738
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4740
  %10 = load i32, i32* %9, align 8, !dbg !4740, !tbaa !4408
  %11 = and i32 %10, 256, !dbg !4742
  %12 = icmp eq i32 %11, 0, !dbg !4742
  br i1 %12, label %15, label %13, !dbg !4743

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !4744
  br label %15, !dbg !4744

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4745
  br label %17, !dbg !4746

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4725
  ret i32 %18, !dbg !4747
}

; Function Attrs: nofree nounwind
declare !dbg !1186 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4748 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4755, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 %1, metadata !4756, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 %2, metadata !4757, metadata !DIExpression()), !dbg !4761
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4762
  %5 = load i8*, i8** %4, align 8, !dbg !4762, !tbaa !4763
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4764
  %7 = load i8*, i8** %6, align 8, !dbg !4764, !tbaa !4765
  %8 = icmp eq i8* %5, %7, !dbg !4766
  br i1 %8, label %9, label %28, !dbg !4767

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4768
  %11 = load i8*, i8** %10, align 8, !dbg !4768, !tbaa !4769
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4770
  %13 = load i8*, i8** %12, align 8, !dbg !4770, !tbaa !4771
  %14 = icmp eq i8* %11, %13, !dbg !4772
  br i1 %14, label %15, label %28, !dbg !4773

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4774
  %17 = load i8*, i8** %16, align 8, !dbg !4774, !tbaa !4775
  %18 = icmp eq i8* %17, null, !dbg !4776
  br i1 %18, label %19, label %28, !dbg !4777

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4778
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !4779
  call void @llvm.dbg.value(metadata i64 %21, metadata !4758, metadata !DIExpression()), !dbg !4780
  %22 = icmp eq i64 %21, -1, !dbg !4781
  br i1 %22, label %30, label %23, !dbg !4783

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4784
  %25 = load i32, i32* %24, align 8, !dbg !4785, !tbaa !4408
  %26 = and i32 %25, -17, !dbg !4785
  store i32 %26, i32* %24, align 8, !dbg !4785, !tbaa !4408
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4786
  store i64 %21, i64* %27, align 8, !dbg !4787, !tbaa !4788
  br label %30, !dbg !4789

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4790
  br label %30, !dbg !4791

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4761
  ret i32 %31, !dbg !4792
}

; Function Attrs: nofree nounwind
declare !dbg !1262 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !266, !271, !317, !323, !364, !471, !558, !465, !600, !616, !619, !623, !627, !629, !632, !651, !690, !697, !703, !1096, !1137, !1140, !1183, !1224}
!llvm.ident = !{!1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265, !1265}
!llvm.module.flags = !{!1266, !1267, !1268, !1269, !1270}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_opts", scope: !2, file: !3, line: 57, type: !261, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !67, globals: !260, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/chroot.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !27, !35, !50}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 87, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!24 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!25 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!26 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !28, line: 25, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 46, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!39 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!40 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!41 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!42 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!43 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!44 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!45 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!46 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!47 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!48 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !52, file: !51, line: 186, baseType: !7, size: 32, elements: !65)
!51 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!52 = distinct !DISubprogram(name: "x2nrealloc", scope: !51, file: !51, line: 174, type: !53, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !55, !56, !57}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 46, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!59 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !{!61, !62, !63, !64}
!61 = !DILocalVariable(name: "p", arg: 1, scope: !52, file: !51, line: 174, type: !55)
!62 = !DILocalVariable(name: "pn", arg: 2, scope: !52, file: !51, line: 174, type: !56)
!63 = !DILocalVariable(name: "s", arg: 3, scope: !52, file: !51, line: 174, type: !57)
!64 = !DILocalVariable(name: "n", scope: !52, file: !51, line: 176, type: !57)
!65 = !{!66}
!66 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!67 = !{!68, !78, !135, !138, !142, !146, !149, !152, !159, !72, !55, !174, !178, !182, !188, !204, !209, !213, !214, !76, !215, !221, !224, !227, !228, !231, !235, !236, !238, !239, !240, !109, !244, !247, !254, !57, !256, !257}
!68 = !DISubprogram(name: "dcgettext", scope: !69, file: !69, line: 51, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!69 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !74, !74, !76}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !{}
!78 = !DISubprogram(name: "fputs_unlocked", scope: !79, file: !79, line: 662, type: !80, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!79 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!80 = !DISubroutineType(types: !81)
!81 = !{!76, !74, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !85)
!84 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !101, !102, !103, !104, !108, !110, !112, !116, !119, !121, !124, !127, !128, !129, !130, !131}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !83, file: !84, line: 51, baseType: !76, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !83, file: !84, line: 54, baseType: !72, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !83, file: !84, line: 55, baseType: !72, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !83, file: !84, line: 56, baseType: !72, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !83, file: !84, line: 57, baseType: !72, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !83, file: !84, line: 58, baseType: !72, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !83, file: !84, line: 59, baseType: !72, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !83, file: !84, line: 60, baseType: !72, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !83, file: !84, line: 61, baseType: !72, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !83, file: !84, line: 64, baseType: !72, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !83, file: !84, line: 65, baseType: !72, size: 64, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !83, file: !84, line: 66, baseType: !72, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !83, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !84, line: 36, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !83, file: !84, line: 70, baseType: !82, size: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !83, file: !84, line: 72, baseType: !76, size: 32, offset: 896)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !83, file: !84, line: 73, baseType: !76, size: 32, offset: 928)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !83, file: !84, line: 74, baseType: !105, size: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !106, line: 152, baseType: !107)
!106 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!107 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !83, file: !84, line: 77, baseType: !109, size: 16, offset: 1024)
!109 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !83, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !83, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 1)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !83, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !84, line: 43, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !83, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !106, line: 153, baseType: !107)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !83, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !84, line: 37, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !83, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !84, line: 38, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !83, file: !84, line: 93, baseType: !82, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !83, file: !84, line: 94, baseType: !55, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !83, file: !84, line: 95, baseType: !57, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !83, file: !84, line: 96, baseType: !76, size: 32, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !83, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 160, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 20)
!135 = !DISubprogram(name: "quotearg_style", scope: !6, file: !6, line: 377, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!136 = !DISubroutineType(types: !137)
!137 = !{!72, !5, !74}
!138 = !DISubprogram(name: "set_program_name", scope: !139, file: !139, line: 37, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!139 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!140 = !DISubroutineType(types: !141)
!141 = !{null, !74}
!142 = !DISubprogram(name: "setlocale", scope: !143, file: !143, line: 122, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!143 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!144 = !DISubroutineType(types: !145)
!145 = !{!72, !76, !74}
!146 = !DISubprogram(name: "bindtextdomain", scope: !69, file: !69, line: 86, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!147 = !DISubroutineType(types: !148)
!148 = !{!72, !74, !74}
!149 = !DISubprogram(name: "textdomain", scope: !69, file: !69, line: 82, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!150 = !DISubroutineType(types: !151)
!151 = !{!72, !74}
!152 = !DISubprogram(name: "atexit", scope: !153, file: !153, line: 595, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!153 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!154 = !DISubroutineType(types: !155)
!155 = !{!76, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null}
!159 = !DISubprogram(name: "getopt_long", scope: !160, file: !160, line: 66, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!160 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!161 = !DISubroutineType(types: !162)
!162 = !{!76, !76, !163, !74, !165, !172}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !160, line: 50, size: 256, elements: !168)
!168 = !{!169, !170, !171, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !160, line: 52, baseType: !74, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !167, file: !160, line: 55, baseType: !76, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !167, file: !160, line: 56, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !167, file: !160, line: 57, baseType: !76, size: 32, offset: 192)
!174 = !DISubprogram(name: "version_etc", scope: !175, file: !175, line: 69, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!175 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !DISubroutineType(types: !177)
!177 = !{null, !82, !74, !74, !74, null}
!178 = !DISubprogram(name: "error", scope: !179, file: !179, line: 52, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!179 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !DISubroutineType(types: !181)
!181 = !{null, !76, !76, !74, null}
!182 = !DISubprogram(name: "parse_user_spec", scope: !183, file: !183, line: 7, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!183 = !DIFile(filename: "./lib/userspec.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !DISubroutineType(types: !185)
!185 = !{!74, !74, !186, !186, !187, !187}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!188 = !DISubprogram(name: "getpwuid", scope: !189, file: !189, line: 110, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!189 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !7}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !189, line: 49, size: 384, elements: !194)
!194 = !{!195, !196, !197, !199, !201, !202, !203}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !193, file: !189, line: 51, baseType: !72, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !193, file: !189, line: 52, baseType: !72, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !193, file: !189, line: 54, baseType: !198, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !106, line: 146, baseType: !7)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !193, file: !189, line: 55, baseType: !200, size: 32, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !106, line: 147, baseType: !7)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !193, file: !189, line: 56, baseType: !72, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !193, file: !189, line: 57, baseType: !72, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !193, file: !189, line: 58, baseType: !72, size: 64, offset: 320)
!204 = !DISubprogram(name: "xgetgroups", scope: !205, file: !205, line: 21, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!205 = !DIFile(filename: "./lib/mgetgroups.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!206 = !DISubroutineType(types: !207)
!207 = !{!76, !74, !7, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!209 = !DISubprogram(name: "chroot", scope: !210, file: !210, line: 942, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!210 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!211 = !DISubroutineType(types: !212)
!212 = !{!76, !74}
!213 = !DISubprogram(name: "chdir", scope: !210, file: !210, line: 497, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!214 = !DISubprogram(name: "getenv", scope: !153, file: !153, line: 634, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!215 = !DISubprogram(name: "setgroups", scope: !216, file: !216, line: 176, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!216 = !DIFile(filename: "/usr/include/grp.h", directory: "")
!217 = !DISubroutineType(types: !218)
!218 = !{!76, !59, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!221 = !DISubprogram(name: "free", scope: !153, file: !153, line: 565, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !55}
!224 = !DISubprogram(name: "setgid", scope: !210, file: !210, line: 717, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!225 = !DISubroutineType(types: !226)
!226 = !{!76, !7}
!227 = !DISubprogram(name: "setuid", scope: !210, file: !210, line: 700, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!228 = !DISubprogram(name: "execvp", scope: !210, file: !210, line: 578, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!229 = !DISubroutineType(types: !230)
!230 = !{!76, !74, !163}
!231 = !DISubprogram(name: "quote", scope: !232, file: !232, line: 44, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!232 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!233 = !DISubroutineType(types: !234)
!234 = !{!74, !74}
!235 = !DISubprogram(name: "canonicalize_file_name", scope: !153, file: !153, line: 790, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !237, line: 79, baseType: !198)
!237 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !237, line: 64, baseType: !200)
!239 = !DISubprogram(name: "xstrdup", scope: !51, file: !51, line: 64, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!240 = !DISubprogram(name: "xstrtoumax", scope: !28, file: !28, line: 48, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!241 = !DISubroutineType(types: !242)
!242 = !{!27, !74, !187, !76, !243, !74}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!244 = !DISubprogram(name: "getgrnam", scope: !216, file: !216, line: 107, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !74}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !216, line: 42, size: 256, elements: !249)
!249 = !{!250, !251, !252, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !248, file: !216, line: 44, baseType: !72, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !248, file: !216, line: 45, baseType: !72, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !248, file: !216, line: 46, baseType: !200, size: 32, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !248, file: !216, line: 47, baseType: !187, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !210, line: 267, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !106, line: 206, baseType: !107)
!256 = !DISubprogram(name: "xalloc_die", scope: !51, file: !51, line: 51, type: !157, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !77)
!257 = !DISubprogram(name: "xrealloc", scope: !51, file: !51, line: 59, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!258 = !DISubroutineType(types: !259)
!259 = !{!55, !55, !59}
!260 = !{!0}
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 1536, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 6)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "Version", scope: !266, file: !267, line: 2, type: !74, isLocal: false, isDefinition: true)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !268, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = !{!264}
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "file_name", scope: !271, file: !272, line: 46, type: !74, isLocal: true, isDefinition: true)
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !273, globals: !311, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!273 = !{!274, !68, !310, !178}
!274 = !DISubprogram(name: "close_stream", scope: !275, file: !275, line: 2, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!275 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!276 = !DISubroutineType(types: !277)
!277 = !{!76, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !279, file: !84, line: 51, baseType: !76, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !279, file: !84, line: 54, baseType: !72, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !279, file: !84, line: 55, baseType: !72, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !279, file: !84, line: 56, baseType: !72, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !279, file: !84, line: 57, baseType: !72, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !279, file: !84, line: 58, baseType: !72, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !279, file: !84, line: 59, baseType: !72, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !279, file: !84, line: 60, baseType: !72, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !279, file: !84, line: 61, baseType: !72, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !279, file: !84, line: 64, baseType: !72, size: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !279, file: !84, line: 65, baseType: !72, size: 64, offset: 640)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !279, file: !84, line: 66, baseType: !72, size: 64, offset: 704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !279, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !279, file: !84, line: 70, baseType: !278, size: 64, offset: 832)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !279, file: !84, line: 72, baseType: !76, size: 32, offset: 896)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !279, file: !84, line: 73, baseType: !76, size: 32, offset: 928)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !279, file: !84, line: 74, baseType: !105, size: 64, offset: 960)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !279, file: !84, line: 77, baseType: !109, size: 16, offset: 1024)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !279, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !279, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !279, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !279, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !279, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !279, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !279, file: !84, line: 93, baseType: !278, size: 64, offset: 1344)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !279, file: !84, line: 94, baseType: !55, size: 64, offset: 1408)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !279, file: !84, line: 95, baseType: !57, size: 64, offset: 1472)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !279, file: !84, line: 96, baseType: !76, size: 32, offset: 1536)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !279, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!310 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!311 = !{!269, !312}
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !271, file: !272, line: 56, type: !314, isLocal: true, isDefinition: true)
!314 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "exit_failure", scope: !317, file: !318, line: 24, type: !320, isLocal: false, isDefinition: true)
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !319, splitDebugInlining: false, nameTableKind: None)
!318 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!319 = !{!315}
!320 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !76)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "program_name", scope: !323, file: !324, line: 33, type: !74, isLocal: false, isDefinition: true)
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !325, globals: !361, splitDebugInlining: false, nameTableKind: None)
!324 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!325 = !{!55, !326, !72}
!326 = !DISubprogram(name: "fputs", scope: !79, file: !79, line: 626, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!327 = !DISubroutineType(types: !328)
!328 = !{!76, !74, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !330, file: !84, line: 51, baseType: !76, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !330, file: !84, line: 54, baseType: !72, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !330, file: !84, line: 55, baseType: !72, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !330, file: !84, line: 56, baseType: !72, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !330, file: !84, line: 57, baseType: !72, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !330, file: !84, line: 58, baseType: !72, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !330, file: !84, line: 59, baseType: !72, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !330, file: !84, line: 60, baseType: !72, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !330, file: !84, line: 61, baseType: !72, size: 64, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !330, file: !84, line: 64, baseType: !72, size: 64, offset: 576)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !330, file: !84, line: 65, baseType: !72, size: 64, offset: 640)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !330, file: !84, line: 66, baseType: !72, size: 64, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !330, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !330, file: !84, line: 70, baseType: !329, size: 64, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !330, file: !84, line: 72, baseType: !76, size: 32, offset: 896)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !330, file: !84, line: 73, baseType: !76, size: 32, offset: 928)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !330, file: !84, line: 74, baseType: !105, size: 64, offset: 960)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !330, file: !84, line: 77, baseType: !109, size: 16, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !330, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !330, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !330, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !330, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !330, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !330, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !330, file: !84, line: 93, baseType: !329, size: 64, offset: 1344)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !330, file: !84, line: 94, baseType: !55, size: 64, offset: 1408)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !330, file: !84, line: 95, baseType: !57, size: 64, offset: 1472)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !330, file: !84, line: 96, baseType: !76, size: 32, offset: 1536)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !330, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!361 = !{!321}
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !364, file: !365, line: 85, type: !459, isLocal: false, isDefinition: true)
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !366, retainedTypes: !372, globals: !432, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!366 = !{!5, !367, !35}
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !368)
!368 = !{!369, !370, !371}
!369 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!372 = !{!373, !378, !221, !393, !76, !109, !396, !57, !413, !415, !68, !421, !425, !72, !429, !256, !257}
!373 = !DISubprogram(name: "xmemdup", scope: !51, file: !51, line: 62, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!374 = !DISubroutineType(types: !375)
!375 = !{!55, !376, !59}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!378 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!379 = !DISubroutineType(types: !380)
!380 = !{!72, !74, !59, !243, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !365, line: 65, size: 448, elements: !384)
!384 = !{!385, !386, !387, !391, !392}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !383, file: !365, line: 68, baseType: !5, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !383, file: !365, line: 71, baseType: !76, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !383, file: !365, line: 75, baseType: !388, size: 256, offset: 64)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 8)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !383, file: !365, line: 78, baseType: !74, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !383, file: !365, line: 81, baseType: !74, size: 64, offset: 384)
!393 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!394 = !DISubroutineType(types: !395)
!395 = !{!72, !76, !74, !74, !74, !59}
!396 = !DISubprogram(name: "rpl_mbrtowc", scope: !397, file: !397, line: 717, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!397 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!398 = !DISubroutineType(types: !399)
!399 = !{!59, !172, !74, !59, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 13, size: 64, elements: !403)
!402 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !401, file: !402, line: 15, baseType: !76, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !401, file: !402, line: 20, baseType: !406, size: 32, offset: 32)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !402, line: 16, size: 32, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !406, file: !402, line: 18, baseType: !7, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !406, file: !402, line: 19, baseType: !410, size: 32)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 32, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 4)
!413 = !DISubprogram(name: "iswprint", scope: !414, file: !414, line: 120, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!414 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!415 = !DISubprogram(name: "mbsinit", scope: !416, file: !416, line: 292, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!416 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!417 = !DISubroutineType(types: !418)
!418 = !{!76, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!421 = !DISubprogram(name: "locale_charset", scope: !422, file: !422, line: 35, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!422 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!423 = !DISubroutineType(types: !424)
!424 = !{!74}
!425 = !DISubprogram(name: "c_strcasecmp", scope: !426, file: !426, line: 42, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!426 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!427 = !DISubroutineType(types: !428)
!428 = !{!76, !74, !74}
!429 = !DISubprogram(name: "xmalloc", scope: !51, file: !51, line: 53, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!430 = !DISubroutineType(types: !431)
!431 = !{!55, !59}
!432 = !{!362, !433, !439, !441, !443, !448, !455, !457}
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !364, file: !365, line: 101, type: !435, isLocal: false, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 320, elements: !437)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!437 = !{!438}
!438 = !DISubrange(count: 10)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !364, file: !365, line: 1052, type: !383, isLocal: false, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !364, file: !365, line: 116, type: !383, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "slot0", scope: !364, file: !365, line: 842, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 2048, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 256)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "slotvec", scope: !364, file: !365, line: 845, type: !450, isLocal: true, isDefinition: true)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !365, line: 834, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !451, file: !365, line: 836, baseType: !57, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !451, file: !365, line: 837, baseType: !72, size: 64, offset: 64)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "nslots", scope: !364, file: !365, line: 843, type: !76, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "slotvec0", scope: !364, file: !365, line: 844, type: !451, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 704, elements: !461)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!461 = !{!462}
!462 = !DISubrange(count: 11)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !465, file: !466, line: 26, type: !468, isLocal: false, isDefinition: true)
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !467, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!467 = !{!463}
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 47)
!471 = distinct !DICompileUnit(language: DW_LANG_C99, file: !472, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !473, retainedTypes: !474, globals: !508, splitDebugInlining: false, nameTableKind: None)
!472 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!473 = !{!27}
!474 = !{!55, !239, !373, !475, !488, !236, !489, !499, !503, !504, !505, !238, !221, !68}
!475 = !DISubprogram(name: "getpwnam", scope: !189, file: !189, line: 116, type: !476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !74}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !189, line: 49, size: 384, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !479, file: !189, line: 51, baseType: !72, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !479, file: !189, line: 52, baseType: !72, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !479, file: !189, line: 54, baseType: !198, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !479, file: !189, line: 55, baseType: !200, size: 32, offset: 160)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !479, file: !189, line: 56, baseType: !72, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !479, file: !189, line: 57, baseType: !72, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !479, file: !189, line: 58, baseType: !72, size: 64, offset: 320)
!488 = !DISubprogram(name: "xstrtoul", scope: !28, file: !28, line: 44, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!489 = !DISubprogram(name: "getgrgid", scope: !216, file: !216, line: 101, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !7}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !216, line: 42, size: 256, elements: !494)
!494 = !{!495, !496, !497, !498}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !493, file: !216, line: 44, baseType: !72, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !493, file: !216, line: 45, baseType: !72, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !493, file: !216, line: 46, baseType: !200, size: 32, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !493, file: !216, line: 47, baseType: !187, size: 64, offset: 192)
!499 = !DISubprogram(name: "umaxtostr", scope: !500, file: !500, line: 46, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!500 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!501 = !DISubroutineType(types: !502)
!502 = !{!72, !59, !72}
!503 = !DISubprogram(name: "endgrent", scope: !216, file: !216, line: 67, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!504 = !DISubprogram(name: "endpwent", scope: !189, file: !189, line: 78, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!505 = !DISubprogram(name: "getgrnam", scope: !216, file: !216, line: 107, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!506 = !DISubroutineType(types: !507)
!507 = !{!492, !74}
!508 = !{!509, !554, !556}
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !511, file: !472, line: 106, type: !74, isLocal: true, isDefinition: true)
!511 = distinct !DISubprogram(name: "parse_with_separator", scope: !472, file: !472, line: 102, type: !512, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !516)
!512 = !DISubroutineType(types: !513)
!513 = !{!74, !74, !74, !514, !515, !187, !187}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !534, !539, !542, !549}
!517 = !DILocalVariable(name: "spec", arg: 1, scope: !511, file: !472, line: 102, type: !74)
!518 = !DILocalVariable(name: "separator", arg: 2, scope: !511, file: !472, line: 102, type: !74)
!519 = !DILocalVariable(name: "uid", arg: 3, scope: !511, file: !472, line: 103, type: !514)
!520 = !DILocalVariable(name: "gid", arg: 4, scope: !511, file: !472, line: 103, type: !515)
!521 = !DILocalVariable(name: "username", arg: 5, scope: !511, file: !472, line: 104, type: !187)
!522 = !DILocalVariable(name: "groupname", arg: 6, scope: !511, file: !472, line: 104, type: !187)
!523 = !DILocalVariable(name: "error_msg", scope: !511, file: !472, line: 110, type: !74)
!524 = !DILocalVariable(name: "pwd", scope: !511, file: !472, line: 111, type: !478)
!525 = !DILocalVariable(name: "grp", scope: !511, file: !472, line: 112, type: !492)
!526 = !DILocalVariable(name: "u", scope: !511, file: !472, line: 113, type: !72)
!527 = !DILocalVariable(name: "g", scope: !511, file: !472, line: 114, type: !74)
!528 = !DILocalVariable(name: "gname", scope: !511, file: !472, line: 115, type: !72)
!529 = !DILocalVariable(name: "unum", scope: !511, file: !472, line: 116, type: !236)
!530 = !DILocalVariable(name: "gnum", scope: !511, file: !472, line: 117, type: !238)
!531 = !DILocalVariable(name: "ulen", scope: !532, file: !472, line: 137, type: !57)
!532 = distinct !DILexicalBlock(scope: !533, file: !472, line: 136, column: 5)
!533 = distinct !DILexicalBlock(scope: !511, file: !472, line: 130, column: 7)
!534 = !DILocalVariable(name: "use_login_group", scope: !535, file: !472, line: 164, type: !314)
!535 = distinct !DILexicalBlock(scope: !536, file: !472, line: 163, column: 9)
!536 = distinct !DILexicalBlock(scope: !537, file: !472, line: 162, column: 11)
!537 = distinct !DILexicalBlock(scope: !538, file: !472, line: 159, column: 5)
!538 = distinct !DILexicalBlock(scope: !511, file: !472, line: 158, column: 7)
!539 = !DILocalVariable(name: "tmp", scope: !540, file: !472, line: 173, type: !59)
!540 = distinct !DILexicalBlock(scope: !541, file: !472, line: 172, column: 13)
!541 = distinct !DILexicalBlock(scope: !535, file: !472, line: 165, column: 15)
!542 = !DILocalVariable(name: "buf", scope: !543, file: !472, line: 188, type: !546)
!543 = distinct !DILexicalBlock(scope: !544, file: !472, line: 185, column: 13)
!544 = distinct !DILexicalBlock(scope: !545, file: !472, line: 184, column: 15)
!545 = distinct !DILexicalBlock(scope: !536, file: !472, line: 182, column: 9)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 168, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 21)
!549 = !DILocalVariable(name: "tmp", scope: !550, file: !472, line: 205, type: !59)
!550 = distinct !DILexicalBlock(scope: !551, file: !472, line: 204, column: 9)
!551 = distinct !DILexicalBlock(scope: !552, file: !472, line: 203, column: 11)
!552 = distinct !DILexicalBlock(scope: !553, file: !472, line: 199, column: 5)
!553 = distinct !DILexicalBlock(scope: !511, file: !472, line: 198, column: 7)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !511, file: !472, line: 107, type: !74, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !511, file: !472, line: 108, type: !74, isLocal: true, isDefinition: true)
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !560, retainedTypes: !564, splitDebugInlining: false, nameTableKind: None)
!559 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!560 = !{!561}
!561 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !559, line: 40, baseType: !7, size: 32, elements: !562)
!562 = !{!563}
!563 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!564 = !{!68, !565, !55}
!565 = !DISubprogram(name: "fputs_unlocked", scope: !79, file: !79, line: 662, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!566 = !DISubroutineType(types: !567)
!567 = !{!76, !74, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !569, file: !84, line: 51, baseType: !76, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !569, file: !84, line: 54, baseType: !72, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !569, file: !84, line: 55, baseType: !72, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !569, file: !84, line: 56, baseType: !72, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !569, file: !84, line: 57, baseType: !72, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !569, file: !84, line: 58, baseType: !72, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !569, file: !84, line: 59, baseType: !72, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !569, file: !84, line: 60, baseType: !72, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !569, file: !84, line: 61, baseType: !72, size: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !569, file: !84, line: 64, baseType: !72, size: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !569, file: !84, line: 65, baseType: !72, size: 64, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !569, file: !84, line: 66, baseType: !72, size: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !569, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !569, file: !84, line: 70, baseType: !568, size: 64, offset: 832)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !569, file: !84, line: 72, baseType: !76, size: 32, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !569, file: !84, line: 73, baseType: !76, size: 32, offset: 928)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !569, file: !84, line: 74, baseType: !105, size: 64, offset: 960)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !569, file: !84, line: 77, baseType: !109, size: 16, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !569, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !569, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !569, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !569, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !569, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !569, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !569, file: !84, line: 93, baseType: !568, size: 64, offset: 1344)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !569, file: !84, line: 94, baseType: !55, size: 64, offset: 1408)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !569, file: !84, line: 95, baseType: !57, size: 64, offset: 1472)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !569, file: !84, line: 96, baseType: !76, size: 32, offset: 1536)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !569, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !602, retainedTypes: !610, splitDebugInlining: false, nameTableKind: None)
!601 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!602 = !{!603}
!603 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !604, file: !51, line: 186, baseType: !7, size: 32, elements: !65)
!604 = distinct !DISubprogram(name: "x2nrealloc", scope: !51, file: !51, line: 174, type: !53, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !605)
!605 = !{!606, !607, !608, !609}
!606 = !DILocalVariable(name: "p", arg: 1, scope: !604, file: !51, line: 174, type: !55)
!607 = !DILocalVariable(name: "pn", arg: 2, scope: !604, file: !51, line: 174, type: !56)
!608 = !DILocalVariable(name: "s", arg: 3, scope: !604, file: !51, line: 174, type: !57)
!609 = !DILocalVariable(name: "n", scope: !604, file: !51, line: 176, type: !57)
!610 = !{!57, !256, !429, !257, !72, !221, !55, !611, !614}
!611 = !DISubprogram(name: "xcalloc", scope: !51, file: !51, line: 57, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!612 = !DISubroutineType(types: !613)
!613 = !{!55, !59, !59}
!614 = !DISubprogram(name: "rpl_calloc", scope: !615, file: !615, line: 688, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!615 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !618, splitDebugInlining: false, nameTableKind: None)
!617 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!618 = !{!68, !178}
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !621, splitDebugInlining: false, nameTableKind: None)
!620 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!621 = !{!622, !256}
!622 = !DISubprogram(name: "mgetgroups", scope: !205, file: !205, line: 19, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !625, retainedTypes: !626, splitDebugInlining: false, nameTableKind: None)
!624 = !DIFile(filename: "lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!625 = !{!27, !35}
!626 = !{!76, !109}
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !625, retainedTypes: !626, splitDebugInlining: false, nameTableKind: None)
!628 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!629 = distinct !DICompileUnit(language: DW_LANG_C99, file: !630, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !631, splitDebugInlining: false, nameTableKind: None)
!630 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!631 = !{!55}
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !634, splitDebugInlining: false, nameTableKind: None)
!633 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!634 = !{!635, !57, !647}
!635 = !DISubprogram(name: "mbrtowc", scope: !416, file: !416, line: 296, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!636 = !DISubroutineType(types: !637)
!637 = !{!59, !172, !74, !59, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 13, size: 64, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !639, file: !402, line: 15, baseType: !76, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !639, file: !402, line: 20, baseType: !643, size: 32, offset: 32)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !402, line: 16, size: 32, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !643, file: !402, line: 18, baseType: !7, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !643, file: !402, line: 19, baseType: !410, size: 32)
!647 = !DISubprogram(name: "hard_locale", scope: !648, file: !648, line: 26, type: !649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!648 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!649 = !DISubroutineType(types: !650)
!650 = !{!314, !76}
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !653, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!653 = !{!654}
!654 = !DISubprogram(name: "rpl_fclose", scope: !655, file: !655, line: 672, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!655 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!656 = !DISubroutineType(types: !657)
!657 = !{!76, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !659, file: !84, line: 51, baseType: !76, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !659, file: !84, line: 54, baseType: !72, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !659, file: !84, line: 55, baseType: !72, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !659, file: !84, line: 56, baseType: !72, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !659, file: !84, line: 57, baseType: !72, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !659, file: !84, line: 58, baseType: !72, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !659, file: !84, line: 59, baseType: !72, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !659, file: !84, line: 60, baseType: !72, size: 64, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !659, file: !84, line: 61, baseType: !72, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !659, file: !84, line: 64, baseType: !72, size: 64, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !659, file: !84, line: 65, baseType: !72, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !659, file: !84, line: 66, baseType: !72, size: 64, offset: 704)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !659, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !659, file: !84, line: 70, baseType: !658, size: 64, offset: 832)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !659, file: !84, line: 72, baseType: !76, size: 32, offset: 896)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !659, file: !84, line: 73, baseType: !76, size: 32, offset: 928)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !659, file: !84, line: 74, baseType: !105, size: 64, offset: 960)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !659, file: !84, line: 77, baseType: !109, size: 16, offset: 1024)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !659, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !659, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !659, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !659, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !659, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !659, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !659, file: !84, line: 93, baseType: !658, size: 64, offset: 1344)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !659, file: !84, line: 94, baseType: !55, size: 64, offset: 1408)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !659, file: !84, line: 95, baseType: !57, size: 64, offset: 1472)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !659, file: !84, line: 96, baseType: !76, size: 32, offset: 1536)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !659, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!690 = distinct !DICompileUnit(language: DW_LANG_C99, file: !691, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !692, splitDebugInlining: false, nameTableKind: None)
!691 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!692 = !{!693}
!693 = !DISubprogram(name: "setlocale_null_r", scope: !694, file: !694, line: 64, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!694 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!695 = !DISubroutineType(types: !696)
!696 = !{!76, !76, !72, !59}
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !699, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !701, line: 102, baseType: !702)
!701 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !106, line: 73, baseType: !59)
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !705, retainedTypes: !1092, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!705 = !{!706}
!706 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !707, line: 41, baseType: !7, size: 32, elements: !708)
!707 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!709 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!710 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!711 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!712 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!713 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!714 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!715 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!716 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!717 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!718 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!719 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!720 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!721 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!722 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!723 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!724 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!725 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!726 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!727 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!728 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!729 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!730 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!731 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!732 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!733 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!734 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!735 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!736 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!737 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!738 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!739 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!740 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!741 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!742 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!743 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!744 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!745 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!746 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!747 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!748 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!749 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!750 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!751 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!752 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!753 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!754 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!755 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!756 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!757 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!758 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!817 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!820 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!821 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!822 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!823 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!824 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!825 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!826 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!827 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!828 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!829 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!830 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!831 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!904 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!977 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!978 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!979 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!980 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!981 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!982 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!983 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!984 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!985 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!986 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!987 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!988 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!989 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!990 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!991 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!993 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!994 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!995 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!996 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!997 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!998 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1024 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1025 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1026 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1027 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1028 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1033 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1034 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1035 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1036 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1092 = !{!1093, !55}
!1093 = !DISubprogram(name: "nl_langinfo", scope: !707, file: !707, line: 661, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!72, !76}
!1096 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1097, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1098, retainedTypes: !1129, splitDebugInlining: false, nameTableKind: None)
!1097 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1098 = !{!1099}
!1099 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1100, file: !1097, line: 83, baseType: !7, size: 32, elements: !1127)
!1100 = distinct !DISubprogram(name: "mgetgroups", scope: !1097, file: !1097, line: 66, type: !1101, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1096, retainedNodes: !1104)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!76, !74, !238, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1115, !1116, !1119, !1122, !1125, !1126}
!1105 = !DILocalVariable(name: "username", arg: 1, scope: !1100, file: !1097, line: 66, type: !74)
!1106 = !DILocalVariable(name: "gid", arg: 2, scope: !1100, file: !1097, line: 66, type: !238)
!1107 = !DILocalVariable(name: "groups", arg: 3, scope: !1100, file: !1097, line: 66, type: !1103)
!1108 = !DILocalVariable(name: "max_n_groups", scope: !1100, file: !1097, line: 68, type: !76)
!1109 = !DILocalVariable(name: "ng", scope: !1100, file: !1097, line: 69, type: !76)
!1110 = !DILocalVariable(name: "g", scope: !1100, file: !1097, line: 70, type: !515)
!1111 = !DILocalVariable(name: "h", scope: !1112, file: !1097, line: 92, type: !515)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !1097, line: 91, column: 9)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !1097, line: 82, column: 5)
!1114 = distinct !DILexicalBlock(scope: !1100, file: !1097, line: 81, column: 7)
!1115 = !DILocalVariable(name: "last_n_groups", scope: !1112, file: !1097, line: 93, type: !76)
!1116 = !DILocalVariable(name: "saved_errno", scope: !1117, file: !1097, line: 105, type: !76)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !1097, line: 104, column: 13)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !1097, line: 103, column: 15)
!1119 = !DILocalVariable(name: "saved_errno", scope: !1120, file: !1097, line: 156, type: !76)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !1097, line: 154, column: 5)
!1121 = distinct !DILexicalBlock(scope: !1100, file: !1097, line: 153, column: 7)
!1122 = !DILocalVariable(name: "first", scope: !1123, file: !1097, line: 187, type: !238)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !1097, line: 186, column: 5)
!1124 = distinct !DILexicalBlock(scope: !1100, file: !1097, line: 185, column: 7)
!1125 = !DILocalVariable(name: "next", scope: !1123, file: !1097, line: 188, type: !515)
!1126 = !DILocalVariable(name: "groups_end", scope: !1123, file: !1097, line: 189, type: !515)
!1127 = !{!1128}
!1128 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!1129 = !{!55, !1130, !221, !1133, !238, !57}
!1130 = !DISubprogram(name: "getgrouplist", scope: !216, file: !216, line: 186, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!76, !74, !7, !186, !172}
!1133 = !DISubprogram(name: "getugroups", scope: !1134, file: !1134, line: 18, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1134 = !DIFile(filename: "./lib/getugroups.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!76, !76, !186, !74, !7}
!1137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1138, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !1139, splitDebugInlining: false, nameTableKind: None)
!1138 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1139 = !{!55, !142}
!1140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1141, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !1142, splitDebugInlining: false, nameTableKind: None)
!1141 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1142 = !{!1143, !1178, !1179, !1182}
!1143 = !DISubprogram(name: "fileno", scope: !79, file: !79, line: 786, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!76, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1147, file: !84, line: 51, baseType: !76, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1147, file: !84, line: 54, baseType: !72, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1147, file: !84, line: 55, baseType: !72, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1147, file: !84, line: 56, baseType: !72, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1147, file: !84, line: 57, baseType: !72, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1147, file: !84, line: 58, baseType: !72, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1147, file: !84, line: 59, baseType: !72, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1147, file: !84, line: 60, baseType: !72, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1147, file: !84, line: 61, baseType: !72, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1147, file: !84, line: 64, baseType: !72, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1147, file: !84, line: 65, baseType: !72, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1147, file: !84, line: 66, baseType: !72, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1147, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1147, file: !84, line: 70, baseType: !1146, size: 64, offset: 832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1147, file: !84, line: 72, baseType: !76, size: 32, offset: 896)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1147, file: !84, line: 73, baseType: !76, size: 32, offset: 928)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1147, file: !84, line: 74, baseType: !105, size: 64, offset: 960)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1147, file: !84, line: 77, baseType: !109, size: 16, offset: 1024)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1147, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1147, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1147, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1147, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1147, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1147, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1147, file: !84, line: 93, baseType: !1146, size: 64, offset: 1344)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1147, file: !84, line: 94, baseType: !55, size: 64, offset: 1408)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1147, file: !84, line: 95, baseType: !57, size: 64, offset: 1472)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1147, file: !84, line: 96, baseType: !76, size: 32, offset: 1536)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1147, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!1178 = !DISubprogram(name: "fclose", scope: !79, file: !79, line: 213, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1179 = !DISubprogram(name: "lseek", scope: !210, file: !210, line: 334, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!107, !76, !107, !76}
!1182 = !DISubprogram(name: "rpl_fflush", scope: !655, file: !655, line: 718, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1184, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !1185, splitDebugInlining: false, nameTableKind: None)
!1184 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1185 = !{!55, !1186, !1221}
!1186 = !DISubprogram(name: "fflush", scope: !79, file: !79, line: 218, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!76, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1190, file: !84, line: 51, baseType: !76, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1190, file: !84, line: 54, baseType: !72, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1190, file: !84, line: 55, baseType: !72, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1190, file: !84, line: 56, baseType: !72, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1190, file: !84, line: 57, baseType: !72, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1190, file: !84, line: 58, baseType: !72, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1190, file: !84, line: 59, baseType: !72, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1190, file: !84, line: 60, baseType: !72, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1190, file: !84, line: 61, baseType: !72, size: 64, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1190, file: !84, line: 64, baseType: !72, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1190, file: !84, line: 65, baseType: !72, size: 64, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1190, file: !84, line: 66, baseType: !72, size: 64, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1190, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1190, file: !84, line: 70, baseType: !1189, size: 64, offset: 832)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1190, file: !84, line: 72, baseType: !76, size: 32, offset: 896)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1190, file: !84, line: 73, baseType: !76, size: 32, offset: 928)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1190, file: !84, line: 74, baseType: !105, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1190, file: !84, line: 77, baseType: !109, size: 16, offset: 1024)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1190, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1190, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1190, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1190, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1190, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1190, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1190, file: !84, line: 93, baseType: !1189, size: 64, offset: 1344)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1190, file: !84, line: 94, baseType: !55, size: 64, offset: 1408)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1190, file: !84, line: 95, baseType: !57, size: 64, offset: 1472)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1190, file: !84, line: 96, baseType: !76, size: 32, offset: 1536)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1190, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!1221 = !DISubprogram(name: "rpl_fseeko", scope: !655, file: !655, line: 1034, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!76, !1189, !107, !76}
!1224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1225, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !1226, splitDebugInlining: false, nameTableKind: None)
!1225 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1226 = !{!55, !1227, !1179, !1262}
!1227 = !DISubprogram(name: "fileno", scope: !79, file: !79, line: 786, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!76, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1231, file: !84, line: 51, baseType: !76, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1231, file: !84, line: 54, baseType: !72, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1231, file: !84, line: 55, baseType: !72, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1231, file: !84, line: 56, baseType: !72, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1231, file: !84, line: 57, baseType: !72, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1231, file: !84, line: 58, baseType: !72, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1231, file: !84, line: 59, baseType: !72, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1231, file: !84, line: 60, baseType: !72, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1231, file: !84, line: 61, baseType: !72, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1231, file: !84, line: 64, baseType: !72, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1231, file: !84, line: 65, baseType: !72, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1231, file: !84, line: 66, baseType: !72, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1231, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1231, file: !84, line: 70, baseType: !1230, size: 64, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1231, file: !84, line: 72, baseType: !76, size: 32, offset: 896)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1231, file: !84, line: 73, baseType: !76, size: 32, offset: 928)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1231, file: !84, line: 74, baseType: !105, size: 64, offset: 960)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1231, file: !84, line: 77, baseType: !109, size: 16, offset: 1024)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1231, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1231, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1231, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1231, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1231, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1231, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1231, file: !84, line: 93, baseType: !1230, size: 64, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1231, file: !84, line: 94, baseType: !55, size: 64, offset: 1408)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1231, file: !84, line: 95, baseType: !57, size: 64, offset: 1472)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1231, file: !84, line: 96, baseType: !76, size: 32, offset: 1536)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1231, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!1262 = !DISubprogram(name: "fseeko", scope: !79, file: !79, line: 707, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !77)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!76, !1230, !107, !76}
!1265 = !{!"clang version 10.0.0 "}
!1266 = !{i32 7, !"Dwarf Version", i32 4}
!1267 = !{i32 2, !"Debug Info Version", i32 3}
!1268 = !{i32 1, !"wchar_size", i32 4}
!1269 = !{i32 7, !"PIC Level", i32 2}
!1270 = !{i32 7, !"PIE Level", i32 2}
!1271 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 181, type: !1272, scopeLine: 182, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !76}
!1274 = !{!1275}
!1275 = !DILocalVariable(name: "status", arg: 1, scope: !1271, file: !3, line: 181, type: !76)
!1276 = !DILocalVariable(name: "infomap", scope: !1277, file: !21, line: 636, type: !1289)
!1277 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !21, file: !21, line: 634, type: !140, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1278)
!1278 = !{!1279, !1276, !1280, !1281, !1288}
!1279 = !DILocalVariable(name: "program", arg: 1, scope: !1277, file: !21, line: 634, type: !74)
!1280 = !DILocalVariable(name: "node", scope: !1277, file: !21, line: 646, type: !74)
!1281 = !DILocalVariable(name: "map_prog", scope: !1277, file: !21, line: 647, type: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1277, file: !21, line: 636, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1284, file: !21, line: 636, baseType: !74, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1284, file: !21, line: 636, baseType: !74, size: 64, offset: 64)
!1288 = !DILocalVariable(name: "lc_messages", scope: !1277, file: !21, line: 659, type: !74)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 896, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 7)
!1292 = !DILocation(line: 636, column: 67, scope: !1277, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 213, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 186, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 183, column: 7)
!1296 = !DILocation(line: 0, scope: !1271)
!1297 = !DILocation(line: 183, column: 14, scope: !1295)
!1298 = !DILocation(line: 183, column: 7, scope: !1271)
!1299 = !DILocation(line: 184, column: 5, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 184, column: 5)
!1301 = !{!1302, !1302, i64 0}
!1302 = !{!"any pointer", !1303, i64 0}
!1303 = !{!"omnipotent char", !1304, i64 0}
!1304 = !{!"Simple C/C++ TBAA"}
!1305 = !DILocation(line: 187, column: 7, scope: !1294)
!1306 = !DILocation(line: 192, column: 7, scope: !1294)
!1307 = !DILocation(line: 197, column: 7, scope: !1294)
!1308 = !DILocation(line: 200, column: 7, scope: !1294)
!1309 = !DILocation(line: 203, column: 7, scope: !1294)
!1310 = !DILocation(line: 207, column: 7, scope: !1294)
!1311 = !DILocation(line: 208, column: 7, scope: !1294)
!1312 = !DILocation(line: 209, column: 7, scope: !1294)
!1313 = !DILocation(line: 0, scope: !1277, inlinedAt: !1293)
!1314 = !DILocation(line: 636, column: 3, scope: !1277, inlinedAt: !1293)
!1315 = !DILocation(line: 647, column: 36, scope: !1277, inlinedAt: !1293)
!1316 = !DILocation(line: 649, column: 3, scope: !1277, inlinedAt: !1293)
!1317 = !DILocation(line: 649, column: 33, scope: !1277, inlinedAt: !1293)
!1318 = !DILocation(line: 650, column: 13, scope: !1277, inlinedAt: !1293)
!1319 = !DILocation(line: 649, column: 20, scope: !1277, inlinedAt: !1293)
!1320 = !{!1321, !1302, i64 0}
!1321 = !{!"infomap", !1302, i64 0, !1302, i64 8}
!1322 = !DILocation(line: 649, column: 10, scope: !1277, inlinedAt: !1293)
!1323 = !DILocation(line: 649, column: 28, scope: !1277, inlinedAt: !1293)
!1324 = distinct !{!1324, !1316, !1318}
!1325 = !DILocation(line: 652, column: 17, scope: !1326, inlinedAt: !1293)
!1326 = distinct !DILexicalBlock(scope: !1277, file: !21, line: 652, column: 7)
!1327 = !{!1321, !1302, i64 8}
!1328 = !DILocation(line: 652, column: 7, scope: !1326, inlinedAt: !1293)
!1329 = !DILocation(line: 652, column: 7, scope: !1277, inlinedAt: !1293)
!1330 = !DILocation(line: 655, column: 3, scope: !1277, inlinedAt: !1293)
!1331 = !DILocation(line: 659, column: 29, scope: !1277, inlinedAt: !1293)
!1332 = !DILocation(line: 660, column: 7, scope: !1333, inlinedAt: !1293)
!1333 = distinct !DILexicalBlock(scope: !1277, file: !21, line: 660, column: 7)
!1334 = !DILocation(line: 660, column: 19, scope: !1333, inlinedAt: !1293)
!1335 = !DILocation(line: 660, column: 22, scope: !1333, inlinedAt: !1293)
!1336 = !DILocation(line: 660, column: 7, scope: !1277, inlinedAt: !1293)
!1337 = !DILocation(line: 666, column: 7, scope: !1338, inlinedAt: !1293)
!1338 = distinct !DILexicalBlock(scope: !1333, file: !21, line: 661, column: 5)
!1339 = !DILocation(line: 668, column: 5, scope: !1338, inlinedAt: !1293)
!1340 = !DILocation(line: 669, column: 3, scope: !1277, inlinedAt: !1293)
!1341 = !DILocation(line: 671, column: 3, scope: !1277, inlinedAt: !1293)
!1342 = !DILocation(line: 673, column: 1, scope: !1277, inlinedAt: !1293)
!1343 = !DILocation(line: 215, column: 3, scope: !1271)
!1344 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 219, type: !1345, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!76, !76, !187}
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1363, !1364, !1365, !1370, !1375, !1378, !1381, !1384, !1387, !1390, !1391, !1392, !1396}
!1348 = !DILocalVariable(name: "argc", arg: 1, scope: !1344, file: !3, line: 219, type: !76)
!1349 = !DILocalVariable(name: "argv", arg: 2, scope: !1344, file: !3, line: 219, type: !187)
!1350 = !DILocalVariable(name: "c", scope: !1344, file: !3, line: 221, type: !76)
!1351 = !DILocalVariable(name: "userspec", scope: !1344, file: !3, line: 224, type: !72)
!1352 = !DILocalVariable(name: "username", scope: !1344, file: !3, line: 225, type: !74)
!1353 = !DILocalVariable(name: "groups", scope: !1344, file: !3, line: 226, type: !74)
!1354 = !DILocalVariable(name: "skip_chdir", scope: !1344, file: !3, line: 227, type: !314)
!1355 = !DILocalVariable(name: "uid", scope: !1344, file: !3, line: 230, type: !236)
!1356 = !DILocalVariable(name: "gid", scope: !1344, file: !3, line: 231, type: !238)
!1357 = !DILocalVariable(name: "out_gids", scope: !1344, file: !3, line: 232, type: !515)
!1358 = !DILocalVariable(name: "n_gids", scope: !1344, file: !3, line: 233, type: !57)
!1359 = !DILocalVariable(name: "userlen", scope: !1360, file: !3, line: 254, type: !57)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 249, column: 11)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 247, column: 9)
!1362 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 245, column: 5)
!1363 = !DILocalVariable(name: "newroot", scope: !1344, file: !3, line: 283, type: !74)
!1364 = !DILocalVariable(name: "is_oldroot", scope: !1344, file: !3, line: 284, type: !314)
!1365 = !DILocalVariable(name: "__x", scope: !1366, file: !3, line: 302, type: !74)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 302, column: 9)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 301, column: 11)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 294, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 293, column: 7)
!1370 = !DILocalVariable(name: "pwd", scope: !1371, file: !3, line: 308, type: !1373)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 307, column: 9)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 306, column: 11)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!1375 = !DILocalVariable(name: "__x", scope: !1376, file: !3, line: 318, type: !76)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 318, column: 9)
!1377 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 317, column: 11)
!1378 = !DILocalVariable(name: "ngroups", scope: !1379, file: !3, line: 323, type: !76)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 322, column: 9)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 321, column: 16)
!1381 = !DILocalVariable(name: "shell", scope: !1382, file: !3, line: 340, type: !72)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 338, column: 5)
!1383 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 337, column: 7)
!1384 = !DILocalVariable(name: "err", scope: !1385, file: !3, line: 357, type: !74)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 356, column: 5)
!1386 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 355, column: 7)
!1387 = !DILocalVariable(name: "pwd", scope: !1388, file: !3, line: 367, type: !1373)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 366, column: 5)
!1389 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 365, column: 7)
!1390 = !DILocalVariable(name: "gids", scope: !1344, file: !3, line: 381, type: !515)
!1391 = !DILocalVariable(name: "in_gids", scope: !1344, file: !3, line: 382, type: !515)
!1392 = !DILocalVariable(name: "ngroups", scope: !1393, file: !3, line: 397, type: !76)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 396, column: 5)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 395, column: 12)
!1395 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 383, column: 7)
!1396 = !DILocalVariable(name: "exit_status", scope: !1344, file: !3, line: 428, type: !76)
!1397 = !DILocation(line: 0, scope: !1344)
!1398 = !DILocation(line: 230, column: 3, scope: !1344)
!1399 = !DILocation(line: 230, column: 9, scope: !1344)
!1400 = !{!1401, !1401, i64 0}
!1401 = !{!"int", !1303, i64 0}
!1402 = !DILocation(line: 231, column: 3, scope: !1344)
!1403 = !DILocation(line: 231, column: 9, scope: !1344)
!1404 = !DILocation(line: 232, column: 3, scope: !1344)
!1405 = !DILocation(line: 232, column: 16, scope: !1344)
!1406 = !DILocation(line: 233, column: 3, scope: !1344)
!1407 = !DILocation(line: 233, column: 10, scope: !1344)
!1408 = !{!1409, !1409, i64 0}
!1409 = !{!"long", !1303, i64 0}
!1410 = !DILocation(line: 236, column: 21, scope: !1344)
!1411 = !DILocation(line: 236, column: 3, scope: !1344)
!1412 = !DILocation(line: 237, column: 3, scope: !1344)
!1413 = !DILocation(line: 238, column: 3, scope: !1344)
!1414 = !DILocation(line: 239, column: 3, scope: !1344)
!1415 = !DILocalVariable(name: "status", arg: 1, scope: !1416, file: !21, line: 99, type: !76)
!1416 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !21, file: !21, line: 99, type: !1272, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1417)
!1417 = !{!1415}
!1418 = !DILocation(line: 0, scope: !1416, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 241, column: 3, scope: !1344)
!1420 = !DILocation(line: 102, column: 18, scope: !1421, inlinedAt: !1419)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !21, line: 101, column: 7)
!1422 = !DILocation(line: 242, column: 3, scope: !1344)
!1423 = !DILocation(line: 244, column: 3, scope: !1344)
!1424 = !DILocation(line: 224, column: 9, scope: !1344)
!1425 = !DILocation(line: 244, column: 15, scope: !1344)
!1426 = distinct !{!1426, !1423, !1427}
!1427 = !DILocation(line: 275, column: 5, scope: !1344)
!1428 = !DILocation(line: 250, column: 24, scope: !1360)
!1429 = !DILocation(line: 254, column: 30, scope: !1360)
!1430 = !DILocation(line: 0, scope: !1360)
!1431 = !DILocation(line: 255, column: 17, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 255, column: 17)
!1433 = !DILocation(line: 255, column: 25, scope: !1432)
!1434 = !DILocation(line: 255, column: 45, scope: !1432)
!1435 = !DILocation(line: 255, column: 28, scope: !1432)
!1436 = !{!1303, !1303, i64 0}
!1437 = !DILocation(line: 255, column: 50, scope: !1432)
!1438 = !DILocation(line: 255, column: 17, scope: !1360)
!1439 = !DILocation(line: 256, column: 37, scope: !1432)
!1440 = !DILocation(line: 256, column: 15, scope: !1432)
!1441 = !DILocation(line: 261, column: 20, scope: !1361)
!1442 = !DILocation(line: 262, column: 11, scope: !1361)
!1443 = !DILocation(line: 268, column: 9, scope: !1361)
!1444 = !DILocation(line: 270, column: 9, scope: !1361)
!1445 = !DILocation(line: 273, column: 11, scope: !1361)
!1446 = !DILocation(line: 277, column: 15, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 277, column: 7)
!1448 = !DILocation(line: 277, column: 12, scope: !1447)
!1449 = !DILocation(line: 277, column: 7, scope: !1344)
!1450 = !DILocation(line: 279, column: 20, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 278, column: 5)
!1452 = !DILocation(line: 279, column: 7, scope: !1451)
!1453 = !DILocation(line: 280, column: 7, scope: !1451)
!1454 = !DILocation(line: 283, column: 25, scope: !1344)
!1455 = !DILocalVariable(name: "dir", arg: 1, scope: !1456, file: !3, line: 172, type: !74)
!1456 = distinct !DISubprogram(name: "is_root", scope: !3, file: !3, line: 172, type: !1457, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!314, !74}
!1459 = !{!1455, !1460, !1461}
!1460 = !DILocalVariable(name: "resolved", scope: !1456, file: !3, line: 174, type: !72)
!1461 = !DILocalVariable(name: "is_res_root", scope: !1456, file: !3, line: 175, type: !314)
!1462 = !DILocation(line: 0, scope: !1456, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 284, column: 21, scope: !1344)
!1464 = !DILocation(line: 174, column: 20, scope: !1456, inlinedAt: !1463)
!1465 = !DILocation(line: 175, column: 22, scope: !1456, inlinedAt: !1463)
!1466 = !DILocation(line: 175, column: 31, scope: !1456, inlinedAt: !1463)
!1467 = !DILocation(line: 175, column: 34, scope: !1456, inlinedAt: !1463)
!1468 = !DILocation(line: 176, column: 3, scope: !1456, inlinedAt: !1463)
!1469 = !DILocation(line: 286, column: 23, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 286, column: 7)
!1471 = !DILocation(line: 286, column: 20, scope: !1470)
!1472 = !DILocation(line: 288, column: 20, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 287, column: 5)
!1474 = !DILocation(line: 289, column: 14, scope: !1473)
!1475 = !DILocation(line: 288, column: 7, scope: !1473)
!1476 = !DILocation(line: 290, column: 7, scope: !1473)
!1477 = !DILocation(line: 293, column: 7, scope: !1344)
!1478 = !DILocation(line: 301, column: 11, scope: !1367)
!1479 = !DILocation(line: 301, column: 11, scope: !1368)
!1480 = !DILocation(line: 302, column: 9, scope: !1366)
!1481 = !DILocation(line: 0, scope: !1366)
!1482 = !DILocation(line: 302, column: 9, scope: !1367)
!1483 = !DILocation(line: 306, column: 11, scope: !1372)
!1484 = !DILocalVariable(name: "uid", arg: 1, scope: !1485, file: !3, line: 45, type: !236)
!1485 = distinct !DISubprogram(name: "uid_unset", scope: !3, file: !3, line: 45, type: !1486, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1488)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!314, !236}
!1488 = !{!1484}
!1489 = !DILocation(line: 0, scope: !1485, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 306, column: 11, scope: !1372)
!1491 = !DILocation(line: 45, column: 55, scope: !1485, inlinedAt: !1490)
!1492 = !DILocation(line: 306, column: 25, scope: !1372)
!1493 = !DILocation(line: 306, column: 31, scope: !1372)
!1494 = !DILocation(line: 306, column: 52, scope: !1372)
!1495 = !DILocation(line: 46, column: 55, scope: !1496, inlinedAt: !1501)
!1496 = distinct !DISubprogram(name: "gid_unset", scope: !3, file: !3, line: 46, type: !1497, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!314, !238}
!1499 = !{!1500}
!1500 = !DILocalVariable(name: "gid", arg: 1, scope: !1496, file: !3, line: 46, type: !238)
!1501 = distinct !DILocation(line: 306, column: 41, scope: !1372)
!1502 = !DILocation(line: 306, column: 38, scope: !1372)
!1503 = !DILocation(line: 309, column: 22, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 309, column: 15)
!1505 = !DILocation(line: 0, scope: !1371)
!1506 = !DILocation(line: 309, column: 20, scope: !1504)
!1507 = !DILocation(line: 309, column: 15, scope: !1371)
!1508 = !DILocation(line: 311, column: 30, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 311, column: 19)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 310, column: 13)
!1511 = !DILocation(line: 0, scope: !1496, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 311, column: 19, scope: !1509)
!1513 = !DILocation(line: 46, column: 55, scope: !1496, inlinedAt: !1512)
!1514 = !DILocation(line: 311, column: 19, scope: !1510)
!1515 = !DILocation(line: 312, column: 28, scope: !1509)
!1516 = !{!1517, !1401, i64 20}
!1517 = !{!"passwd", !1302, i64 0, !1302, i64 8, !1401, i64 16, !1401, i64 20, !1302, i64 24, !1302, i64 32, !1302, i64 40}
!1518 = !DILocation(line: 312, column: 21, scope: !1509)
!1519 = !DILocation(line: 312, column: 17, scope: !1509)
!1520 = !DILocation(line: 313, column: 31, scope: !1510)
!1521 = !{!1517, !1302, i64 0}
!1522 = !DILocation(line: 314, column: 13, scope: !1510)
!1523 = !DILocation(line: 317, column: 11, scope: !1377)
!1524 = !DILocation(line: 317, column: 18, scope: !1377)
!1525 = !DILocation(line: 317, column: 21, scope: !1377)
!1526 = !DILocation(line: 317, column: 11, scope: !1368)
!1527 = !DILocation(line: 318, column: 9, scope: !1376)
!1528 = !DILocation(line: 0, scope: !1376)
!1529 = !DILocation(line: 318, column: 9, scope: !1377)
!1530 = !DILocation(line: 321, column: 28, scope: !1380)
!1531 = !DILocation(line: 0, scope: !1496, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 321, column: 28, scope: !1380)
!1533 = !DILocation(line: 46, column: 55, scope: !1496, inlinedAt: !1532)
!1534 = !DILocation(line: 321, column: 45, scope: !1380)
!1535 = !DILocation(line: 321, column: 42, scope: !1380)
!1536 = !DILocation(line: 323, column: 25, scope: !1379)
!1537 = !DILocation(line: 0, scope: !1379)
!1538 = !DILocation(line: 324, column: 17, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 324, column: 15)
!1540 = !DILocation(line: 324, column: 15, scope: !1379)
!1541 = !DILocation(line: 325, column: 22, scope: !1539)
!1542 = !DILocation(line: 325, column: 20, scope: !1539)
!1543 = !DILocation(line: 325, column: 13, scope: !1539)
!1544 = !DILocation(line: 225, column: 15, scope: !1344)
!1545 = !DILocation(line: 330, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 330, column: 7)
!1547 = !DILocation(line: 330, column: 24, scope: !1546)
!1548 = !DILocation(line: 330, column: 7, scope: !1344)
!1549 = !DILocation(line: 331, column: 5, scope: !1546)
!1550 = !DILocation(line: 334, column: 20, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 334, column: 7)
!1552 = !DILocation(line: 334, column: 23, scope: !1551)
!1553 = !DILocation(line: 334, column: 7, scope: !1344)
!1554 = !DILocation(line: 335, column: 5, scope: !1551)
!1555 = !DILocation(line: 337, column: 15, scope: !1383)
!1556 = !DILocation(line: 337, column: 22, scope: !1383)
!1557 = !DILocation(line: 337, column: 12, scope: !1383)
!1558 = !DILocation(line: 337, column: 7, scope: !1344)
!1559 = !DILocation(line: 340, column: 21, scope: !1382)
!1560 = !DILocation(line: 0, scope: !1382)
!1561 = !DILocation(line: 341, column: 17, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 341, column: 11)
!1563 = !DILocation(line: 341, column: 11, scope: !1382)
!1564 = !DILocation(line: 343, column: 15, scope: !1382)
!1565 = !DILocation(line: 344, column: 7, scope: !1382)
!1566 = !DILocation(line: 344, column: 15, scope: !1382)
!1567 = !DILocation(line: 345, column: 7, scope: !1382)
!1568 = !DILocation(line: 345, column: 15, scope: !1382)
!1569 = !DILocation(line: 346, column: 5, scope: !1382)
!1570 = !DILocation(line: 350, column: 12, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 348, column: 5)
!1572 = !DILocation(line: 355, column: 7, scope: !1386)
!1573 = !DILocation(line: 355, column: 7, scope: !1344)
!1574 = !DILocation(line: 357, column: 25, scope: !1385)
!1575 = !DILocation(line: 0, scope: !1385)
!1576 = !DILocation(line: 359, column: 11, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 359, column: 11)
!1578 = !DILocation(line: 359, column: 15, scope: !1577)
!1579 = !DILocation(line: 359, column: 29, scope: !1577)
!1580 = !DILocation(line: 0, scope: !1485, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 359, column: 18, scope: !1577)
!1582 = !DILocation(line: 45, column: 55, scope: !1485, inlinedAt: !1581)
!1583 = !DILocation(line: 359, column: 34, scope: !1577)
!1584 = !DILocation(line: 359, column: 48, scope: !1577)
!1585 = !DILocation(line: 0, scope: !1496, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 359, column: 37, scope: !1577)
!1587 = !DILocation(line: 46, column: 55, scope: !1496, inlinedAt: !1586)
!1588 = !DILocation(line: 359, column: 11, scope: !1385)
!1589 = !DILocation(line: 360, column: 9, scope: !1577)
!1590 = !DILocation(line: 365, column: 7, scope: !1389)
!1591 = !DILocation(line: 0, scope: !1485, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 365, column: 7, scope: !1389)
!1593 = !DILocation(line: 45, column: 55, scope: !1485, inlinedAt: !1592)
!1594 = !DILocation(line: 365, column: 21, scope: !1389)
!1595 = !DILocation(line: 365, column: 27, scope: !1389)
!1596 = !DILocation(line: 365, column: 48, scope: !1389)
!1597 = !DILocation(line: 46, column: 55, scope: !1496, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 365, column: 37, scope: !1389)
!1599 = !DILocation(line: 365, column: 34, scope: !1389)
!1600 = !DILocation(line: 381, column: 23, scope: !1344)
!1601 = !DILocation(line: 382, column: 3, scope: !1344)
!1602 = !DILocation(line: 382, column: 16, scope: !1344)
!1603 = !DILocation(line: 383, column: 14, scope: !1395)
!1604 = !DILocation(line: 368, column: 18, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 368, column: 11)
!1606 = !DILocation(line: 0, scope: !1388)
!1607 = !DILocation(line: 368, column: 16, scope: !1605)
!1608 = !DILocation(line: 0, scope: !1605)
!1609 = !DILocation(line: 0, scope: !1496, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 0, scope: !1605)
!1611 = !DILocation(line: 46, column: 55, scope: !1496, inlinedAt: !1610)
!1612 = !DILocation(line: 368, column: 11, scope: !1388)
!1613 = !DILocation(line: 370, column: 15, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 369, column: 9)
!1615 = !DILocation(line: 371, column: 24, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 370, column: 15)
!1617 = !DILocation(line: 371, column: 17, scope: !1616)
!1618 = !DILocation(line: 371, column: 13, scope: !1616)
!1619 = !DILocation(line: 372, column: 27, scope: !1614)
!1620 = !DILocation(line: 373, column: 9, scope: !1614)
!1621 = !DILocation(line: 374, column: 16, scope: !1605)
!1622 = !DILocation(line: 376, column: 11, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 375, column: 9)
!1624 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 374, column: 16)
!1625 = !DILocation(line: 383, column: 7, scope: !1395)
!1626 = !DILocation(line: 383, column: 17, scope: !1395)
!1627 = !DILocation(line: 383, column: 7, scope: !1344)
!1628 = !DILocation(line: 385, column: 64, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 385, column: 11)
!1630 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 384, column: 5)
!1631 = !DILocation(line: 385, column: 63, scope: !1629)
!1632 = !DILocation(line: 385, column: 11, scope: !1629)
!1633 = !DILocation(line: 385, column: 72, scope: !1629)
!1634 = !DILocation(line: 385, column: 11, scope: !1630)
!1635 = !DILocation(line: 387, column: 17, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 387, column: 15)
!1637 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 386, column: 9)
!1638 = !DILocation(line: 387, column: 15, scope: !1637)
!1639 = !DILocation(line: 392, column: 16, scope: !1629)
!1640 = !DILocation(line: 395, column: 24, scope: !1394)
!1641 = !DILocation(line: 0, scope: !1496, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 395, column: 24, scope: !1394)
!1643 = !DILocation(line: 46, column: 55, scope: !1496, inlinedAt: !1642)
!1644 = !DILocation(line: 395, column: 41, scope: !1394)
!1645 = !DILocation(line: 395, column: 38, scope: !1394)
!1646 = !DILocation(line: 397, column: 21, scope: !1393)
!1647 = !DILocation(line: 0, scope: !1393)
!1648 = !DILocation(line: 398, column: 19, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 398, column: 11)
!1650 = !DILocation(line: 398, column: 11, scope: !1393)
!1651 = !DILocation(line: 400, column: 17, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 400, column: 15)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 399, column: 9)
!1654 = !DILocation(line: 400, column: 15, scope: !1653)
!1655 = !DILocation(line: 401, column: 13, scope: !1652)
!1656 = !DILocation(line: 407, column: 20, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 406, column: 9)
!1658 = !DILocation(line: 407, column: 18, scope: !1657)
!1659 = !DILocation(line: 408, column: 18, scope: !1657)
!1660 = !DILocation(line: 413, column: 8, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 413, column: 7)
!1662 = !DILocation(line: 0, scope: !1485, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 413, column: 8, scope: !1661)
!1664 = !DILocation(line: 45, column: 55, scope: !1485, inlinedAt: !1663)
!1665 = !DILocation(line: 413, column: 22, scope: !1661)
!1666 = !DILocation(line: 413, column: 47, scope: !1661)
!1667 = !DILocation(line: 413, column: 36, scope: !1661)
!1668 = !DILocation(line: 413, column: 61, scope: !1661)
!1669 = !DILocation(line: 413, column: 7, scope: !1344)
!1670 = !DILocation(line: 414, column: 5, scope: !1661)
!1671 = !DILocation(line: 416, column: 9, scope: !1344)
!1672 = !DILocation(line: 416, column: 3, scope: !1344)
!1673 = !DILocation(line: 417, column: 9, scope: !1344)
!1674 = !DILocation(line: 417, column: 3, scope: !1344)
!1675 = !DILocation(line: 419, column: 7, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 419, column: 7)
!1677 = !DILocation(line: 0, scope: !1496, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 419, column: 7, scope: !1676)
!1679 = !DILocation(line: 46, column: 55, scope: !1496, inlinedAt: !1678)
!1680 = !DILocation(line: 419, column: 21, scope: !1676)
!1681 = !DILocation(line: 419, column: 24, scope: !1676)
!1682 = !DILocation(line: 419, column: 7, scope: !1344)
!1683 = !DILocation(line: 420, column: 5, scope: !1676)
!1684 = !DILocation(line: 422, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 422, column: 7)
!1686 = !DILocation(line: 0, scope: !1485, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 422, column: 7, scope: !1685)
!1688 = !DILocation(line: 45, column: 55, scope: !1485, inlinedAt: !1687)
!1689 = !DILocation(line: 422, column: 21, scope: !1685)
!1690 = !DILocation(line: 422, column: 24, scope: !1685)
!1691 = !DILocation(line: 422, column: 7, scope: !1344)
!1692 = !DILocation(line: 423, column: 5, scope: !1685)
!1693 = !DILocation(line: 426, column: 11, scope: !1344)
!1694 = !DILocation(line: 426, column: 3, scope: !1344)
!1695 = !DILocation(line: 428, column: 21, scope: !1344)
!1696 = !DILocation(line: 428, column: 27, scope: !1344)
!1697 = !DILocation(line: 429, column: 20, scope: !1344)
!1698 = !DILocation(line: 429, column: 58, scope: !1344)
!1699 = !DILocation(line: 429, column: 51, scope: !1344)
!1700 = !DILocation(line: 429, column: 3, scope: !1344)
!1701 = !DILocation(line: 431, column: 1, scope: !1344)
!1702 = distinct !DISubprogram(name: "parse_additional_groups", scope: !3, file: !3, line: 96, type: !1703, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!76, !74, !1103, !56, !314}
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1720}
!1706 = !DILocalVariable(name: "groups", arg: 1, scope: !1702, file: !3, line: 96, type: !74)
!1707 = !DILocalVariable(name: "pgids", arg: 2, scope: !1702, file: !3, line: 96, type: !1103)
!1708 = !DILocalVariable(name: "pn_gids", arg: 3, scope: !1702, file: !3, line: 97, type: !56)
!1709 = !DILocalVariable(name: "show_errors", arg: 4, scope: !1702, file: !3, line: 97, type: !314)
!1710 = !DILocalVariable(name: "gids", scope: !1702, file: !3, line: 99, type: !515)
!1711 = !DILocalVariable(name: "n_gids_allocated", scope: !1702, file: !3, line: 100, type: !57)
!1712 = !DILocalVariable(name: "n_gids", scope: !1702, file: !3, line: 101, type: !57)
!1713 = !DILocalVariable(name: "buffer", scope: !1702, file: !3, line: 102, type: !72)
!1714 = !DILocalVariable(name: "tmp", scope: !1702, file: !3, line: 103, type: !74)
!1715 = !DILocalVariable(name: "ret", scope: !1702, file: !3, line: 104, type: !76)
!1716 = !DILocalVariable(name: "g", scope: !1717, file: !3, line: 108, type: !247)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 107, column: 5)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 106, column: 3)
!1719 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 106, column: 3)
!1720 = !DILocalVariable(name: "value", scope: !1717, file: !3, line: 109, type: !700)
!1721 = !DILocation(line: 0, scope: !1702)
!1722 = !DILocation(line: 102, column: 18, scope: !1702)
!1723 = !DILocation(line: 106, column: 14, scope: !1719)
!1724 = !DILocation(line: 106, column: 3, scope: !1719)
!1725 = !DILocation(line: 0, scope: !1717)
!1726 = !DILocation(line: 109, column: 7, scope: !1717)
!1727 = !DILocation(line: 111, column: 11, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 111, column: 11)
!1729 = !DILocation(line: 111, column: 50, scope: !1728)
!1730 = !DILocation(line: 112, column: 14, scope: !1728)
!1731 = !DILocation(line: 112, column: 20, scope: !1728)
!1732 = !DILocation(line: 112, column: 11, scope: !1728)
!1733 = !DILocation(line: 0, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 113, column: 9)
!1735 = !DILocation(line: 114, column: 11, scope: !1734)
!1736 = !DILocation(line: 0, scope: !1719)
!1737 = !DILocation(line: 114, column: 18, scope: !1734)
!1738 = !{!1739, !1739, i64 0}
!1739 = !{!"short", !1303, i64 0}
!1740 = !DILocation(line: 115, column: 16, scope: !1734)
!1741 = distinct !{!1741, !1735, !1740}
!1742 = !DILocation(line: 116, column: 20, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 116, column: 15)
!1744 = !DILocation(line: 116, column: 15, scope: !1734)
!1745 = !DILocation(line: 119, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 117, column: 13)
!1747 = !DILocation(line: 120, column: 21, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 120, column: 19)
!1749 = !DILocation(line: 120, column: 19, scope: !1746)
!1750 = !DILocation(line: 121, column: 28, scope: !1748)
!1751 = !{!1752, !1401, i64 16}
!1752 = !{!"group", !1302, i64 0, !1302, i64 8, !1401, i64 16, !1302, i64 24}
!1753 = !DILocation(line: 121, column: 25, scope: !1748)
!1754 = !DILocation(line: 121, column: 23, scope: !1748)
!1755 = !DILocation(line: 121, column: 17, scope: !1748)
!1756 = !DILocation(line: 128, column: 15, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 127, column: 9)
!1758 = !DILocation(line: 129, column: 17, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 129, column: 15)
!1760 = !DILocation(line: 129, column: 15, scope: !1757)
!1761 = !DILocation(line: 130, column: 24, scope: !1759)
!1762 = !DILocation(line: 130, column: 21, scope: !1759)
!1763 = !DILocation(line: 130, column: 19, scope: !1759)
!1764 = !DILocation(line: 130, column: 13, scope: !1759)
!1765 = !DILocation(line: 137, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 134, column: 9)
!1767 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 133, column: 11)
!1768 = !DILocation(line: 139, column: 25, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 138, column: 13)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 137, column: 15)
!1771 = !DILocation(line: 139, column: 32, scope: !1769)
!1772 = !DILocation(line: 139, column: 55, scope: !1769)
!1773 = !DILocation(line: 139, column: 15, scope: !1769)
!1774 = !DILocation(line: 140, column: 15, scope: !1769)
!1775 = !DILocation(line: 146, column: 18, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 146, column: 11)
!1777 = !DILocation(line: 146, column: 11, scope: !1717)
!1778 = !DILocation(line: 147, column: 16, scope: !1776)
!1779 = !DILocation(line: 0, scope: !52, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 147, column: 16, scope: !1776)
!1781 = !DILocation(line: 178, column: 9, scope: !1782, inlinedAt: !1780)
!1782 = distinct !DILexicalBlock(scope: !52, file: !51, line: 178, column: 7)
!1783 = !DILocation(line: 178, column: 7, scope: !52, inlinedAt: !1780)
!1784 = !DILocation(line: 180, column: 13, scope: !1785, inlinedAt: !1780)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !51, line: 180, column: 11)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !51, line: 179, column: 5)
!1787 = !DILocation(line: 180, column: 11, scope: !1786, inlinedAt: !1780)
!1788 = !DILocation(line: 191, column: 11, scope: !1789, inlinedAt: !1780)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !51, line: 191, column: 11)
!1790 = !DILocation(line: 191, column: 11, scope: !1786, inlinedAt: !1780)
!1791 = !DILocation(line: 192, column: 9, scope: !1789, inlinedAt: !1780)
!1792 = !DILocation(line: 201, column: 11, scope: !1793, inlinedAt: !1780)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !51, line: 200, column: 11)
!1794 = distinct !DILexicalBlock(scope: !1782, file: !51, line: 195, column: 5)
!1795 = !DILocation(line: 200, column: 11, scope: !1794, inlinedAt: !1780)
!1796 = !DILocation(line: 202, column: 9, scope: !1793, inlinedAt: !1780)
!1797 = !DILocation(line: 203, column: 14, scope: !1794, inlinedAt: !1780)
!1798 = !DILocation(line: 203, column: 18, scope: !1794, inlinedAt: !1780)
!1799 = !DILocation(line: 203, column: 9, scope: !1794, inlinedAt: !1780)
!1800 = !DILocation(line: 207, column: 25, scope: !52, inlinedAt: !1780)
!1801 = !DILocation(line: 207, column: 10, scope: !52, inlinedAt: !1780)
!1802 = !DILocation(line: 147, column: 9, scope: !1776)
!1803 = !DILocation(line: 148, column: 24, scope: !1717)
!1804 = !DILocation(line: 148, column: 18, scope: !1717)
!1805 = !DILocation(line: 148, column: 7, scope: !1717)
!1806 = !DILocation(line: 148, column: 22, scope: !1717)
!1807 = !DILocation(line: 149, column: 5, scope: !1718)
!1808 = !DILocation(line: 158, column: 10, scope: !1702)
!1809 = !DILocation(line: 160, column: 7, scope: !1702)
!1810 = !DILocation(line: 106, column: 47, scope: !1718)
!1811 = distinct !{!1811, !1724, !1812}
!1812 = !DILocation(line: 149, column: 5, scope: !1719)
!1813 = !DILocation(line: 151, column: 11, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 151, column: 7)
!1815 = !DILocation(line: 151, column: 26, scope: !1814)
!1816 = !DILocation(line: 151, column: 16, scope: !1814)
!1817 = !DILocation(line: 154, column: 22, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 153, column: 11)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 152, column: 5)
!1820 = !DILocation(line: 154, column: 50, scope: !1818)
!1821 = !DILocation(line: 154, column: 9, scope: !1818)
!1822 = !DILocation(line: 160, column: 11, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 160, column: 7)
!1824 = !DILocation(line: 161, column: 14, scope: !1823)
!1825 = !DILocation(line: 161, column: 5, scope: !1823)
!1826 = !DILocation(line: 163, column: 3, scope: !1702)
!1827 = !DILocation(line: 164, column: 3, scope: !1702)
!1828 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !272, file: !272, line: 51, type: !140, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1829)
!1829 = !{!1830}
!1830 = !DILocalVariable(name: "file", arg: 1, scope: !1828, file: !272, line: 51, type: !74)
!1831 = !DILocation(line: 0, scope: !1828)
!1832 = !DILocation(line: 53, column: 13, scope: !1828)
!1833 = !DILocation(line: 54, column: 1, scope: !1828)
!1834 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !272, file: !272, line: 88, type: !1835, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !314}
!1837 = !{!1838}
!1838 = !DILocalVariable(name: "ignore", arg: 1, scope: !1834, file: !272, line: 88, type: !314)
!1839 = !DILocation(line: 0, scope: !1834)
!1840 = !DILocation(line: 90, column: 16, scope: !1834)
!1841 = !{!1842, !1842, i64 0}
!1842 = !{!"_Bool", !1303, i64 0}
!1843 = !DILocation(line: 91, column: 1, scope: !1834)
!1844 = distinct !DISubprogram(name: "close_stdout", scope: !272, file: !272, line: 117, type: !157, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1845)
!1845 = !{!1846}
!1846 = !DILocalVariable(name: "write_error", scope: !1847, file: !272, line: 122, type: !74)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !272, line: 121, column: 5)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !272, line: 119, column: 7)
!1849 = !DILocation(line: 119, column: 21, scope: !1848)
!1850 = !DILocation(line: 119, column: 7, scope: !1848)
!1851 = !DILocation(line: 119, column: 29, scope: !1848)
!1852 = !DILocation(line: 120, column: 7, scope: !1848)
!1853 = !DILocation(line: 120, column: 12, scope: !1848)
!1854 = !{i8 0, i8 2}
!1855 = !DILocation(line: 120, column: 25, scope: !1848)
!1856 = !DILocation(line: 120, column: 28, scope: !1848)
!1857 = !DILocation(line: 120, column: 34, scope: !1848)
!1858 = !DILocation(line: 119, column: 7, scope: !1844)
!1859 = !DILocation(line: 122, column: 33, scope: !1847)
!1860 = !DILocation(line: 0, scope: !1847)
!1861 = !DILocation(line: 123, column: 11, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1847, file: !272, line: 123, column: 11)
!1863 = !DILocation(line: 0, scope: !1862)
!1864 = !DILocation(line: 123, column: 11, scope: !1847)
!1865 = !DILocation(line: 124, column: 36, scope: !1862)
!1866 = !DILocation(line: 124, column: 9, scope: !1862)
!1867 = !DILocation(line: 127, column: 9, scope: !1862)
!1868 = !DILocation(line: 129, column: 14, scope: !1847)
!1869 = !DILocation(line: 129, column: 7, scope: !1847)
!1870 = !DILocation(line: 134, column: 42, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1844, file: !272, line: 134, column: 7)
!1872 = !DILocation(line: 134, column: 28, scope: !1871)
!1873 = !DILocation(line: 134, column: 50, scope: !1871)
!1874 = !DILocation(line: 134, column: 7, scope: !1844)
!1875 = !DILocation(line: 135, column: 12, scope: !1871)
!1876 = !DILocation(line: 135, column: 5, scope: !1871)
!1877 = !DILocation(line: 136, column: 1, scope: !1844)
!1878 = distinct !DISubprogram(name: "set_program_name", scope: !324, file: !324, line: 39, type: !140, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1879)
!1879 = !{!1880, !1881, !1882}
!1880 = !DILocalVariable(name: "argv0", arg: 1, scope: !1878, file: !324, line: 39, type: !74)
!1881 = !DILocalVariable(name: "slash", scope: !1878, file: !324, line: 46, type: !74)
!1882 = !DILocalVariable(name: "base", scope: !1878, file: !324, line: 47, type: !74)
!1883 = !DILocation(line: 0, scope: !1878)
!1884 = !DILocation(line: 51, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1878, file: !324, line: 51, column: 7)
!1886 = !DILocation(line: 51, column: 7, scope: !1878)
!1887 = !DILocation(line: 55, column: 14, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !324, line: 52, column: 5)
!1889 = !DILocation(line: 54, column: 7, scope: !1888)
!1890 = !DILocation(line: 56, column: 7, scope: !1888)
!1891 = !DILocation(line: 59, column: 11, scope: !1878)
!1892 = !DILocation(line: 60, column: 17, scope: !1878)
!1893 = !DILocation(line: 60, column: 11, scope: !1878)
!1894 = !DILocation(line: 61, column: 12, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1878, file: !324, line: 61, column: 7)
!1896 = !DILocation(line: 61, column: 20, scope: !1895)
!1897 = !DILocation(line: 61, column: 25, scope: !1895)
!1898 = !DILocation(line: 61, column: 42, scope: !1895)
!1899 = !DILocation(line: 61, column: 28, scope: !1895)
!1900 = !DILocation(line: 61, column: 61, scope: !1895)
!1901 = !DILocation(line: 61, column: 7, scope: !1878)
!1902 = !DILocation(line: 64, column: 11, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !324, line: 64, column: 11)
!1904 = distinct !DILexicalBlock(scope: !1895, file: !324, line: 62, column: 5)
!1905 = !DILocation(line: 64, column: 36, scope: !1903)
!1906 = !DILocation(line: 64, column: 11, scope: !1904)
!1907 = !DILocation(line: 66, column: 24, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1903, file: !324, line: 65, column: 9)
!1909 = !DILocation(line: 70, column: 41, scope: !1908)
!1910 = !DILocation(line: 72, column: 9, scope: !1908)
!1911 = !DILocation(line: 84, column: 16, scope: !1878)
!1912 = !DILocation(line: 90, column: 27, scope: !1878)
!1913 = !DILocation(line: 92, column: 1, scope: !1878)
!1914 = distinct !DISubprogram(name: "clone_quoting_options", scope: !365, file: !365, line: 122, type: !1915, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1918)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1917, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1918 = !{!1919, !1920, !1921}
!1919 = !DILocalVariable(name: "o", arg: 1, scope: !1914, file: !365, line: 122, type: !1917)
!1920 = !DILocalVariable(name: "e", scope: !1914, file: !365, line: 124, type: !76)
!1921 = !DILocalVariable(name: "p", scope: !1914, file: !365, line: 125, type: !1917)
!1922 = !DILocation(line: 0, scope: !1914)
!1923 = !DILocation(line: 124, column: 11, scope: !1914)
!1924 = !DILocation(line: 125, column: 40, scope: !1914)
!1925 = !DILocation(line: 125, column: 31, scope: !1914)
!1926 = !DILocation(line: 127, column: 9, scope: !1914)
!1927 = !DILocation(line: 128, column: 3, scope: !1914)
!1928 = distinct !DISubprogram(name: "get_quoting_style", scope: !365, file: !365, line: 133, type: !1929, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!5, !381}
!1931 = !{!1932}
!1932 = !DILocalVariable(name: "o", arg: 1, scope: !1928, file: !365, line: 133, type: !381)
!1933 = !DILocation(line: 0, scope: !1928)
!1934 = !DILocation(line: 135, column: 11, scope: !1928)
!1935 = !DILocation(line: 135, column: 46, scope: !1928)
!1936 = !{!1937, !1303, i64 0}
!1937 = !{!"quoting_options", !1303, i64 0, !1401, i64 4, !1303, i64 8, !1302, i64 40, !1302, i64 48}
!1938 = !DILocation(line: 135, column: 3, scope: !1928)
!1939 = distinct !DISubprogram(name: "set_quoting_style", scope: !365, file: !365, line: 141, type: !1940, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1917, !5}
!1942 = !{!1943, !1944}
!1943 = !DILocalVariable(name: "o", arg: 1, scope: !1939, file: !365, line: 141, type: !1917)
!1944 = !DILocalVariable(name: "s", arg: 2, scope: !1939, file: !365, line: 141, type: !5)
!1945 = !DILocation(line: 0, scope: !1939)
!1946 = !DILocation(line: 143, column: 4, scope: !1939)
!1947 = !DILocation(line: 143, column: 39, scope: !1939)
!1948 = !DILocation(line: 143, column: 45, scope: !1939)
!1949 = !DILocation(line: 144, column: 1, scope: !1939)
!1950 = distinct !DISubprogram(name: "set_char_quoting", scope: !365, file: !365, line: 152, type: !1951, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!76, !1917, !73, !76}
!1953 = !{!1954, !1955, !1956, !1957, !1959, !1960, !1961}
!1954 = !DILocalVariable(name: "o", arg: 1, scope: !1950, file: !365, line: 152, type: !1917)
!1955 = !DILocalVariable(name: "c", arg: 2, scope: !1950, file: !365, line: 152, type: !73)
!1956 = !DILocalVariable(name: "i", arg: 3, scope: !1950, file: !365, line: 152, type: !76)
!1957 = !DILocalVariable(name: "uc", scope: !1950, file: !365, line: 154, type: !1958)
!1958 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1959 = !DILocalVariable(name: "p", scope: !1950, file: !365, line: 155, type: !186)
!1960 = !DILocalVariable(name: "shift", scope: !1950, file: !365, line: 157, type: !76)
!1961 = !DILocalVariable(name: "r", scope: !1950, file: !365, line: 158, type: !76)
!1962 = !DILocation(line: 0, scope: !1950)
!1963 = !DILocation(line: 156, column: 6, scope: !1950)
!1964 = !DILocation(line: 156, column: 62, scope: !1950)
!1965 = !DILocation(line: 156, column: 57, scope: !1950)
!1966 = !DILocation(line: 157, column: 15, scope: !1950)
!1967 = !DILocation(line: 158, column: 12, scope: !1950)
!1968 = !DILocation(line: 158, column: 15, scope: !1950)
!1969 = !DILocation(line: 158, column: 25, scope: !1950)
!1970 = !DILocation(line: 159, column: 13, scope: !1950)
!1971 = !DILocation(line: 159, column: 18, scope: !1950)
!1972 = !DILocation(line: 159, column: 23, scope: !1950)
!1973 = !DILocation(line: 159, column: 6, scope: !1950)
!1974 = !DILocation(line: 160, column: 3, scope: !1950)
!1975 = distinct !DISubprogram(name: "set_quoting_flags", scope: !365, file: !365, line: 168, type: !1976, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!76, !1917, !76}
!1978 = !{!1979, !1980, !1981}
!1979 = !DILocalVariable(name: "o", arg: 1, scope: !1975, file: !365, line: 168, type: !1917)
!1980 = !DILocalVariable(name: "i", arg: 2, scope: !1975, file: !365, line: 168, type: !76)
!1981 = !DILocalVariable(name: "r", scope: !1975, file: !365, line: 170, type: !76)
!1982 = !DILocation(line: 0, scope: !1975)
!1983 = !DILocation(line: 171, column: 8, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1975, file: !365, line: 171, column: 7)
!1985 = !DILocation(line: 171, column: 7, scope: !1975)
!1986 = !DILocation(line: 173, column: 10, scope: !1975)
!1987 = !{!1937, !1401, i64 4}
!1988 = !DILocation(line: 174, column: 12, scope: !1975)
!1989 = !DILocation(line: 175, column: 3, scope: !1975)
!1990 = distinct !DISubprogram(name: "set_custom_quoting", scope: !365, file: !365, line: 179, type: !1991, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1917, !74, !74}
!1993 = !{!1994, !1995, !1996}
!1994 = !DILocalVariable(name: "o", arg: 1, scope: !1990, file: !365, line: 179, type: !1917)
!1995 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1990, file: !365, line: 180, type: !74)
!1996 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1990, file: !365, line: 180, type: !74)
!1997 = !DILocation(line: 0, scope: !1990)
!1998 = !DILocation(line: 182, column: 8, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1990, file: !365, line: 182, column: 7)
!2000 = !DILocation(line: 182, column: 7, scope: !1990)
!2001 = !DILocation(line: 184, column: 6, scope: !1990)
!2002 = !DILocation(line: 184, column: 12, scope: !1990)
!2003 = !DILocation(line: 185, column: 8, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1990, file: !365, line: 185, column: 7)
!2005 = !DILocation(line: 185, column: 23, scope: !2004)
!2006 = !DILocation(line: 185, column: 19, scope: !2004)
!2007 = !DILocation(line: 186, column: 5, scope: !2004)
!2008 = !DILocation(line: 187, column: 6, scope: !1990)
!2009 = !DILocation(line: 187, column: 17, scope: !1990)
!2010 = !{!1937, !1302, i64 40}
!2011 = !DILocation(line: 188, column: 6, scope: !1990)
!2012 = !DILocation(line: 188, column: 18, scope: !1990)
!2013 = !{!1937, !1302, i64 48}
!2014 = !DILocation(line: 189, column: 1, scope: !1990)
!2015 = distinct !DISubprogram(name: "quotearg_buffer", scope: !365, file: !365, line: 784, type: !2016, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!57, !72, !57, !74, !57, !381}
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026}
!2019 = !DILocalVariable(name: "buffer", arg: 1, scope: !2015, file: !365, line: 784, type: !72)
!2020 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2015, file: !365, line: 784, type: !57)
!2021 = !DILocalVariable(name: "arg", arg: 3, scope: !2015, file: !365, line: 785, type: !74)
!2022 = !DILocalVariable(name: "argsize", arg: 4, scope: !2015, file: !365, line: 785, type: !57)
!2023 = !DILocalVariable(name: "o", arg: 5, scope: !2015, file: !365, line: 786, type: !381)
!2024 = !DILocalVariable(name: "p", scope: !2015, file: !365, line: 788, type: !381)
!2025 = !DILocalVariable(name: "e", scope: !2015, file: !365, line: 789, type: !76)
!2026 = !DILocalVariable(name: "r", scope: !2015, file: !365, line: 790, type: !57)
!2027 = !DILocation(line: 0, scope: !2015)
!2028 = !DILocation(line: 788, column: 37, scope: !2015)
!2029 = !DILocation(line: 789, column: 11, scope: !2015)
!2030 = !DILocation(line: 791, column: 43, scope: !2015)
!2031 = !DILocation(line: 791, column: 53, scope: !2015)
!2032 = !DILocation(line: 791, column: 60, scope: !2015)
!2033 = !DILocation(line: 792, column: 43, scope: !2015)
!2034 = !DILocation(line: 792, column: 58, scope: !2015)
!2035 = !DILocation(line: 790, column: 14, scope: !2015)
!2036 = !DILocation(line: 793, column: 9, scope: !2015)
!2037 = !DILocation(line: 794, column: 3, scope: !2015)
!2038 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !365, file: !365, line: 256, type: !2039, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!57, !72, !57, !74, !57, !5, !76, !219, !74, !74}
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2066, !2067, !2068, !2069, !2070, !2073, !2074, !2080, !2083, !2084, !2091, !2094, !2095, !2096, !2097, !2098, !2099}
!2042 = !DILocalVariable(name: "buffer", arg: 1, scope: !2038, file: !365, line: 256, type: !72)
!2043 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2038, file: !365, line: 256, type: !57)
!2044 = !DILocalVariable(name: "arg", arg: 3, scope: !2038, file: !365, line: 257, type: !74)
!2045 = !DILocalVariable(name: "argsize", arg: 4, scope: !2038, file: !365, line: 257, type: !57)
!2046 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2038, file: !365, line: 258, type: !5)
!2047 = !DILocalVariable(name: "flags", arg: 6, scope: !2038, file: !365, line: 258, type: !76)
!2048 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2038, file: !365, line: 259, type: !219)
!2049 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2038, file: !365, line: 260, type: !74)
!2050 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2038, file: !365, line: 261, type: !74)
!2051 = !DILocalVariable(name: "i", scope: !2038, file: !365, line: 263, type: !57)
!2052 = !DILocalVariable(name: "len", scope: !2038, file: !365, line: 264, type: !57)
!2053 = !DILocalVariable(name: "orig_buffersize", scope: !2038, file: !365, line: 265, type: !57)
!2054 = !DILocalVariable(name: "quote_string", scope: !2038, file: !365, line: 266, type: !74)
!2055 = !DILocalVariable(name: "quote_string_len", scope: !2038, file: !365, line: 267, type: !57)
!2056 = !DILocalVariable(name: "backslash_escapes", scope: !2038, file: !365, line: 268, type: !314)
!2057 = !DILocalVariable(name: "unibyte_locale", scope: !2038, file: !365, line: 269, type: !314)
!2058 = !DILocalVariable(name: "elide_outer_quotes", scope: !2038, file: !365, line: 270, type: !314)
!2059 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2038, file: !365, line: 271, type: !314)
!2060 = !DILocalVariable(name: "encountered_single_quote", scope: !2038, file: !365, line: 272, type: !314)
!2061 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2038, file: !365, line: 273, type: !314)
!2062 = !DILocalVariable(name: "c", scope: !2063, file: !365, line: 402, type: !1958)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !365, line: 401, column: 5)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !365, line: 400, column: 3)
!2065 = distinct !DILexicalBlock(scope: !2038, file: !365, line: 400, column: 3)
!2066 = !DILocalVariable(name: "esc", scope: !2063, file: !365, line: 403, type: !1958)
!2067 = !DILocalVariable(name: "is_right_quote", scope: !2063, file: !365, line: 404, type: !314)
!2068 = !DILocalVariable(name: "escaping", scope: !2063, file: !365, line: 405, type: !314)
!2069 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2063, file: !365, line: 406, type: !314)
!2070 = !DILocalVariable(name: "m", scope: !2071, file: !365, line: 610, type: !57)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 608, column: 11)
!2072 = distinct !DILexicalBlock(scope: !2063, file: !365, line: 426, column: 9)
!2073 = !DILocalVariable(name: "printable", scope: !2071, file: !365, line: 612, type: !314)
!2074 = !DILocalVariable(name: "mbstate", scope: !2075, file: !365, line: 621, type: !2077)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !365, line: 620, column: 15)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !365, line: 614, column: 17)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2078, line: 6, baseType: !2079)
!2078 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !402, line: 21, baseType: !401)
!2080 = !DILocalVariable(name: "w", scope: !2081, file: !365, line: 631, type: !2082)
!2081 = distinct !DILexicalBlock(scope: !2075, file: !365, line: 630, column: 19)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !58, line: 74, baseType: !76)
!2083 = !DILocalVariable(name: "bytes", scope: !2081, file: !365, line: 632, type: !57)
!2084 = !DILocalVariable(name: "j", scope: !2085, file: !365, line: 657, type: !57)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !365, line: 656, column: 27)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !365, line: 654, column: 29)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !365, line: 649, column: 23)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !365, line: 641, column: 30)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !365, line: 636, column: 30)
!2090 = distinct !DILexicalBlock(scope: !2081, file: !365, line: 634, column: 25)
!2091 = !DILocalVariable(name: "ilim", scope: !2092, file: !365, line: 684, type: !57)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !365, line: 681, column: 15)
!2093 = distinct !DILexicalBlock(scope: !2071, file: !365, line: 680, column: 17)
!2094 = !DILabel(scope: !2038, name: "process_input", file: !365, line: 314)
!2095 = !DILabel(scope: !2072, name: "c_and_shell_escape", file: !365, line: 512)
!2096 = !DILabel(scope: !2072, name: "c_escape", file: !365, line: 517)
!2097 = !DILabel(scope: !2063, name: "store_escape", file: !365, line: 719)
!2098 = !DILabel(scope: !2063, name: "store_c", file: !365, line: 722)
!2099 = !DILabel(scope: !2038, name: "force_outer_quoting_style", file: !365, line: 763)
!2100 = !DILocation(line: 0, scope: !2038)
!2101 = !DILocation(line: 269, column: 25, scope: !2038)
!2102 = !DILocation(line: 269, column: 36, scope: !2038)
!2103 = !DILocation(line: 270, column: 8, scope: !2038)
!2104 = !DILocation(line: 0, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 526, column: 15)
!2106 = !DILocation(line: 0, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !365, line: 462, column: 19)
!2108 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 455, column: 13)
!2109 = !DILocation(line: 0, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !365, line: 449, column: 20)
!2111 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 428, column: 15)
!2112 = !DILocation(line: 0, scope: !2075)
!2113 = !DILocation(line: 0, scope: !2081)
!2114 = !DILocation(line: 0, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2063, file: !365, line: 712, column: 11)
!2116 = !DILocation(line: 273, column: 3, scope: !2038)
!2117 = !DILocation(line: 265, column: 10, scope: !2038)
!2118 = !DILocation(line: 266, column: 15, scope: !2038)
!2119 = !DILocation(line: 267, column: 10, scope: !2038)
!2120 = !DILocation(line: 268, column: 8, scope: !2038)
!2121 = !DILocation(line: 271, column: 8, scope: !2038)
!2122 = !DILocation(line: 272, column: 8, scope: !2038)
!2123 = !DILocation(line: 273, column: 8, scope: !2038)
!2124 = !DILocation(line: 314, column: 2, scope: !2038)
!2125 = !DILocation(line: 316, column: 3, scope: !2038)
!2126 = !DILocation(line: 323, column: 11, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2038, file: !365, line: 317, column: 5)
!2128 = !DILocation(line: 323, column: 12, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2127, file: !365, line: 323, column: 11)
!2130 = !DILocation(line: 324, column: 9, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !365, line: 324, column: 9)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !365, line: 324, column: 9)
!2133 = !DILocation(line: 324, column: 9, scope: !2132)
!2134 = !DILocation(line: 362, column: 26, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !365, line: 340, column: 11)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !365, line: 339, column: 13)
!2137 = distinct !DILexicalBlock(scope: !2127, file: !365, line: 338, column: 7)
!2138 = !DILocation(line: 363, column: 27, scope: !2135)
!2139 = !DILocation(line: 364, column: 11, scope: !2135)
!2140 = !DILocation(line: 365, column: 14, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !365, line: 365, column: 13)
!2142 = !DILocation(line: 365, column: 13, scope: !2137)
!2143 = !DILocation(line: 366, column: 43, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !365, line: 366, column: 11)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !365, line: 366, column: 11)
!2146 = !DILocation(line: 366, column: 11, scope: !2145)
!2147 = !DILocation(line: 367, column: 13, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !365, line: 367, column: 13)
!2149 = distinct !DILexicalBlock(scope: !2144, file: !365, line: 367, column: 13)
!2150 = !DILocation(line: 367, column: 13, scope: !2149)
!2151 = !DILocation(line: 366, column: 70, scope: !2144)
!2152 = distinct !{!2152, !2146, !2153}
!2153 = !DILocation(line: 367, column: 13, scope: !2145)
!2154 = !DILocation(line: 264, column: 10, scope: !2038)
!2155 = !DILocation(line: 370, column: 28, scope: !2137)
!2156 = !DILocation(line: 372, column: 7, scope: !2127)
!2157 = !DILocation(line: 376, column: 7, scope: !2127)
!2158 = !DILocation(line: 379, column: 7, scope: !2127)
!2159 = !DILocation(line: 381, column: 12, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2127, file: !365, line: 381, column: 11)
!2161 = !DILocation(line: 381, column: 11, scope: !2127)
!2162 = !DILocation(line: 386, column: 12, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2127, file: !365, line: 386, column: 11)
!2164 = !DILocation(line: 386, column: 11, scope: !2127)
!2165 = !DILocation(line: 387, column: 9, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !365, line: 387, column: 9)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !365, line: 387, column: 9)
!2168 = !DILocation(line: 387, column: 9, scope: !2167)
!2169 = !DILocation(line: 394, column: 7, scope: !2127)
!2170 = !DILocation(line: 397, column: 7, scope: !2127)
!2171 = !DILocation(line: 0, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2063, file: !365, line: 408, column: 11)
!2173 = !DILocation(line: 0, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !365, line: 419, column: 15)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !365, line: 418, column: 9)
!2176 = !DILocation(line: 0, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 556, column: 15)
!2178 = !DILocation(line: 0, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 548, column: 15)
!2180 = !DILocation(line: 0, scope: !2086)
!2181 = !DILocation(line: 0, scope: !2093)
!2182 = !DILocation(line: 0, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 509, column: 15)
!2184 = !DILocation(line: 400, column: 8, scope: !2065)
!2185 = !DILocation(line: 0, scope: !2065)
!2186 = !DILocation(line: 400, column: 27, scope: !2064)
!2187 = !DILocation(line: 400, column: 19, scope: !2064)
!2188 = !DILocation(line: 400, column: 41, scope: !2064)
!2189 = !DILocation(line: 400, column: 48, scope: !2064)
!2190 = !DILocation(line: 400, column: 3, scope: !2065)
!2191 = !DILocation(line: 400, column: 60, scope: !2064)
!2192 = !DILocation(line: 0, scope: !2063)
!2193 = !DILocation(line: 409, column: 11, scope: !2172)
!2194 = !DILocation(line: 411, column: 17, scope: !2172)
!2195 = !DILocation(line: 412, column: 39, scope: !2172)
!2196 = !DILocation(line: 416, column: 32, scope: !2172)
!2197 = !DILocation(line: 412, column: 19, scope: !2172)
!2198 = !DILocation(line: 412, column: 15, scope: !2172)
!2199 = !DILocation(line: 417, column: 11, scope: !2172)
!2200 = !DILocation(line: 417, column: 26, scope: !2172)
!2201 = !DILocation(line: 417, column: 14, scope: !2172)
!2202 = !DILocation(line: 417, column: 63, scope: !2172)
!2203 = !DILocation(line: 408, column: 11, scope: !2063)
!2204 = !DILocation(line: 424, column: 11, scope: !2063)
!2205 = !DILocation(line: 425, column: 7, scope: !2063)
!2206 = !DILocation(line: 428, column: 15, scope: !2072)
!2207 = !DILocation(line: 430, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !365, line: 430, column: 15)
!2209 = distinct !DILexicalBlock(scope: !2111, file: !365, line: 429, column: 13)
!2210 = !DILocation(line: 430, column: 15, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !365, line: 430, column: 15)
!2212 = !DILocation(line: 430, column: 15, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !365, line: 430, column: 15)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !365, line: 430, column: 15)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !365, line: 430, column: 15)
!2216 = !DILocation(line: 430, column: 15, scope: !2214)
!2217 = !DILocation(line: 430, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !365, line: 430, column: 15)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !365, line: 430, column: 15)
!2220 = !DILocation(line: 430, column: 15, scope: !2219)
!2221 = !DILocation(line: 430, column: 15, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !365, line: 430, column: 15)
!2223 = distinct !DILexicalBlock(scope: !2215, file: !365, line: 430, column: 15)
!2224 = !DILocation(line: 430, column: 15, scope: !2223)
!2225 = !DILocation(line: 430, column: 15, scope: !2215)
!2226 = !DILocation(line: 430, column: 15, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !365, line: 430, column: 15)
!2228 = distinct !DILexicalBlock(scope: !2208, file: !365, line: 430, column: 15)
!2229 = !DILocation(line: 430, column: 15, scope: !2228)
!2230 = !DILocation(line: 438, column: 19, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2209, file: !365, line: 437, column: 19)
!2232 = !DILocation(line: 438, column: 24, scope: !2231)
!2233 = !DILocation(line: 438, column: 28, scope: !2231)
!2234 = !DILocation(line: 438, column: 38, scope: !2231)
!2235 = !DILocation(line: 438, column: 48, scope: !2231)
!2236 = !DILocation(line: 438, column: 59, scope: !2231)
!2237 = !DILocation(line: 440, column: 19, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !365, line: 440, column: 19)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !365, line: 440, column: 19)
!2240 = distinct !DILexicalBlock(scope: !2231, file: !365, line: 439, column: 17)
!2241 = !DILocation(line: 440, column: 19, scope: !2239)
!2242 = !DILocation(line: 441, column: 19, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !365, line: 441, column: 19)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !365, line: 441, column: 19)
!2245 = !DILocation(line: 441, column: 19, scope: !2244)
!2246 = !DILocation(line: 442, column: 17, scope: !2240)
!2247 = !DILocation(line: 449, column: 20, scope: !2111)
!2248 = !DILocation(line: 454, column: 11, scope: !2072)
!2249 = !DILocation(line: 457, column: 19, scope: !2108)
!2250 = !DILocation(line: 463, column: 19, scope: !2107)
!2251 = !DILocation(line: 463, column: 24, scope: !2107)
!2252 = !DILocation(line: 463, column: 28, scope: !2107)
!2253 = !DILocation(line: 463, column: 38, scope: !2107)
!2254 = !DILocation(line: 463, column: 47, scope: !2107)
!2255 = !DILocation(line: 463, column: 41, scope: !2107)
!2256 = !DILocation(line: 463, column: 52, scope: !2107)
!2257 = !DILocation(line: 462, column: 19, scope: !2108)
!2258 = !DILocation(line: 464, column: 25, scope: !2107)
!2259 = !DILocation(line: 464, column: 17, scope: !2107)
!2260 = !DILocation(line: 471, column: 25, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2107, file: !365, line: 465, column: 19)
!2262 = !DILocation(line: 475, column: 21, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !365, line: 475, column: 21)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !365, line: 475, column: 21)
!2265 = !DILocation(line: 475, column: 21, scope: !2264)
!2266 = !DILocation(line: 476, column: 21, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !365, line: 476, column: 21)
!2268 = distinct !DILexicalBlock(scope: !2261, file: !365, line: 476, column: 21)
!2269 = !DILocation(line: 476, column: 21, scope: !2268)
!2270 = !DILocation(line: 477, column: 21, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !365, line: 477, column: 21)
!2272 = distinct !DILexicalBlock(scope: !2261, file: !365, line: 477, column: 21)
!2273 = !DILocation(line: 477, column: 21, scope: !2272)
!2274 = !DILocation(line: 478, column: 21, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !365, line: 478, column: 21)
!2276 = distinct !DILexicalBlock(scope: !2261, file: !365, line: 478, column: 21)
!2277 = !DILocation(line: 478, column: 21, scope: !2276)
!2278 = !DILocation(line: 479, column: 21, scope: !2261)
!2279 = !DILocation(line: 492, column: 31, scope: !2072)
!2280 = !DILocation(line: 493, column: 31, scope: !2072)
!2281 = !DILocation(line: 495, column: 31, scope: !2072)
!2282 = !DILocation(line: 496, column: 31, scope: !2072)
!2283 = !DILocation(line: 497, column: 31, scope: !2072)
!2284 = !DILocation(line: 500, column: 15, scope: !2072)
!2285 = !DILocation(line: 502, column: 19, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !365, line: 501, column: 13)
!2287 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 500, column: 15)
!2288 = !DILocation(line: 509, column: 33, scope: !2183)
!2289 = !DILocation(line: 0, scope: !2072)
!2290 = !DILocation(line: 512, column: 9, scope: !2072)
!2291 = !DILocation(line: 514, column: 15, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 513, column: 15)
!2293 = !DILocation(line: 517, column: 9, scope: !2072)
!2294 = !DILocation(line: 518, column: 15, scope: !2072)
!2295 = !DILocation(line: 526, column: 15, scope: !2072)
!2296 = !DILocation(line: 526, column: 40, scope: !2105)
!2297 = !DILocation(line: 526, column: 47, scope: !2105)
!2298 = !DILocation(line: 526, column: 18, scope: !2105)
!2299 = !DILocation(line: 530, column: 17, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2072, file: !365, line: 530, column: 15)
!2301 = !DILocation(line: 530, column: 15, scope: !2072)
!2302 = !DILocation(line: 535, column: 11, scope: !2072)
!2303 = !DILocation(line: 549, column: 15, scope: !2179)
!2304 = !DILocation(line: 556, column: 15, scope: !2072)
!2305 = !DILocation(line: 558, column: 19, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2177, file: !365, line: 557, column: 13)
!2307 = !DILocation(line: 561, column: 19, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2306, file: !365, line: 561, column: 19)
!2309 = !DILocation(line: 561, column: 35, scope: !2308)
!2310 = !DILocation(line: 561, column: 30, scope: !2308)
!2311 = !DILocation(line: 570, column: 15, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !365, line: 570, column: 15)
!2313 = distinct !DILexicalBlock(scope: !2306, file: !365, line: 570, column: 15)
!2314 = !DILocation(line: 570, column: 15, scope: !2313)
!2315 = !DILocation(line: 571, column: 15, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !365, line: 571, column: 15)
!2317 = distinct !DILexicalBlock(scope: !2306, file: !365, line: 571, column: 15)
!2318 = !DILocation(line: 571, column: 15, scope: !2317)
!2319 = !DILocation(line: 572, column: 15, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !365, line: 572, column: 15)
!2321 = distinct !DILexicalBlock(scope: !2306, file: !365, line: 572, column: 15)
!2322 = !DILocation(line: 572, column: 15, scope: !2321)
!2323 = !DILocation(line: 574, column: 13, scope: !2306)
!2324 = !DILocation(line: 614, column: 17, scope: !2071)
!2325 = !DILocation(line: 0, scope: !2071)
!2326 = !DILocation(line: 617, column: 29, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2076, file: !365, line: 615, column: 15)
!2328 = !DILocation(line: 617, column: 27, scope: !2327)
!2329 = !DILocation(line: 618, column: 15, scope: !2327)
!2330 = !DILocation(line: 621, column: 17, scope: !2075)
!2331 = !DILocation(line: 621, column: 27, scope: !2075)
!2332 = !DILocalVariable(name: "__dest", arg: 1, scope: !2333, file: !2334, line: 59, type: !55)
!2333 = distinct !DISubprogram(name: "memset", scope: !2334, file: !2334, line: 59, type: !2335, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2337)
!2334 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!55, !55, !76, !57}
!2337 = !{!2332, !2338, !2339}
!2338 = !DILocalVariable(name: "__ch", arg: 2, scope: !2333, file: !2334, line: 59, type: !76)
!2339 = !DILocalVariable(name: "__len", arg: 3, scope: !2333, file: !2334, line: 59, type: !57)
!2340 = !DILocation(line: 0, scope: !2333, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 622, column: 17, scope: !2075)
!2342 = !DILocation(line: 71, column: 10, scope: !2333, inlinedAt: !2341)
!2343 = !DILocation(line: 626, column: 29, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2075, file: !365, line: 626, column: 21)
!2345 = !DILocation(line: 626, column: 21, scope: !2075)
!2346 = !DILocation(line: 627, column: 29, scope: !2344)
!2347 = !DILocation(line: 627, column: 19, scope: !2344)
!2348 = !DILocation(line: 629, column: 17, scope: !2075)
!2349 = !DILocation(line: 624, column: 19, scope: !2075)
!2350 = !DILocation(line: 625, column: 27, scope: !2075)
!2351 = !DILocation(line: 631, column: 21, scope: !2081)
!2352 = !DILocation(line: 632, column: 56, scope: !2081)
!2353 = !DILocation(line: 632, column: 50, scope: !2081)
!2354 = !DILocation(line: 633, column: 53, scope: !2081)
!2355 = !DILocation(line: 632, column: 36, scope: !2081)
!2356 = !DILocation(line: 634, column: 25, scope: !2081)
!2357 = !DILocation(line: 644, column: 38, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2088, file: !365, line: 642, column: 23)
!2359 = !DILocation(line: 644, column: 48, scope: !2358)
!2360 = !DILocation(line: 644, column: 25, scope: !2358)
!2361 = !DILocation(line: 644, column: 51, scope: !2358)
!2362 = !DILocation(line: 645, column: 28, scope: !2358)
!2363 = !DILocation(line: 644, column: 34, scope: !2358)
!2364 = distinct !{!2364, !2360, !2362}
!2365 = !DILocation(line: 658, column: 43, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !365, line: 658, column: 29)
!2367 = distinct !DILexicalBlock(scope: !2085, file: !365, line: 658, column: 29)
!2368 = !DILocation(line: 655, column: 29, scope: !2086)
!2369 = !DILocation(line: 0, scope: !2085)
!2370 = !DILocation(line: 659, column: 49, scope: !2366)
!2371 = !DILocation(line: 659, column: 39, scope: !2366)
!2372 = !DILocation(line: 659, column: 31, scope: !2366)
!2373 = !DILocation(line: 658, column: 53, scope: !2366)
!2374 = !DILocation(line: 658, column: 29, scope: !2367)
!2375 = distinct !{!2375, !2374, !2376}
!2376 = !DILocation(line: 667, column: 33, scope: !2367)
!2377 = !DILocation(line: 674, column: 19, scope: !2075)
!2378 = !DILocation(line: 670, column: 41, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2087, file: !365, line: 670, column: 29)
!2380 = !DILocation(line: 670, column: 31, scope: !2379)
!2381 = !DILocation(line: 670, column: 29, scope: !2087)
!2382 = !DILocation(line: 672, column: 27, scope: !2087)
!2383 = !DILocation(line: 675, column: 26, scope: !2075)
!2384 = !DILocation(line: 675, column: 24, scope: !2075)
!2385 = !DILocation(line: 674, column: 19, scope: !2081)
!2386 = distinct !{!2386, !2348, !2387}
!2387 = !DILocation(line: 675, column: 44, scope: !2075)
!2388 = !DILocation(line: 676, column: 15, scope: !2076)
!2389 = !DILocation(line: 0, scope: !2076)
!2390 = !DILocation(line: 678, column: 40, scope: !2071)
!2391 = !DILocation(line: 680, column: 19, scope: !2093)
!2392 = !DILocation(line: 680, column: 45, scope: !2093)
!2393 = !DILocation(line: 680, column: 23, scope: !2093)
!2394 = !DILocation(line: 684, column: 33, scope: !2092)
!2395 = !DILocation(line: 0, scope: !2092)
!2396 = !DILocation(line: 686, column: 17, scope: !2092)
!2397 = !DILocation(line: 405, column: 12, scope: !2063)
!2398 = !DILocation(line: 688, column: 43, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !365, line: 688, column: 25)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !365, line: 687, column: 19)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !365, line: 686, column: 17)
!2402 = distinct !DILexicalBlock(scope: !2092, file: !365, line: 686, column: 17)
!2403 = !DILocation(line: 690, column: 25, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !365, line: 690, column: 25)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !365, line: 689, column: 23)
!2406 = !DILocation(line: 690, column: 25, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !365, line: 690, column: 25)
!2408 = !DILocation(line: 690, column: 25, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !365, line: 690, column: 25)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !365, line: 690, column: 25)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !365, line: 690, column: 25)
!2412 = !DILocation(line: 690, column: 25, scope: !2410)
!2413 = !DILocation(line: 690, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !365, line: 690, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !365, line: 690, column: 25)
!2416 = !DILocation(line: 690, column: 25, scope: !2415)
!2417 = !DILocation(line: 690, column: 25, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !365, line: 690, column: 25)
!2419 = distinct !DILexicalBlock(scope: !2411, file: !365, line: 690, column: 25)
!2420 = !DILocation(line: 690, column: 25, scope: !2419)
!2421 = !DILocation(line: 690, column: 25, scope: !2411)
!2422 = !DILocation(line: 690, column: 25, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !365, line: 690, column: 25)
!2424 = distinct !DILexicalBlock(scope: !2404, file: !365, line: 690, column: 25)
!2425 = !DILocation(line: 690, column: 25, scope: !2424)
!2426 = !DILocation(line: 691, column: 25, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !365, line: 691, column: 25)
!2428 = distinct !DILexicalBlock(scope: !2405, file: !365, line: 691, column: 25)
!2429 = !DILocation(line: 691, column: 25, scope: !2428)
!2430 = !DILocation(line: 692, column: 25, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !365, line: 692, column: 25)
!2432 = distinct !DILexicalBlock(scope: !2405, file: !365, line: 692, column: 25)
!2433 = !DILocation(line: 692, column: 25, scope: !2432)
!2434 = !DILocation(line: 693, column: 38, scope: !2405)
!2435 = !DILocation(line: 693, column: 33, scope: !2405)
!2436 = !DILocation(line: 694, column: 23, scope: !2405)
!2437 = !DILocation(line: 695, column: 30, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2399, file: !365, line: 695, column: 30)
!2439 = !DILocation(line: 695, column: 30, scope: !2399)
!2440 = !DILocation(line: 697, column: 25, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !365, line: 697, column: 25)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !365, line: 697, column: 25)
!2443 = distinct !DILexicalBlock(scope: !2438, file: !365, line: 696, column: 23)
!2444 = !DILocation(line: 697, column: 25, scope: !2442)
!2445 = !DILocation(line: 699, column: 23, scope: !2443)
!2446 = !DILocation(line: 700, column: 35, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2400, file: !365, line: 700, column: 25)
!2448 = !DILocation(line: 700, column: 30, scope: !2447)
!2449 = !DILocation(line: 700, column: 25, scope: !2400)
!2450 = !DILocation(line: 702, column: 21, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !365, line: 702, column: 21)
!2452 = distinct !DILexicalBlock(scope: !2400, file: !365, line: 702, column: 21)
!2453 = !DILocation(line: 702, column: 21, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !365, line: 702, column: 21)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !365, line: 702, column: 21)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !365, line: 702, column: 21)
!2457 = !DILocation(line: 702, column: 21, scope: !2455)
!2458 = !DILocation(line: 702, column: 21, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !365, line: 702, column: 21)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !365, line: 702, column: 21)
!2461 = !DILocation(line: 702, column: 21, scope: !2460)
!2462 = !DILocation(line: 702, column: 21, scope: !2456)
!2463 = !DILocation(line: 0, scope: !2400)
!2464 = !DILocation(line: 703, column: 21, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !365, line: 703, column: 21)
!2466 = distinct !DILexicalBlock(scope: !2400, file: !365, line: 703, column: 21)
!2467 = !DILocation(line: 703, column: 21, scope: !2466)
!2468 = !DILocation(line: 704, column: 25, scope: !2400)
!2469 = !DILocation(line: 686, column: 17, scope: !2401)
!2470 = distinct !{!2470, !2471, !2472}
!2471 = !DILocation(line: 686, column: 17, scope: !2402)
!2472 = !DILocation(line: 705, column: 19, scope: !2402)
!2473 = !DILocation(line: 416, column: 30, scope: !2172)
!2474 = !DILocation(line: 712, column: 34, scope: !2115)
!2475 = !DILocation(line: 715, column: 35, scope: !2115)
!2476 = !DILocation(line: 715, column: 17, scope: !2115)
!2477 = !DILocation(line: 715, column: 47, scope: !2115)
!2478 = !DILocation(line: 715, column: 65, scope: !2115)
!2479 = !DILocation(line: 716, column: 15, scope: !2115)
!2480 = !DILocation(line: 716, column: 11, scope: !2115)
!2481 = !DILocation(line: 712, column: 11, scope: !2063)
!2482 = !DILocation(line: 400, column: 10, scope: !2065)
!2483 = !DILocation(line: 719, column: 5, scope: !2063)
!2484 = !DILocation(line: 720, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2063, file: !365, line: 720, column: 7)
!2486 = !DILocation(line: 720, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2485, file: !365, line: 720, column: 7)
!2488 = !DILocation(line: 720, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !365, line: 720, column: 7)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !365, line: 720, column: 7)
!2491 = distinct !DILexicalBlock(scope: !2487, file: !365, line: 720, column: 7)
!2492 = !DILocation(line: 720, column: 7, scope: !2490)
!2493 = !DILocation(line: 720, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !365, line: 720, column: 7)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !365, line: 720, column: 7)
!2496 = !DILocation(line: 720, column: 7, scope: !2495)
!2497 = !DILocation(line: 720, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !365, line: 720, column: 7)
!2499 = distinct !DILexicalBlock(scope: !2491, file: !365, line: 720, column: 7)
!2500 = !DILocation(line: 720, column: 7, scope: !2499)
!2501 = !DILocation(line: 720, column: 7, scope: !2491)
!2502 = !DILocation(line: 720, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !365, line: 720, column: 7)
!2504 = distinct !DILexicalBlock(scope: !2485, file: !365, line: 720, column: 7)
!2505 = !DILocation(line: 720, column: 7, scope: !2504)
!2506 = !DILocation(line: 722, column: 5, scope: !2063)
!2507 = !DILocation(line: 723, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !365, line: 723, column: 7)
!2509 = distinct !DILexicalBlock(scope: !2063, file: !365, line: 723, column: 7)
!2510 = !DILocation(line: 424, column: 9, scope: !2063)
!2511 = !DILocation(line: 723, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !365, line: 723, column: 7)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !365, line: 723, column: 7)
!2514 = distinct !DILexicalBlock(scope: !2508, file: !365, line: 723, column: 7)
!2515 = !DILocation(line: 723, column: 7, scope: !2513)
!2516 = !DILocation(line: 723, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !365, line: 723, column: 7)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !365, line: 723, column: 7)
!2519 = !DILocation(line: 723, column: 7, scope: !2518)
!2520 = !DILocation(line: 723, column: 7, scope: !2514)
!2521 = !DILocation(line: 724, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !365, line: 724, column: 7)
!2523 = distinct !DILexicalBlock(scope: !2063, file: !365, line: 724, column: 7)
!2524 = !DILocation(line: 724, column: 7, scope: !2523)
!2525 = !DILocation(line: 726, column: 13, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2063, file: !365, line: 726, column: 11)
!2527 = !DILocation(line: 726, column: 11, scope: !2063)
!2528 = !DILocation(line: 728, column: 5, scope: !2064)
!2529 = !DILocation(line: 400, column: 75, scope: !2064)
!2530 = !DILocation(line: 400, column: 3, scope: !2064)
!2531 = distinct !{!2531, !2190, !2532}
!2532 = !DILocation(line: 728, column: 5, scope: !2065)
!2533 = !DILocation(line: 730, column: 11, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2038, file: !365, line: 730, column: 7)
!2535 = !DILocation(line: 730, column: 16, scope: !2534)
!2536 = !DILocation(line: 738, column: 51, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2038, file: !365, line: 738, column: 7)
!2538 = !DILocation(line: 739, column: 10, scope: !2537)
!2539 = !DILocation(line: 741, column: 11, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !365, line: 741, column: 11)
!2541 = distinct !DILexicalBlock(scope: !2537, file: !365, line: 740, column: 5)
!2542 = !DILocation(line: 741, column: 11, scope: !2541)
!2543 = !DILocation(line: 742, column: 16, scope: !2540)
!2544 = !DILocation(line: 742, column: 9, scope: !2540)
!2545 = !DILocation(line: 746, column: 18, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2540, file: !365, line: 746, column: 16)
!2547 = !DILocation(line: 746, column: 32, scope: !2546)
!2548 = !DILocation(line: 746, column: 29, scope: !2546)
!2549 = !DILocation(line: 755, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2038, file: !365, line: 755, column: 7)
!2551 = !DILocation(line: 755, column: 20, scope: !2550)
!2552 = !DILocation(line: 756, column: 12, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !365, line: 756, column: 5)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !365, line: 756, column: 5)
!2555 = !DILocation(line: 756, column: 5, scope: !2554)
!2556 = !DILocation(line: 757, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !365, line: 757, column: 7)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !365, line: 757, column: 7)
!2559 = !DILocation(line: 757, column: 7, scope: !2558)
!2560 = !DILocation(line: 756, column: 39, scope: !2553)
!2561 = distinct !{!2561, !2555, !2562}
!2562 = !DILocation(line: 757, column: 7, scope: !2554)
!2563 = !DILocation(line: 759, column: 11, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2038, file: !365, line: 759, column: 7)
!2565 = !DILocation(line: 759, column: 7, scope: !2038)
!2566 = !DILocation(line: 760, column: 5, scope: !2564)
!2567 = !DILocation(line: 760, column: 17, scope: !2564)
!2568 = !DILocation(line: 763, column: 2, scope: !2038)
!2569 = !DILocation(line: 766, column: 51, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2038, file: !365, line: 766, column: 7)
!2571 = !DILocation(line: 766, column: 21, scope: !2570)
!2572 = !DILocation(line: 770, column: 42, scope: !2038)
!2573 = !DILocation(line: 768, column: 10, scope: !2038)
!2574 = !DILocation(line: 768, column: 3, scope: !2038)
!2575 = !DILocation(line: 772, column: 1, scope: !2038)
!2576 = distinct !DISubprogram(name: "gettext_quote", scope: !365, file: !365, line: 207, type: !2577, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!74, !74, !5}
!2579 = !{!2580, !2581, !2582, !2583}
!2580 = !DILocalVariable(name: "msgid", arg: 1, scope: !2576, file: !365, line: 207, type: !74)
!2581 = !DILocalVariable(name: "s", arg: 2, scope: !2576, file: !365, line: 207, type: !5)
!2582 = !DILocalVariable(name: "translation", scope: !2576, file: !365, line: 209, type: !74)
!2583 = !DILocalVariable(name: "locale_code", scope: !2576, file: !365, line: 210, type: !74)
!2584 = !DILocation(line: 0, scope: !2576)
!2585 = !DILocation(line: 209, column: 29, scope: !2576)
!2586 = !DILocation(line: 212, column: 19, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2576, file: !365, line: 212, column: 7)
!2588 = !DILocation(line: 212, column: 7, scope: !2576)
!2589 = !DILocation(line: 233, column: 17, scope: !2576)
!2590 = !DILocalVariable(name: "s1", arg: 1, scope: !2591, file: !2592, line: 160, type: !74)
!2591 = distinct !DISubprogram(name: "strcaseeq0", scope: !2592, file: !2592, line: 160, type: !2593, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2595)
!2592 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!76, !74, !74, !73, !73, !73, !73, !73, !73, !73, !73, !73}
!2595 = !{!2590, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2596 = !DILocalVariable(name: "s2", arg: 2, scope: !2591, file: !2592, line: 160, type: !74)
!2597 = !DILocalVariable(name: "s20", arg: 3, scope: !2591, file: !2592, line: 160, type: !73)
!2598 = !DILocalVariable(name: "s21", arg: 4, scope: !2591, file: !2592, line: 160, type: !73)
!2599 = !DILocalVariable(name: "s22", arg: 5, scope: !2591, file: !2592, line: 160, type: !73)
!2600 = !DILocalVariable(name: "s23", arg: 6, scope: !2591, file: !2592, line: 160, type: !73)
!2601 = !DILocalVariable(name: "s24", arg: 7, scope: !2591, file: !2592, line: 160, type: !73)
!2602 = !DILocalVariable(name: "s25", arg: 8, scope: !2591, file: !2592, line: 160, type: !73)
!2603 = !DILocalVariable(name: "s26", arg: 9, scope: !2591, file: !2592, line: 160, type: !73)
!2604 = !DILocalVariable(name: "s27", arg: 10, scope: !2591, file: !2592, line: 160, type: !73)
!2605 = !DILocalVariable(name: "s28", arg: 11, scope: !2591, file: !2592, line: 160, type: !73)
!2606 = !DILocation(line: 0, scope: !2591, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 234, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2576, file: !365, line: 234, column: 7)
!2609 = !DILocation(line: 162, column: 7, scope: !2610, inlinedAt: !2607)
!2610 = distinct !DILexicalBlock(scope: !2591, file: !2592, line: 162, column: 7)
!2611 = !DILocalVariable(name: "s1", arg: 1, scope: !2612, file: !2592, line: 146, type: !74)
!2612 = distinct !DISubprogram(name: "strcaseeq1", scope: !2592, file: !2592, line: 146, type: !2613, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!76, !74, !74, !73, !73, !73, !73, !73, !73, !73, !73}
!2615 = !{!2611, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624}
!2616 = !DILocalVariable(name: "s2", arg: 2, scope: !2612, file: !2592, line: 146, type: !74)
!2617 = !DILocalVariable(name: "s21", arg: 3, scope: !2612, file: !2592, line: 146, type: !73)
!2618 = !DILocalVariable(name: "s22", arg: 4, scope: !2612, file: !2592, line: 146, type: !73)
!2619 = !DILocalVariable(name: "s23", arg: 5, scope: !2612, file: !2592, line: 146, type: !73)
!2620 = !DILocalVariable(name: "s24", arg: 6, scope: !2612, file: !2592, line: 146, type: !73)
!2621 = !DILocalVariable(name: "s25", arg: 7, scope: !2612, file: !2592, line: 146, type: !73)
!2622 = !DILocalVariable(name: "s26", arg: 8, scope: !2612, file: !2592, line: 146, type: !73)
!2623 = !DILocalVariable(name: "s27", arg: 9, scope: !2612, file: !2592, line: 146, type: !73)
!2624 = !DILocalVariable(name: "s28", arg: 10, scope: !2612, file: !2592, line: 146, type: !73)
!2625 = !DILocation(line: 0, scope: !2612, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 167, column: 16, scope: !2627, inlinedAt: !2607)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !2592, line: 164, column: 11)
!2628 = distinct !DILexicalBlock(scope: !2610, file: !2592, line: 163, column: 5)
!2629 = !DILocation(line: 148, column: 7, scope: !2630, inlinedAt: !2626)
!2630 = distinct !DILexicalBlock(scope: !2612, file: !2592, line: 148, column: 7)
!2631 = !DILocalVariable(name: "s1", arg: 1, scope: !2632, file: !2592, line: 132, type: !74)
!2632 = distinct !DISubprogram(name: "strcaseeq2", scope: !2592, file: !2592, line: 132, type: !2633, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!76, !74, !74, !73, !73, !73, !73, !73, !73, !73}
!2635 = !{!2631, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643}
!2636 = !DILocalVariable(name: "s2", arg: 2, scope: !2632, file: !2592, line: 132, type: !74)
!2637 = !DILocalVariable(name: "s22", arg: 3, scope: !2632, file: !2592, line: 132, type: !73)
!2638 = !DILocalVariable(name: "s23", arg: 4, scope: !2632, file: !2592, line: 132, type: !73)
!2639 = !DILocalVariable(name: "s24", arg: 5, scope: !2632, file: !2592, line: 132, type: !73)
!2640 = !DILocalVariable(name: "s25", arg: 6, scope: !2632, file: !2592, line: 132, type: !73)
!2641 = !DILocalVariable(name: "s26", arg: 7, scope: !2632, file: !2592, line: 132, type: !73)
!2642 = !DILocalVariable(name: "s27", arg: 8, scope: !2632, file: !2592, line: 132, type: !73)
!2643 = !DILocalVariable(name: "s28", arg: 9, scope: !2632, file: !2592, line: 132, type: !73)
!2644 = !DILocation(line: 0, scope: !2632, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 153, column: 16, scope: !2646, inlinedAt: !2626)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !2592, line: 150, column: 11)
!2647 = distinct !DILexicalBlock(scope: !2630, file: !2592, line: 149, column: 5)
!2648 = !DILocation(line: 134, column: 7, scope: !2649, inlinedAt: !2645)
!2649 = distinct !DILexicalBlock(scope: !2632, file: !2592, line: 134, column: 7)
!2650 = !DILocalVariable(name: "s1", arg: 1, scope: !2651, file: !2592, line: 118, type: !74)
!2651 = distinct !DISubprogram(name: "strcaseeq3", scope: !2592, file: !2592, line: 118, type: !2652, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!76, !74, !74, !73, !73, !73, !73, !73, !73}
!2654 = !{!2650, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2655 = !DILocalVariable(name: "s2", arg: 2, scope: !2651, file: !2592, line: 118, type: !74)
!2656 = !DILocalVariable(name: "s23", arg: 3, scope: !2651, file: !2592, line: 118, type: !73)
!2657 = !DILocalVariable(name: "s24", arg: 4, scope: !2651, file: !2592, line: 118, type: !73)
!2658 = !DILocalVariable(name: "s25", arg: 5, scope: !2651, file: !2592, line: 118, type: !73)
!2659 = !DILocalVariable(name: "s26", arg: 6, scope: !2651, file: !2592, line: 118, type: !73)
!2660 = !DILocalVariable(name: "s27", arg: 7, scope: !2651, file: !2592, line: 118, type: !73)
!2661 = !DILocalVariable(name: "s28", arg: 8, scope: !2651, file: !2592, line: 118, type: !73)
!2662 = !DILocation(line: 0, scope: !2651, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 139, column: 16, scope: !2664, inlinedAt: !2645)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !2592, line: 136, column: 11)
!2665 = distinct !DILexicalBlock(scope: !2649, file: !2592, line: 135, column: 5)
!2666 = !DILocation(line: 120, column: 7, scope: !2667, inlinedAt: !2663)
!2667 = distinct !DILexicalBlock(scope: !2651, file: !2592, line: 120, column: 7)
!2668 = !DILocation(line: 120, column: 7, scope: !2651, inlinedAt: !2663)
!2669 = !DILocalVariable(name: "s1", arg: 1, scope: !2670, file: !2592, line: 104, type: !74)
!2670 = distinct !DISubprogram(name: "strcaseeq4", scope: !2592, file: !2592, line: 104, type: !2671, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!76, !74, !74, !73, !73, !73, !73, !73}
!2673 = !{!2669, !2674, !2675, !2676, !2677, !2678, !2679}
!2674 = !DILocalVariable(name: "s2", arg: 2, scope: !2670, file: !2592, line: 104, type: !74)
!2675 = !DILocalVariable(name: "s24", arg: 3, scope: !2670, file: !2592, line: 104, type: !73)
!2676 = !DILocalVariable(name: "s25", arg: 4, scope: !2670, file: !2592, line: 104, type: !73)
!2677 = !DILocalVariable(name: "s26", arg: 5, scope: !2670, file: !2592, line: 104, type: !73)
!2678 = !DILocalVariable(name: "s27", arg: 6, scope: !2670, file: !2592, line: 104, type: !73)
!2679 = !DILocalVariable(name: "s28", arg: 7, scope: !2670, file: !2592, line: 104, type: !73)
!2680 = !DILocation(line: 0, scope: !2670, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 125, column: 16, scope: !2682, inlinedAt: !2663)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !2592, line: 122, column: 11)
!2683 = distinct !DILexicalBlock(scope: !2667, file: !2592, line: 121, column: 5)
!2684 = !DILocation(line: 106, column: 7, scope: !2685, inlinedAt: !2681)
!2685 = distinct !DILexicalBlock(scope: !2670, file: !2592, line: 106, column: 7)
!2686 = !DILocation(line: 106, column: 7, scope: !2670, inlinedAt: !2681)
!2687 = !DILocalVariable(name: "s1", arg: 1, scope: !2688, file: !2592, line: 90, type: !74)
!2688 = distinct !DISubprogram(name: "strcaseeq5", scope: !2592, file: !2592, line: 90, type: !2689, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!76, !74, !74, !73, !73, !73, !73}
!2691 = !{!2687, !2692, !2693, !2694, !2695, !2696}
!2692 = !DILocalVariable(name: "s2", arg: 2, scope: !2688, file: !2592, line: 90, type: !74)
!2693 = !DILocalVariable(name: "s25", arg: 3, scope: !2688, file: !2592, line: 90, type: !73)
!2694 = !DILocalVariable(name: "s26", arg: 4, scope: !2688, file: !2592, line: 90, type: !73)
!2695 = !DILocalVariable(name: "s27", arg: 5, scope: !2688, file: !2592, line: 90, type: !73)
!2696 = !DILocalVariable(name: "s28", arg: 6, scope: !2688, file: !2592, line: 90, type: !73)
!2697 = !DILocation(line: 0, scope: !2688, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 111, column: 16, scope: !2699, inlinedAt: !2681)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !2592, line: 108, column: 11)
!2700 = distinct !DILexicalBlock(scope: !2685, file: !2592, line: 107, column: 5)
!2701 = !DILocation(line: 92, column: 7, scope: !2702, inlinedAt: !2698)
!2702 = distinct !DILexicalBlock(scope: !2688, file: !2592, line: 92, column: 7)
!2703 = !DILocation(line: 92, column: 7, scope: !2688, inlinedAt: !2698)
!2704 = !DILocation(line: 235, column: 12, scope: !2608)
!2705 = !DILocation(line: 235, column: 21, scope: !2608)
!2706 = !DILocation(line: 235, column: 5, scope: !2608)
!2707 = !DILocation(line: 0, scope: !2612, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 167, column: 16, scope: !2627, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 236, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2576, file: !365, line: 236, column: 7)
!2711 = !DILocation(line: 148, column: 7, scope: !2630, inlinedAt: !2708)
!2712 = !DILocation(line: 0, scope: !2632, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 153, column: 16, scope: !2646, inlinedAt: !2708)
!2714 = !DILocation(line: 134, column: 7, scope: !2649, inlinedAt: !2713)
!2715 = !DILocation(line: 134, column: 7, scope: !2632, inlinedAt: !2713)
!2716 = !DILocation(line: 0, scope: !2651, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 139, column: 16, scope: !2664, inlinedAt: !2713)
!2718 = !DILocation(line: 120, column: 7, scope: !2667, inlinedAt: !2717)
!2719 = !DILocation(line: 120, column: 7, scope: !2651, inlinedAt: !2717)
!2720 = !DILocation(line: 0, scope: !2670, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 125, column: 16, scope: !2682, inlinedAt: !2717)
!2722 = !DILocation(line: 106, column: 7, scope: !2685, inlinedAt: !2721)
!2723 = !DILocation(line: 106, column: 7, scope: !2670, inlinedAt: !2721)
!2724 = !DILocation(line: 0, scope: !2688, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 111, column: 16, scope: !2699, inlinedAt: !2721)
!2726 = !DILocation(line: 92, column: 7, scope: !2702, inlinedAt: !2725)
!2727 = !DILocation(line: 92, column: 7, scope: !2688, inlinedAt: !2725)
!2728 = !DILocalVariable(name: "s1", arg: 1, scope: !2729, file: !2592, line: 76, type: !74)
!2729 = distinct !DISubprogram(name: "strcaseeq6", scope: !2592, file: !2592, line: 76, type: !2730, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!76, !74, !74, !73, !73, !73}
!2732 = !{!2728, !2733, !2734, !2735, !2736}
!2733 = !DILocalVariable(name: "s2", arg: 2, scope: !2729, file: !2592, line: 76, type: !74)
!2734 = !DILocalVariable(name: "s26", arg: 3, scope: !2729, file: !2592, line: 76, type: !73)
!2735 = !DILocalVariable(name: "s27", arg: 4, scope: !2729, file: !2592, line: 76, type: !73)
!2736 = !DILocalVariable(name: "s28", arg: 5, scope: !2729, file: !2592, line: 76, type: !73)
!2737 = !DILocation(line: 0, scope: !2729, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 97, column: 16, scope: !2739, inlinedAt: !2725)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !2592, line: 94, column: 11)
!2740 = distinct !DILexicalBlock(scope: !2702, file: !2592, line: 93, column: 5)
!2741 = !DILocation(line: 78, column: 7, scope: !2742, inlinedAt: !2738)
!2742 = distinct !DILexicalBlock(scope: !2729, file: !2592, line: 78, column: 7)
!2743 = !DILocation(line: 78, column: 7, scope: !2729, inlinedAt: !2738)
!2744 = !DILocalVariable(name: "s1", arg: 1, scope: !2745, file: !2592, line: 62, type: !74)
!2745 = distinct !DISubprogram(name: "strcaseeq7", scope: !2592, file: !2592, line: 62, type: !2746, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2748)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!76, !74, !74, !73, !73}
!2748 = !{!2744, !2749, !2750, !2751}
!2749 = !DILocalVariable(name: "s2", arg: 2, scope: !2745, file: !2592, line: 62, type: !74)
!2750 = !DILocalVariable(name: "s27", arg: 3, scope: !2745, file: !2592, line: 62, type: !73)
!2751 = !DILocalVariable(name: "s28", arg: 4, scope: !2745, file: !2592, line: 62, type: !73)
!2752 = !DILocation(line: 0, scope: !2745, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 83, column: 16, scope: !2754, inlinedAt: !2738)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !2592, line: 80, column: 11)
!2755 = distinct !DILexicalBlock(scope: !2742, file: !2592, line: 79, column: 5)
!2756 = !DILocation(line: 64, column: 7, scope: !2757, inlinedAt: !2753)
!2757 = distinct !DILexicalBlock(scope: !2745, file: !2592, line: 64, column: 7)
!2758 = !DILocation(line: 236, column: 7, scope: !2576)
!2759 = !DILocation(line: 237, column: 12, scope: !2710)
!2760 = !DILocation(line: 237, column: 21, scope: !2710)
!2761 = !DILocation(line: 237, column: 5, scope: !2710)
!2762 = !DILocation(line: 239, column: 13, scope: !2576)
!2763 = !DILocation(line: 239, column: 11, scope: !2576)
!2764 = !DILocation(line: 239, column: 3, scope: !2576)
!2765 = !DILocation(line: 240, column: 1, scope: !2576)
!2766 = distinct !DISubprogram(name: "quotearg_alloc", scope: !365, file: !365, line: 799, type: !2767, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!72, !74, !57, !381}
!2769 = !{!2770, !2771, !2772}
!2770 = !DILocalVariable(name: "arg", arg: 1, scope: !2766, file: !365, line: 799, type: !74)
!2771 = !DILocalVariable(name: "argsize", arg: 2, scope: !2766, file: !365, line: 799, type: !57)
!2772 = !DILocalVariable(name: "o", arg: 3, scope: !2766, file: !365, line: 800, type: !381)
!2773 = !DILocation(line: 0, scope: !2766)
!2774 = !DILocalVariable(name: "arg", arg: 1, scope: !2775, file: !365, line: 812, type: !74)
!2775 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !365, file: !365, line: 812, type: !2776, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!72, !74, !57, !56, !381}
!2778 = !{!2774, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786}
!2779 = !DILocalVariable(name: "argsize", arg: 2, scope: !2775, file: !365, line: 812, type: !57)
!2780 = !DILocalVariable(name: "size", arg: 3, scope: !2775, file: !365, line: 812, type: !56)
!2781 = !DILocalVariable(name: "o", arg: 4, scope: !2775, file: !365, line: 813, type: !381)
!2782 = !DILocalVariable(name: "p", scope: !2775, file: !365, line: 815, type: !381)
!2783 = !DILocalVariable(name: "e", scope: !2775, file: !365, line: 816, type: !76)
!2784 = !DILocalVariable(name: "flags", scope: !2775, file: !365, line: 818, type: !76)
!2785 = !DILocalVariable(name: "bufsize", scope: !2775, file: !365, line: 819, type: !57)
!2786 = !DILocalVariable(name: "buf", scope: !2775, file: !365, line: 823, type: !72)
!2787 = !DILocation(line: 0, scope: !2775, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 802, column: 10, scope: !2766)
!2789 = !DILocation(line: 815, column: 37, scope: !2775, inlinedAt: !2788)
!2790 = !DILocation(line: 816, column: 11, scope: !2775, inlinedAt: !2788)
!2791 = !DILocation(line: 818, column: 18, scope: !2775, inlinedAt: !2788)
!2792 = !DILocation(line: 818, column: 24, scope: !2775, inlinedAt: !2788)
!2793 = !DILocation(line: 819, column: 69, scope: !2775, inlinedAt: !2788)
!2794 = !DILocation(line: 820, column: 53, scope: !2775, inlinedAt: !2788)
!2795 = !DILocation(line: 821, column: 49, scope: !2775, inlinedAt: !2788)
!2796 = !DILocation(line: 822, column: 49, scope: !2775, inlinedAt: !2788)
!2797 = !DILocation(line: 819, column: 20, scope: !2775, inlinedAt: !2788)
!2798 = !DILocation(line: 822, column: 62, scope: !2775, inlinedAt: !2788)
!2799 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !51, line: 216, type: !57)
!2800 = distinct !DISubprogram(name: "xcharalloc", scope: !51, file: !51, line: 216, type: !2801, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!72, !57}
!2803 = !{!2799}
!2804 = !DILocation(line: 0, scope: !2800, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 823, column: 15, scope: !2775, inlinedAt: !2788)
!2806 = !DILocation(line: 218, column: 10, scope: !2800, inlinedAt: !2805)
!2807 = !DILocation(line: 824, column: 60, scope: !2775, inlinedAt: !2788)
!2808 = !DILocation(line: 826, column: 32, scope: !2775, inlinedAt: !2788)
!2809 = !DILocation(line: 826, column: 47, scope: !2775, inlinedAt: !2788)
!2810 = !DILocation(line: 824, column: 3, scope: !2775, inlinedAt: !2788)
!2811 = !DILocation(line: 827, column: 9, scope: !2775, inlinedAt: !2788)
!2812 = !DILocation(line: 802, column: 3, scope: !2766)
!2813 = !DILocation(line: 0, scope: !2775)
!2814 = !DILocation(line: 815, column: 37, scope: !2775)
!2815 = !DILocation(line: 816, column: 11, scope: !2775)
!2816 = !DILocation(line: 818, column: 18, scope: !2775)
!2817 = !DILocation(line: 818, column: 27, scope: !2775)
!2818 = !DILocation(line: 818, column: 24, scope: !2775)
!2819 = !DILocation(line: 819, column: 69, scope: !2775)
!2820 = !DILocation(line: 820, column: 53, scope: !2775)
!2821 = !DILocation(line: 821, column: 49, scope: !2775)
!2822 = !DILocation(line: 822, column: 49, scope: !2775)
!2823 = !DILocation(line: 819, column: 20, scope: !2775)
!2824 = !DILocation(line: 822, column: 62, scope: !2775)
!2825 = !DILocation(line: 0, scope: !2800, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 823, column: 15, scope: !2775)
!2827 = !DILocation(line: 218, column: 10, scope: !2800, inlinedAt: !2826)
!2828 = !DILocation(line: 824, column: 60, scope: !2775)
!2829 = !DILocation(line: 826, column: 32, scope: !2775)
!2830 = !DILocation(line: 826, column: 47, scope: !2775)
!2831 = !DILocation(line: 824, column: 3, scope: !2775)
!2832 = !DILocation(line: 827, column: 9, scope: !2775)
!2833 = !DILocation(line: 828, column: 7, scope: !2775)
!2834 = !DILocation(line: 829, column: 11, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2775, file: !365, line: 828, column: 7)
!2836 = !DILocation(line: 829, column: 5, scope: !2835)
!2837 = !DILocation(line: 830, column: 3, scope: !2775)
!2838 = distinct !DISubprogram(name: "quotearg_free", scope: !365, file: !365, line: 848, type: !157, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2839)
!2839 = !{!2840, !2841}
!2840 = !DILocalVariable(name: "sv", scope: !2838, file: !365, line: 850, type: !450)
!2841 = !DILocalVariable(name: "i", scope: !2838, file: !365, line: 851, type: !76)
!2842 = !DILocation(line: 850, column: 24, scope: !2838)
!2843 = !DILocation(line: 0, scope: !2838)
!2844 = !DILocation(line: 852, column: 19, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !365, line: 852, column: 3)
!2846 = distinct !DILexicalBlock(scope: !2838, file: !365, line: 852, column: 3)
!2847 = !DILocation(line: 852, column: 17, scope: !2845)
!2848 = !DILocation(line: 852, column: 3, scope: !2846)
!2849 = !DILocation(line: 853, column: 17, scope: !2845)
!2850 = !{!2851, !1302, i64 8}
!2851 = !{!"slotvec", !1409, i64 0, !1302, i64 8}
!2852 = !DILocation(line: 853, column: 5, scope: !2845)
!2853 = !DILocation(line: 852, column: 28, scope: !2845)
!2854 = distinct !{!2854, !2848, !2855}
!2855 = !DILocation(line: 853, column: 20, scope: !2846)
!2856 = !DILocation(line: 854, column: 13, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2838, file: !365, line: 854, column: 7)
!2858 = !DILocation(line: 854, column: 17, scope: !2857)
!2859 = !DILocation(line: 854, column: 7, scope: !2838)
!2860 = !DILocation(line: 856, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2857, file: !365, line: 855, column: 5)
!2862 = !DILocation(line: 857, column: 21, scope: !2861)
!2863 = !{!2851, !1409, i64 0}
!2864 = !DILocation(line: 858, column: 20, scope: !2861)
!2865 = !DILocation(line: 859, column: 5, scope: !2861)
!2866 = !DILocation(line: 860, column: 10, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2838, file: !365, line: 860, column: 7)
!2868 = !DILocation(line: 860, column: 7, scope: !2838)
!2869 = !DILocation(line: 862, column: 13, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !365, line: 861, column: 5)
!2871 = !DILocation(line: 862, column: 7, scope: !2870)
!2872 = !DILocation(line: 863, column: 15, scope: !2870)
!2873 = !DILocation(line: 864, column: 5, scope: !2870)
!2874 = !DILocation(line: 865, column: 10, scope: !2838)
!2875 = !DILocation(line: 866, column: 1, scope: !2838)
!2876 = distinct !DISubprogram(name: "quotearg_n", scope: !365, file: !365, line: 931, type: !144, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2877)
!2877 = !{!2878, !2879}
!2878 = !DILocalVariable(name: "n", arg: 1, scope: !2876, file: !365, line: 931, type: !76)
!2879 = !DILocalVariable(name: "arg", arg: 2, scope: !2876, file: !365, line: 931, type: !74)
!2880 = !DILocation(line: 0, scope: !2876)
!2881 = !DILocation(line: 933, column: 10, scope: !2876)
!2882 = !DILocation(line: 933, column: 3, scope: !2876)
!2883 = distinct !DISubprogram(name: "quotearg_n_options", scope: !365, file: !365, line: 877, type: !2884, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!72, !76, !74, !57, !381}
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2892, !2893, !2896, !2897, !2899, !2900, !2901}
!2887 = !DILocalVariable(name: "n", arg: 1, scope: !2883, file: !365, line: 877, type: !76)
!2888 = !DILocalVariable(name: "arg", arg: 2, scope: !2883, file: !365, line: 877, type: !74)
!2889 = !DILocalVariable(name: "argsize", arg: 3, scope: !2883, file: !365, line: 877, type: !57)
!2890 = !DILocalVariable(name: "options", arg: 4, scope: !2883, file: !365, line: 878, type: !381)
!2891 = !DILocalVariable(name: "e", scope: !2883, file: !365, line: 880, type: !76)
!2892 = !DILocalVariable(name: "sv", scope: !2883, file: !365, line: 882, type: !450)
!2893 = !DILocalVariable(name: "preallocated", scope: !2894, file: !365, line: 889, type: !314)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !365, line: 888, column: 5)
!2895 = distinct !DILexicalBlock(scope: !2883, file: !365, line: 887, column: 7)
!2896 = !DILocalVariable(name: "nmax", scope: !2894, file: !365, line: 890, type: !76)
!2897 = !DILocalVariable(name: "size", scope: !2898, file: !365, line: 903, type: !57)
!2898 = distinct !DILexicalBlock(scope: !2883, file: !365, line: 902, column: 3)
!2899 = !DILocalVariable(name: "val", scope: !2898, file: !365, line: 904, type: !72)
!2900 = !DILocalVariable(name: "flags", scope: !2898, file: !365, line: 906, type: !76)
!2901 = !DILocalVariable(name: "qsize", scope: !2898, file: !365, line: 907, type: !57)
!2902 = !DILocation(line: 0, scope: !2883)
!2903 = !DILocation(line: 880, column: 11, scope: !2883)
!2904 = !DILocation(line: 882, column: 24, scope: !2883)
!2905 = !DILocation(line: 884, column: 9, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2883, file: !365, line: 884, column: 7)
!2907 = !DILocation(line: 884, column: 7, scope: !2883)
!2908 = !DILocation(line: 885, column: 5, scope: !2906)
!2909 = !DILocation(line: 887, column: 7, scope: !2895)
!2910 = !DILocation(line: 887, column: 14, scope: !2895)
!2911 = !DILocation(line: 887, column: 7, scope: !2883)
!2912 = !DILocation(line: 889, column: 31, scope: !2894)
!2913 = !DILocation(line: 0, scope: !2894)
!2914 = !DILocation(line: 892, column: 16, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2894, file: !365, line: 892, column: 11)
!2916 = !DILocation(line: 892, column: 11, scope: !2894)
!2917 = !DILocation(line: 893, column: 9, scope: !2915)
!2918 = !DILocation(line: 895, column: 32, scope: !2894)
!2919 = !DILocation(line: 895, column: 61, scope: !2894)
!2920 = !DILocation(line: 895, column: 58, scope: !2894)
!2921 = !DILocation(line: 895, column: 66, scope: !2894)
!2922 = !DILocation(line: 895, column: 22, scope: !2894)
!2923 = !DILocation(line: 895, column: 15, scope: !2894)
!2924 = !DILocation(line: 896, column: 11, scope: !2894)
!2925 = !DILocation(line: 897, column: 15, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2894, file: !365, line: 896, column: 11)
!2927 = !{i64 0, i64 8, !1408, i64 8, i64 8, !1301}
!2928 = !DILocation(line: 897, column: 9, scope: !2926)
!2929 = !DILocation(line: 898, column: 20, scope: !2894)
!2930 = !DILocation(line: 898, column: 18, scope: !2894)
!2931 = !DILocation(line: 898, column: 15, scope: !2894)
!2932 = !DILocation(line: 898, column: 38, scope: !2894)
!2933 = !DILocation(line: 898, column: 31, scope: !2894)
!2934 = !DILocation(line: 898, column: 48, scope: !2894)
!2935 = !DILocation(line: 0, scope: !2333, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 898, column: 7, scope: !2894)
!2937 = !DILocation(line: 71, column: 10, scope: !2333, inlinedAt: !2936)
!2938 = !DILocation(line: 899, column: 14, scope: !2894)
!2939 = !DILocation(line: 900, column: 5, scope: !2894)
!2940 = !DILocation(line: 903, column: 19, scope: !2898)
!2941 = !DILocation(line: 903, column: 25, scope: !2898)
!2942 = !DILocation(line: 0, scope: !2898)
!2943 = !DILocation(line: 904, column: 23, scope: !2898)
!2944 = !DILocation(line: 906, column: 26, scope: !2898)
!2945 = !DILocation(line: 906, column: 32, scope: !2898)
!2946 = !DILocation(line: 908, column: 55, scope: !2898)
!2947 = !DILocation(line: 909, column: 46, scope: !2898)
!2948 = !DILocation(line: 910, column: 55, scope: !2898)
!2949 = !DILocation(line: 911, column: 55, scope: !2898)
!2950 = !DILocation(line: 907, column: 20, scope: !2898)
!2951 = !DILocation(line: 913, column: 14, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2898, file: !365, line: 913, column: 9)
!2953 = !DILocation(line: 913, column: 9, scope: !2898)
!2954 = !DILocation(line: 915, column: 35, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !365, line: 914, column: 7)
!2956 = !DILocation(line: 915, column: 20, scope: !2955)
!2957 = !DILocation(line: 916, column: 17, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !365, line: 916, column: 13)
!2959 = !DILocation(line: 916, column: 13, scope: !2955)
!2960 = !DILocation(line: 917, column: 11, scope: !2958)
!2961 = !DILocation(line: 0, scope: !2800, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 918, column: 27, scope: !2955)
!2963 = !DILocation(line: 218, column: 10, scope: !2800, inlinedAt: !2962)
!2964 = !DILocation(line: 918, column: 19, scope: !2955)
!2965 = !DILocation(line: 919, column: 69, scope: !2955)
!2966 = !DILocation(line: 921, column: 44, scope: !2955)
!2967 = !DILocation(line: 922, column: 44, scope: !2955)
!2968 = !DILocation(line: 919, column: 9, scope: !2955)
!2969 = !DILocation(line: 923, column: 7, scope: !2955)
!2970 = !DILocation(line: 925, column: 11, scope: !2898)
!2971 = !DILocation(line: 926, column: 5, scope: !2898)
!2972 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !365, file: !365, line: 937, type: !2973, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2975)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!72, !76, !74, !57}
!2975 = !{!2976, !2977, !2978}
!2976 = !DILocalVariable(name: "n", arg: 1, scope: !2972, file: !365, line: 937, type: !76)
!2977 = !DILocalVariable(name: "arg", arg: 2, scope: !2972, file: !365, line: 937, type: !74)
!2978 = !DILocalVariable(name: "argsize", arg: 3, scope: !2972, file: !365, line: 937, type: !57)
!2979 = !DILocation(line: 0, scope: !2972)
!2980 = !DILocation(line: 939, column: 10, scope: !2972)
!2981 = !DILocation(line: 939, column: 3, scope: !2972)
!2982 = distinct !DISubprogram(name: "quotearg", scope: !365, file: !365, line: 943, type: !150, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2983)
!2983 = !{!2984}
!2984 = !DILocalVariable(name: "arg", arg: 1, scope: !2982, file: !365, line: 943, type: !74)
!2985 = !DILocation(line: 0, scope: !2982)
!2986 = !DILocation(line: 0, scope: !2876, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 945, column: 10, scope: !2982)
!2988 = !DILocation(line: 933, column: 10, scope: !2876, inlinedAt: !2987)
!2989 = !DILocation(line: 945, column: 3, scope: !2982)
!2990 = distinct !DISubprogram(name: "quotearg_mem", scope: !365, file: !365, line: 949, type: !2991, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!72, !74, !57}
!2993 = !{!2994, !2995}
!2994 = !DILocalVariable(name: "arg", arg: 1, scope: !2990, file: !365, line: 949, type: !74)
!2995 = !DILocalVariable(name: "argsize", arg: 2, scope: !2990, file: !365, line: 949, type: !57)
!2996 = !DILocation(line: 0, scope: !2990)
!2997 = !DILocation(line: 0, scope: !2972, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 951, column: 10, scope: !2990)
!2999 = !DILocation(line: 939, column: 10, scope: !2972, inlinedAt: !2998)
!3000 = !DILocation(line: 951, column: 3, scope: !2990)
!3001 = distinct !DISubprogram(name: "quotearg_n_style", scope: !365, file: !365, line: 955, type: !3002, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!72, !76, !5, !74}
!3004 = !{!3005, !3006, !3007, !3008}
!3005 = !DILocalVariable(name: "n", arg: 1, scope: !3001, file: !365, line: 955, type: !76)
!3006 = !DILocalVariable(name: "s", arg: 2, scope: !3001, file: !365, line: 955, type: !5)
!3007 = !DILocalVariable(name: "arg", arg: 3, scope: !3001, file: !365, line: 955, type: !74)
!3008 = !DILocalVariable(name: "o", scope: !3001, file: !365, line: 957, type: !382)
!3009 = !DILocation(line: 0, scope: !3001)
!3010 = !DILocation(line: 957, column: 3, scope: !3001)
!3011 = !DILocation(line: 957, column: 32, scope: !3001)
!3012 = !DILocalVariable(name: "style", arg: 1, scope: !3013, file: !365, line: 193, type: !5)
!3013 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !365, file: !365, line: 193, type: !3014, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!383, !5}
!3016 = !{!3012, !3017}
!3017 = !DILocalVariable(name: "o", scope: !3013, file: !365, line: 195, type: !383)
!3018 = !DILocation(line: 0, scope: !3013, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 957, column: 36, scope: !3001)
!3020 = !DILocation(line: 195, column: 26, scope: !3013, inlinedAt: !3019)
!3021 = !{!3022}
!3022 = distinct !{!3022, !3023, !"quoting_options_from_style: argument 0"}
!3023 = distinct !{!3023, !"quoting_options_from_style"}
!3024 = !DILocation(line: 196, column: 13, scope: !3025, inlinedAt: !3019)
!3025 = distinct !DILexicalBlock(scope: !3013, file: !365, line: 196, column: 7)
!3026 = !DILocation(line: 196, column: 7, scope: !3013, inlinedAt: !3019)
!3027 = !DILocation(line: 197, column: 5, scope: !3025, inlinedAt: !3019)
!3028 = !DILocation(line: 198, column: 5, scope: !3013, inlinedAt: !3019)
!3029 = !DILocation(line: 198, column: 11, scope: !3013, inlinedAt: !3019)
!3030 = !DILocation(line: 958, column: 10, scope: !3001)
!3031 = !DILocation(line: 959, column: 1, scope: !3001)
!3032 = !DILocation(line: 958, column: 3, scope: !3001)
!3033 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !365, file: !365, line: 962, type: !3034, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!72, !76, !5, !74, !57}
!3036 = !{!3037, !3038, !3039, !3040, !3041}
!3037 = !DILocalVariable(name: "n", arg: 1, scope: !3033, file: !365, line: 962, type: !76)
!3038 = !DILocalVariable(name: "s", arg: 2, scope: !3033, file: !365, line: 962, type: !5)
!3039 = !DILocalVariable(name: "arg", arg: 3, scope: !3033, file: !365, line: 963, type: !74)
!3040 = !DILocalVariable(name: "argsize", arg: 4, scope: !3033, file: !365, line: 963, type: !57)
!3041 = !DILocalVariable(name: "o", scope: !3033, file: !365, line: 965, type: !382)
!3042 = !DILocation(line: 0, scope: !3033)
!3043 = !DILocation(line: 965, column: 3, scope: !3033)
!3044 = !DILocation(line: 965, column: 32, scope: !3033)
!3045 = !DILocation(line: 0, scope: !3013, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 965, column: 36, scope: !3033)
!3047 = !DILocation(line: 195, column: 26, scope: !3013, inlinedAt: !3046)
!3048 = !{!3049}
!3049 = distinct !{!3049, !3050, !"quoting_options_from_style: argument 0"}
!3050 = distinct !{!3050, !"quoting_options_from_style"}
!3051 = !DILocation(line: 196, column: 13, scope: !3025, inlinedAt: !3046)
!3052 = !DILocation(line: 196, column: 7, scope: !3013, inlinedAt: !3046)
!3053 = !DILocation(line: 197, column: 5, scope: !3025, inlinedAt: !3046)
!3054 = !DILocation(line: 198, column: 5, scope: !3013, inlinedAt: !3046)
!3055 = !DILocation(line: 198, column: 11, scope: !3013, inlinedAt: !3046)
!3056 = !DILocation(line: 966, column: 10, scope: !3033)
!3057 = !DILocation(line: 967, column: 1, scope: !3033)
!3058 = !DILocation(line: 966, column: 3, scope: !3033)
!3059 = distinct !DISubprogram(name: "quotearg_style", scope: !365, file: !365, line: 970, type: !136, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3060)
!3060 = !{!3061, !3062}
!3061 = !DILocalVariable(name: "s", arg: 1, scope: !3059, file: !365, line: 970, type: !5)
!3062 = !DILocalVariable(name: "arg", arg: 2, scope: !3059, file: !365, line: 970, type: !74)
!3063 = !DILocation(line: 195, column: 26, scope: !3013, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 957, column: 36, scope: !3001, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 972, column: 10, scope: !3059)
!3066 = !DILocation(line: 957, column: 32, scope: !3001, inlinedAt: !3065)
!3067 = !DILocation(line: 0, scope: !3059)
!3068 = !DILocation(line: 0, scope: !3001, inlinedAt: !3065)
!3069 = !DILocation(line: 957, column: 3, scope: !3001, inlinedAt: !3065)
!3070 = !DILocation(line: 0, scope: !3013, inlinedAt: !3064)
!3071 = !{!3072}
!3072 = distinct !{!3072, !3073, !"quoting_options_from_style: argument 0"}
!3073 = distinct !{!3073, !"quoting_options_from_style"}
!3074 = !DILocation(line: 196, column: 13, scope: !3025, inlinedAt: !3064)
!3075 = !DILocation(line: 196, column: 7, scope: !3013, inlinedAt: !3064)
!3076 = !DILocation(line: 197, column: 5, scope: !3025, inlinedAt: !3064)
!3077 = !DILocation(line: 198, column: 5, scope: !3013, inlinedAt: !3064)
!3078 = !DILocation(line: 198, column: 11, scope: !3013, inlinedAt: !3064)
!3079 = !DILocation(line: 958, column: 10, scope: !3001, inlinedAt: !3065)
!3080 = !DILocation(line: 959, column: 1, scope: !3001, inlinedAt: !3065)
!3081 = !DILocation(line: 972, column: 3, scope: !3059)
!3082 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !365, file: !365, line: 976, type: !3083, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!72, !5, !74, !57}
!3085 = !{!3086, !3087, !3088}
!3086 = !DILocalVariable(name: "s", arg: 1, scope: !3082, file: !365, line: 976, type: !5)
!3087 = !DILocalVariable(name: "arg", arg: 2, scope: !3082, file: !365, line: 976, type: !74)
!3088 = !DILocalVariable(name: "argsize", arg: 3, scope: !3082, file: !365, line: 976, type: !57)
!3089 = !DILocation(line: 195, column: 26, scope: !3013, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 965, column: 36, scope: !3033, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 978, column: 10, scope: !3082)
!3092 = !DILocation(line: 965, column: 32, scope: !3033, inlinedAt: !3091)
!3093 = !DILocation(line: 0, scope: !3082)
!3094 = !DILocation(line: 0, scope: !3033, inlinedAt: !3091)
!3095 = !DILocation(line: 965, column: 3, scope: !3033, inlinedAt: !3091)
!3096 = !DILocation(line: 0, scope: !3013, inlinedAt: !3090)
!3097 = !{!3098}
!3098 = distinct !{!3098, !3099, !"quoting_options_from_style: argument 0"}
!3099 = distinct !{!3099, !"quoting_options_from_style"}
!3100 = !DILocation(line: 196, column: 13, scope: !3025, inlinedAt: !3090)
!3101 = !DILocation(line: 196, column: 7, scope: !3013, inlinedAt: !3090)
!3102 = !DILocation(line: 197, column: 5, scope: !3025, inlinedAt: !3090)
!3103 = !DILocation(line: 198, column: 5, scope: !3013, inlinedAt: !3090)
!3104 = !DILocation(line: 198, column: 11, scope: !3013, inlinedAt: !3090)
!3105 = !DILocation(line: 966, column: 10, scope: !3033, inlinedAt: !3091)
!3106 = !DILocation(line: 967, column: 1, scope: !3033, inlinedAt: !3091)
!3107 = !DILocation(line: 978, column: 3, scope: !3082)
!3108 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !365, file: !365, line: 982, type: !3109, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!72, !74, !57, !73}
!3111 = !{!3112, !3113, !3114, !3115}
!3112 = !DILocalVariable(name: "arg", arg: 1, scope: !3108, file: !365, line: 982, type: !74)
!3113 = !DILocalVariable(name: "argsize", arg: 2, scope: !3108, file: !365, line: 982, type: !57)
!3114 = !DILocalVariable(name: "ch", arg: 3, scope: !3108, file: !365, line: 982, type: !73)
!3115 = !DILocalVariable(name: "options", scope: !3108, file: !365, line: 984, type: !383)
!3116 = !DILocation(line: 0, scope: !3108)
!3117 = !DILocation(line: 984, column: 3, scope: !3108)
!3118 = !DILocation(line: 984, column: 26, scope: !3108)
!3119 = !DILocation(line: 985, column: 13, scope: !3108)
!3120 = !{i64 0, i64 4, !1436, i64 4, i64 4, !1400, i64 8, i64 32, !1436, i64 40, i64 8, !1301, i64 48, i64 8, !1301}
!3121 = !DILocation(line: 0, scope: !1950, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 986, column: 3, scope: !3108)
!3123 = !DILocation(line: 156, column: 62, scope: !1950, inlinedAt: !3122)
!3124 = !DILocation(line: 156, column: 57, scope: !1950, inlinedAt: !3122)
!3125 = !DILocation(line: 157, column: 15, scope: !1950, inlinedAt: !3122)
!3126 = !DILocation(line: 158, column: 12, scope: !1950, inlinedAt: !3122)
!3127 = !DILocation(line: 158, column: 15, scope: !1950, inlinedAt: !3122)
!3128 = !DILocation(line: 158, column: 25, scope: !1950, inlinedAt: !3122)
!3129 = !DILocation(line: 159, column: 18, scope: !1950, inlinedAt: !3122)
!3130 = !DILocation(line: 159, column: 23, scope: !1950, inlinedAt: !3122)
!3131 = !DILocation(line: 159, column: 6, scope: !1950, inlinedAt: !3122)
!3132 = !DILocation(line: 987, column: 10, scope: !3108)
!3133 = !DILocation(line: 988, column: 1, scope: !3108)
!3134 = !DILocation(line: 987, column: 3, scope: !3108)
!3135 = distinct !DISubprogram(name: "quotearg_char", scope: !365, file: !365, line: 991, type: !3136, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!72, !74, !73}
!3138 = !{!3139, !3140}
!3139 = !DILocalVariable(name: "arg", arg: 1, scope: !3135, file: !365, line: 991, type: !74)
!3140 = !DILocalVariable(name: "ch", arg: 2, scope: !3135, file: !365, line: 991, type: !73)
!3141 = !DILocation(line: 984, column: 26, scope: !3108, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 993, column: 10, scope: !3135)
!3143 = !DILocation(line: 0, scope: !3135)
!3144 = !DILocation(line: 0, scope: !3108, inlinedAt: !3142)
!3145 = !DILocation(line: 984, column: 3, scope: !3108, inlinedAt: !3142)
!3146 = !DILocation(line: 985, column: 13, scope: !3108, inlinedAt: !3142)
!3147 = !DILocation(line: 0, scope: !1950, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 986, column: 3, scope: !3108, inlinedAt: !3142)
!3149 = !DILocation(line: 156, column: 62, scope: !1950, inlinedAt: !3148)
!3150 = !DILocation(line: 156, column: 57, scope: !1950, inlinedAt: !3148)
!3151 = !DILocation(line: 157, column: 15, scope: !1950, inlinedAt: !3148)
!3152 = !DILocation(line: 158, column: 12, scope: !1950, inlinedAt: !3148)
!3153 = !DILocation(line: 158, column: 15, scope: !1950, inlinedAt: !3148)
!3154 = !DILocation(line: 158, column: 25, scope: !1950, inlinedAt: !3148)
!3155 = !DILocation(line: 159, column: 18, scope: !1950, inlinedAt: !3148)
!3156 = !DILocation(line: 159, column: 23, scope: !1950, inlinedAt: !3148)
!3157 = !DILocation(line: 159, column: 6, scope: !1950, inlinedAt: !3148)
!3158 = !DILocation(line: 987, column: 10, scope: !3108, inlinedAt: !3142)
!3159 = !DILocation(line: 988, column: 1, scope: !3108, inlinedAt: !3142)
!3160 = !DILocation(line: 993, column: 3, scope: !3135)
!3161 = distinct !DISubprogram(name: "quotearg_colon", scope: !365, file: !365, line: 997, type: !150, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3162)
!3162 = !{!3163}
!3163 = !DILocalVariable(name: "arg", arg: 1, scope: !3161, file: !365, line: 997, type: !74)
!3164 = !DILocation(line: 984, column: 26, scope: !3108, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 993, column: 10, scope: !3135, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 999, column: 10, scope: !3161)
!3167 = !DILocation(line: 0, scope: !3161)
!3168 = !DILocation(line: 0, scope: !3135, inlinedAt: !3166)
!3169 = !DILocation(line: 0, scope: !3108, inlinedAt: !3165)
!3170 = !DILocation(line: 984, column: 3, scope: !3108, inlinedAt: !3165)
!3171 = !DILocation(line: 985, column: 13, scope: !3108, inlinedAt: !3165)
!3172 = !DILocation(line: 0, scope: !1950, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 986, column: 3, scope: !3108, inlinedAt: !3165)
!3174 = !DILocation(line: 156, column: 57, scope: !1950, inlinedAt: !3173)
!3175 = !DILocation(line: 158, column: 12, scope: !1950, inlinedAt: !3173)
!3176 = !DILocation(line: 159, column: 6, scope: !1950, inlinedAt: !3173)
!3177 = !DILocation(line: 987, column: 10, scope: !3108, inlinedAt: !3165)
!3178 = !DILocation(line: 988, column: 1, scope: !3108, inlinedAt: !3165)
!3179 = !DILocation(line: 999, column: 3, scope: !3161)
!3180 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !365, file: !365, line: 1003, type: !2991, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3181)
!3181 = !{!3182, !3183}
!3182 = !DILocalVariable(name: "arg", arg: 1, scope: !3180, file: !365, line: 1003, type: !74)
!3183 = !DILocalVariable(name: "argsize", arg: 2, scope: !3180, file: !365, line: 1003, type: !57)
!3184 = !DILocation(line: 984, column: 26, scope: !3108, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 1005, column: 10, scope: !3180)
!3186 = !DILocation(line: 0, scope: !3180)
!3187 = !DILocation(line: 0, scope: !3108, inlinedAt: !3185)
!3188 = !DILocation(line: 984, column: 3, scope: !3108, inlinedAt: !3185)
!3189 = !DILocation(line: 985, column: 13, scope: !3108, inlinedAt: !3185)
!3190 = !DILocation(line: 0, scope: !1950, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 986, column: 3, scope: !3108, inlinedAt: !3185)
!3192 = !DILocation(line: 156, column: 57, scope: !1950, inlinedAt: !3191)
!3193 = !DILocation(line: 158, column: 12, scope: !1950, inlinedAt: !3191)
!3194 = !DILocation(line: 159, column: 6, scope: !1950, inlinedAt: !3191)
!3195 = !DILocation(line: 987, column: 10, scope: !3108, inlinedAt: !3185)
!3196 = !DILocation(line: 988, column: 1, scope: !3108, inlinedAt: !3185)
!3197 = !DILocation(line: 1005, column: 3, scope: !3180)
!3198 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !365, file: !365, line: 1009, type: !3002, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3199)
!3199 = !{!3200, !3201, !3202, !3203}
!3200 = !DILocalVariable(name: "n", arg: 1, scope: !3198, file: !365, line: 1009, type: !76)
!3201 = !DILocalVariable(name: "s", arg: 2, scope: !3198, file: !365, line: 1009, type: !5)
!3202 = !DILocalVariable(name: "arg", arg: 3, scope: !3198, file: !365, line: 1009, type: !74)
!3203 = !DILocalVariable(name: "options", scope: !3198, file: !365, line: 1011, type: !383)
!3204 = !DILocation(line: 195, column: 26, scope: !3013, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 1012, column: 13, scope: !3198)
!3206 = !DILocation(line: 0, scope: !3198)
!3207 = !DILocation(line: 1011, column: 3, scope: !3198)
!3208 = !DILocation(line: 1011, column: 26, scope: !3198)
!3209 = !DILocation(line: 1012, column: 13, scope: !3198)
!3210 = !DILocation(line: 0, scope: !3013, inlinedAt: !3205)
!3211 = !{!3212}
!3212 = distinct !{!3212, !3213, !"quoting_options_from_style: argument 0"}
!3213 = distinct !{!3213, !"quoting_options_from_style"}
!3214 = !DILocation(line: 196, column: 13, scope: !3025, inlinedAt: !3205)
!3215 = !DILocation(line: 196, column: 7, scope: !3013, inlinedAt: !3205)
!3216 = !DILocation(line: 197, column: 5, scope: !3025, inlinedAt: !3205)
!3217 = !DILocation(line: 0, scope: !1950, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1013, column: 3, scope: !3198)
!3219 = !DILocation(line: 156, column: 57, scope: !1950, inlinedAt: !3218)
!3220 = !DILocation(line: 158, column: 12, scope: !1950, inlinedAt: !3218)
!3221 = !DILocation(line: 159, column: 6, scope: !1950, inlinedAt: !3218)
!3222 = !DILocation(line: 1014, column: 10, scope: !3198)
!3223 = !DILocation(line: 1015, column: 1, scope: !3198)
!3224 = !DILocation(line: 1014, column: 3, scope: !3198)
!3225 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !365, file: !365, line: 1018, type: !3226, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!72, !76, !74, !74, !74}
!3228 = !{!3229, !3230, !3231, !3232}
!3229 = !DILocalVariable(name: "n", arg: 1, scope: !3225, file: !365, line: 1018, type: !76)
!3230 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3225, file: !365, line: 1018, type: !74)
!3231 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3225, file: !365, line: 1019, type: !74)
!3232 = !DILocalVariable(name: "arg", arg: 4, scope: !3225, file: !365, line: 1019, type: !74)
!3233 = !DILocalVariable(name: "o", scope: !3234, file: !365, line: 1030, type: !383)
!3234 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !365, file: !365, line: 1026, type: !3235, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!72, !76, !74, !74, !74, !57}
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3233}
!3238 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !365, line: 1026, type: !76)
!3239 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3234, file: !365, line: 1026, type: !74)
!3240 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3234, file: !365, line: 1027, type: !74)
!3241 = !DILocalVariable(name: "arg", arg: 4, scope: !3234, file: !365, line: 1028, type: !74)
!3242 = !DILocalVariable(name: "argsize", arg: 5, scope: !3234, file: !365, line: 1028, type: !57)
!3243 = !DILocation(line: 1030, column: 26, scope: !3234, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 1021, column: 10, scope: !3225)
!3245 = !DILocation(line: 0, scope: !3225)
!3246 = !DILocation(line: 0, scope: !3234, inlinedAt: !3244)
!3247 = !DILocation(line: 1030, column: 3, scope: !3234, inlinedAt: !3244)
!3248 = !DILocation(line: 1030, column: 30, scope: !3234, inlinedAt: !3244)
!3249 = !DILocation(line: 0, scope: !1990, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 1031, column: 3, scope: !3234, inlinedAt: !3244)
!3251 = !DILocation(line: 184, column: 6, scope: !1990, inlinedAt: !3250)
!3252 = !DILocation(line: 184, column: 12, scope: !1990, inlinedAt: !3250)
!3253 = !DILocation(line: 185, column: 8, scope: !2004, inlinedAt: !3250)
!3254 = !DILocation(line: 185, column: 23, scope: !2004, inlinedAt: !3250)
!3255 = !DILocation(line: 185, column: 19, scope: !2004, inlinedAt: !3250)
!3256 = !DILocation(line: 186, column: 5, scope: !2004, inlinedAt: !3250)
!3257 = !DILocation(line: 187, column: 6, scope: !1990, inlinedAt: !3250)
!3258 = !DILocation(line: 187, column: 17, scope: !1990, inlinedAt: !3250)
!3259 = !DILocation(line: 188, column: 6, scope: !1990, inlinedAt: !3250)
!3260 = !DILocation(line: 188, column: 18, scope: !1990, inlinedAt: !3250)
!3261 = !DILocation(line: 1032, column: 10, scope: !3234, inlinedAt: !3244)
!3262 = !DILocation(line: 1033, column: 1, scope: !3234, inlinedAt: !3244)
!3263 = !DILocation(line: 1021, column: 3, scope: !3225)
!3264 = !DILocation(line: 0, scope: !3234)
!3265 = !DILocation(line: 1030, column: 3, scope: !3234)
!3266 = !DILocation(line: 1030, column: 26, scope: !3234)
!3267 = !DILocation(line: 1030, column: 30, scope: !3234)
!3268 = !DILocation(line: 0, scope: !1990, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 1031, column: 3, scope: !3234)
!3270 = !DILocation(line: 184, column: 6, scope: !1990, inlinedAt: !3269)
!3271 = !DILocation(line: 184, column: 12, scope: !1990, inlinedAt: !3269)
!3272 = !DILocation(line: 185, column: 8, scope: !2004, inlinedAt: !3269)
!3273 = !DILocation(line: 185, column: 23, scope: !2004, inlinedAt: !3269)
!3274 = !DILocation(line: 185, column: 19, scope: !2004, inlinedAt: !3269)
!3275 = !DILocation(line: 186, column: 5, scope: !2004, inlinedAt: !3269)
!3276 = !DILocation(line: 187, column: 6, scope: !1990, inlinedAt: !3269)
!3277 = !DILocation(line: 187, column: 17, scope: !1990, inlinedAt: !3269)
!3278 = !DILocation(line: 188, column: 6, scope: !1990, inlinedAt: !3269)
!3279 = !DILocation(line: 188, column: 18, scope: !1990, inlinedAt: !3269)
!3280 = !DILocation(line: 1032, column: 10, scope: !3234)
!3281 = !DILocation(line: 1033, column: 1, scope: !3234)
!3282 = !DILocation(line: 1032, column: 3, scope: !3234)
!3283 = distinct !DISubprogram(name: "quotearg_custom", scope: !365, file: !365, line: 1036, type: !3284, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!72, !74, !74, !74}
!3286 = !{!3287, !3288, !3289}
!3287 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3283, file: !365, line: 1036, type: !74)
!3288 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3283, file: !365, line: 1036, type: !74)
!3289 = !DILocalVariable(name: "arg", arg: 3, scope: !3283, file: !365, line: 1037, type: !74)
!3290 = !DILocation(line: 1030, column: 26, scope: !3234, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 1021, column: 10, scope: !3225, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1039, column: 10, scope: !3283)
!3293 = !DILocation(line: 0, scope: !3283)
!3294 = !DILocation(line: 0, scope: !3225, inlinedAt: !3292)
!3295 = !DILocation(line: 0, scope: !3234, inlinedAt: !3291)
!3296 = !DILocation(line: 1030, column: 3, scope: !3234, inlinedAt: !3291)
!3297 = !DILocation(line: 1030, column: 30, scope: !3234, inlinedAt: !3291)
!3298 = !DILocation(line: 0, scope: !1990, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 1031, column: 3, scope: !3234, inlinedAt: !3291)
!3300 = !DILocation(line: 184, column: 6, scope: !1990, inlinedAt: !3299)
!3301 = !DILocation(line: 184, column: 12, scope: !1990, inlinedAt: !3299)
!3302 = !DILocation(line: 185, column: 8, scope: !2004, inlinedAt: !3299)
!3303 = !DILocation(line: 185, column: 23, scope: !2004, inlinedAt: !3299)
!3304 = !DILocation(line: 185, column: 19, scope: !2004, inlinedAt: !3299)
!3305 = !DILocation(line: 186, column: 5, scope: !2004, inlinedAt: !3299)
!3306 = !DILocation(line: 187, column: 6, scope: !1990, inlinedAt: !3299)
!3307 = !DILocation(line: 187, column: 17, scope: !1990, inlinedAt: !3299)
!3308 = !DILocation(line: 188, column: 6, scope: !1990, inlinedAt: !3299)
!3309 = !DILocation(line: 188, column: 18, scope: !1990, inlinedAt: !3299)
!3310 = !DILocation(line: 1032, column: 10, scope: !3234, inlinedAt: !3291)
!3311 = !DILocation(line: 1033, column: 1, scope: !3234, inlinedAt: !3291)
!3312 = !DILocation(line: 1039, column: 3, scope: !3283)
!3313 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !365, file: !365, line: 1043, type: !3314, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!72, !74, !74, !74, !57}
!3316 = !{!3317, !3318, !3319, !3320}
!3317 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3313, file: !365, line: 1043, type: !74)
!3318 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3313, file: !365, line: 1043, type: !74)
!3319 = !DILocalVariable(name: "arg", arg: 3, scope: !3313, file: !365, line: 1044, type: !74)
!3320 = !DILocalVariable(name: "argsize", arg: 4, scope: !3313, file: !365, line: 1044, type: !57)
!3321 = !DILocation(line: 1030, column: 26, scope: !3234, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 1046, column: 10, scope: !3313)
!3323 = !DILocation(line: 0, scope: !3313)
!3324 = !DILocation(line: 0, scope: !3234, inlinedAt: !3322)
!3325 = !DILocation(line: 1030, column: 3, scope: !3234, inlinedAt: !3322)
!3326 = !DILocation(line: 1030, column: 30, scope: !3234, inlinedAt: !3322)
!3327 = !DILocation(line: 0, scope: !1990, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 1031, column: 3, scope: !3234, inlinedAt: !3322)
!3329 = !DILocation(line: 184, column: 6, scope: !1990, inlinedAt: !3328)
!3330 = !DILocation(line: 184, column: 12, scope: !1990, inlinedAt: !3328)
!3331 = !DILocation(line: 185, column: 8, scope: !2004, inlinedAt: !3328)
!3332 = !DILocation(line: 185, column: 23, scope: !2004, inlinedAt: !3328)
!3333 = !DILocation(line: 185, column: 19, scope: !2004, inlinedAt: !3328)
!3334 = !DILocation(line: 186, column: 5, scope: !2004, inlinedAt: !3328)
!3335 = !DILocation(line: 187, column: 6, scope: !1990, inlinedAt: !3328)
!3336 = !DILocation(line: 187, column: 17, scope: !1990, inlinedAt: !3328)
!3337 = !DILocation(line: 188, column: 6, scope: !1990, inlinedAt: !3328)
!3338 = !DILocation(line: 188, column: 18, scope: !1990, inlinedAt: !3328)
!3339 = !DILocation(line: 1032, column: 10, scope: !3234, inlinedAt: !3322)
!3340 = !DILocation(line: 1033, column: 1, scope: !3234, inlinedAt: !3322)
!3341 = !DILocation(line: 1046, column: 3, scope: !3313)
!3342 = distinct !DISubprogram(name: "quote_n_mem", scope: !365, file: !365, line: 1061, type: !3343, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!74, !76, !74, !57}
!3345 = !{!3346, !3347, !3348}
!3346 = !DILocalVariable(name: "n", arg: 1, scope: !3342, file: !365, line: 1061, type: !76)
!3347 = !DILocalVariable(name: "arg", arg: 2, scope: !3342, file: !365, line: 1061, type: !74)
!3348 = !DILocalVariable(name: "argsize", arg: 3, scope: !3342, file: !365, line: 1061, type: !57)
!3349 = !DILocation(line: 0, scope: !3342)
!3350 = !DILocation(line: 1063, column: 10, scope: !3342)
!3351 = !DILocation(line: 1063, column: 3, scope: !3342)
!3352 = distinct !DISubprogram(name: "quote_mem", scope: !365, file: !365, line: 1067, type: !3353, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!74, !74, !57}
!3355 = !{!3356, !3357}
!3356 = !DILocalVariable(name: "arg", arg: 1, scope: !3352, file: !365, line: 1067, type: !74)
!3357 = !DILocalVariable(name: "argsize", arg: 2, scope: !3352, file: !365, line: 1067, type: !57)
!3358 = !DILocation(line: 0, scope: !3352)
!3359 = !DILocation(line: 0, scope: !3342, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 1069, column: 10, scope: !3352)
!3361 = !DILocation(line: 1063, column: 10, scope: !3342, inlinedAt: !3360)
!3362 = !DILocation(line: 1069, column: 3, scope: !3352)
!3363 = distinct !DISubprogram(name: "quote_n", scope: !365, file: !365, line: 1073, type: !3364, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!74, !76, !74}
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !365, line: 1073, type: !76)
!3368 = !DILocalVariable(name: "arg", arg: 2, scope: !3363, file: !365, line: 1073, type: !74)
!3369 = !DILocation(line: 0, scope: !3363)
!3370 = !DILocation(line: 0, scope: !3342, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 1075, column: 10, scope: !3363)
!3372 = !DILocation(line: 1063, column: 10, scope: !3342, inlinedAt: !3371)
!3373 = !DILocation(line: 1075, column: 3, scope: !3363)
!3374 = distinct !DISubprogram(name: "quote", scope: !365, file: !365, line: 1079, type: !233, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3375)
!3375 = !{!3376}
!3376 = !DILocalVariable(name: "arg", arg: 1, scope: !3374, file: !365, line: 1079, type: !74)
!3377 = !DILocation(line: 0, scope: !3374)
!3378 = !DILocation(line: 0, scope: !3363, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 1081, column: 10, scope: !3374)
!3380 = !DILocation(line: 0, scope: !3342, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 1075, column: 10, scope: !3363, inlinedAt: !3379)
!3382 = !DILocation(line: 1063, column: 10, scope: !3342, inlinedAt: !3381)
!3383 = !DILocation(line: 1081, column: 3, scope: !3374)
!3384 = distinct !DISubprogram(name: "parse_user_spec", scope: !472, file: !472, line: 259, type: !3385, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!74, !74, !514, !515, !187, !187}
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395}
!3388 = !DILocalVariable(name: "spec", arg: 1, scope: !3384, file: !472, line: 259, type: !74)
!3389 = !DILocalVariable(name: "uid", arg: 2, scope: !3384, file: !472, line: 259, type: !514)
!3390 = !DILocalVariable(name: "gid", arg: 3, scope: !3384, file: !472, line: 259, type: !515)
!3391 = !DILocalVariable(name: "username", arg: 4, scope: !3384, file: !472, line: 260, type: !187)
!3392 = !DILocalVariable(name: "groupname", arg: 5, scope: !3384, file: !472, line: 260, type: !187)
!3393 = !DILocalVariable(name: "colon", scope: !3384, file: !472, line: 262, type: !74)
!3394 = !DILocalVariable(name: "error_msg", scope: !3384, file: !472, line: 263, type: !74)
!3395 = !DILocalVariable(name: "dot", scope: !3396, file: !472, line: 274, type: !74)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !472, line: 267, column: 5)
!3397 = distinct !DILexicalBlock(scope: !3384, file: !472, line: 266, column: 7)
!3398 = !DILocation(line: 0, scope: !3384)
!3399 = !DILocation(line: 262, column: 23, scope: !3384)
!3400 = !DILocation(line: 262, column: 29, scope: !3384)
!3401 = !DILocation(line: 264, column: 5, scope: !3384)
!3402 = !DILocation(line: 266, column: 7, scope: !3397)
!3403 = !DILocation(line: 266, column: 15, scope: !3397)
!3404 = !DILocation(line: 266, column: 11, scope: !3397)
!3405 = !DILocation(line: 266, column: 24, scope: !3397)
!3406 = !DILocation(line: 274, column: 25, scope: !3396)
!3407 = !DILocation(line: 0, scope: !3396)
!3408 = !DILocation(line: 275, column: 11, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3396, file: !472, line: 275, column: 11)
!3410 = !DILocation(line: 276, column: 11, scope: !3409)
!3411 = !DILocation(line: 276, column: 16, scope: !3409)
!3412 = !DILocation(line: 275, column: 11, scope: !3396)
!3413 = !DILocation(line: 280, column: 3, scope: !3384)
!3414 = !DILocation(line: 0, scope: !511)
!3415 = !DILocation(line: 116, column: 16, scope: !511)
!3416 = !DILocation(line: 117, column: 16, scope: !511)
!3417 = !DILocation(line: 117, column: 22, scope: !511)
!3418 = !DILocation(line: 120, column: 7, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !511, file: !472, line: 120, column: 7)
!3420 = !DILocation(line: 120, column: 7, scope: !511)
!3421 = !DILocation(line: 121, column: 15, scope: !3419)
!3422 = !DILocation(line: 121, column: 5, scope: !3419)
!3423 = !DILocation(line: 122, column: 7, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !511, file: !472, line: 122, column: 7)
!3425 = !DILocation(line: 122, column: 7, scope: !511)
!3426 = !DILocation(line: 123, column: 16, scope: !3424)
!3427 = !DILocation(line: 123, column: 5, scope: !3424)
!3428 = !DILocation(line: 130, column: 17, scope: !533)
!3429 = !DILocation(line: 130, column: 7, scope: !511)
!3430 = !DILocation(line: 132, column: 11, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !472, line: 132, column: 11)
!3432 = distinct !DILexicalBlock(scope: !533, file: !472, line: 131, column: 5)
!3433 = !DILocation(line: 132, column: 11, scope: !3432)
!3434 = !DILocation(line: 133, column: 13, scope: !3431)
!3435 = !DILocation(line: 133, column: 9, scope: !3431)
!3436 = !DILocation(line: 137, column: 31, scope: !532)
!3437 = !DILocation(line: 0, scope: !532)
!3438 = !DILocation(line: 138, column: 16, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !532, file: !472, line: 138, column: 11)
!3440 = !DILocation(line: 138, column: 11, scope: !532)
!3441 = !DILocation(line: 140, column: 35, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3439, file: !472, line: 139, column: 9)
!3443 = !DILocation(line: 140, column: 15, scope: !3442)
!3444 = !DILocation(line: 141, column: 11, scope: !3442)
!3445 = !DILocation(line: 141, column: 19, scope: !3442)
!3446 = !DILocation(line: 142, column: 9, scope: !3442)
!3447 = !DILocation(line: 145, column: 41, scope: !511)
!3448 = !DILocation(line: 145, column: 29, scope: !511)
!3449 = !DILocation(line: 145, column: 46, scope: !511)
!3450 = !DILocation(line: 145, column: 8, scope: !511)
!3451 = !DILocation(line: 158, column: 9, scope: !538)
!3452 = !DILocation(line: 158, column: 7, scope: !511)
!3453 = !DILocation(line: 161, column: 14, scope: !537)
!3454 = !DILocation(line: 161, column: 17, scope: !537)
!3455 = !DILocation(line: 161, column: 33, scope: !537)
!3456 = !DILocation(line: 162, column: 15, scope: !536)
!3457 = !DILocation(line: 162, column: 11, scope: !537)
!3458 = !DILocation(line: 164, column: 45, scope: !535)
!3459 = !DILocation(line: 164, column: 53, scope: !535)
!3460 = !DILocation(line: 0, scope: !535)
!3461 = !DILocation(line: 165, column: 15, scope: !535)
!3462 = !DILocation(line: 173, column: 15, scope: !540)
!3463 = !DILocation(line: 0, scope: !540)
!3464 = !DILocation(line: 174, column: 19, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !540, file: !472, line: 174, column: 19)
!3466 = !DILocation(line: 174, column: 52, scope: !3465)
!3467 = !DILocation(line: 175, column: 22, scope: !3465)
!3468 = !DILocation(line: 175, column: 26, scope: !3465)
!3469 = !DILocation(line: 175, column: 19, scope: !3465)
!3470 = !DILocation(line: 175, column: 39, scope: !3465)
!3471 = !DILocation(line: 175, column: 51, scope: !3465)
!3472 = !DILocation(line: 174, column: 19, scope: !540)
!3473 = !DILocation(line: 179, column: 13, scope: !541)
!3474 = !DILocation(line: 183, column: 23, scope: !545)
!3475 = !{!1517, !1401, i64 16}
!3476 = !DILocation(line: 184, column: 17, scope: !544)
!3477 = !DILocation(line: 184, column: 38, scope: !544)
!3478 = !DILocation(line: 184, column: 25, scope: !544)
!3479 = !DILocation(line: 188, column: 15, scope: !543)
!3480 = !DILocation(line: 188, column: 20, scope: !543)
!3481 = !DILocation(line: 189, column: 27, scope: !543)
!3482 = !DILocation(line: 190, column: 21, scope: !543)
!3483 = !DILocation(line: 191, column: 32, scope: !543)
!3484 = !DILocation(line: 191, column: 43, scope: !543)
!3485 = !{!1752, !1302, i64 0}
!3486 = !DILocation(line: 191, column: 64, scope: !543)
!3487 = !DILocation(line: 191, column: 53, scope: !543)
!3488 = !DILocation(line: 191, column: 23, scope: !543)
!3489 = !DILocation(line: 192, column: 15, scope: !543)
!3490 = !DILocation(line: 193, column: 13, scope: !544)
!3491 = !DILocation(line: 193, column: 13, scope: !543)
!3492 = !DILocation(line: 195, column: 7, scope: !537)
!3493 = !DILocation(line: 196, column: 5, scope: !537)
!3494 = !DILocation(line: 115, column: 9, scope: !511)
!3495 = !DILocation(line: 116, column: 9, scope: !511)
!3496 = !DILocation(line: 117, column: 9, scope: !511)
!3497 = !DILocation(line: 198, column: 9, scope: !553)
!3498 = !DILocation(line: 198, column: 30, scope: !553)
!3499 = !DILocation(line: 198, column: 17, scope: !553)
!3500 = !DILocation(line: 202, column: 14, scope: !552)
!3501 = !DILocation(line: 202, column: 17, scope: !552)
!3502 = !DILocation(line: 202, column: 33, scope: !552)
!3503 = !DILocation(line: 203, column: 15, scope: !551)
!3504 = !DILocation(line: 203, column: 11, scope: !552)
!3505 = !DILocation(line: 205, column: 11, scope: !550)
!3506 = !DILocation(line: 0, scope: !550)
!3507 = !DILocation(line: 206, column: 15, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !550, file: !472, line: 206, column: 15)
!3509 = !DILocation(line: 206, column: 48, scope: !3508)
!3510 = !DILocation(line: 207, column: 18, scope: !3508)
!3511 = !DILocation(line: 207, column: 22, scope: !3508)
!3512 = !DILocation(line: 207, column: 15, scope: !3508)
!3513 = !DILocation(line: 207, column: 35, scope: !3508)
!3514 = !DILocation(line: 207, column: 47, scope: !3508)
!3515 = !DILocation(line: 206, column: 15, scope: !550)
!3516 = !DILocation(line: 211, column: 9, scope: !551)
!3517 = !DILocation(line: 211, column: 9, scope: !550)
!3518 = !DILocation(line: 213, column: 21, scope: !551)
!3519 = !DILocation(line: 0, scope: !551)
!3520 = !DILocation(line: 169, column: 25, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !541, file: !472, line: 166, column: 13)
!3522 = !DILocation(line: 214, column: 7, scope: !552)
!3523 = !DILocation(line: 215, column: 15, scope: !552)
!3524 = !DILocation(line: 216, column: 5, scope: !552)
!3525 = !DILocation(line: 218, column: 17, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !511, file: !472, line: 218, column: 7)
!3527 = !DILocation(line: 218, column: 7, scope: !511)
!3528 = !DILocation(line: 220, column: 12, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3526, file: !472, line: 219, column: 5)
!3530 = !DILocation(line: 221, column: 11, scope: !3529)
!3531 = !DILocation(line: 222, column: 14, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3529, file: !472, line: 221, column: 11)
!3533 = !DILocation(line: 222, column: 9, scope: !3532)
!3534 = !DILocation(line: 223, column: 11, scope: !3529)
!3535 = !DILocation(line: 225, column: 21, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !472, line: 224, column: 9)
!3537 = distinct !DILexicalBlock(scope: !3529, file: !472, line: 223, column: 11)
!3538 = !DILocation(line: 227, column: 9, scope: !3536)
!3539 = !DILocation(line: 228, column: 11, scope: !3529)
!3540 = !DILocation(line: 230, column: 22, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !472, line: 229, column: 9)
!3542 = distinct !DILexicalBlock(scope: !3529, file: !472, line: 228, column: 11)
!3543 = !DILocation(line: 232, column: 9, scope: !3541)
!3544 = !DILocation(line: 235, column: 3, scope: !511)
!3545 = !DILocation(line: 236, column: 3, scope: !511)
!3546 = !DILocation(line: 237, column: 10, scope: !511)
!3547 = !DILocation(line: 237, column: 22, scope: !511)
!3548 = !DILocation(line: 237, column: 3, scope: !511)
!3549 = distinct !DISubprogram(name: "version_etc_arn", scope: !559, file: !559, line: 61, type: !3550, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !3556)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !3552, !74, !74, !74, !3555, !57}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3554, line: 7, baseType: !569)
!3554 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562}
!3557 = !DILocalVariable(name: "stream", arg: 1, scope: !3549, file: !559, line: 61, type: !3552)
!3558 = !DILocalVariable(name: "command_name", arg: 2, scope: !3549, file: !559, line: 62, type: !74)
!3559 = !DILocalVariable(name: "package", arg: 3, scope: !3549, file: !559, line: 62, type: !74)
!3560 = !DILocalVariable(name: "version", arg: 4, scope: !3549, file: !559, line: 63, type: !74)
!3561 = !DILocalVariable(name: "authors", arg: 5, scope: !3549, file: !559, line: 64, type: !3555)
!3562 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3549, file: !559, line: 64, type: !57)
!3563 = !DILocation(line: 0, scope: !3549)
!3564 = !DILocation(line: 66, column: 7, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3549, file: !559, line: 66, column: 7)
!3566 = !DILocation(line: 66, column: 7, scope: !3549)
!3567 = !DILocation(line: 67, column: 5, scope: !3565)
!3568 = !DILocation(line: 69, column: 5, scope: !3565)
!3569 = !DILocation(line: 83, column: 3, scope: !3549)
!3570 = !DILocation(line: 85, column: 3, scope: !3549)
!3571 = !DILocation(line: 88, column: 3, scope: !3549)
!3572 = !DILocation(line: 95, column: 3, scope: !3549)
!3573 = !DILocation(line: 97, column: 3, scope: !3549)
!3574 = !DILocation(line: 105, column: 7, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3549, file: !559, line: 98, column: 5)
!3576 = !DILocation(line: 106, column: 7, scope: !3575)
!3577 = !DILocation(line: 109, column: 7, scope: !3575)
!3578 = !DILocation(line: 110, column: 7, scope: !3575)
!3579 = !DILocation(line: 113, column: 7, scope: !3575)
!3580 = !DILocation(line: 115, column: 7, scope: !3575)
!3581 = !DILocation(line: 120, column: 7, scope: !3575)
!3582 = !DILocation(line: 122, column: 7, scope: !3575)
!3583 = !DILocation(line: 127, column: 7, scope: !3575)
!3584 = !DILocation(line: 129, column: 7, scope: !3575)
!3585 = !DILocation(line: 134, column: 7, scope: !3575)
!3586 = !DILocation(line: 137, column: 7, scope: !3575)
!3587 = !DILocation(line: 142, column: 7, scope: !3575)
!3588 = !DILocation(line: 145, column: 7, scope: !3575)
!3589 = !DILocation(line: 150, column: 7, scope: !3575)
!3590 = !DILocation(line: 154, column: 7, scope: !3575)
!3591 = !DILocation(line: 159, column: 7, scope: !3575)
!3592 = !DILocation(line: 163, column: 7, scope: !3575)
!3593 = !DILocation(line: 170, column: 7, scope: !3575)
!3594 = !DILocation(line: 174, column: 7, scope: !3575)
!3595 = !DILocation(line: 176, column: 1, scope: !3549)
!3596 = distinct !DISubprogram(name: "version_etc_ar", scope: !559, file: !559, line: 183, type: !3597, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !3552, !74, !74, !74, !3555}
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3605}
!3600 = !DILocalVariable(name: "stream", arg: 1, scope: !3596, file: !559, line: 183, type: !3552)
!3601 = !DILocalVariable(name: "command_name", arg: 2, scope: !3596, file: !559, line: 184, type: !74)
!3602 = !DILocalVariable(name: "package", arg: 3, scope: !3596, file: !559, line: 184, type: !74)
!3603 = !DILocalVariable(name: "version", arg: 4, scope: !3596, file: !559, line: 185, type: !74)
!3604 = !DILocalVariable(name: "authors", arg: 5, scope: !3596, file: !559, line: 185, type: !3555)
!3605 = !DILocalVariable(name: "n_authors", scope: !3596, file: !559, line: 187, type: !57)
!3606 = !DILocation(line: 0, scope: !3596)
!3607 = !DILocation(line: 189, column: 8, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3596, file: !559, line: 189, column: 3)
!3609 = !DILocation(line: 0, scope: !3608)
!3610 = !DILocation(line: 189, column: 23, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3608, file: !559, line: 189, column: 3)
!3612 = !DILocation(line: 189, column: 3, scope: !3608)
!3613 = !DILocation(line: 189, column: 52, scope: !3611)
!3614 = distinct !{!3614, !3612, !3615}
!3615 = !DILocation(line: 190, column: 5, scope: !3608)
!3616 = !DILocation(line: 191, column: 3, scope: !3596)
!3617 = !DILocation(line: 192, column: 1, scope: !3596)
!3618 = distinct !DISubprogram(name: "version_etc_va", scope: !559, file: !559, line: 199, type: !3619, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !3628)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !3552, !74, !74, !74, !3621}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !559, line: 192, size: 192, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3627}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3622, file: !559, line: 192, baseType: !7, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3622, file: !559, line: 192, baseType: !7, size: 32, offset: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3622, file: !559, line: 192, baseType: !55, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3622, file: !559, line: 192, baseType: !55, size: 64, offset: 128)
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3629 = !DILocalVariable(name: "stream", arg: 1, scope: !3618, file: !559, line: 199, type: !3552)
!3630 = !DILocalVariable(name: "command_name", arg: 2, scope: !3618, file: !559, line: 200, type: !74)
!3631 = !DILocalVariable(name: "package", arg: 3, scope: !3618, file: !559, line: 200, type: !74)
!3632 = !DILocalVariable(name: "version", arg: 4, scope: !3618, file: !559, line: 201, type: !74)
!3633 = !DILocalVariable(name: "authors", arg: 5, scope: !3618, file: !559, line: 201, type: !3621)
!3634 = !DILocalVariable(name: "n_authors", scope: !3618, file: !559, line: 203, type: !57)
!3635 = !DILocalVariable(name: "authtab", scope: !3618, file: !559, line: 204, type: !3636)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !437)
!3637 = !DILocation(line: 0, scope: !3618)
!3638 = !DILocation(line: 204, column: 3, scope: !3618)
!3639 = !DILocation(line: 204, column: 15, scope: !3618)
!3640 = !DILocation(line: 0, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !559, line: 206, column: 3)
!3642 = distinct !DILexicalBlock(scope: !3618, file: !559, line: 206, column: 3)
!3643 = !DILocation(line: 208, column: 35, scope: !3641)
!3644 = !DILocation(line: 208, column: 14, scope: !3641)
!3645 = !DILocation(line: 208, column: 33, scope: !3641)
!3646 = !DILocation(line: 208, column: 67, scope: !3641)
!3647 = !DILocation(line: 206, column: 3, scope: !3642)
!3648 = !DILocation(line: 0, scope: !3642)
!3649 = !DILocation(line: 211, column: 3, scope: !3618)
!3650 = !DILocation(line: 213, column: 1, scope: !3618)
!3651 = distinct !DISubprogram(name: "version_etc", scope: !559, file: !559, line: 230, type: !3652, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !3552, !74, !74, !74, null}
!3654 = !{!3655, !3656, !3657, !3658, !3659}
!3655 = !DILocalVariable(name: "stream", arg: 1, scope: !3651, file: !559, line: 230, type: !3552)
!3656 = !DILocalVariable(name: "command_name", arg: 2, scope: !3651, file: !559, line: 231, type: !74)
!3657 = !DILocalVariable(name: "package", arg: 3, scope: !3651, file: !559, line: 231, type: !74)
!3658 = !DILocalVariable(name: "version", arg: 4, scope: !3651, file: !559, line: 232, type: !74)
!3659 = !DILocalVariable(name: "authors", scope: !3651, file: !559, line: 234, type: !3660)
!3660 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !79, line: 52, baseType: !3661)
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3662, line: 32, baseType: !3663)
!3662 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !559, line: 234, baseType: !3664)
!3664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3622, size: 192, elements: !114)
!3665 = !DILocation(line: 0, scope: !3651)
!3666 = !DILocation(line: 234, column: 3, scope: !3651)
!3667 = !DILocation(line: 234, column: 11, scope: !3651)
!3668 = !DILocation(line: 236, column: 3, scope: !3651)
!3669 = !DILocation(line: 237, column: 3, scope: !3651)
!3670 = !DILocation(line: 238, column: 3, scope: !3651)
!3671 = !DILocation(line: 239, column: 1, scope: !3651)
!3672 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !559, file: !559, line: 242, type: !157, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !77)
!3673 = !DILocation(line: 244, column: 3, scope: !3672)
!3674 = !DILocation(line: 249, column: 3, scope: !3672)
!3675 = !DILocation(line: 255, column: 3, scope: !3672)
!3676 = !DILocation(line: 260, column: 3, scope: !3672)
!3677 = !DILocation(line: 262, column: 1, scope: !3672)
!3678 = distinct !DISubprogram(name: "xnmalloc", scope: !51, file: !51, line: 99, type: !3679, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!55, !57, !57}
!3681 = !{!3682, !3683}
!3682 = !DILocalVariable(name: "n", arg: 1, scope: !3678, file: !51, line: 99, type: !57)
!3683 = !DILocalVariable(name: "s", arg: 2, scope: !3678, file: !51, line: 99, type: !57)
!3684 = !DILocation(line: 0, scope: !3678)
!3685 = !DILocation(line: 101, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3678, file: !51, line: 101, column: 7)
!3687 = !DILocation(line: 101, column: 7, scope: !3678)
!3688 = !DILocation(line: 102, column: 5, scope: !3686)
!3689 = !DILocation(line: 103, column: 21, scope: !3678)
!3690 = !DILocalVariable(name: "n", arg: 1, scope: !3691, file: !601, line: 39, type: !57)
!3691 = distinct !DISubprogram(name: "xmalloc", scope: !601, file: !601, line: 39, type: !3692, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!55, !57}
!3694 = !{!3690, !3695}
!3695 = !DILocalVariable(name: "p", scope: !3691, file: !601, line: 41, type: !55)
!3696 = !DILocation(line: 0, scope: !3691, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 103, column: 10, scope: !3678)
!3698 = !DILocation(line: 41, column: 13, scope: !3691, inlinedAt: !3697)
!3699 = !DILocation(line: 42, column: 8, scope: !3700, inlinedAt: !3697)
!3700 = distinct !DILexicalBlock(scope: !3691, file: !601, line: 42, column: 7)
!3701 = !DILocation(line: 42, column: 15, scope: !3700, inlinedAt: !3697)
!3702 = !DILocation(line: 42, column: 10, scope: !3700, inlinedAt: !3697)
!3703 = !DILocation(line: 43, column: 5, scope: !3700, inlinedAt: !3697)
!3704 = !DILocation(line: 103, column: 3, scope: !3678)
!3705 = !DILocation(line: 0, scope: !3691)
!3706 = !DILocation(line: 41, column: 13, scope: !3691)
!3707 = !DILocation(line: 42, column: 8, scope: !3700)
!3708 = !DILocation(line: 42, column: 15, scope: !3700)
!3709 = !DILocation(line: 42, column: 10, scope: !3700)
!3710 = !DILocation(line: 43, column: 5, scope: !3700)
!3711 = !DILocation(line: 44, column: 3, scope: !3691)
!3712 = distinct !DISubprogram(name: "xnrealloc", scope: !51, file: !51, line: 112, type: !3713, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!55, !55, !57, !57}
!3715 = !{!3716, !3717, !3718}
!3716 = !DILocalVariable(name: "p", arg: 1, scope: !3712, file: !51, line: 112, type: !55)
!3717 = !DILocalVariable(name: "n", arg: 2, scope: !3712, file: !51, line: 112, type: !57)
!3718 = !DILocalVariable(name: "s", arg: 3, scope: !3712, file: !51, line: 112, type: !57)
!3719 = !DILocation(line: 0, scope: !3712)
!3720 = !DILocation(line: 114, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3712, file: !51, line: 114, column: 7)
!3722 = !DILocation(line: 114, column: 7, scope: !3712)
!3723 = !DILocation(line: 115, column: 5, scope: !3721)
!3724 = !DILocation(line: 116, column: 25, scope: !3712)
!3725 = !DILocalVariable(name: "p", arg: 1, scope: !3726, file: !601, line: 51, type: !55)
!3726 = distinct !DISubprogram(name: "xrealloc", scope: !601, file: !601, line: 51, type: !3727, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!55, !55, !57}
!3729 = !{!3725, !3730}
!3730 = !DILocalVariable(name: "n", arg: 2, scope: !3726, file: !601, line: 51, type: !57)
!3731 = !DILocation(line: 0, scope: !3726, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 116, column: 10, scope: !3712)
!3733 = !DILocation(line: 53, column: 8, scope: !3734, inlinedAt: !3732)
!3734 = distinct !DILexicalBlock(scope: !3726, file: !601, line: 53, column: 7)
!3735 = !DILocation(line: 53, column: 13, scope: !3734, inlinedAt: !3732)
!3736 = !DILocation(line: 53, column: 10, scope: !3734, inlinedAt: !3732)
!3737 = !DILocation(line: 57, column: 7, scope: !3738, inlinedAt: !3732)
!3738 = distinct !DILexicalBlock(scope: !3734, file: !601, line: 54, column: 5)
!3739 = !DILocation(line: 58, column: 7, scope: !3738, inlinedAt: !3732)
!3740 = !DILocation(line: 61, column: 7, scope: !3726, inlinedAt: !3732)
!3741 = !DILocation(line: 62, column: 8, scope: !3742, inlinedAt: !3732)
!3742 = distinct !DILexicalBlock(scope: !3726, file: !601, line: 62, column: 7)
!3743 = !DILocation(line: 62, column: 13, scope: !3742, inlinedAt: !3732)
!3744 = !DILocation(line: 62, column: 10, scope: !3742, inlinedAt: !3732)
!3745 = !DILocation(line: 63, column: 5, scope: !3742, inlinedAt: !3732)
!3746 = !DILocation(line: 116, column: 3, scope: !3712)
!3747 = !DILocation(line: 0, scope: !3726)
!3748 = !DILocation(line: 53, column: 8, scope: !3734)
!3749 = !DILocation(line: 53, column: 13, scope: !3734)
!3750 = !DILocation(line: 53, column: 10, scope: !3734)
!3751 = !DILocation(line: 57, column: 7, scope: !3738)
!3752 = !DILocation(line: 58, column: 7, scope: !3738)
!3753 = !DILocation(line: 61, column: 7, scope: !3726)
!3754 = !DILocation(line: 62, column: 8, scope: !3742)
!3755 = !DILocation(line: 62, column: 13, scope: !3742)
!3756 = !DILocation(line: 62, column: 10, scope: !3742)
!3757 = !DILocation(line: 63, column: 5, scope: !3742)
!3758 = !DILocation(line: 65, column: 1, scope: !3726)
!3759 = !DILocation(line: 0, scope: !604)
!3760 = !DILocation(line: 176, column: 14, scope: !604)
!3761 = !DILocation(line: 178, column: 9, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !604, file: !51, line: 178, column: 7)
!3763 = !DILocation(line: 178, column: 7, scope: !604)
!3764 = !DILocation(line: 180, column: 13, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !51, line: 180, column: 11)
!3766 = distinct !DILexicalBlock(scope: !3762, file: !51, line: 179, column: 5)
!3767 = !DILocation(line: 180, column: 11, scope: !3766)
!3768 = !DILocation(line: 188, column: 30, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3765, file: !51, line: 181, column: 9)
!3770 = !DILocation(line: 189, column: 16, scope: !3769)
!3771 = !DILocation(line: 189, column: 13, scope: !3769)
!3772 = !DILocation(line: 190, column: 9, scope: !3769)
!3773 = !DILocation(line: 191, column: 11, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3766, file: !51, line: 191, column: 11)
!3775 = !DILocation(line: 191, column: 11, scope: !3766)
!3776 = !DILocation(line: 206, column: 7, scope: !604)
!3777 = !DILocation(line: 207, column: 25, scope: !604)
!3778 = !DILocation(line: 0, scope: !3726, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 207, column: 10, scope: !604)
!3780 = !DILocation(line: 53, column: 10, scope: !3734, inlinedAt: !3779)
!3781 = !DILocation(line: 192, column: 9, scope: !3774)
!3782 = !DILocation(line: 200, column: 69, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !51, line: 200, column: 11)
!3784 = distinct !DILexicalBlock(scope: !3762, file: !51, line: 195, column: 5)
!3785 = !DILocation(line: 201, column: 11, scope: !3783)
!3786 = !DILocation(line: 200, column: 11, scope: !3784)
!3787 = !DILocation(line: 202, column: 9, scope: !3783)
!3788 = !DILocation(line: 203, column: 14, scope: !3784)
!3789 = !DILocation(line: 203, column: 18, scope: !3784)
!3790 = !DILocation(line: 203, column: 9, scope: !3784)
!3791 = !DILocation(line: 53, column: 8, scope: !3734, inlinedAt: !3779)
!3792 = !DILocation(line: 57, column: 7, scope: !3738, inlinedAt: !3779)
!3793 = !DILocation(line: 58, column: 7, scope: !3738, inlinedAt: !3779)
!3794 = !DILocation(line: 61, column: 7, scope: !3726, inlinedAt: !3779)
!3795 = !DILocation(line: 62, column: 8, scope: !3742, inlinedAt: !3779)
!3796 = !DILocation(line: 62, column: 13, scope: !3742, inlinedAt: !3779)
!3797 = !DILocation(line: 62, column: 10, scope: !3742, inlinedAt: !3779)
!3798 = !DILocation(line: 63, column: 5, scope: !3742, inlinedAt: !3779)
!3799 = !DILocation(line: 207, column: 3, scope: !604)
!3800 = distinct !DISubprogram(name: "xcharalloc", scope: !51, file: !51, line: 216, type: !2801, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3801)
!3801 = !{!3802}
!3802 = !DILocalVariable(name: "n", arg: 1, scope: !3800, file: !51, line: 216, type: !57)
!3803 = !DILocation(line: 0, scope: !3800)
!3804 = !DILocation(line: 0, scope: !3691, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 218, column: 10, scope: !3800)
!3806 = !DILocation(line: 41, column: 13, scope: !3691, inlinedAt: !3805)
!3807 = !DILocation(line: 42, column: 8, scope: !3700, inlinedAt: !3805)
!3808 = !DILocation(line: 42, column: 15, scope: !3700, inlinedAt: !3805)
!3809 = !DILocation(line: 42, column: 10, scope: !3700, inlinedAt: !3805)
!3810 = !DILocation(line: 43, column: 5, scope: !3700, inlinedAt: !3805)
!3811 = !DILocation(line: 218, column: 3, scope: !3800)
!3812 = distinct !DISubprogram(name: "x2realloc", scope: !601, file: !601, line: 74, type: !3813, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!55, !55, !56}
!3815 = !{!3816, !3817}
!3816 = !DILocalVariable(name: "p", arg: 1, scope: !3812, file: !601, line: 74, type: !55)
!3817 = !DILocalVariable(name: "pn", arg: 2, scope: !3812, file: !601, line: 74, type: !56)
!3818 = !DILocation(line: 0, scope: !3812)
!3819 = !DILocation(line: 0, scope: !604, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 76, column: 10, scope: !3812)
!3821 = !DILocation(line: 176, column: 14, scope: !604, inlinedAt: !3820)
!3822 = !DILocation(line: 178, column: 9, scope: !3762, inlinedAt: !3820)
!3823 = !DILocation(line: 178, column: 7, scope: !604, inlinedAt: !3820)
!3824 = !DILocation(line: 180, column: 13, scope: !3765, inlinedAt: !3820)
!3825 = !DILocation(line: 180, column: 11, scope: !3766, inlinedAt: !3820)
!3826 = !DILocation(line: 191, column: 11, scope: !3774, inlinedAt: !3820)
!3827 = !DILocation(line: 191, column: 11, scope: !3766, inlinedAt: !3820)
!3828 = !DILocation(line: 206, column: 7, scope: !604, inlinedAt: !3820)
!3829 = !DILocation(line: 0, scope: !3726, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 207, column: 10, scope: !604, inlinedAt: !3820)
!3831 = !DILocation(line: 53, column: 10, scope: !3734, inlinedAt: !3830)
!3832 = !DILocation(line: 192, column: 9, scope: !3774, inlinedAt: !3820)
!3833 = !DILocation(line: 201, column: 11, scope: !3783, inlinedAt: !3820)
!3834 = !DILocation(line: 200, column: 11, scope: !3784, inlinedAt: !3820)
!3835 = !DILocation(line: 202, column: 9, scope: !3783, inlinedAt: !3820)
!3836 = !DILocation(line: 203, column: 14, scope: !3784, inlinedAt: !3820)
!3837 = !DILocation(line: 203, column: 18, scope: !3784, inlinedAt: !3820)
!3838 = !DILocation(line: 203, column: 9, scope: !3784, inlinedAt: !3820)
!3839 = !DILocation(line: 53, column: 8, scope: !3734, inlinedAt: !3830)
!3840 = !DILocation(line: 57, column: 7, scope: !3738, inlinedAt: !3830)
!3841 = !DILocation(line: 58, column: 7, scope: !3738, inlinedAt: !3830)
!3842 = !DILocation(line: 61, column: 7, scope: !3726, inlinedAt: !3830)
!3843 = !DILocation(line: 62, column: 8, scope: !3742, inlinedAt: !3830)
!3844 = !DILocation(line: 62, column: 13, scope: !3742, inlinedAt: !3830)
!3845 = !DILocation(line: 62, column: 10, scope: !3742, inlinedAt: !3830)
!3846 = !DILocation(line: 63, column: 5, scope: !3742, inlinedAt: !3830)
!3847 = !DILocation(line: 76, column: 3, scope: !3812)
!3848 = distinct !DISubprogram(name: "xzalloc", scope: !601, file: !601, line: 84, type: !3692, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3849)
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "n", arg: 1, scope: !3848, file: !601, line: 84, type: !57)
!3851 = !DILocation(line: 0, scope: !3848)
!3852 = !DILocalVariable(name: "n", arg: 1, scope: !3853, file: !601, line: 93, type: !57)
!3853 = distinct !DISubprogram(name: "xcalloc", scope: !601, file: !601, line: 93, type: !3679, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3854)
!3854 = !{!3852, !3855, !3856}
!3855 = !DILocalVariable(name: "s", arg: 2, scope: !3853, file: !601, line: 93, type: !57)
!3856 = !DILocalVariable(name: "p", scope: !3853, file: !601, line: 95, type: !55)
!3857 = !DILocation(line: 0, scope: !3853, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 86, column: 10, scope: !3848)
!3859 = !DILocation(line: 100, column: 7, scope: !3860, inlinedAt: !3858)
!3860 = distinct !DILexicalBlock(scope: !3853, file: !601, line: 100, column: 7)
!3861 = !DILocation(line: 101, column: 7, scope: !3860, inlinedAt: !3858)
!3862 = !DILocation(line: 101, column: 18, scope: !3860, inlinedAt: !3858)
!3863 = !DILocation(line: 101, column: 16, scope: !3860, inlinedAt: !3858)
!3864 = !DILocation(line: 100, column: 7, scope: !3853, inlinedAt: !3858)
!3865 = !DILocation(line: 102, column: 5, scope: !3860, inlinedAt: !3858)
!3866 = !DILocation(line: 86, column: 3, scope: !3848)
!3867 = !DILocation(line: 0, scope: !3853)
!3868 = !DILocation(line: 100, column: 7, scope: !3860)
!3869 = !DILocation(line: 101, column: 7, scope: !3860)
!3870 = !DILocation(line: 101, column: 18, scope: !3860)
!3871 = !DILocation(line: 101, column: 16, scope: !3860)
!3872 = !DILocation(line: 100, column: 7, scope: !3853)
!3873 = !DILocation(line: 102, column: 5, scope: !3860)
!3874 = !DILocation(line: 103, column: 3, scope: !3853)
!3875 = distinct !DISubprogram(name: "xmemdup", scope: !601, file: !601, line: 111, type: !3876, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!55, !376, !57}
!3878 = !{!3879, !3880}
!3879 = !DILocalVariable(name: "p", arg: 1, scope: !3875, file: !601, line: 111, type: !376)
!3880 = !DILocalVariable(name: "s", arg: 2, scope: !3875, file: !601, line: 111, type: !57)
!3881 = !DILocation(line: 0, scope: !3875)
!3882 = !DILocation(line: 0, scope: !3691, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 113, column: 18, scope: !3875)
!3884 = !DILocation(line: 41, column: 13, scope: !3691, inlinedAt: !3883)
!3885 = !DILocation(line: 42, column: 8, scope: !3700, inlinedAt: !3883)
!3886 = !DILocation(line: 42, column: 15, scope: !3700, inlinedAt: !3883)
!3887 = !DILocation(line: 42, column: 10, scope: !3700, inlinedAt: !3883)
!3888 = !DILocation(line: 43, column: 5, scope: !3700, inlinedAt: !3883)
!3889 = !DILocalVariable(name: "__dest", arg: 1, scope: !3890, file: !2334, line: 31, type: !3893)
!3890 = distinct !DISubprogram(name: "memcpy", scope: !2334, file: !2334, line: 31, type: !3891, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3895)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!55, !3893, !3894, !57}
!3893 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!3894 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !376)
!3895 = !{!3889, !3896, !3897}
!3896 = !DILocalVariable(name: "__src", arg: 2, scope: !3890, file: !2334, line: 31, type: !3894)
!3897 = !DILocalVariable(name: "__len", arg: 3, scope: !3890, file: !2334, line: 31, type: !57)
!3898 = !DILocation(line: 0, scope: !3890, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 113, column: 10, scope: !3875)
!3900 = !DILocation(line: 34, column: 10, scope: !3890, inlinedAt: !3899)
!3901 = !DILocation(line: 113, column: 3, scope: !3875)
!3902 = distinct !DISubprogram(name: "xstrdup", scope: !601, file: !601, line: 119, type: !150, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !3903)
!3903 = !{!3904}
!3904 = !DILocalVariable(name: "string", arg: 1, scope: !3902, file: !601, line: 119, type: !74)
!3905 = !DILocation(line: 0, scope: !3902)
!3906 = !DILocation(line: 121, column: 27, scope: !3902)
!3907 = !DILocation(line: 121, column: 43, scope: !3902)
!3908 = !DILocation(line: 0, scope: !3875, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 121, column: 10, scope: !3902)
!3910 = !DILocation(line: 0, scope: !3691, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 113, column: 18, scope: !3875, inlinedAt: !3909)
!3912 = !DILocation(line: 41, column: 13, scope: !3691, inlinedAt: !3911)
!3913 = !DILocation(line: 42, column: 8, scope: !3700, inlinedAt: !3911)
!3914 = !DILocation(line: 42, column: 15, scope: !3700, inlinedAt: !3911)
!3915 = !DILocation(line: 42, column: 10, scope: !3700, inlinedAt: !3911)
!3916 = !DILocation(line: 43, column: 5, scope: !3700, inlinedAt: !3911)
!3917 = !DILocation(line: 0, scope: !3890, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 113, column: 10, scope: !3875, inlinedAt: !3909)
!3919 = !DILocation(line: 34, column: 10, scope: !3890, inlinedAt: !3918)
!3920 = !DILocation(line: 121, column: 3, scope: !3902)
!3921 = distinct !DISubprogram(name: "xalloc_die", scope: !617, file: !617, line: 32, type: !157, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !77)
!3922 = !DILocation(line: 34, column: 10, scope: !3921)
!3923 = !DILocation(line: 34, column: 33, scope: !3921)
!3924 = !DILocation(line: 34, column: 3, scope: !3921)
!3925 = !DILocation(line: 40, column: 3, scope: !3921)
!3926 = distinct !DISubprogram(name: "xgetgroups", scope: !620, file: !620, line: 31, type: !1101, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !3927)
!3927 = !{!3928, !3929, !3930, !3931}
!3928 = !DILocalVariable(name: "username", arg: 1, scope: !3926, file: !620, line: 31, type: !74)
!3929 = !DILocalVariable(name: "gid", arg: 2, scope: !3926, file: !620, line: 31, type: !238)
!3930 = !DILocalVariable(name: "groups", arg: 3, scope: !3926, file: !620, line: 31, type: !1103)
!3931 = !DILocalVariable(name: "result", scope: !3926, file: !620, line: 33, type: !76)
!3932 = !DILocation(line: 0, scope: !3926)
!3933 = !DILocation(line: 33, column: 16, scope: !3926)
!3934 = !DILocation(line: 34, column: 14, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3926, file: !620, line: 34, column: 7)
!3936 = !DILocation(line: 34, column: 20, scope: !3935)
!3937 = !DILocation(line: 34, column: 23, scope: !3935)
!3938 = !DILocation(line: 34, column: 29, scope: !3935)
!3939 = !DILocation(line: 34, column: 7, scope: !3926)
!3940 = !DILocation(line: 35, column: 5, scope: !3935)
!3941 = !DILocation(line: 36, column: 3, scope: !3926)
!3942 = distinct !DISubprogram(name: "xstrtoul", scope: !3943, file: !3943, line: 76, type: !3944, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3947)
!3943 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!3946, !74, !187, !76, !243, !74}
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !28, line: 38, baseType: !27)
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3960, !3961, !3964, !3965}
!3948 = !DILocalVariable(name: "s", arg: 1, scope: !3942, file: !3943, line: 76, type: !74)
!3949 = !DILocalVariable(name: "ptr", arg: 2, scope: !3942, file: !3943, line: 76, type: !187)
!3950 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3942, file: !3943, line: 76, type: !76)
!3951 = !DILocalVariable(name: "val", arg: 4, scope: !3942, file: !3943, line: 77, type: !243)
!3952 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3942, file: !3943, line: 77, type: !74)
!3953 = !DILocalVariable(name: "t_ptr", scope: !3942, file: !3943, line: 79, type: !72)
!3954 = !DILocalVariable(name: "p", scope: !3942, file: !3943, line: 80, type: !187)
!3955 = !DILocalVariable(name: "tmp", scope: !3942, file: !3943, line: 81, type: !59)
!3956 = !DILocalVariable(name: "err", scope: !3942, file: !3943, line: 82, type: !3946)
!3957 = !DILocalVariable(name: "q", scope: !3958, file: !3943, line: 92, type: !74)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !3943, line: 91, column: 5)
!3959 = distinct !DILexicalBlock(scope: !3942, file: !3943, line: 90, column: 7)
!3960 = !DILocalVariable(name: "ch", scope: !3958, file: !3943, line: 93, type: !1958)
!3961 = !DILocalVariable(name: "base", scope: !3962, file: !3943, line: 129, type: !76)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !3943, line: 128, column: 5)
!3963 = distinct !DILexicalBlock(scope: !3942, file: !3943, line: 127, column: 7)
!3964 = !DILocalVariable(name: "suffixes", scope: !3962, file: !3943, line: 130, type: !76)
!3965 = !DILocalVariable(name: "overflow", scope: !3962, file: !3943, line: 131, type: !3946)
!3966 = !DILocation(line: 0, scope: !3942)
!3967 = !DILocation(line: 79, column: 3, scope: !3942)
!3968 = !DILocation(line: 84, column: 3, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !3943, line: 84, column: 3)
!3970 = distinct !DILexicalBlock(scope: !3942, file: !3943, line: 84, column: 3)
!3971 = !DILocation(line: 86, column: 8, scope: !3942)
!3972 = !DILocation(line: 88, column: 3, scope: !3942)
!3973 = !DILocation(line: 88, column: 9, scope: !3942)
!3974 = !DILocation(line: 0, scope: !3958)
!3975 = !DILocation(line: 94, column: 7, scope: !3958)
!3976 = !DILocation(line: 94, column: 14, scope: !3958)
!3977 = !DILocation(line: 95, column: 15, scope: !3958)
!3978 = distinct !{!3978, !3975, !3979}
!3979 = !DILocation(line: 95, column: 17, scope: !3958)
!3980 = !DILocation(line: 96, column: 14, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3958, file: !3943, line: 96, column: 11)
!3982 = !DILocation(line: 100, column: 9, scope: !3942)
!3983 = !DILocation(line: 102, column: 7, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3942, file: !3943, line: 102, column: 7)
!3985 = !DILocation(line: 102, column: 10, scope: !3984)
!3986 = !DILocation(line: 102, column: 7, scope: !3942)
!3987 = !DILocation(line: 106, column: 11, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !3943, line: 106, column: 11)
!3989 = distinct !DILexicalBlock(scope: !3984, file: !3943, line: 103, column: 5)
!3990 = !DILocation(line: 106, column: 26, scope: !3988)
!3991 = !DILocation(line: 106, column: 29, scope: !3988)
!3992 = !DILocation(line: 106, column: 33, scope: !3988)
!3993 = !DILocation(line: 106, column: 36, scope: !3988)
!3994 = !DILocation(line: 106, column: 11, scope: !3989)
!3995 = !DILocation(line: 111, column: 12, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3984, file: !3943, line: 111, column: 12)
!3997 = !DILocation(line: 111, column: 12, scope: !3984)
!3998 = !DILocation(line: 116, column: 5, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3996, file: !3943, line: 112, column: 5)
!4000 = !DILocation(line: 121, column: 8, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3942, file: !3943, line: 121, column: 7)
!4002 = !DILocation(line: 121, column: 7, scope: !3942)
!4003 = !DILocation(line: 123, column: 12, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4001, file: !3943, line: 122, column: 5)
!4005 = !DILocation(line: 124, column: 7, scope: !4004)
!4006 = !DILocation(line: 127, column: 7, scope: !3963)
!4007 = !DILocation(line: 127, column: 11, scope: !3963)
!4008 = !DILocation(line: 127, column: 7, scope: !3942)
!4009 = !DILocation(line: 0, scope: !3962)
!4010 = !DILocation(line: 133, column: 12, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3962, file: !3943, line: 133, column: 11)
!4012 = !DILocation(line: 133, column: 11, scope: !3962)
!4013 = !DILocation(line: 135, column: 16, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4011, file: !3943, line: 134, column: 9)
!4015 = !DILocation(line: 136, column: 22, scope: !4014)
!4016 = !DILocation(line: 136, column: 11, scope: !4014)
!4017 = !DILocation(line: 139, column: 7, scope: !3962)
!4018 = !DILocation(line: 151, column: 15, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4020, file: !3943, line: 151, column: 15)
!4020 = distinct !DILexicalBlock(scope: !3962, file: !3943, line: 140, column: 9)
!4021 = !DILocation(line: 151, column: 15, scope: !4020)
!4022 = !DILocation(line: 152, column: 21, scope: !4019)
!4023 = !DILocation(line: 152, column: 13, scope: !4019)
!4024 = !DILocation(line: 155, column: 21, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !3943, line: 155, column: 21)
!4026 = distinct !DILexicalBlock(scope: !4019, file: !3943, line: 153, column: 15)
!4027 = !DILocation(line: 155, column: 29, scope: !4025)
!4028 = !DILocation(line: 155, column: 21, scope: !4026)
!4029 = !DILocation(line: 163, column: 17, scope: !4026)
!4030 = !DILocation(line: 167, column: 7, scope: !3962)
!4031 = !DILocalVariable(name: "err", scope: !4032, file: !3943, line: 67, type: !3946)
!4032 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3943, file: !3943, line: 65, type: !4033, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!3946, !243, !76, !76}
!4035 = !{!4036, !4037, !4038, !4031}
!4036 = !DILocalVariable(name: "x", arg: 1, scope: !4032, file: !3943, line: 65, type: !243)
!4037 = !DILocalVariable(name: "base", arg: 2, scope: !4032, file: !3943, line: 65, type: !76)
!4038 = !DILocalVariable(name: "power", arg: 3, scope: !4032, file: !3943, line: 65, type: !76)
!4039 = !DILocation(line: 0, scope: !4032, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 221, column: 22, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !3962, file: !3943, line: 168, column: 9)
!4042 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4043, file: !3943, line: 48, type: !76)
!4043 = distinct !DISubprogram(name: "bkm_scale", scope: !3943, file: !3943, line: 48, type: !4044, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !4046)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!3946, !243, !76}
!4046 = !{!4047, !4042}
!4047 = !DILocalVariable(name: "x", arg: 1, scope: !4043, file: !3943, line: 48, type: !243)
!4048 = !DILocation(line: 0, scope: !4043, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 69, column: 12, scope: !4032, inlinedAt: !4040)
!4050 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4049)
!4051 = distinct !DILexicalBlock(scope: !4043, file: !3943, line: 55, column: 7)
!4052 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4049)
!4053 = !DILocation(line: 69, column: 9, scope: !4032, inlinedAt: !4040)
!4054 = !DILocation(line: 229, column: 11, scope: !3962)
!4055 = !DILocation(line: 0, scope: !4032, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 217, column: 22, scope: !4041)
!4057 = !DILocation(line: 0, scope: !4043, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 69, column: 12, scope: !4032, inlinedAt: !4056)
!4059 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4058)
!4060 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4058)
!4061 = !DILocation(line: 69, column: 9, scope: !4032, inlinedAt: !4056)
!4062 = !DILocation(line: 0, scope: !4032, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 204, column: 22, scope: !4041)
!4064 = !DILocation(line: 0, scope: !4043, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 69, column: 12, scope: !4032, inlinedAt: !4063)
!4066 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4065)
!4067 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4065)
!4068 = !DILocation(line: 69, column: 9, scope: !4032, inlinedAt: !4063)
!4069 = !DILocation(line: 0, scope: !4032, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 185, column: 22, scope: !4041)
!4071 = !DILocation(line: 0, scope: !4043, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 69, column: 12, scope: !4032, inlinedAt: !4070)
!4073 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4072)
!4074 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4072)
!4075 = !DILocation(line: 69, column: 9, scope: !4032, inlinedAt: !4070)
!4076 = !DILocation(line: 0, scope: !4043, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 170, column: 22, scope: !4041)
!4078 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4077)
!4079 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4077)
!4080 = !DILocation(line: 171, column: 11, scope: !4041)
!4081 = !DILocation(line: 0, scope: !4043, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 177, column: 22, scope: !4041)
!4083 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4082)
!4084 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4082)
!4085 = !DILocation(line: 178, column: 11, scope: !4041)
!4086 = !DILocation(line: 0, scope: !4032, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 190, column: 22, scope: !4041)
!4088 = !DILocation(line: 0, scope: !4043, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 69, column: 12, scope: !4032, inlinedAt: !4087)
!4090 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4089)
!4091 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4089)
!4092 = !DILocation(line: 69, column: 9, scope: !4032, inlinedAt: !4087)
!4093 = !DILocation(line: 0, scope: !4032, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 195, column: 22, scope: !4041)
!4095 = !DILocation(line: 0, scope: !4043, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 69, column: 12, scope: !4032, inlinedAt: !4094)
!4097 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4096)
!4098 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4096)
!4099 = !DILocation(line: 0, scope: !4032, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 200, column: 22, scope: !4041)
!4101 = !DILocation(line: 0, scope: !4043, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 69, column: 12, scope: !4032, inlinedAt: !4100)
!4103 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4102)
!4104 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4102)
!4105 = !DILocation(line: 69, column: 9, scope: !4032, inlinedAt: !4100)
!4106 = !DILocation(line: 0, scope: !4032, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 209, column: 22, scope: !4041)
!4108 = !DILocation(line: 0, scope: !4043, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 69, column: 12, scope: !4032, inlinedAt: !4107)
!4110 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4109)
!4111 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4109)
!4112 = !DILocation(line: 69, column: 9, scope: !4032, inlinedAt: !4107)
!4113 = !DILocation(line: 0, scope: !4043, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 213, column: 22, scope: !4041)
!4115 = !DILocation(line: 55, column: 39, scope: !4051, inlinedAt: !4114)
!4116 = !DILocation(line: 55, column: 7, scope: !4043, inlinedAt: !4114)
!4117 = !DILocation(line: 214, column: 11, scope: !4041)
!4118 = !DILocation(line: 225, column: 16, scope: !4041)
!4119 = !DILocation(line: 226, column: 22, scope: !4041)
!4120 = !DILocation(line: 226, column: 11, scope: !4041)
!4121 = !DILocation(line: 0, scope: !4041)
!4122 = !DILocation(line: 230, column: 10, scope: !3962)
!4123 = !DILocation(line: 231, column: 11, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !3962, file: !3943, line: 231, column: 11)
!4125 = !DILocation(line: 232, column: 13, scope: !4124)
!4126 = !DILocation(line: 231, column: 11, scope: !3962)
!4127 = !DILocation(line: 107, column: 13, scope: !3988)
!4128 = !DILocation(line: 82, column: 16, scope: !3942)
!4129 = !DILocation(line: 235, column: 8, scope: !3942)
!4130 = !DILocation(line: 236, column: 3, scope: !3942)
!4131 = !DILocation(line: 237, column: 1, scope: !3942)
!4132 = distinct !DISubprogram(name: "xstrtoumax", scope: !3943, file: !3943, line: 76, type: !4133, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !4136)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!3946, !74, !187, !76, !4135, !74}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!4136 = !{!4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4149, !4150, !4153, !4154}
!4137 = !DILocalVariable(name: "s", arg: 1, scope: !4132, file: !3943, line: 76, type: !74)
!4138 = !DILocalVariable(name: "ptr", arg: 2, scope: !4132, file: !3943, line: 76, type: !187)
!4139 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4132, file: !3943, line: 76, type: !76)
!4140 = !DILocalVariable(name: "val", arg: 4, scope: !4132, file: !3943, line: 77, type: !4135)
!4141 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4132, file: !3943, line: 77, type: !74)
!4142 = !DILocalVariable(name: "t_ptr", scope: !4132, file: !3943, line: 79, type: !72)
!4143 = !DILocalVariable(name: "p", scope: !4132, file: !3943, line: 80, type: !187)
!4144 = !DILocalVariable(name: "tmp", scope: !4132, file: !3943, line: 81, type: !700)
!4145 = !DILocalVariable(name: "err", scope: !4132, file: !3943, line: 82, type: !3946)
!4146 = !DILocalVariable(name: "q", scope: !4147, file: !3943, line: 92, type: !74)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !3943, line: 91, column: 5)
!4148 = distinct !DILexicalBlock(scope: !4132, file: !3943, line: 90, column: 7)
!4149 = !DILocalVariable(name: "ch", scope: !4147, file: !3943, line: 93, type: !1958)
!4150 = !DILocalVariable(name: "base", scope: !4151, file: !3943, line: 129, type: !76)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !3943, line: 128, column: 5)
!4152 = distinct !DILexicalBlock(scope: !4132, file: !3943, line: 127, column: 7)
!4153 = !DILocalVariable(name: "suffixes", scope: !4151, file: !3943, line: 130, type: !76)
!4154 = !DILocalVariable(name: "overflow", scope: !4151, file: !3943, line: 131, type: !3946)
!4155 = !DILocation(line: 0, scope: !4132)
!4156 = !DILocation(line: 79, column: 3, scope: !4132)
!4157 = !DILocation(line: 84, column: 3, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !3943, line: 84, column: 3)
!4159 = distinct !DILexicalBlock(scope: !4132, file: !3943, line: 84, column: 3)
!4160 = !DILocation(line: 86, column: 8, scope: !4132)
!4161 = !DILocation(line: 88, column: 3, scope: !4132)
!4162 = !DILocation(line: 88, column: 9, scope: !4132)
!4163 = !DILocation(line: 0, scope: !4147)
!4164 = !DILocation(line: 94, column: 7, scope: !4147)
!4165 = !DILocation(line: 94, column: 14, scope: !4147)
!4166 = !DILocation(line: 95, column: 15, scope: !4147)
!4167 = distinct !{!4167, !4164, !4168}
!4168 = !DILocation(line: 95, column: 17, scope: !4147)
!4169 = !DILocation(line: 96, column: 14, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4147, file: !3943, line: 96, column: 11)
!4171 = !DILocalVariable(name: "nptr", arg: 1, scope: !4172, file: !4173, line: 336, type: !4176)
!4172 = distinct !DISubprogram(name: "strtoumax", scope: !4173, file: !4173, line: 336, type: !4174, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !4178)
!4173 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!700, !4176, !4177, !76}
!4176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!4177 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !187)
!4178 = !{!4171, !4179, !4180}
!4179 = !DILocalVariable(name: "endptr", arg: 2, scope: !4172, file: !4173, line: 336, type: !4177)
!4180 = !DILocalVariable(name: "base", arg: 3, scope: !4172, file: !4173, line: 336, type: !76)
!4181 = !DILocation(line: 0, scope: !4172, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 100, column: 9, scope: !4132)
!4183 = !DILocation(line: 339, column: 10, scope: !4172, inlinedAt: !4182)
!4184 = !DILocation(line: 102, column: 7, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4132, file: !3943, line: 102, column: 7)
!4186 = !DILocation(line: 102, column: 10, scope: !4185)
!4187 = !DILocation(line: 102, column: 7, scope: !4132)
!4188 = !DILocation(line: 106, column: 11, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !3943, line: 106, column: 11)
!4190 = distinct !DILexicalBlock(scope: !4185, file: !3943, line: 103, column: 5)
!4191 = !DILocation(line: 106, column: 26, scope: !4189)
!4192 = !DILocation(line: 106, column: 29, scope: !4189)
!4193 = !DILocation(line: 106, column: 33, scope: !4189)
!4194 = !DILocation(line: 106, column: 36, scope: !4189)
!4195 = !DILocation(line: 106, column: 11, scope: !4190)
!4196 = !DILocation(line: 111, column: 12, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4185, file: !3943, line: 111, column: 12)
!4198 = !DILocation(line: 111, column: 12, scope: !4185)
!4199 = !DILocation(line: 116, column: 5, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4197, file: !3943, line: 112, column: 5)
!4201 = !DILocation(line: 121, column: 8, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4132, file: !3943, line: 121, column: 7)
!4203 = !DILocation(line: 121, column: 7, scope: !4132)
!4204 = !DILocation(line: 123, column: 12, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4202, file: !3943, line: 122, column: 5)
!4206 = !DILocation(line: 124, column: 7, scope: !4205)
!4207 = !DILocation(line: 127, column: 7, scope: !4152)
!4208 = !DILocation(line: 127, column: 11, scope: !4152)
!4209 = !DILocation(line: 127, column: 7, scope: !4132)
!4210 = !DILocation(line: 0, scope: !4151)
!4211 = !DILocation(line: 133, column: 12, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4151, file: !3943, line: 133, column: 11)
!4213 = !DILocation(line: 133, column: 11, scope: !4151)
!4214 = !DILocation(line: 135, column: 16, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4212, file: !3943, line: 134, column: 9)
!4216 = !DILocation(line: 136, column: 22, scope: !4215)
!4217 = !DILocation(line: 136, column: 11, scope: !4215)
!4218 = !DILocation(line: 139, column: 7, scope: !4151)
!4219 = !DILocation(line: 151, column: 15, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !3943, line: 151, column: 15)
!4221 = distinct !DILexicalBlock(scope: !4151, file: !3943, line: 140, column: 9)
!4222 = !DILocation(line: 151, column: 15, scope: !4221)
!4223 = !DILocation(line: 152, column: 21, scope: !4220)
!4224 = !DILocation(line: 152, column: 13, scope: !4220)
!4225 = !DILocation(line: 155, column: 21, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !3943, line: 155, column: 21)
!4227 = distinct !DILexicalBlock(scope: !4220, file: !3943, line: 153, column: 15)
!4228 = !DILocation(line: 155, column: 29, scope: !4226)
!4229 = !DILocation(line: 155, column: 21, scope: !4227)
!4230 = !DILocation(line: 163, column: 17, scope: !4227)
!4231 = !DILocation(line: 167, column: 7, scope: !4151)
!4232 = !DILocalVariable(name: "err", scope: !4233, file: !3943, line: 67, type: !3946)
!4233 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3943, file: !3943, line: 65, type: !4234, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!3946, !4135, !76, !76}
!4236 = !{!4237, !4238, !4239, !4232}
!4237 = !DILocalVariable(name: "x", arg: 1, scope: !4233, file: !3943, line: 65, type: !4135)
!4238 = !DILocalVariable(name: "base", arg: 2, scope: !4233, file: !3943, line: 65, type: !76)
!4239 = !DILocalVariable(name: "power", arg: 3, scope: !4233, file: !3943, line: 65, type: !76)
!4240 = !DILocation(line: 0, scope: !4233, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 221, column: 22, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4151, file: !3943, line: 168, column: 9)
!4243 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4244, file: !3943, line: 48, type: !76)
!4244 = distinct !DISubprogram(name: "bkm_scale", scope: !3943, file: !3943, line: 48, type: !4245, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!3946, !4135, !76}
!4247 = !{!4248, !4243}
!4248 = !DILocalVariable(name: "x", arg: 1, scope: !4244, file: !3943, line: 48, type: !4135)
!4249 = !DILocation(line: 0, scope: !4244, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 69, column: 12, scope: !4233, inlinedAt: !4241)
!4251 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4250)
!4252 = distinct !DILexicalBlock(scope: !4244, file: !3943, line: 55, column: 7)
!4253 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4250)
!4254 = !DILocation(line: 69, column: 9, scope: !4233, inlinedAt: !4241)
!4255 = !DILocation(line: 229, column: 11, scope: !4151)
!4256 = !DILocation(line: 0, scope: !4233, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 217, column: 22, scope: !4242)
!4258 = !DILocation(line: 0, scope: !4244, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 69, column: 12, scope: !4233, inlinedAt: !4257)
!4260 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4259)
!4261 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4259)
!4262 = !DILocation(line: 69, column: 9, scope: !4233, inlinedAt: !4257)
!4263 = !DILocation(line: 0, scope: !4233, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 204, column: 22, scope: !4242)
!4265 = !DILocation(line: 0, scope: !4244, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 69, column: 12, scope: !4233, inlinedAt: !4264)
!4267 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4266)
!4268 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4266)
!4269 = !DILocation(line: 69, column: 9, scope: !4233, inlinedAt: !4264)
!4270 = !DILocation(line: 0, scope: !4233, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 185, column: 22, scope: !4242)
!4272 = !DILocation(line: 0, scope: !4244, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 69, column: 12, scope: !4233, inlinedAt: !4271)
!4274 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4273)
!4275 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4273)
!4276 = !DILocation(line: 69, column: 9, scope: !4233, inlinedAt: !4271)
!4277 = !DILocation(line: 0, scope: !4244, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 170, column: 22, scope: !4242)
!4279 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4278)
!4280 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4278)
!4281 = !DILocation(line: 171, column: 11, scope: !4242)
!4282 = !DILocation(line: 0, scope: !4244, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 177, column: 22, scope: !4242)
!4284 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4283)
!4285 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4283)
!4286 = !DILocation(line: 178, column: 11, scope: !4242)
!4287 = !DILocation(line: 0, scope: !4233, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 190, column: 22, scope: !4242)
!4289 = !DILocation(line: 0, scope: !4244, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 69, column: 12, scope: !4233, inlinedAt: !4288)
!4291 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4290)
!4292 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4290)
!4293 = !DILocation(line: 69, column: 9, scope: !4233, inlinedAt: !4288)
!4294 = !DILocation(line: 0, scope: !4233, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 195, column: 22, scope: !4242)
!4296 = !DILocation(line: 0, scope: !4244, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 69, column: 12, scope: !4233, inlinedAt: !4295)
!4298 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4297)
!4299 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4297)
!4300 = !DILocation(line: 0, scope: !4233, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 200, column: 22, scope: !4242)
!4302 = !DILocation(line: 0, scope: !4244, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 69, column: 12, scope: !4233, inlinedAt: !4301)
!4304 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4303)
!4305 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4303)
!4306 = !DILocation(line: 69, column: 9, scope: !4233, inlinedAt: !4301)
!4307 = !DILocation(line: 0, scope: !4233, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 209, column: 22, scope: !4242)
!4309 = !DILocation(line: 0, scope: !4244, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 69, column: 12, scope: !4233, inlinedAt: !4308)
!4311 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4310)
!4312 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4310)
!4313 = !DILocation(line: 69, column: 9, scope: !4233, inlinedAt: !4308)
!4314 = !DILocation(line: 0, scope: !4244, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 213, column: 22, scope: !4242)
!4316 = !DILocation(line: 55, column: 39, scope: !4252, inlinedAt: !4315)
!4317 = !DILocation(line: 55, column: 7, scope: !4244, inlinedAt: !4315)
!4318 = !DILocation(line: 214, column: 11, scope: !4242)
!4319 = !DILocation(line: 225, column: 16, scope: !4242)
!4320 = !DILocation(line: 226, column: 22, scope: !4242)
!4321 = !DILocation(line: 226, column: 11, scope: !4242)
!4322 = !DILocation(line: 0, scope: !4242)
!4323 = !DILocation(line: 230, column: 10, scope: !4151)
!4324 = !DILocation(line: 231, column: 11, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4151, file: !3943, line: 231, column: 11)
!4326 = !DILocation(line: 232, column: 13, scope: !4325)
!4327 = !DILocation(line: 231, column: 11, scope: !4151)
!4328 = !DILocation(line: 107, column: 13, scope: !4189)
!4329 = !DILocation(line: 82, column: 16, scope: !4132)
!4330 = !DILocation(line: 235, column: 8, scope: !4132)
!4331 = !DILocation(line: 236, column: 3, scope: !4132)
!4332 = !DILocation(line: 237, column: 1, scope: !4132)
!4333 = distinct !DISubprogram(name: "rpl_calloc", scope: !630, file: !630, line: 42, type: !3679, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !4334)
!4334 = !{!4335, !4336, !4337, !4338}
!4335 = !DILocalVariable(name: "n", arg: 1, scope: !4333, file: !630, line: 42, type: !57)
!4336 = !DILocalVariable(name: "s", arg: 2, scope: !4333, file: !630, line: 42, type: !57)
!4337 = !DILocalVariable(name: "result", scope: !4333, file: !630, line: 44, type: !55)
!4338 = !DILocalVariable(name: "bytes", scope: !4339, file: !630, line: 56, type: !57)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !630, line: 53, column: 5)
!4340 = distinct !DILexicalBlock(scope: !4333, file: !630, line: 47, column: 7)
!4341 = !DILocation(line: 0, scope: !4333)
!4342 = !DILocation(line: 47, column: 9, scope: !4340)
!4343 = !DILocation(line: 47, column: 19, scope: !4340)
!4344 = !DILocation(line: 47, column: 14, scope: !4340)
!4345 = !DILocation(line: 0, scope: !4339)
!4346 = !DILocation(line: 57, column: 21, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4339, file: !630, line: 57, column: 11)
!4348 = !DILocation(line: 57, column: 11, scope: !4339)
!4349 = !DILocation(line: 59, column: 11, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4347, file: !630, line: 58, column: 9)
!4351 = !DILocation(line: 59, column: 17, scope: !4350)
!4352 = !DILocation(line: 65, column: 12, scope: !4333)
!4353 = !DILocation(line: 72, column: 3, scope: !4333)
!4354 = !DILocation(line: 73, column: 1, scope: !4333)
!4355 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !633, file: !633, line: 86, type: !4356, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !4362)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!57, !4358, !74, !57, !4359}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2078, line: 6, baseType: !4361)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !402, line: 21, baseType: !639)
!4362 = !{!4363, !4364, !4365, !4366, !4367, !4368, !4369}
!4363 = !DILocalVariable(name: "pwc", arg: 1, scope: !4355, file: !633, line: 86, type: !4358)
!4364 = !DILocalVariable(name: "s", arg: 2, scope: !4355, file: !633, line: 86, type: !74)
!4365 = !DILocalVariable(name: "n", arg: 3, scope: !4355, file: !633, line: 86, type: !57)
!4366 = !DILocalVariable(name: "ps", arg: 4, scope: !4355, file: !633, line: 86, type: !4359)
!4367 = !DILocalVariable(name: "ret", scope: !4355, file: !633, line: 88, type: !57)
!4368 = !DILocalVariable(name: "wc", scope: !4355, file: !633, line: 89, type: !2082)
!4369 = !DILocalVariable(name: "uc", scope: !4370, file: !633, line: 156, type: !1958)
!4370 = distinct !DILexicalBlock(scope: !4371, file: !633, line: 155, column: 5)
!4371 = distinct !DILexicalBlock(scope: !4355, file: !633, line: 154, column: 7)
!4372 = !DILocation(line: 0, scope: !4355)
!4373 = !DILocation(line: 89, column: 3, scope: !4355)
!4374 = !DILocation(line: 105, column: 9, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4355, file: !633, line: 105, column: 7)
!4376 = !DILocation(line: 105, column: 7, scope: !4355)
!4377 = !DILocation(line: 145, column: 9, scope: !4355)
!4378 = !DILocation(line: 154, column: 19, scope: !4371)
!4379 = !DILocation(line: 154, column: 31, scope: !4371)
!4380 = !DILocation(line: 154, column: 26, scope: !4371)
!4381 = !DILocation(line: 154, column: 41, scope: !4371)
!4382 = !DILocation(line: 154, column: 7, scope: !4355)
!4383 = !DILocation(line: 156, column: 26, scope: !4370)
!4384 = !DILocation(line: 0, scope: !4370)
!4385 = !DILocation(line: 157, column: 14, scope: !4370)
!4386 = !DILocation(line: 157, column: 12, scope: !4370)
!4387 = !DILocation(line: 163, column: 1, scope: !4355)
!4388 = distinct !DISubprogram(name: "close_stream", scope: !652, file: !652, line: 56, type: !4389, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !4393)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!76, !4391}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3554, line: 7, baseType: !659)
!4393 = !{!4394, !4395, !4397, !4398}
!4394 = !DILocalVariable(name: "stream", arg: 1, scope: !4388, file: !652, line: 56, type: !4391)
!4395 = !DILocalVariable(name: "some_pending", scope: !4388, file: !652, line: 58, type: !4396)
!4396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!4397 = !DILocalVariable(name: "prev_fail", scope: !4388, file: !652, line: 59, type: !4396)
!4398 = !DILocalVariable(name: "fclose_fail", scope: !4388, file: !652, line: 60, type: !4396)
!4399 = !DILocation(line: 0, scope: !4388)
!4400 = !DILocation(line: 58, column: 30, scope: !4388)
!4401 = !DILocalVariable(name: "__stream", arg: 1, scope: !4402, file: !4403, line: 135, type: !4391)
!4402 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4403, file: !4403, line: 135, type: !4389, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !4404)
!4403 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4404 = !{!4401}
!4405 = !DILocation(line: 0, scope: !4402, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 59, column: 27, scope: !4388)
!4407 = !DILocation(line: 137, column: 10, scope: !4402, inlinedAt: !4406)
!4408 = !{!4409, !1401, i64 0}
!4409 = !{!"_IO_FILE", !1401, i64 0, !1302, i64 8, !1302, i64 16, !1302, i64 24, !1302, i64 32, !1302, i64 40, !1302, i64 48, !1302, i64 56, !1302, i64 64, !1302, i64 72, !1302, i64 80, !1302, i64 88, !1302, i64 96, !1302, i64 104, !1401, i64 112, !1401, i64 116, !1409, i64 120, !1739, i64 128, !1303, i64 130, !1303, i64 131, !1302, i64 136, !1409, i64 144, !1302, i64 152, !1302, i64 160, !1302, i64 168, !1302, i64 176, !1409, i64 184, !1401, i64 192, !1303, i64 196}
!4410 = !DILocation(line: 59, column: 43, scope: !4388)
!4411 = !DILocation(line: 60, column: 29, scope: !4388)
!4412 = !DILocation(line: 60, column: 45, scope: !4388)
!4413 = !DILocation(line: 70, column: 17, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4388, file: !652, line: 70, column: 7)
!4415 = !DILocation(line: 58, column: 50, scope: !4388)
!4416 = !DILocation(line: 70, column: 33, scope: !4414)
!4417 = !DILocation(line: 70, column: 53, scope: !4414)
!4418 = !DILocation(line: 70, column: 59, scope: !4414)
!4419 = !DILocation(line: 70, column: 7, scope: !4388)
!4420 = !DILocation(line: 72, column: 11, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4414, file: !652, line: 71, column: 5)
!4422 = !DILocation(line: 73, column: 9, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4421, file: !652, line: 72, column: 11)
!4424 = !DILocation(line: 73, column: 15, scope: !4423)
!4425 = !DILocation(line: 78, column: 1, scope: !4388)
!4426 = distinct !DISubprogram(name: "hard_locale", scope: !691, file: !691, line: 27, type: !649, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !4427)
!4427 = !{!4428, !4429}
!4428 = !DILocalVariable(name: "category", arg: 1, scope: !4426, file: !691, line: 27, type: !76)
!4429 = !DILocalVariable(name: "locale", scope: !4426, file: !691, line: 29, type: !4430)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 2056, elements: !4431)
!4431 = !{!4432}
!4432 = !DISubrange(count: 257)
!4433 = !DILocation(line: 0, scope: !4426)
!4434 = !DILocation(line: 29, column: 3, scope: !4426)
!4435 = !DILocation(line: 29, column: 8, scope: !4426)
!4436 = !DILocation(line: 31, column: 7, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4426, file: !691, line: 31, column: 7)
!4438 = !DILocation(line: 31, column: 7, scope: !4426)
!4439 = !DILocation(line: 34, column: 12, scope: !4426)
!4440 = !DILocation(line: 34, column: 38, scope: !4426)
!4441 = !DILocation(line: 34, column: 41, scope: !4426)
!4442 = !DILocation(line: 34, column: 66, scope: !4426)
!4443 = !DILocation(line: 35, column: 1, scope: !4426)
!4444 = distinct !DISubprogram(name: "umaxtostr", scope: !4445, file: !4445, line: 36, type: !4446, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !4448)
!4445 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!72, !700, !72}
!4448 = !{!4449, !4450, !4451}
!4449 = !DILocalVariable(name: "i", arg: 1, scope: !4444, file: !4445, line: 36, type: !700)
!4450 = !DILocalVariable(name: "buf", arg: 2, scope: !4444, file: !4445, line: 36, type: !72)
!4451 = !DILocalVariable(name: "p", scope: !4444, file: !4445, line: 38, type: !72)
!4452 = !DILocation(line: 0, scope: !4444)
!4453 = !DILocation(line: 38, column: 17, scope: !4444)
!4454 = !DILocation(line: 39, column: 6, scope: !4444)
!4455 = !DILocation(line: 41, column: 7, scope: !4444)
!4456 = !DILocation(line: 52, column: 24, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !4445, line: 50, column: 5)
!4458 = distinct !DILexicalBlock(scope: !4444, file: !4445, line: 41, column: 7)
!4459 = !DILocation(line: 52, column: 16, scope: !4457)
!4460 = !DILocation(line: 52, column: 10, scope: !4457)
!4461 = !DILocation(line: 52, column: 14, scope: !4457)
!4462 = !DILocation(line: 53, column: 17, scope: !4457)
!4463 = !DILocation(line: 53, column: 24, scope: !4457)
!4464 = !DILocation(line: 52, column: 9, scope: !4457)
!4465 = distinct !{!4465, !4466, !4467}
!4466 = !DILocation(line: 51, column: 7, scope: !4457)
!4467 = !DILocation(line: 53, column: 28, scope: !4457)
!4468 = !DILocation(line: 56, column: 3, scope: !4444)
!4469 = distinct !DISubprogram(name: "locale_charset", scope: !704, file: !704, line: 831, type: !423, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !4470)
!4470 = !{!4471}
!4471 = !DILocalVariable(name: "codeset", scope: !4469, file: !704, line: 833, type: !74)
!4472 = !DILocation(line: 847, column: 13, scope: !4469)
!4473 = !DILocation(line: 0, scope: !4469)
!4474 = !DILocation(line: 911, column: 15, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4469, file: !704, line: 911, column: 7)
!4476 = !DILocation(line: 911, column: 7, scope: !4469)
!4477 = !DILocation(line: 1070, column: 13, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !704, line: 1070, column: 13)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !704, line: 1060, column: 7)
!4480 = distinct !DILexicalBlock(scope: !4469, file: !704, line: 1019, column: 3)
!4481 = !DILocation(line: 1070, column: 24, scope: !4478)
!4482 = !DILocation(line: 1070, column: 13, scope: !4479)
!4483 = !DILocation(line: 1158, column: 3, scope: !4469)
!4484 = !DILocation(line: 0, scope: !1100)
!4485 = !DILocation(line: 68, column: 3, scope: !1100)
!4486 = !DILocation(line: 81, column: 7, scope: !1114)
!4487 = !DILocation(line: 81, column: 7, scope: !1100)
!4488 = !DILocation(line: 84, column: 20, scope: !1113)
!4489 = !DILocalVariable(name: "g", arg: 1, scope: !4490, file: !1097, line: 43, type: !515)
!4490 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !1097, file: !1097, line: 43, type: !4491, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1096, retainedNodes: !4493)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!515, !515, !57}
!4493 = !{!4489, !4494}
!4494 = !DILocalVariable(name: "num", arg: 2, scope: !4490, file: !1097, line: 43, type: !57)
!4495 = !DILocation(line: 0, scope: !4490, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 86, column: 11, scope: !1113)
!4497 = !DILocation(line: 51, column: 10, scope: !4490, inlinedAt: !4496)
!4498 = !DILocation(line: 87, column: 13, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !1113, file: !1097, line: 87, column: 11)
!4500 = !DILocation(line: 87, column: 11, scope: !1113)
!4501 = !DILocation(line: 93, column: 31, scope: !1112)
!4502 = !DILocation(line: 86, column: 9, scope: !1113)
!4503 = !DILocation(line: 0, scope: !1112)
!4504 = !DILocation(line: 96, column: 16, scope: !1112)
!4505 = !DILocation(line: 100, column: 18, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !1112, file: !1097, line: 100, column: 15)
!4507 = !DILocation(line: 100, column: 39, scope: !4506)
!4508 = !DILocation(line: 100, column: 22, scope: !4506)
!4509 = !DILocation(line: 101, column: 26, scope: !4506)
!4510 = !DILocation(line: 101, column: 13, scope: !4506)
!4511 = !DILocation(line: 103, column: 41, scope: !1118)
!4512 = !DILocation(line: 0, scope: !4490, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 103, column: 20, scope: !1118)
!4514 = !DILocation(line: 45, column: 7, scope: !4515, inlinedAt: !4513)
!4515 = distinct !DILexicalBlock(scope: !4490, file: !1097, line: 45, column: 7)
!4516 = !DILocation(line: 45, column: 7, scope: !4490, inlinedAt: !4513)
!4517 = !DILocation(line: 47, column: 7, scope: !4518, inlinedAt: !4513)
!4518 = distinct !DILexicalBlock(scope: !4515, file: !1097, line: 46, column: 5)
!4519 = !DILocation(line: 47, column: 13, scope: !4518, inlinedAt: !4513)
!4520 = !DILocation(line: 103, column: 15, scope: !1112)
!4521 = !DILocation(line: 51, column: 26, scope: !4490, inlinedAt: !4513)
!4522 = !DILocation(line: 51, column: 10, scope: !4490, inlinedAt: !4513)
!4523 = !DILocation(line: 103, column: 56, scope: !1118)
!4524 = !DILocation(line: 105, column: 33, scope: !1117)
!4525 = !DILocation(line: 0, scope: !1117)
!4526 = !DILocation(line: 106, column: 15, scope: !1117)
!4527 = !DILocation(line: 107, column: 21, scope: !1117)
!4528 = !DILocation(line: 112, column: 17, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !1112, file: !1097, line: 112, column: 15)
!4530 = !DILocation(line: 112, column: 15, scope: !1112)
!4531 = !DILocation(line: 114, column: 23, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4529, file: !1097, line: 113, column: 13)
!4533 = !DILocation(line: 117, column: 22, scope: !4532)
!4534 = !DILocation(line: 117, column: 15, scope: !4532)
!4535 = !DILocation(line: 126, column: 21, scope: !1100)
!4536 = !DILocation(line: 124, column: 16, scope: !1100)
!4537 = !DILocation(line: 131, column: 20, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !1100, file: !1097, line: 131, column: 7)
!4539 = !DILocation(line: 131, column: 7, scope: !1100)
!4540 = !DILocation(line: 133, column: 11, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !1097, line: 133, column: 11)
!4542 = distinct !DILexicalBlock(scope: !4538, file: !1097, line: 132, column: 5)
!4543 = !DILocation(line: 133, column: 17, scope: !4541)
!4544 = !DILocation(line: 133, column: 27, scope: !4541)
!4545 = !DILocation(line: 0, scope: !4490, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 133, column: 35, scope: !4541)
!4547 = !DILocation(line: 51, column: 10, scope: !4490, inlinedAt: !4546)
!4548 = !DILocation(line: 133, column: 33, scope: !4541)
!4549 = !DILocation(line: 133, column: 11, scope: !4542)
!4550 = !DILocation(line: 135, column: 19, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4541, file: !1097, line: 134, column: 9)
!4552 = !DILocation(line: 136, column: 14, scope: !4551)
!4553 = !DILocation(line: 137, column: 22, scope: !4551)
!4554 = !DILocation(line: 137, column: 11, scope: !4551)
!4555 = !DILocation(line: 142, column: 20, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !1100, file: !1097, line: 142, column: 7)
!4557 = !DILocation(line: 142, column: 46, scope: !4556)
!4558 = !DILocation(line: 142, column: 25, scope: !4556)
!4559 = !DILocation(line: 143, column: 17, scope: !4556)
!4560 = !DILocation(line: 143, column: 5, scope: !4556)
!4561 = !DILocation(line: 144, column: 31, scope: !1100)
!4562 = !DILocation(line: 0, scope: !4490, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 144, column: 7, scope: !1100)
!4564 = !DILocation(line: 51, column: 26, scope: !4490, inlinedAt: !4563)
!4565 = !DILocation(line: 51, column: 10, scope: !4490, inlinedAt: !4563)
!4566 = !DILocation(line: 145, column: 9, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !1100, file: !1097, line: 145, column: 7)
!4568 = !DILocation(line: 145, column: 7, scope: !1100)
!4569 = !DILocation(line: 150, column: 42, scope: !1100)
!4570 = !DILocation(line: 150, column: 35, scope: !1100)
!4571 = !DILocation(line: 151, column: 35, scope: !1100)
!4572 = !DILocation(line: 150, column: 11, scope: !1100)
!4573 = !DILocation(line: 153, column: 10, scope: !1121)
!4574 = !DILocation(line: 153, column: 7, scope: !1100)
!4575 = !DILocation(line: 156, column: 25, scope: !1120)
!4576 = !DILocation(line: 0, scope: !1120)
!4577 = !DILocation(line: 157, column: 7, scope: !1120)
!4578 = !DILocation(line: 158, column: 13, scope: !1120)
!4579 = !DILocation(line: 162, column: 17, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !1100, file: !1097, line: 162, column: 7)
!4581 = !DILocation(line: 164, column: 10, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4580, file: !1097, line: 163, column: 5)
!4583 = !DILocation(line: 165, column: 9, scope: !4582)
!4584 = !DILocation(line: 166, column: 5, scope: !4582)
!4585 = !DILocation(line: 167, column: 11, scope: !1100)
!4586 = !DILocation(line: 185, column: 9, scope: !1124)
!4587 = !DILocation(line: 185, column: 7, scope: !1100)
!4588 = !DILocation(line: 187, column: 21, scope: !1123)
!4589 = !DILocation(line: 0, scope: !1123)
!4590 = !DILocation(line: 189, column: 29, scope: !1123)
!4591 = !DILocation(line: 0, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !1123, file: !1097, line: 191, column: 7)
!4593 = !DILocation(line: 191, column: 31, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4592, file: !1097, line: 191, column: 7)
!4595 = !DILocation(line: 191, column: 7, scope: !4592)
!4596 = !DILocation(line: 193, column: 15, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !1097, line: 193, column: 15)
!4598 = distinct !DILexicalBlock(scope: !4594, file: !1097, line: 192, column: 9)
!4599 = !DILocation(line: 193, column: 39, scope: !4597)
!4600 = !DILocation(line: 193, column: 30, scope: !4597)
!4601 = !DILocation(line: 196, column: 14, scope: !4597)
!4602 = !DILocation(line: 196, column: 18, scope: !4597)
!4603 = !DILocation(line: 194, column: 15, scope: !4597)
!4604 = !DILocation(line: 194, column: 13, scope: !4597)
!4605 = !DILocation(line: 193, column: 21, scope: !4597)
!4606 = !DILocation(line: 201, column: 1, scope: !1100)
!4607 = distinct !{!4607, !4595, !4608}
!4608 = !DILocation(line: 197, column: 9, scope: !4592)
!4609 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1138, file: !1138, line: 269, type: !4610, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1137, retainedNodes: !4612)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!76, !76, !72, !57}
!4612 = !{!4613, !4614, !4615}
!4613 = !DILocalVariable(name: "category", arg: 1, scope: !4609, file: !1138, line: 269, type: !76)
!4614 = !DILocalVariable(name: "buf", arg: 2, scope: !4609, file: !1138, line: 269, type: !72)
!4615 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4609, file: !1138, line: 269, type: !57)
!4616 = !DILocation(line: 0, scope: !4609)
!4617 = !DILocalVariable(name: "category", arg: 1, scope: !4618, file: !1138, line: 91, type: !76)
!4618 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1138, file: !1138, line: 91, type: !4610, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1137, retainedNodes: !4619)
!4619 = !{!4617, !4620, !4621, !4622, !4623}
!4620 = !DILocalVariable(name: "buf", arg: 2, scope: !4618, file: !1138, line: 91, type: !72)
!4621 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4618, file: !1138, line: 91, type: !57)
!4622 = !DILocalVariable(name: "result", scope: !4618, file: !1138, line: 140, type: !74)
!4623 = !DILocalVariable(name: "length", scope: !4624, file: !1138, line: 154, type: !57)
!4624 = distinct !DILexicalBlock(scope: !4625, file: !1138, line: 153, column: 5)
!4625 = distinct !DILexicalBlock(scope: !4618, file: !1138, line: 142, column: 7)
!4626 = !DILocation(line: 0, scope: !4618, inlinedAt: !4627)
!4627 = distinct !DILocation(line: 274, column: 10, scope: !4609)
!4628 = !DILocalVariable(name: "category", arg: 1, scope: !4629, file: !1138, line: 60, type: !76)
!4629 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1138, file: !1138, line: 60, type: !4630, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1137, retainedNodes: !4632)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!74, !76}
!4632 = !{!4628, !4633}
!4633 = !DILocalVariable(name: "result", scope: !4629, file: !1138, line: 62, type: !74)
!4634 = !DILocation(line: 0, scope: !4629, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 140, column: 24, scope: !4618, inlinedAt: !4627)
!4636 = !DILocation(line: 62, column: 24, scope: !4629, inlinedAt: !4635)
!4637 = !DILocation(line: 142, column: 14, scope: !4625, inlinedAt: !4627)
!4638 = !DILocation(line: 142, column: 7, scope: !4618, inlinedAt: !4627)
!4639 = !DILocation(line: 145, column: 19, scope: !4640, inlinedAt: !4627)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !1138, line: 145, column: 11)
!4641 = distinct !DILexicalBlock(scope: !4625, file: !1138, line: 143, column: 5)
!4642 = !DILocation(line: 145, column: 11, scope: !4641, inlinedAt: !4627)
!4643 = !DILocation(line: 149, column: 16, scope: !4640, inlinedAt: !4627)
!4644 = !DILocation(line: 149, column: 9, scope: !4640, inlinedAt: !4627)
!4645 = !DILocation(line: 154, column: 23, scope: !4624, inlinedAt: !4627)
!4646 = !DILocation(line: 0, scope: !4624, inlinedAt: !4627)
!4647 = !DILocation(line: 155, column: 18, scope: !4648, inlinedAt: !4627)
!4648 = distinct !DILexicalBlock(scope: !4624, file: !1138, line: 155, column: 11)
!4649 = !DILocation(line: 155, column: 11, scope: !4624, inlinedAt: !4627)
!4650 = !DILocation(line: 157, column: 39, scope: !4651, inlinedAt: !4627)
!4651 = distinct !DILexicalBlock(scope: !4648, file: !1138, line: 156, column: 9)
!4652 = !DILocalVariable(name: "__dest", arg: 1, scope: !4653, file: !2334, line: 31, type: !3893)
!4653 = distinct !DISubprogram(name: "memcpy", scope: !2334, file: !2334, line: 31, type: !3891, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1137, retainedNodes: !4654)
!4654 = !{!4652, !4655, !4656}
!4655 = !DILocalVariable(name: "__src", arg: 2, scope: !4653, file: !2334, line: 31, type: !3894)
!4656 = !DILocalVariable(name: "__len", arg: 3, scope: !4653, file: !2334, line: 31, type: !57)
!4657 = !DILocation(line: 0, scope: !4653, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 157, column: 11, scope: !4651, inlinedAt: !4627)
!4659 = !DILocation(line: 34, column: 10, scope: !4653, inlinedAt: !4658)
!4660 = !DILocation(line: 158, column: 11, scope: !4651, inlinedAt: !4627)
!4661 = !DILocation(line: 162, column: 23, scope: !4662, inlinedAt: !4627)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !1138, line: 162, column: 15)
!4663 = distinct !DILexicalBlock(scope: !4648, file: !1138, line: 161, column: 9)
!4664 = !DILocation(line: 162, column: 15, scope: !4663, inlinedAt: !4627)
!4665 = !DILocation(line: 167, column: 44, scope: !4666, inlinedAt: !4627)
!4666 = distinct !DILexicalBlock(scope: !4662, file: !1138, line: 163, column: 13)
!4667 = !DILocation(line: 0, scope: !4653, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 167, column: 15, scope: !4666, inlinedAt: !4627)
!4669 = !DILocation(line: 34, column: 10, scope: !4653, inlinedAt: !4668)
!4670 = !DILocation(line: 168, column: 15, scope: !4666, inlinedAt: !4627)
!4671 = !DILocation(line: 168, column: 32, scope: !4666, inlinedAt: !4627)
!4672 = !DILocation(line: 169, column: 13, scope: !4666, inlinedAt: !4627)
!4673 = !DILocation(line: 0, scope: !4625, inlinedAt: !4627)
!4674 = !DILocation(line: 274, column: 3, scope: !4609)
!4675 = distinct !DISubprogram(name: "setlocale_null", scope: !1138, file: !1138, line: 301, type: !4630, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1137, retainedNodes: !4676)
!4676 = !{!4677}
!4677 = !DILocalVariable(name: "category", arg: 1, scope: !4675, file: !1138, line: 301, type: !76)
!4678 = !DILocation(line: 0, scope: !4675)
!4679 = !DILocation(line: 0, scope: !4629, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 304, column: 10, scope: !4675)
!4681 = !DILocation(line: 62, column: 24, scope: !4629, inlinedAt: !4680)
!4682 = !DILocation(line: 304, column: 3, scope: !4675)
!4683 = distinct !DISubprogram(name: "rpl_fclose", scope: !1141, file: !1141, line: 58, type: !4684, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1140, retainedNodes: !4688)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!76, !4686}
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3554, line: 7, baseType: !1147)
!4688 = !{!4689, !4690, !4691, !4692}
!4689 = !DILocalVariable(name: "fp", arg: 1, scope: !4683, file: !1141, line: 58, type: !4686)
!4690 = !DILocalVariable(name: "saved_errno", scope: !4683, file: !1141, line: 60, type: !76)
!4691 = !DILocalVariable(name: "fd", scope: !4683, file: !1141, line: 61, type: !76)
!4692 = !DILocalVariable(name: "result", scope: !4683, file: !1141, line: 62, type: !76)
!4693 = !DILocation(line: 0, scope: !4683)
!4694 = !DILocation(line: 65, column: 8, scope: !4683)
!4695 = !DILocation(line: 66, column: 10, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4683, file: !1141, line: 66, column: 7)
!4697 = !DILocation(line: 66, column: 7, scope: !4683)
!4698 = !DILocation(line: 67, column: 12, scope: !4696)
!4699 = !DILocation(line: 67, column: 5, scope: !4696)
!4700 = !DILocation(line: 72, column: 9, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4683, file: !1141, line: 72, column: 7)
!4702 = !DILocation(line: 72, column: 23, scope: !4701)
!4703 = !DILocation(line: 72, column: 33, scope: !4701)
!4704 = !DILocation(line: 72, column: 26, scope: !4701)
!4705 = !DILocation(line: 72, column: 59, scope: !4701)
!4706 = !DILocation(line: 73, column: 7, scope: !4701)
!4707 = !DILocation(line: 73, column: 10, scope: !4701)
!4708 = !DILocation(line: 72, column: 7, scope: !4683)
!4709 = !DILocation(line: 100, column: 12, scope: !4683)
!4710 = !DILocation(line: 105, column: 7, scope: !4683)
!4711 = !DILocation(line: 74, column: 19, scope: !4701)
!4712 = !DILocation(line: 105, column: 19, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4683, file: !1141, line: 105, column: 7)
!4714 = !DILocation(line: 107, column: 13, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4713, file: !1141, line: 106, column: 5)
!4716 = !DILocation(line: 109, column: 5, scope: !4715)
!4717 = !DILocation(line: 112, column: 1, scope: !4683)
!4718 = distinct !DISubprogram(name: "rpl_fflush", scope: !1184, file: !1184, line: 129, type: !4719, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1183, retainedNodes: !4723)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!76, !4721}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3554, line: 7, baseType: !1190)
!4723 = !{!4724}
!4724 = !DILocalVariable(name: "stream", arg: 1, scope: !4718, file: !1184, line: 129, type: !4721)
!4725 = !DILocation(line: 0, scope: !4718)
!4726 = !DILocation(line: 150, column: 14, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4718, file: !1184, line: 150, column: 7)
!4728 = !DILocation(line: 150, column: 22, scope: !4727)
!4729 = !DILocation(line: 150, column: 27, scope: !4727)
!4730 = !DILocation(line: 150, column: 7, scope: !4718)
!4731 = !DILocation(line: 151, column: 12, scope: !4727)
!4732 = !DILocation(line: 151, column: 5, scope: !4727)
!4733 = !DILocalVariable(name: "fp", arg: 1, scope: !4734, file: !1184, line: 41, type: !4721)
!4734 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1184, file: !1184, line: 41, type: !4735, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1183, retainedNodes: !4737)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{null, !4721}
!4737 = !{!4733}
!4738 = !DILocation(line: 0, scope: !4734, inlinedAt: !4739)
!4739 = distinct !DILocation(line: 156, column: 3, scope: !4718)
!4740 = !DILocation(line: 43, column: 11, scope: !4741, inlinedAt: !4739)
!4741 = distinct !DILexicalBlock(scope: !4734, file: !1184, line: 43, column: 7)
!4742 = !DILocation(line: 43, column: 18, scope: !4741, inlinedAt: !4739)
!4743 = !DILocation(line: 43, column: 7, scope: !4734, inlinedAt: !4739)
!4744 = !DILocation(line: 45, column: 5, scope: !4741, inlinedAt: !4739)
!4745 = !DILocation(line: 158, column: 10, scope: !4718)
!4746 = !DILocation(line: 158, column: 3, scope: !4718)
!4747 = !DILocation(line: 235, column: 1, scope: !4718)
!4748 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1225, file: !1225, line: 28, type: !4749, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1224, retainedNodes: !4754)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!76, !4751, !4753, !76}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3554, line: 7, baseType: !1231)
!4753 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !79, line: 63, baseType: !105)
!4754 = !{!4755, !4756, !4757, !4758}
!4755 = !DILocalVariable(name: "fp", arg: 1, scope: !4748, file: !1225, line: 28, type: !4751)
!4756 = !DILocalVariable(name: "offset", arg: 2, scope: !4748, file: !1225, line: 28, type: !4753)
!4757 = !DILocalVariable(name: "whence", arg: 3, scope: !4748, file: !1225, line: 28, type: !76)
!4758 = !DILocalVariable(name: "pos", scope: !4759, file: !1225, line: 117, type: !4753)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !1225, line: 113, column: 5)
!4760 = distinct !DILexicalBlock(scope: !4748, file: !1225, line: 52, column: 7)
!4761 = !DILocation(line: 0, scope: !4748)
!4762 = !DILocation(line: 52, column: 11, scope: !4760)
!4763 = !{!4409, !1302, i64 16}
!4764 = !DILocation(line: 52, column: 31, scope: !4760)
!4765 = !{!4409, !1302, i64 8}
!4766 = !DILocation(line: 52, column: 24, scope: !4760)
!4767 = !DILocation(line: 53, column: 7, scope: !4760)
!4768 = !DILocation(line: 53, column: 14, scope: !4760)
!4769 = !{!4409, !1302, i64 40}
!4770 = !DILocation(line: 53, column: 35, scope: !4760)
!4771 = !{!4409, !1302, i64 32}
!4772 = !DILocation(line: 53, column: 28, scope: !4760)
!4773 = !DILocation(line: 54, column: 7, scope: !4760)
!4774 = !DILocation(line: 54, column: 14, scope: !4760)
!4775 = !{!4409, !1302, i64 72}
!4776 = !DILocation(line: 54, column: 28, scope: !4760)
!4777 = !DILocation(line: 52, column: 7, scope: !4748)
!4778 = !DILocation(line: 117, column: 26, scope: !4759)
!4779 = !DILocation(line: 117, column: 19, scope: !4759)
!4780 = !DILocation(line: 0, scope: !4759)
!4781 = !DILocation(line: 118, column: 15, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4759, file: !1225, line: 118, column: 11)
!4783 = !DILocation(line: 118, column: 11, scope: !4759)
!4784 = !DILocation(line: 129, column: 11, scope: !4759)
!4785 = !DILocation(line: 129, column: 18, scope: !4759)
!4786 = !DILocation(line: 130, column: 11, scope: !4759)
!4787 = !DILocation(line: 130, column: 19, scope: !4759)
!4788 = !{!4409, !1409, i64 144}
!4789 = !DILocation(line: 161, column: 7, scope: !4759)
!4790 = !DILocation(line: 163, column: 10, scope: !4748)
!4791 = !DILocation(line: 163, column: 3, scope: !4748)
!4792 = !DILocation(line: 164, column: 1, scope: !4748)
