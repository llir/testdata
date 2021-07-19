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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), align 8, !dbg !106
@.str.54 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !112
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !117
@.str.57 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.58 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.59 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !120
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !126
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !132
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !144
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !150
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !162
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !169
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !176
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !164
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !178
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !184
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
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !744 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !748, metadata !DIExpression()), !dbg !749
  %3 = icmp eq i32 %0, 0, !dbg !750
  br i1 %3, label %9, label %4, !dbg !752

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !753, !tbaa !755
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !753
  %7 = load i8*, i8** @program_name, align 8, !dbg !753, !tbaa !755
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !753
  br label %70, !dbg !753

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !759
  %11 = load i8*, i8** @program_name, align 8, !dbg !759, !tbaa !755
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #27, !dbg !759
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !761
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !755
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !761
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !762
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !755
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !762
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !763
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !755
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !763
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !764
  %23 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #27, !dbg !764
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i8* %23) #27, !dbg !764
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #27, !dbg !765
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !765, !tbaa !755
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !765
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #27, !dbg !766
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !766, !tbaa !755
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !766
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 5) #27, !dbg !767
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !767, !tbaa !755
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !767
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !768, metadata !DIExpression()) #27, !dbg !786
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !788
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #27, !dbg !788
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !773, metadata !DIExpression()) #27, !dbg !789
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !789
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !782, metadata !DIExpression()) #27, !dbg !786
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !783, metadata !DIExpression()) #27, !dbg !786
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !790
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !783, metadata !DIExpression()) #27, !dbg !786
  br label %36, !dbg !791

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !783, metadata !DIExpression()) #27, !dbg !786
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %37) #28, !dbg !792
  %40 = icmp eq i32 %39, 0, !dbg !792
  br i1 %40, label %46, label %41, !dbg !791

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !793
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !783, metadata !DIExpression()) #27, !dbg !786
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !794
  %44 = load i8*, i8** %43, align 8, !dbg !794, !tbaa !795
  %45 = icmp eq i8* %44, null, !dbg !797
  br i1 %45, label %46, label %36, !dbg !798, !llvm.loop !799

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %38, %36 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !801
  %49 = load i8*, i8** %48, align 8, !dbg !801, !tbaa !803
  %50 = icmp eq i8* %49, null, !dbg !804
  %51 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %49, !dbg !805
  call void @llvm.dbg.value(metadata i8* %51, metadata !782, metadata !DIExpression()) #27, !dbg !786
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #27, !dbg !806
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0)) #27, !dbg !806
  %54 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !807
  call void @llvm.dbg.value(metadata i8* %54, metadata !785, metadata !DIExpression()) #27, !dbg !786
  %55 = icmp eq i8* %54, null, !dbg !808
  br i1 %55, label %63, label %56, !dbg !810

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #28, !dbg !811
  %58 = icmp eq i32 %57, 0, !dbg !811
  br i1 %58, label %63, label %59, !dbg !812

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.42, i64 0, i64 0), i32 5) #27, !dbg !813
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !813, !tbaa !755
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #27, !dbg !813
  br label %63, !dbg !815

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !816
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #27, !dbg !816
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #27, !dbg !817
  %67 = icmp eq i8* %51, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), !dbg !817
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !817
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #27, !dbg !817
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #27, !dbg !818
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #29, !dbg !819
  unreachable, !dbg !819
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !820 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !824 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !878 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !882 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !886, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8** %1, metadata !887, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8* null, metadata !889, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8* null, metadata !890, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8* null, metadata !891, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8 0, metadata !892, metadata !DIExpression()), !dbg !944
  %8 = bitcast i32* %3 to i8*, !dbg !945
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #27, !dbg !945
  call void @llvm.dbg.value(metadata i32 -1, metadata !893, metadata !DIExpression()), !dbg !944
  store i32 -1, i32* %3, align 4, !dbg !946, !tbaa !947
  %9 = bitcast i32* %4 to i8*, !dbg !949
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #27, !dbg !949
  call void @llvm.dbg.value(metadata i32 -1, metadata !894, metadata !DIExpression()), !dbg !944
  store i32 -1, i32* %4, align 4, !dbg !950, !tbaa !947
  %10 = bitcast i32** %5 to i8*, !dbg !951
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #27, !dbg !951
  call void @llvm.dbg.value(metadata i32* null, metadata !895, metadata !DIExpression()), !dbg !944
  store i32* null, i32** %5, align 8, !dbg !952, !tbaa !755
  %11 = bitcast i64* %6 to i8*, !dbg !953
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #27, !dbg !953
  call void @llvm.dbg.value(metadata i64 0, metadata !896, metadata !DIExpression()), !dbg !944
  store i64 0, i64* %6, align 8, !dbg !954, !tbaa !955
  %12 = load i8*, i8** %1, align 8, !dbg !957, !tbaa !755
  tail call void @set_program_name(i8* %12) #27, !dbg !958
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #27, !dbg !959
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #27, !dbg !960
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #27, !dbg !961
  call void @llvm.dbg.value(metadata i32 125, metadata !962, metadata !DIExpression()), !dbg !965
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !967, !tbaa !947
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !969
  br label %17, !dbg !970

17:                                               ; preds = %24, %2
  %18 = phi i1 [ true, %2 ], [ false, %24 ]
  %19 = phi i8* [ null, %2 ], [ %22, %24 ]
  %20 = phi i8* [ null, %2 ], [ %25, %24 ]
  br label %21, !dbg !970

21:                                               ; preds = %17, %38
  %22 = phi i8* [ %19, %17 ], [ %39, %38 ]
  %23 = phi i8* [ %20, %17 ], [ %25, %38 ]
  br label %24, !dbg !970

24:                                               ; preds = %31, %21
  %25 = phi i8* [ %23, %21 ], [ %28, %31 ], !dbg !971
  call void @llvm.dbg.value(metadata i8* %25, metadata !889, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8* %22, metadata !891, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8 undef, metadata !892, metadata !DIExpression()), !dbg !944
  %26 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_opts, i64 0, i64 0), i32* null) #27, !dbg !972
  call void @llvm.dbg.value(metadata i32 %26, metadata !888, metadata !DIExpression()), !dbg !944
  switch i32 %26, label %44 [
    i32 -1, label %45
    i32 257, label %27
    i32 256, label %38
    i32 258, label %17
    i32 -130, label %40
    i32 -131, label %41
  ], !dbg !970, !llvm.loop !973

27:                                               ; preds = %24
  %28 = load i8*, i8** @optarg, align 8, !dbg !975, !tbaa !755
  call void @llvm.dbg.value(metadata i8* %28, metadata !889, metadata !DIExpression()), !dbg !944
  %29 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %28) #28, !dbg !976
  call void @llvm.dbg.value(metadata i64 %29, metadata !897, metadata !DIExpression()), !dbg !977
  %30 = icmp eq i64 %29, 0, !dbg !978
  br i1 %30, label %31, label %32, !dbg !980

31:                                               ; preds = %27, %32, %37
  br label %24, !dbg !944, !llvm.loop !973

32:                                               ; preds = %27
  %33 = add i64 %29, -1, !dbg !981
  %34 = getelementptr inbounds i8, i8* %28, i64 %33, !dbg !982
  %35 = load i8, i8* %34, align 1, !dbg !982, !tbaa !983
  %36 = icmp eq i8 %35, 58, !dbg !984
  br i1 %36, label %37, label %31, !dbg !985

37:                                               ; preds = %32
  store i8 0, i8* %34, align 1, !dbg !986, !tbaa !983
  br label %31, !dbg !987

38:                                               ; preds = %24
  %39 = load i8*, i8** @optarg, align 8, !dbg !988, !tbaa !755
  call void @llvm.dbg.value(metadata i8* %39, metadata !891, metadata !DIExpression()), !dbg !944
  br label %21, !dbg !989, !llvm.loop !973

40:                                               ; preds = %24
  tail call void @usage(i32 0) #30, !dbg !990
  unreachable, !dbg !990

41:                                               ; preds = %24
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !991, !tbaa !755
  %43 = load i8*, i8** @Version, align 8, !dbg !991, !tbaa !755
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* null) #27, !dbg !991
  tail call void @exit(i32 0) #29, !dbg !991
  unreachable, !dbg !991

44:                                               ; preds = %24
  tail call void @usage(i32 125) #30, !dbg !992
  unreachable, !dbg !992

45:                                               ; preds = %24
  %46 = load i32, i32* @optind, align 4, !dbg !993, !tbaa !947
  %47 = icmp slt i32 %46, %0, !dbg !995
  br i1 %47, label %50, label %48, !dbg !996

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 5) #27, !dbg !997
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49) #27, !dbg !999
  tail call void @usage(i32 125) #30, !dbg !1000
  unreachable, !dbg !1000

50:                                               ; preds = %45
  %51 = sext i32 %46 to i64, !dbg !1001
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !1001
  %53 = load i8*, i8** %52, align 8, !dbg !1001, !tbaa !755
  call void @llvm.dbg.value(metadata i8* %53, metadata !901, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8* %53, metadata !1002, metadata !DIExpression()) #27, !dbg !1009
  %54 = tail call i8* @canonicalize_file_name(i8* %53) #27, !dbg !1011
  call void @llvm.dbg.value(metadata i8* %54, metadata !1007, metadata !DIExpression()) #27, !dbg !1009
  %55 = icmp eq i8* %54, null, !dbg !1012
  br i1 %55, label %59, label %56, !dbg !1013

56:                                               ; preds = %50
  %57 = tail call i32 @strcmp(i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %54) #28, !dbg !1014
  %58 = icmp eq i32 %57, 0, !dbg !1014
  br label %59

59:                                               ; preds = %50, %56
  %60 = phi i1 [ false, %50 ], [ %58, %56 ], !dbg !1009
  call void @llvm.dbg.value(metadata i1 %60, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1009
  tail call void @free(i8* %54) #27, !dbg !1015
  call void @llvm.dbg.value(metadata i1 %60, metadata !902, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !944
  %61 = or i1 %18, %60, !dbg !1016
  br i1 %61, label %65, label %62, !dbg !1016

62:                                               ; preds = %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 5) #27, !dbg !1018
  %64 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #27, !dbg !1020
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %63, i8* %64) #27, !dbg !1021
  tail call void @usage(i32 125) #30, !dbg !1022
  unreachable, !dbg !1022

65:                                               ; preds = %59
  br i1 %60, label %109, label %66, !dbg !1023

66:                                               ; preds = %65
  %67 = icmp eq i8* %25, null, !dbg !1024
  br i1 %67, label %70, label %68, !dbg !1025

68:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32* %3, metadata !893, metadata !DIExpression(DW_OP_deref)), !dbg !944
  call void @llvm.dbg.value(metadata i32* %4, metadata !894, metadata !DIExpression(DW_OP_deref)), !dbg !944
  %69 = call i8* @parse_user_spec(i8* nonnull %25, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #27, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %69, metadata !903, metadata !DIExpression()), !dbg !1027
  br label %70, !dbg !1028

70:                                               ; preds = %68, %66
  %71 = load i32, i32* %3, align 4, !dbg !1029, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %71, metadata !893, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %71, metadata !1030, metadata !DIExpression()), !dbg !1035
  %72 = icmp eq i32 %71, -1, !dbg !1037
  br i1 %72, label %90, label %73, !dbg !1038

73:                                               ; preds = %70
  %74 = icmp eq i8* %22, null, !dbg !1039
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, -1
  %77 = or i1 %74, %76, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %75, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %75, metadata !1041, metadata !DIExpression()), !dbg !1046
  br i1 %77, label %78, label %93, !dbg !1040

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i32 %71, metadata !893, metadata !DIExpression()), !dbg !944
  %79 = call %struct.passwd* @getpwuid(i32 %71) #27, !dbg !1048
  call void @llvm.dbg.value(metadata %struct.passwd* %79, metadata !908, metadata !DIExpression()), !dbg !1050
  %80 = icmp eq %struct.passwd* %79, null, !dbg !1051
  br i1 %80, label %90, label %81, !dbg !1052

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4, !dbg !1053, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %82, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %82, metadata !1041, metadata !DIExpression()), !dbg !1056
  %83 = icmp eq i32 %82, -1, !dbg !1058
  br i1 %83, label %84, label %87, !dbg !1059

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.passwd, %struct.passwd* %79, i64 0, i32 3, !dbg !1060
  %86 = load i32, i32* %85, align 4, !dbg !1060, !tbaa !1061
  call void @llvm.dbg.value(metadata i32 %86, metadata !894, metadata !DIExpression()), !dbg !944
  store i32 %86, i32* %4, align 4, !dbg !1063, !tbaa !947
  br label %87, !dbg !1064

87:                                               ; preds = %84, %81
  %88 = getelementptr inbounds %struct.passwd, %struct.passwd* %79, i64 0, i32 0, !dbg !1065
  %89 = load i8*, i8** %88, align 8, !dbg !1065, !tbaa !1066
  call void @llvm.dbg.value(metadata i8* %89, metadata !890, metadata !DIExpression()), !dbg !944
  br label %90, !dbg !1067

90:                                               ; preds = %78, %87, %70
  %91 = phi i8* [ null, %70 ], [ %89, %87 ], [ null, %78 ], !dbg !944
  call void @llvm.dbg.value(metadata i8* %91, metadata !890, metadata !DIExpression()), !dbg !944
  %92 = icmp eq i8* %22, null, !dbg !1068
  br i1 %92, label %99, label %93, !dbg !1069

93:                                               ; preds = %73, %90
  %94 = phi i8* [ %91, %90 ], [ null, %73 ]
  %95 = load i8, i8* %22, align 1, !dbg !1070, !tbaa !983
  %96 = icmp eq i8 %95, 0, !dbg !1070
  br i1 %96, label %109, label %97, !dbg !1071

97:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i32** %5, metadata !895, metadata !DIExpression(DW_OP_deref)), !dbg !944
  call void @llvm.dbg.value(metadata i64* %6, metadata !896, metadata !DIExpression(DW_OP_deref)), !dbg !944
  %98 = call fastcc i32 @parse_additional_groups(i8* nonnull %22, i32** nonnull %5, i64* nonnull %6, i1 zeroext false), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %98, metadata !922, metadata !DIExpression()), !dbg !1073
  br label %109, !dbg !1074

99:                                               ; preds = %90
  %100 = load i32, i32* %4, align 4, !dbg !1075, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %100, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %100, metadata !1041, metadata !DIExpression()), !dbg !1076
  %101 = icmp eq i32 %100, -1, !dbg !1078
  %102 = icmp eq i8* %91, null
  %103 = or i1 %102, %101, !dbg !1079
  br i1 %103, label %109, label %104, !dbg !1079

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 %100, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32** %5, metadata !895, metadata !DIExpression(DW_OP_deref)), !dbg !944
  %105 = call i32 @xgetgroups(i8* nonnull %91, i32 %100, i32** nonnull %5) #27, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %105, metadata !925, metadata !DIExpression()), !dbg !1081
  %106 = icmp sgt i32 %105, 0, !dbg !1082
  br i1 %106, label %107, label %109, !dbg !1084

107:                                              ; preds = %104
  %108 = zext i32 %105 to i64, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %108, metadata !896, metadata !DIExpression()), !dbg !944
  store i64 %108, i64* %6, align 8, !dbg !1086, !tbaa !955
  br label %109, !dbg !1087

109:                                              ; preds = %93, %104, %107, %97, %99, %65
  %110 = phi i8* [ null, %65 ], [ %94, %97 ], [ %91, %99 ], [ %91, %107 ], [ %91, %104 ], [ %94, %93 ], !dbg !1088
  call void @llvm.dbg.value(metadata i8* %110, metadata !890, metadata !DIExpression()), !dbg !944
  %111 = call i32 @chroot(i8* %53) #27, !dbg !1089
  %112 = icmp eq i32 %111, 0, !dbg !1091
  br i1 %112, label %118, label %113, !dbg !1092

113:                                              ; preds = %109
  %114 = tail call i32* @__errno_location() #31, !dbg !1093
  %115 = load i32, i32* %114, align 4, !dbg !1093, !tbaa !947
  %116 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 5) #27, !dbg !1093
  %117 = call i8* @quotearg_style(i32 4, i8* %53) #27, !dbg !1093
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %115, i8* %116, i8* %117) #27, !dbg !1093
  unreachable, !dbg !1093

118:                                              ; preds = %109
  br i1 %18, label %119, label %126, !dbg !1094

119:                                              ; preds = %118
  %120 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #27, !dbg !1096
  %121 = icmp eq i32 %120, 0, !dbg !1096
  br i1 %121, label %126, label %122, !dbg !1097

122:                                              ; preds = %119
  %123 = tail call i32* @__errno_location() #31, !dbg !1098
  %124 = load i32, i32* %123, align 4, !dbg !1098, !tbaa !947
  %125 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 5) #27, !dbg !1098
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %124, i8* %125) #27, !dbg !1098
  unreachable, !dbg !1098

126:                                              ; preds = %119, %118
  %127 = load i32, i32* @optind, align 4, !dbg !1099, !tbaa !947
  %128 = add nsw i32 %127, 1, !dbg !1100
  %129 = icmp eq i32 %128, %0, !dbg !1101
  br i1 %129, label %130, label %136, !dbg !1102

130:                                              ; preds = %126
  %131 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #27, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %131, metadata !928, metadata !DIExpression()), !dbg !1104
  %132 = icmp eq i8* %131, null, !dbg !1105
  %133 = select i1 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %131, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %133, metadata !928, metadata !DIExpression()), !dbg !1104
  store i8* %133, i8** %1, align 8, !dbg !1108, !tbaa !755
  %134 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1109
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %134, align 8, !dbg !1110, !tbaa !755
  %135 = getelementptr inbounds i8*, i8** %1, i64 2, !dbg !1111
  store i8* null, i8** %135, align 8, !dbg !1112, !tbaa !755
  br label %139, !dbg !1113

136:                                              ; preds = %126
  %137 = sext i32 %128 to i64, !dbg !1114
  %138 = getelementptr inbounds i8*, i8** %1, i64 %137, !dbg !1114
  call void @llvm.dbg.value(metadata i8** %138, metadata !887, metadata !DIExpression()), !dbg !944
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi i8** [ %1, %130 ], [ %138, %136 ]
  call void @llvm.dbg.value(metadata i8** %140, metadata !887, metadata !DIExpression()), !dbg !944
  %141 = icmp eq i8* %25, null, !dbg !1116
  br i1 %141, label %154, label %142, !dbg !1117

142:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i32* %3, metadata !893, metadata !DIExpression(DW_OP_deref)), !dbg !944
  call void @llvm.dbg.value(metadata i32* %4, metadata !894, metadata !DIExpression(DW_OP_deref)), !dbg !944
  %143 = call i8* @parse_user_spec(i8* nonnull %25, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #27, !dbg !1118
  call void @llvm.dbg.value(metadata i8* %143, metadata !931, metadata !DIExpression()), !dbg !1119
  %144 = icmp eq i8* %143, null, !dbg !1120
  br i1 %144, label %154, label %145, !dbg !1122

145:                                              ; preds = %142
  %146 = load i32, i32* %3, align 4, !dbg !1123, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %146, metadata !893, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %146, metadata !1030, metadata !DIExpression()), !dbg !1124
  %147 = icmp eq i32 %146, -1, !dbg !1126
  br i1 %147, label %148, label %157, !dbg !1127

148:                                              ; preds = %145
  %149 = load i32, i32* %4, align 4, !dbg !1128, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %149, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %149, metadata !1041, metadata !DIExpression()), !dbg !1129
  %150 = icmp eq i32 %149, -1, !dbg !1131
  br i1 %150, label %151, label %184, !dbg !1132

151:                                              ; preds = %148
  %152 = tail call i32* @__errno_location() #31, !dbg !1133
  %153 = load i32, i32* %152, align 4, !dbg !1133, !tbaa !947
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %143) #27, !dbg !1133
  unreachable, !dbg !1133

154:                                              ; preds = %142, %139
  %155 = load i32, i32* %3, align 4, !dbg !1134, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %155, metadata !893, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %155, metadata !1030, metadata !DIExpression()), !dbg !1135
  %156 = icmp eq i32 %155, -1, !dbg !1137
  br i1 %156, label %184, label %157, !dbg !1138

157:                                              ; preds = %145, %154
  %158 = phi i32 [ %155, %154 ], [ %146, %145 ]
  %159 = icmp eq i8* %22, null, !dbg !1139
  %160 = load i32, i32* %4, align 4
  %161 = icmp eq i32 %160, -1
  %162 = or i1 %159, %161, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %160, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %160, metadata !1041, metadata !DIExpression()), !dbg !1141
  br i1 %162, label %166, label %163, !dbg !1140

163:                                              ; preds = %157
  call void @llvm.dbg.value(metadata i8* %185, metadata !890, metadata !DIExpression()), !dbg !944
  %164 = load i32*, i32** %5, align 8, !dbg !1143, !tbaa !755
  call void @llvm.dbg.value(metadata i32* %186, metadata !895, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32* %186, metadata !937, metadata !DIExpression()), !dbg !944
  %165 = bitcast i32** %7 to i8*, !dbg !1144
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %165) #27, !dbg !1144
  call void @llvm.dbg.value(metadata i32* null, metadata !938, metadata !DIExpression()), !dbg !944
  store i32* null, i32** %7, align 8, !dbg !1145, !tbaa !755
  br label %189, !dbg !1146

166:                                              ; preds = %157
  call void @llvm.dbg.value(metadata i32 %155, metadata !893, metadata !DIExpression()), !dbg !944
  %167 = call %struct.passwd* @getpwuid(i32 %158) #27, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.passwd* %167, metadata !934, metadata !DIExpression()), !dbg !1149
  %168 = icmp eq %struct.passwd* %167, null, !dbg !1150
  %169 = load i32, i32* %4, align 4, !dbg !1151, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %169, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %169, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %169, metadata !1041, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i32 %169, metadata !1041, metadata !DIExpression()), !dbg !1155
  %170 = icmp eq i32 %169, -1, !dbg !1151
  br i1 %168, label %178, label %171, !dbg !1159

171:                                              ; preds = %166
  br i1 %170, label %172, label %175, !dbg !1160

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.passwd, %struct.passwd* %167, i64 0, i32 3, !dbg !1161
  %174 = load i32, i32* %173, align 4, !dbg !1161, !tbaa !1061
  call void @llvm.dbg.value(metadata i32 %174, metadata !894, metadata !DIExpression()), !dbg !944
  store i32 %174, i32* %4, align 4, !dbg !1162, !tbaa !947
  br label %175, !dbg !1163

175:                                              ; preds = %172, %171
  %176 = getelementptr inbounds %struct.passwd, %struct.passwd* %167, i64 0, i32 0, !dbg !1164
  %177 = load i8*, i8** %176, align 8, !dbg !1164, !tbaa !1066
  call void @llvm.dbg.value(metadata i8* %177, metadata !890, metadata !DIExpression()), !dbg !944
  br label %184, !dbg !1165

178:                                              ; preds = %166
  br i1 %170, label %179, label %184, !dbg !1166

179:                                              ; preds = %178
  %180 = tail call i32* @__errno_location() #31, !dbg !1167
  %181 = load i32, i32* %180, align 4, !dbg !1167, !tbaa !947
  %182 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32 5) #27, !dbg !1167
  %183 = load i32, i32* %3, align 4, !dbg !1167, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %183, metadata !893, metadata !DIExpression()), !dbg !944
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %181, i8* %182, i32 %183) #27, !dbg !1167
  unreachable, !dbg !1167

184:                                              ; preds = %148, %175, %178, %154
  %185 = phi i8* [ %110, %154 ], [ %177, %175 ], [ %110, %178 ], [ %110, %148 ], !dbg !944
  call void @llvm.dbg.value(metadata i8* %185, metadata !890, metadata !DIExpression()), !dbg !944
  %186 = load i32*, i32** %5, align 8, !dbg !1143, !tbaa !755
  call void @llvm.dbg.value(metadata i32* %186, metadata !895, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32* %186, metadata !937, metadata !DIExpression()), !dbg !944
  %187 = bitcast i32** %7 to i8*, !dbg !1144
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %187) #27, !dbg !1144
  call void @llvm.dbg.value(metadata i32* null, metadata !938, metadata !DIExpression()), !dbg !944
  store i32* null, i32** %7, align 8, !dbg !1145, !tbaa !755
  %188 = icmp eq i8* %22, null, !dbg !1169
  br i1 %188, label %204, label %189, !dbg !1146

189:                                              ; preds = %163, %184
  %190 = phi i8* [ %165, %163 ], [ %187, %184 ]
  %191 = phi i32* [ %164, %163 ], [ %186, %184 ]
  %192 = load i8, i8* %22, align 1, !dbg !1170, !tbaa !983
  %193 = icmp eq i8 %192, 0, !dbg !1170
  br i1 %193, label %226, label %194, !dbg !1171

194:                                              ; preds = %189
  %195 = load i64, i64* %6, align 8, !dbg !1172, !tbaa !955
  call void @llvm.dbg.value(metadata i64 %195, metadata !896, metadata !DIExpression()), !dbg !944
  %196 = icmp eq i64 %195, 0, !dbg !1175
  call void @llvm.dbg.value(metadata i64* %6, metadata !896, metadata !DIExpression(DW_OP_deref)), !dbg !944
  call void @llvm.dbg.value(metadata i32** %7, metadata !938, metadata !DIExpression(DW_OP_deref)), !dbg !944
  %197 = call fastcc i32 @parse_additional_groups(i8* nonnull %22, i32** nonnull %7, i64* nonnull %6, i1 zeroext %196), !dbg !1176
  %198 = icmp eq i32 %197, 0, !dbg !1177
  br i1 %198, label %202, label %199, !dbg !1178

199:                                              ; preds = %194
  %200 = load i64, i64* %6, align 8, !dbg !1179, !tbaa !955
  call void @llvm.dbg.value(metadata i64 %200, metadata !896, metadata !DIExpression()), !dbg !944
  %201 = icmp eq i64 %200, 0, !dbg !1179
  br i1 %201, label %271, label %226, !dbg !1182

202:                                              ; preds = %194
  %203 = load i32*, i32** %7, align 8, !dbg !1183, !tbaa !755
  call void @llvm.dbg.value(metadata i32* %203, metadata !938, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32* %203, metadata !937, metadata !DIExpression()), !dbg !944
  br label %226

204:                                              ; preds = %184
  %205 = load i32, i32* %4, align 4, !dbg !1184, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %205, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %205, metadata !1041, metadata !DIExpression()), !dbg !1185
  %206 = icmp eq i32 %205, -1, !dbg !1187
  %207 = icmp eq i8* %185, null
  %208 = or i1 %207, %206, !dbg !1188
  br i1 %208, label %222, label %209, !dbg !1188

209:                                              ; preds = %204
  call void @llvm.dbg.value(metadata i32 %205, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32** %7, metadata !938, metadata !DIExpression(DW_OP_deref)), !dbg !944
  %210 = call i32 @xgetgroups(i8* nonnull %185, i32 %205, i32** nonnull %7) #27, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %210, metadata !939, metadata !DIExpression()), !dbg !1190
  %211 = icmp slt i32 %210, 1, !dbg !1191
  br i1 %211, label %212, label %219, !dbg !1193

212:                                              ; preds = %209
  %213 = load i64, i64* %6, align 8, !dbg !1194, !tbaa !955
  call void @llvm.dbg.value(metadata i64 %213, metadata !896, metadata !DIExpression()), !dbg !944
  %214 = icmp eq i64 %213, 0, !dbg !1194
  br i1 %214, label %215, label %222, !dbg !1197

215:                                              ; preds = %212
  %216 = tail call i32* @__errno_location() #31, !dbg !1198
  %217 = load i32, i32* %216, align 4, !dbg !1198, !tbaa !947
  %218 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i32 5) #27, !dbg !1198
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %217, i8* %218) #27, !dbg !1198
  unreachable, !dbg !1198

219:                                              ; preds = %209
  %220 = zext i32 %210 to i64, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %220, metadata !896, metadata !DIExpression()), !dbg !944
  store i64 %220, i64* %6, align 8, !dbg !1201, !tbaa !955
  %221 = load i32*, i32** %7, align 8, !dbg !1202, !tbaa !755
  call void @llvm.dbg.value(metadata i32* %221, metadata !938, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32* %221, metadata !937, metadata !DIExpression()), !dbg !944
  br label %222

222:                                              ; preds = %219, %212, %204
  %223 = phi i32* [ %186, %204 ], [ %186, %212 ], [ %221, %219 ], !dbg !944
  call void @llvm.dbg.value(metadata i32* %223, metadata !937, metadata !DIExpression()), !dbg !944
  %224 = load i32, i32* %3, align 4, !dbg !1203, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %224, metadata !893, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %224, metadata !1030, metadata !DIExpression()), !dbg !1205
  %225 = icmp eq i32 %224, -1, !dbg !1207
  br i1 %225, label %236, label %226, !dbg !1208

226:                                              ; preds = %189, %202, %199, %222
  %227 = phi i32* [ %223, %222 ], [ %191, %189 ], [ %203, %202 ], [ %191, %199 ]
  %228 = phi i8* [ %187, %222 ], [ %190, %189 ], [ %190, %202 ], [ %190, %199 ]
  %229 = load i64, i64* %6, align 8, !dbg !1209, !tbaa !955
  call void @llvm.dbg.value(metadata i64 %229, metadata !896, metadata !DIExpression()), !dbg !944
  %230 = call i32 @setgroups(i64 %229, i32* %227) #27, !dbg !1210
  %231 = icmp eq i32 %230, 0, !dbg !1211
  br i1 %231, label %236, label %232, !dbg !1212

232:                                              ; preds = %226
  %233 = tail call i32* @__errno_location() #31, !dbg !1213
  %234 = load i32, i32* %233, align 4, !dbg !1213, !tbaa !947
  %235 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 5) #27, !dbg !1213
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %234, i8* %235) #27, !dbg !1213
  unreachable, !dbg !1213

236:                                              ; preds = %222, %226
  %237 = phi i8* [ %187, %222 ], [ %228, %226 ]
  %238 = bitcast i32** %7 to i8**, !dbg !1214
  %239 = load i8*, i8** %238, align 8, !dbg !1214, !tbaa !755
  call void @llvm.dbg.value(metadata i32* undef, metadata !938, metadata !DIExpression()), !dbg !944
  call void @free(i8* %239) #27, !dbg !1215
  %240 = bitcast i32** %5 to i8**, !dbg !1216
  %241 = load i8*, i8** %240, align 8, !dbg !1216, !tbaa !755
  call void @llvm.dbg.value(metadata i32* undef, metadata !895, metadata !DIExpression()), !dbg !944
  call void @free(i8* %241) #27, !dbg !1217
  %242 = load i32, i32* %4, align 4, !dbg !1218, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %242, metadata !894, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %242, metadata !1041, metadata !DIExpression()), !dbg !1220
  %243 = icmp eq i32 %242, -1, !dbg !1222
  br i1 %243, label %251, label %244, !dbg !1223

244:                                              ; preds = %236
  call void @llvm.dbg.value(metadata i32 %242, metadata !894, metadata !DIExpression()), !dbg !944
  %245 = call i32 @setgid(i32 %242) #27, !dbg !1224
  %246 = icmp eq i32 %245, 0, !dbg !1224
  br i1 %246, label %251, label %247, !dbg !1225

247:                                              ; preds = %244
  %248 = tail call i32* @__errno_location() #31, !dbg !1226
  %249 = load i32, i32* %248, align 4, !dbg !1226, !tbaa !947
  %250 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #27, !dbg !1226
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %249, i8* %250) #27, !dbg !1226
  unreachable, !dbg !1226

251:                                              ; preds = %244, %236
  %252 = load i32, i32* %3, align 4, !dbg !1227, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %252, metadata !893, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %252, metadata !1030, metadata !DIExpression()), !dbg !1229
  %253 = icmp eq i32 %252, -1, !dbg !1231
  br i1 %253, label %261, label %254, !dbg !1232

254:                                              ; preds = %251
  call void @llvm.dbg.value(metadata i32 %252, metadata !893, metadata !DIExpression()), !dbg !944
  %255 = call i32 @setuid(i32 %252) #27, !dbg !1233
  %256 = icmp eq i32 %255, 0, !dbg !1233
  br i1 %256, label %261, label %257, !dbg !1234

257:                                              ; preds = %254
  %258 = tail call i32* @__errno_location() #31, !dbg !1235
  %259 = load i32, i32* %258, align 4, !dbg !1235, !tbaa !947
  %260 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i32 5) #27, !dbg !1235
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %259, i8* %260) #27, !dbg !1235
  unreachable, !dbg !1235

261:                                              ; preds = %254, %251
  %262 = load i8*, i8** %140, align 8, !dbg !1236, !tbaa !755
  %263 = call i32 @execvp(i8* %262, i8** nonnull %140) #27, !dbg !1237
  %264 = tail call i32* @__errno_location() #31, !dbg !1238
  %265 = load i32, i32* %264, align 4, !dbg !1238, !tbaa !947
  %266 = icmp eq i32 %265, 2, !dbg !1239
  %267 = select i1 %266, i32 127, i32 126, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %267, metadata !943, metadata !DIExpression()), !dbg !944
  %268 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 5) #27, !dbg !1240
  %269 = load i8*, i8** %140, align 8, !dbg !1241, !tbaa !755
  %270 = call i8* @quote(i8* %269) #27, !dbg !1242
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %265, i8* %268, i8* %270) #27, !dbg !1243
  br label %271

271:                                              ; preds = %199, %261
  %272 = phi i8* [ %237, %261 ], [ %190, %199 ]
  %273 = phi i32 [ %267, %261 ], [ 125, %199 ], !dbg !944
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %272) #27, !dbg !1244
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #27, !dbg !1244
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #27, !dbg !1244
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #27, !dbg !1244
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #27, !dbg !1244
  ret i32 %273, !dbg !1244
}

; Function Attrs: nounwind
declare !dbg !1245 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1248 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1251 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1258 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

declare !dbg !1264 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1268 i8* @canonicalize_file_name(i8*) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #9

declare !dbg !1269 %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_additional_groups(i8* %0, i32** nocapture %1, i64* nocapture %2, i1 zeroext %3) unnamed_addr #8 !dbg !1273 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1277, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32** %1, metadata !1278, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64* %2, metadata !1279, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i1 %3, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1292
  call void @llvm.dbg.value(metadata i32* null, metadata !1281, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 0, metadata !1282, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 0, metadata !1283, metadata !DIExpression()), !dbg !1292
  %6 = tail call noalias i8* @xstrdup(i8* %0) #27, !dbg !1293
  call void @llvm.dbg.value(metadata i8* %6, metadata !1284, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 0, metadata !1286, metadata !DIExpression()), !dbg !1292
  %7 = tail call i8* @strtok(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #27, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %7, metadata !1285, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 0, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32* null, metadata !1281, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 0, metadata !1283, metadata !DIExpression()), !dbg !1292
  %8 = icmp eq i8* %7, null, !dbg !1295
  br i1 %8, label %93, label %9, !dbg !1295

9:                                                ; preds = %4
  %10 = bitcast i64* %5 to i8*
  br label %11, !dbg !1295

11:                                               ; preds = %9, %86
  %12 = phi i32 [ 0, %9 ], [ %90, %86 ]
  %13 = phi i8* [ %7, %9 ], [ %91, %86 ]
  %14 = phi i32* [ null, %9 ], [ %89, %86 ]
  %15 = phi i64 [ 0, %9 ], [ %88, %86 ]
  %16 = phi i64 [ 0, %9 ], [ %87, %86 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8* %13, metadata !1285, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32* %14, metadata !1281, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %15, metadata !1283, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #27, !dbg !1296
  call void @llvm.dbg.value(metadata i64* %5, metadata !1291, metadata !DIExpression(DW_OP_deref)), !dbg !1297
  %17 = call i32 @xstrtoumax(i8* nonnull %13, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #27, !dbg !1298
  %18 = icmp eq i32 %17, 0, !dbg !1300
  %19 = load i64, i64* %5, align 8
  call void @llvm.dbg.value(metadata i64 %19, metadata !1291, metadata !DIExpression()), !dbg !1297
  %20 = icmp ult i64 %19, 4294967296
  %21 = and i1 %18, %20, !dbg !1301
  br i1 %21, label %22, label %43, !dbg !1301

22:                                               ; preds = %11
  %23 = tail call i16** @__ctype_b_loc() #31, !dbg !1292
  %24 = load i16*, i16** %23, align 8, !tbaa !755
  br label %25, !dbg !1302

25:                                               ; preds = %25, %22
  %26 = phi i8* [ %33, %25 ], [ %13, %22 ], !dbg !1304
  call void @llvm.dbg.value(metadata i8* %26, metadata !1285, metadata !DIExpression()), !dbg !1292
  %27 = load i8, i8* %26, align 1, !dbg !1305, !tbaa !983
  %28 = zext i8 %27 to i64, !dbg !1305
  %29 = getelementptr inbounds i16, i16* %24, i64 %28, !dbg !1305
  %30 = load i16, i16* %29, align 2, !dbg !1305, !tbaa !1306
  %31 = and i16 %30, 8192, !dbg !1305
  %32 = icmp eq i16 %31, 0, !dbg !1302
  %33 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %33, metadata !1285, metadata !DIExpression()), !dbg !1292
  br i1 %32, label %34, label %25, !dbg !1302, !llvm.loop !1309

34:                                               ; preds = %25
  %35 = icmp eq i8 %27, 43, !dbg !1310
  br i1 %35, label %56, label %36, !dbg !1312

36:                                               ; preds = %34
  %37 = call %struct.group* @getgrnam(i8* nonnull %26) #27, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.group* %37, metadata !1287, metadata !DIExpression()), !dbg !1297
  %38 = icmp eq %struct.group* %37, null, !dbg !1315
  br i1 %38, label %56, label %39, !dbg !1317

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.group, %struct.group* %37, i64 0, i32 2, !dbg !1318
  %41 = load i32, i32* %40, align 8, !dbg !1318, !tbaa !1319
  %42 = zext i32 %41 to i64, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %42, metadata !1291, metadata !DIExpression()), !dbg !1297
  store i64 %42, i64* %5, align 8, !dbg !1322, !tbaa !955
  br label %56, !dbg !1323

43:                                               ; preds = %11
  %44 = call %struct.group* @getgrnam(i8* nonnull %13) #27, !dbg !1324
  call void @llvm.dbg.value(metadata %struct.group* %44, metadata !1287, metadata !DIExpression()), !dbg !1297
  %45 = icmp eq %struct.group* %44, null, !dbg !1326
  br i1 %45, label %50, label %46, !dbg !1328

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.group, %struct.group* %44, i64 0, i32 2, !dbg !1329
  %48 = load i32, i32* %47, align 8, !dbg !1329, !tbaa !1319
  %49 = zext i32 %48 to i64, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %49, metadata !1291, metadata !DIExpression()), !dbg !1297
  store i64 %49, i64* %5, align 8, !dbg !1331, !tbaa !955
  br label %56, !dbg !1332

50:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1287, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %13, metadata !1285, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 -1, metadata !1286, metadata !DIExpression()), !dbg !1292
  br i1 %3, label %51, label %85, !dbg !1333

51:                                               ; preds = %50
  %52 = tail call i32* @__errno_location() #31, !dbg !1336
  %53 = load i32, i32* %52, align 4, !dbg !1336, !tbaa !947
  %54 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i32 5) #27, !dbg !1339
  %55 = call i8* @quote(i8* nonnull %13) #27, !dbg !1340
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %53, i8* %54, i8* %55) #27, !dbg !1341
  br label %86, !dbg !1342

56:                                               ; preds = %46, %36, %39, %34
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1287, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8* undef, metadata !1285, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %16, metadata !1282, metadata !DIExpression()), !dbg !1292
  %57 = icmp eq i64 %15, %16, !dbg !1343
  br i1 %57, label %58, label %78, !dbg !1345

58:                                               ; preds = %56
  %59 = bitcast i32* %14 to i8*, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %59, metadata !61, metadata !DIExpression()) #27, !dbg !1347
  call void @llvm.dbg.value(metadata i64* undef, metadata !62, metadata !DIExpression()) #27, !dbg !1347
  call void @llvm.dbg.value(metadata i64 4, metadata !63, metadata !DIExpression()) #27, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %16, metadata !64, metadata !DIExpression()) #27, !dbg !1347
  %60 = icmp eq i32* %14, null, !dbg !1349
  br i1 %60, label %61, label %66, !dbg !1351

61:                                               ; preds = %58
  %62 = icmp eq i64 %15, 0, !dbg !1352
  br i1 %62, label %73, label %63, !dbg !1355

63:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 %16, metadata !64, metadata !DIExpression()) #27, !dbg !1347
  %64 = icmp ugt i64 %15, 2305843009213693951, !dbg !1356
  br i1 %64, label %65, label %73, !dbg !1358

65:                                               ; preds = %63
  call void @xalloc_die() #29, !dbg !1359
  unreachable, !dbg !1359

66:                                               ; preds = %58
  %67 = icmp ult i64 %15, 1537228672809129301, !dbg !1360
  br i1 %67, label %69, label %68, !dbg !1363

68:                                               ; preds = %66
  call void @xalloc_die() #29, !dbg !1364
  unreachable, !dbg !1364

69:                                               ; preds = %66
  %70 = lshr i64 %15, 1, !dbg !1365
  %71 = add nuw nsw i64 %15, 1, !dbg !1366
  %72 = add nuw nsw i64 %71, %70, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %72, metadata !64, metadata !DIExpression()) #27, !dbg !1347
  br label %73

73:                                               ; preds = %61, %63, %69
  %74 = phi i64 [ %72, %69 ], [ %15, %63 ], [ 32, %61 ], !dbg !1347
  call void @llvm.dbg.value(metadata i64 %74, metadata !64, metadata !DIExpression()) #27, !dbg !1347
  %75 = shl nuw nsw i64 %74, 2, !dbg !1368
  %76 = call i8* @xrealloc(i8* %59, i64 %75) #27, !dbg !1369
  %77 = bitcast i8* %76 to i32*, !dbg !1346
  call void @llvm.dbg.value(metadata i32* %77, metadata !1281, metadata !DIExpression()), !dbg !1292
  br label %78, !dbg !1370

78:                                               ; preds = %73, %56
  %79 = phi i64 [ %74, %73 ], [ %16, %56 ], !dbg !1292
  %80 = phi i32* [ %77, %73 ], [ %14, %56 ], !dbg !1292
  call void @llvm.dbg.value(metadata i32* %80, metadata !1281, metadata !DIExpression()), !dbg !1292
  %81 = load i64, i64* %5, align 8, !dbg !1371, !tbaa !955
  call void @llvm.dbg.value(metadata i64 %81, metadata !1291, metadata !DIExpression()), !dbg !1297
  %82 = trunc i64 %81 to i32, !dbg !1371
  %83 = add i64 %15, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %83, metadata !1283, metadata !DIExpression()), !dbg !1292
  %84 = getelementptr inbounds i32, i32* %80, i64 %15, !dbg !1373
  store i32 %82, i32* %84, align 4, !dbg !1374, !tbaa !947
  br label %86, !dbg !1375

85:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 -1, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32* %14, metadata !1281, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %15, metadata !1283, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #27, !dbg !1375
  call void @llvm.dbg.value(metadata i32* %95, metadata !1281, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %94, metadata !1283, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 %102, metadata !1286, metadata !DIExpression()), !dbg !1292
  store i32* %14, i32** %1, align 8, !dbg !1376, !tbaa !755
  br label %109, !dbg !1377

86:                                               ; preds = %51, %78
  %87 = phi i64 [ %79, %78 ], [ %16, %51 ]
  %88 = phi i64 [ %83, %78 ], [ %15, %51 ]
  %89 = phi i32* [ %80, %78 ], [ %14, %51 ]
  %90 = phi i32 [ %12, %78 ], [ -1, %51 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32* undef, metadata !1281, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 undef, metadata !1283, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #27, !dbg !1375
  %91 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #27, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %90, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8* %91, metadata !1285, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32* %89, metadata !1281, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %88, metadata !1283, metadata !DIExpression()), !dbg !1292
  %92 = icmp eq i8* %91, null, !dbg !1295
  br i1 %92, label %93, label %11, !dbg !1295, !llvm.loop !1379

93:                                               ; preds = %86, %4
  %94 = phi i64 [ 0, %4 ], [ %88, %86 ]
  %95 = phi i32* [ null, %4 ], [ %89, %86 ]
  %96 = phi i32 [ 0, %4 ], [ %90, %86 ], !dbg !1292
  call void @llvm.dbg.value(metadata i32 %96, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32* %95, metadata !1281, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %94, metadata !1283, metadata !DIExpression()), !dbg !1292
  %97 = icmp ne i32 %96, 0, !dbg !1381
  %98 = icmp ne i64 %94, 0
  %99 = or i1 %98, %97, !dbg !1383
  %100 = xor i1 %3, true, !dbg !1383
  %101 = or i1 %99, %100, !dbg !1383
  %102 = select i1 %99, i32 %96, i32 -1, !dbg !1383
  br i1 %101, label %106, label %103, !dbg !1383

103:                                              ; preds = %93
  %104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i32 5) #27, !dbg !1384
  %105 = call i8* @quote(i8* %0) #27, !dbg !1387
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %104, i8* %105) #27, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %102, metadata !1286, metadata !DIExpression()), !dbg !1292
  store i32* %95, i32** %1, align 8, !dbg !1376, !tbaa !755
  br label %109, !dbg !1377

106:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i32 %102, metadata !1286, metadata !DIExpression()), !dbg !1292
  store i32* %95, i32** %1, align 8, !dbg !1376, !tbaa !755
  %107 = icmp eq i32 %102, 0, !dbg !1389
  br i1 %107, label %108, label %109, !dbg !1377

108:                                              ; preds = %106
  store i64 %94, i64* %2, align 8, !dbg !1391, !tbaa !955
  br label %109, !dbg !1392

109:                                              ; preds = %85, %103, %108, %106
  %110 = phi i32 [ -1, %103 ], [ 0, %108 ], [ %102, %106 ], [ -1, %85 ]
  call void @free(i8* %6) #27, !dbg !1393
  ret i32 %110, !dbg !1394
}

; Function Attrs: nounwind
declare !dbg !1395 i32 @chroot(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1398 i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare !dbg !1399 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1400 i32 @setgroups(i64, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1405 i32 @setgid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1408 i32 @setuid(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1409 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #12

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

declare !dbg !1412 %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !1415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1417, metadata !DIExpression()), !dbg !1418
  store i8* %0, i8** @file_name, align 8, !dbg !1419, !tbaa !755
  ret void, !dbg !1420
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !1421 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1425, metadata !DIExpression()), !dbg !1426
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1427, !tbaa !1428
  ret void, !dbg !1430
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1431 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1436, !tbaa !755
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1437
  %3 = icmp eq i32 %2, 0, !dbg !1438
  br i1 %3, label %22, label %4, !dbg !1439

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1440, !tbaa !1428, !range !1441
  %6 = icmp eq i8 %5, 0, !dbg !1440
  br i1 %6, label %11, label %7, !dbg !1442

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !1443
  %9 = load i32, i32* %8, align 4, !dbg !1443, !tbaa !947
  %10 = icmp eq i32 %9, 32, !dbg !1444
  br i1 %10, label %22, label %11, !dbg !1445

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1446
  call void @llvm.dbg.value(metadata i8* %12, metadata !1433, metadata !DIExpression()), !dbg !1447
  %13 = load i8*, i8** @file_name, align 8, !dbg !1448, !tbaa !755
  %14 = icmp eq i8* %13, null, !dbg !1448
  %15 = tail call i32* @__errno_location() #31, !dbg !1450
  %16 = load i32, i32* %15, align 4, !dbg !1450, !tbaa !947
  br i1 %14, label %19, label %17, !dbg !1451

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !1452
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.58, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !1453
  br label %20, !dbg !1453

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.59, i64 0, i64 0), i8* %12) #27, !dbg !1454
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1455, !tbaa !947
  tail call void @_exit(i32 %21) #29, !dbg !1456
  unreachable, !dbg !1456

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1457, !tbaa !755
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1459
  %25 = icmp eq i32 %24, 0, !dbg !1460
  br i1 %25, label %28, label %26, !dbg !1461

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1462, !tbaa !947
  tail call void @_exit(i32 %27) #29, !dbg !1463
  unreachable, !dbg !1463

28:                                               ; preds = %22
  ret void, !dbg !1464
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1465 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1467, metadata !DIExpression()), !dbg !1470
  %2 = icmp eq i8* %0, null, !dbg !1471
  br i1 %2, label %3, label %6, !dbg !1473

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1474, !tbaa !755
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !1476
  tail call void @abort() #29, !dbg !1477
  unreachable, !dbg !1477

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !1478
  call void @llvm.dbg.value(metadata i8* %7, metadata !1468, metadata !DIExpression()), !dbg !1470
  %8 = icmp eq i8* %7, null, !dbg !1479
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1480
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %10, metadata !1469, metadata !DIExpression()), !dbg !1470
  %11 = ptrtoint i8* %10 to i64, !dbg !1481
  %12 = ptrtoint i8* %0 to i64, !dbg !1481
  %13 = sub i64 %11, %12, !dbg !1481
  %14 = icmp sgt i64 %13, 6, !dbg !1483
  br i1 %14, label %15, label %24, !dbg !1484

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1485
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #28, !dbg !1486
  %18 = icmp eq i32 %17, 0, !dbg !1487
  br i1 %18, label %19, label %24, !dbg !1488

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1467, metadata !DIExpression()), !dbg !1470
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #28, !dbg !1489
  %21 = icmp eq i32 %20, 0, !dbg !1492
  br i1 %21, label %22, label %24, !dbg !1493

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %23, metadata !1467, metadata !DIExpression()), !dbg !1470
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1496, !tbaa !755
  br label %24, !dbg !1497

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1467, metadata !DIExpression()), !dbg !1470
  store i8* %25, i8** @program_name, align 8, !dbg !1498, !tbaa !755
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1499, !tbaa !755
  ret void, !dbg !1500
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1501 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1506, metadata !DIExpression()), !dbg !1509
  %2 = tail call i32* @__errno_location() #31, !dbg !1510
  %3 = load i32, i32* %2, align 4, !dbg !1510, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %3, metadata !1507, metadata !DIExpression()), !dbg !1509
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1511
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1511
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1511
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !1512
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1512
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1508, metadata !DIExpression()), !dbg !1509
  store i32 %3, i32* %2, align 4, !dbg !1513, !tbaa !947
  ret %struct.quoting_options* %8, !dbg !1514
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !1515 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1521, metadata !DIExpression()), !dbg !1522
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1523
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1523
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1524
  %5 = load i32, i32* %4, align 8, !dbg !1524, !tbaa !1525
  ret i32 %5, !dbg !1527
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !1528 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1532, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i32 %1, metadata !1533, metadata !DIExpression()), !dbg !1534
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1535
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1535
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1536
  store i32 %1, i32* %5, align 8, !dbg !1537, !tbaa !1525
  ret void, !dbg !1538
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1539 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1543, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %1, metadata !1544, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %2, metadata !1545, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %1, metadata !1546, metadata !DIExpression()), !dbg !1552
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1553
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1553
  %6 = lshr i8 %1, 5, !dbg !1554
  %7 = zext i8 %6 to i64, !dbg !1554
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1555
  call void @llvm.dbg.value(metadata i32* %8, metadata !1548, metadata !DIExpression()), !dbg !1552
  %9 = and i8 %1, 31, !dbg !1556
  %10 = zext i8 %9 to i32, !dbg !1556
  call void @llvm.dbg.value(metadata i32 %10, metadata !1550, metadata !DIExpression()), !dbg !1552
  %11 = load i32, i32* %8, align 4, !dbg !1557, !tbaa !947
  %12 = lshr i32 %11, %10, !dbg !1558
  %13 = and i32 %12, 1, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %13, metadata !1551, metadata !DIExpression()), !dbg !1552
  %14 = and i32 %2, 1, !dbg !1560
  %15 = xor i32 %13, %14, !dbg !1561
  %16 = shl i32 %15, %10, !dbg !1562
  %17 = xor i32 %16, %11, !dbg !1563
  store i32 %17, i32* %8, align 4, !dbg !1563, !tbaa !947
  ret i32 %13, !dbg !1564
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1565 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1569, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i32 %1, metadata !1570, metadata !DIExpression()), !dbg !1572
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1573
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1569, metadata !DIExpression()), !dbg !1572
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1576
  %6 = load i32, i32* %5, align 4, !dbg !1576, !tbaa !1577
  call void @llvm.dbg.value(metadata i32 %6, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i32 %1, i32* %5, align 4, !dbg !1578, !tbaa !1577
  ret i32 %6, !dbg !1579
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1580 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1584, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %1, metadata !1585, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %2, metadata !1586, metadata !DIExpression()), !dbg !1587
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1588
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1590
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1584, metadata !DIExpression()), !dbg !1587
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1591
  store i32 10, i32* %6, align 8, !dbg !1592, !tbaa !1525
  %7 = icmp ne i8* %1, null, !dbg !1593
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1595
  br i1 %9, label %11, label %10, !dbg !1595

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !1596
  unreachable, !dbg !1596

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1597
  store i8* %1, i8** %12, align 8, !dbg !1598, !tbaa !1599
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1600
  store i8* %2, i8** %13, align 8, !dbg !1601, !tbaa !1602
  ret void, !dbg !1603
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1608, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %1, metadata !1609, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8* %2, metadata !1610, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %3, metadata !1611, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1612, metadata !DIExpression()), !dbg !1616
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1617
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1617
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1613, metadata !DIExpression()), !dbg !1616
  %8 = tail call i32* @__errno_location() #31, !dbg !1618
  %9 = load i32, i32* %8, align 4, !dbg !1618, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %9, metadata !1614, metadata !DIExpression()), !dbg !1616
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1619
  %11 = load i32, i32* %10, align 8, !dbg !1619, !tbaa !1525
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1620
  %13 = load i32, i32* %12, align 4, !dbg !1620, !tbaa !1577
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1621
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1622
  %16 = load i8*, i8** %15, align 8, !dbg !1622, !tbaa !1599
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1623
  %18 = load i8*, i8** %17, align 8, !dbg !1623, !tbaa !1602
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %19, metadata !1615, metadata !DIExpression()), !dbg !1616
  store i32 %9, i32* %8, align 4, !dbg !1625, !tbaa !947
  ret i64 %19, !dbg !1626
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1627 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1631, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %1, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %2, metadata !1633, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %3, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 %4, metadata !1635, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 %5, metadata !1636, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32* %6, metadata !1637, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %7, metadata !1638, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %8, metadata !1639, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 0, metadata !1642, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* null, metadata !1643, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 0, metadata !1644, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1701
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !1702
  %14 = icmp eq i64 %13, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i1 %14, metadata !1646, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1701
  %15 = lshr i32 %5, 1, !dbg !1704
  %16 = trunc i32 %15 to i8, !dbg !1704
  %17 = and i8 %16, 1, !dbg !1704
  call void @llvm.dbg.value(metadata i8 %17, metadata !1647, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1649, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1701
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1705

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1706
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1707
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1708
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1709
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1701
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1710
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1711
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1712
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %38, metadata !1650, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %37, metadata !1649, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %36, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %35, metadata !1647, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %34, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %33, metadata !1645, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %32, metadata !1644, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %31, metadata !1643, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %30, metadata !1642, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %29, metadata !1639, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %28, metadata !1638, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 %27, metadata !1635, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.label(metadata !1695), !dbg !1713
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
  ], !dbg !1714

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1647, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 5, metadata !1635, metadata !DIExpression()), !dbg !1701
  br label %92, !dbg !1715

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1647, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 5, metadata !1635, metadata !DIExpression()), !dbg !1701
  %42 = and i8 %35, 1, !dbg !1717
  %43 = icmp eq i8 %42, 0, !dbg !1717
  br i1 %43, label %44, label %92, !dbg !1715

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1719
  br i1 %45, label %92, label %46, !dbg !1722

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1719, !tbaa !983
  br label %92, !dbg !1719

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %27), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %48, metadata !1638, metadata !DIExpression()), !dbg !1701
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %27), !dbg !1727
  call void @llvm.dbg.value(metadata i8* %49, metadata !1639, metadata !DIExpression()), !dbg !1701
  br label %50, !dbg !1728

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1639, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %51, metadata !1638, metadata !DIExpression()), !dbg !1701
  %53 = and i8 %35, 1, !dbg !1729
  %54 = icmp eq i8 %53, 0, !dbg !1729
  br i1 %54, label %55, label %70, !dbg !1731

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1643, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1701
  %56 = load i8, i8* %51, align 1, !dbg !1732, !tbaa !983
  %57 = icmp eq i8 %56, 0, !dbg !1735
  br i1 %57, label %70, label %58, !dbg !1735

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1643, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %61, metadata !1641, metadata !DIExpression()), !dbg !1701
  %62 = icmp ult i64 %61, %39, !dbg !1736
  br i1 %62, label %63, label %65, !dbg !1739

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1736
  store i8 %59, i8* %64, align 1, !dbg !1736, !tbaa !983
  br label %65, !dbg !1736

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %66, metadata !1641, metadata !DIExpression()), !dbg !1701
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %67, metadata !1643, metadata !DIExpression()), !dbg !1701
  %68 = load i8, i8* %67, align 1, !dbg !1732, !tbaa !983
  %69 = icmp eq i8 %68, 0, !dbg !1735
  br i1 %69, label %70, label %58, !dbg !1735, !llvm.loop !1741

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1743
  call void @llvm.dbg.value(metadata i64 %71, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %52, metadata !1643, metadata !DIExpression()), !dbg !1701
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %72, metadata !1644, metadata !DIExpression()), !dbg !1701
  br label %92, !dbg !1745

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1701
  br label %74, !dbg !1746

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %75, metadata !1645, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, metadata !1647, metadata !DIExpression()), !dbg !1701
  br label %76, !dbg !1747

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1709
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %78, metadata !1647, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %77, metadata !1645, metadata !DIExpression()), !dbg !1701
  %79 = and i8 %78, 1, !dbg !1748
  %80 = icmp eq i8 %79, 0, !dbg !1748
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1750
  br label %82, !dbg !1750

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1701
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1704
  call void @llvm.dbg.value(metadata i8 %84, metadata !1647, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %83, metadata !1645, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 2, metadata !1635, metadata !DIExpression()), !dbg !1701
  %85 = and i8 %84, 1, !dbg !1751
  %86 = icmp eq i8 %85, 0, !dbg !1751
  br i1 %86, label %87, label %92, !dbg !1753

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1754
  br i1 %88, label %92, label %89, !dbg !1757

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1754, !tbaa !983
  br label %92, !dbg !1754

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1701
  br label %92, !dbg !1758

91:                                               ; preds = %26
  call void @abort() #29, !dbg !1759
  unreachable, !dbg !1759

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1743
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %40 ], !dbg !1701
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1701
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1701
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %100, metadata !1647, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %99, metadata !1645, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %98, metadata !1644, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %97, metadata !1643, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %96, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %95, metadata !1639, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8* %94, metadata !1638, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 %93, metadata !1635, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1701
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
  br label %121, !dbg !1760

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1761
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1743
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1706
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1710
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1711
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1712
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %128, metadata !1650, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %127, metadata !1649, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %126, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %125, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %124, metadata !1642, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %123, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %122, metadata !1640, metadata !DIExpression()), !dbg !1701
  %130 = icmp eq i64 %125, -1, !dbg !1762
  br i1 %130, label %131, label %135, !dbg !1763

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1764
  %133 = load i8, i8* %132, align 1, !dbg !1764, !tbaa !983
  %134 = icmp eq i8 %133, 0, !dbg !1765
  br i1 %134, label %587, label %137, !dbg !1766

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1767
  br i1 %136, label %587, label %137, !dbg !1766

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1656, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1657, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1658, metadata !DIExpression()), !dbg !1768
  br i1 %106, label %138, label %153, !dbg !1769

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1771
  %140 = and i1 %107, %130, !dbg !1772
  br i1 %140, label %141, label %143, !dbg !1772

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %142, metadata !1634, metadata !DIExpression()), !dbg !1701
  br label %143, !dbg !1774

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1774
  call void @llvm.dbg.value(metadata i64 %144, metadata !1634, metadata !DIExpression()), !dbg !1701
  %145 = icmp ugt i64 %139, %144, !dbg !1775
  br i1 %145, label %153, label %146, !dbg !1776

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1777
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1778
  %149 = icmp ne i32 %148, 0, !dbg !1779
  %150 = or i1 %149, %109, !dbg !1780
  %151 = xor i1 %149, true, !dbg !1780
  %152 = zext i1 %151 to i8, !dbg !1780
  br i1 %150, label %153, label %646, !dbg !1780

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1768
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1768
  call void @llvm.dbg.value(metadata i8 %156, metadata !1656, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %154, metadata !1634, metadata !DIExpression()), !dbg !1701
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1781
  %158 = load i8, i8* %157, align 1, !dbg !1781, !tbaa !983
  call void @llvm.dbg.value(metadata i8 %158, metadata !1651, metadata !DIExpression()), !dbg !1768
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
  ], !dbg !1782

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1783

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1784

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1657, metadata !DIExpression()), !dbg !1768
  %162 = and i8 %126, 1, !dbg !1788
  %163 = icmp eq i8 %162, 0, !dbg !1788
  %164 = and i1 %110, %163, !dbg !1788
  br i1 %164, label %165, label %181, !dbg !1788

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1790
  br i1 %166, label %167, label %169, !dbg !1794

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1790
  store i8 39, i8* %168, align 1, !dbg !1790, !tbaa !983
  br label %169, !dbg !1790

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %170, metadata !1641, metadata !DIExpression()), !dbg !1701
  %171 = icmp ult i64 %170, %129, !dbg !1795
  br i1 %171, label %172, label %174, !dbg !1798

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1795
  store i8 36, i8* %173, align 1, !dbg !1795, !tbaa !983
  br label %174, !dbg !1795

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %175, metadata !1641, metadata !DIExpression()), !dbg !1701
  %176 = icmp ult i64 %175, %129, !dbg !1799
  br i1 %176, label %177, label %179, !dbg !1802

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1799
  store i8 39, i8* %178, align 1, !dbg !1799, !tbaa !983
  br label %179, !dbg !1799

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %180, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, metadata !1648, metadata !DIExpression()), !dbg !1701
  br label %181, !dbg !1803

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1701
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %183, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %182, metadata !1641, metadata !DIExpression()), !dbg !1701
  %184 = icmp ult i64 %182, %129, !dbg !1804
  br i1 %184, label %185, label %187, !dbg !1807

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1804
  store i8 92, i8* %186, align 1, !dbg !1804, !tbaa !983
  br label %187, !dbg !1804

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %188, metadata !1641, metadata !DIExpression()), !dbg !1701
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1808
  br i1 %191, label %192, label %473, !dbg !1808

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1810
  %194 = load i8, i8* %193, align 1, !dbg !1810, !tbaa !983
  %195 = add i8 %194, -48, !dbg !1811
  %196 = icmp ult i8 %195, 10, !dbg !1811
  br i1 %196, label %197, label %473, !dbg !1811

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1812
  br i1 %198, label %199, label %201, !dbg !1816

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1812
  store i8 48, i8* %200, align 1, !dbg !1812, !tbaa !983
  br label %201, !dbg !1812

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %202, metadata !1641, metadata !DIExpression()), !dbg !1701
  %203 = icmp ult i64 %202, %129, !dbg !1817
  br i1 %203, label %204, label %206, !dbg !1820

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1817
  store i8 48, i8* %205, align 1, !dbg !1817, !tbaa !983
  br label %206, !dbg !1817

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %207, metadata !1641, metadata !DIExpression()), !dbg !1701
  br label %473, !dbg !1821

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1822

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1823

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1824

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1826
  br i1 %214, label %215, label %473, !dbg !1826

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1828
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1829
  %218 = load i8, i8* %217, align 1, !dbg !1829, !tbaa !983
  %219 = icmp eq i8 %218, 63, !dbg !1830
  br i1 %219, label %220, label %473, !dbg !1831

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1832
  %222 = load i8, i8* %221, align 1, !dbg !1832, !tbaa !983
  %223 = sext i8 %222 to i32, !dbg !1832
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
  ], !dbg !1833

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1834

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1651, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 undef, metadata !1640, metadata !DIExpression()), !dbg !1701
  %226 = icmp ult i64 %123, %129, !dbg !1836
  br i1 %226, label %227, label %229, !dbg !1839

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1836
  store i8 63, i8* %228, align 1, !dbg !1836, !tbaa !983
  br label %229, !dbg !1836

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %230, metadata !1641, metadata !DIExpression()), !dbg !1701
  %231 = icmp ult i64 %230, %129, !dbg !1840
  br i1 %231, label %232, label %234, !dbg !1843

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1840
  store i8 34, i8* %233, align 1, !dbg !1840, !tbaa !983
  br label %234, !dbg !1840

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %235, metadata !1641, metadata !DIExpression()), !dbg !1701
  %236 = icmp ult i64 %235, %129, !dbg !1844
  br i1 %236, label %237, label %239, !dbg !1847

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1844
  store i8 34, i8* %238, align 1, !dbg !1844, !tbaa !983
  br label %239, !dbg !1844

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %240, metadata !1641, metadata !DIExpression()), !dbg !1701
  %241 = icmp ult i64 %240, %129, !dbg !1848
  br i1 %241, label %242, label %244, !dbg !1851

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1848
  store i8 63, i8* %243, align 1, !dbg !1848, !tbaa !983
  br label %244, !dbg !1848

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %245, metadata !1641, metadata !DIExpression()), !dbg !1701
  br label %473, !dbg !1852

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1655, metadata !DIExpression()), !dbg !1768
  br label %256, !dbg !1853

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1655, metadata !DIExpression()), !dbg !1768
  br label %256, !dbg !1854

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1655, metadata !DIExpression()), !dbg !1768
  br label %254, !dbg !1855

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1655, metadata !DIExpression()), !dbg !1768
  br label %254, !dbg !1856

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1655, metadata !DIExpression()), !dbg !1768
  br label %256, !dbg !1857

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1655, metadata !DIExpression()), !dbg !1768
  br i1 %110, label %252, label %253, !dbg !1858

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1859

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1862

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %255, metadata !1655, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.label(metadata !1696), !dbg !1865
  br i1 %111, label %256, label %631, !dbg !1866

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %257, metadata !1655, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.label(metadata !1697), !dbg !1868
  br i1 %102, label %495, label %473, !dbg !1869

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1870

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1871, !tbaa !983
  %261 = icmp eq i8 %260, 0, !dbg !1873
  br i1 %261, label %262, label %473, !dbg !1874

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1875
  br i1 %263, label %264, label %473, !dbg !1877

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1658, metadata !DIExpression()), !dbg !1768
  br label %265, !dbg !1878

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1768
  call void @llvm.dbg.value(metadata i8 %266, metadata !1658, metadata !DIExpression()), !dbg !1768
  br i1 %111, label %473, label %631, !dbg !1879

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, metadata !1658, metadata !DIExpression()), !dbg !1768
  br i1 %110, label %268, label %473, !dbg !1881

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1882

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1885
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1887
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1887
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %274, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %273, metadata !1642, metadata !DIExpression()), !dbg !1701
  %275 = icmp ult i64 %123, %274, !dbg !1888
  br i1 %275, label %276, label %278, !dbg !1891

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1888
  store i8 39, i8* %277, align 1, !dbg !1888, !tbaa !983
  br label %278, !dbg !1888

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %279, metadata !1641, metadata !DIExpression()), !dbg !1701
  %280 = icmp ult i64 %279, %274, !dbg !1892
  br i1 %280, label %281, label %283, !dbg !1895

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1892
  store i8 92, i8* %282, align 1, !dbg !1892, !tbaa !983
  br label %283, !dbg !1892

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %284, metadata !1641, metadata !DIExpression()), !dbg !1701
  %285 = icmp ult i64 %284, %274, !dbg !1896
  br i1 %285, label %286, label %288, !dbg !1899

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1896
  store i8 39, i8* %287, align 1, !dbg !1896, !tbaa !983
  br label %288, !dbg !1896

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %289, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1701
  br label %473, !dbg !1900

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1901

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1659, metadata !DIExpression()), !dbg !1902
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !1903
  %293 = load i16*, i16** %292, align 8, !dbg !1903, !tbaa !755
  %294 = zext i8 %158 to i64, !dbg !1903
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1903
  %296 = load i16, i16* %295, align 2, !dbg !1903, !tbaa !1306
  %297 = lshr i16 %296, 14, !dbg !1905
  %298 = trunc i16 %297 to i8, !dbg !1905
  %299 = and i8 %298, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i8 %354, metadata !1662, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %355, metadata !1659, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %306, metadata !1634, metadata !DIExpression()), !dbg !1701
  %300 = icmp eq i8 %299, 0, !dbg !1906
  call void @llvm.dbg.value(metadata i1 %357, metadata !1658, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1768
  br label %359, !dbg !1907

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !1908
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1663, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8* %23, metadata !1910, metadata !DIExpression()) #27, !dbg !1918
  call void @llvm.dbg.value(metadata i32 0, metadata !1916, metadata !DIExpression()) #27, !dbg !1918
  call void @llvm.dbg.value(metadata i64 8, metadata !1917, metadata !DIExpression()) #27, !dbg !1918
  store i64 0, i64* %10, align 8, !dbg !1920
  call void @llvm.dbg.value(metadata i64 0, metadata !1659, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 1, metadata !1662, metadata !DIExpression()), !dbg !1902
  %302 = icmp eq i64 %154, -1, !dbg !1921
  br i1 %302, label %303, label %305, !dbg !1923

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %304, metadata !1634, metadata !DIExpression()), !dbg !1701
  br label %305, !dbg !1925

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1768
  call void @llvm.dbg.value(metadata i64 %306, metadata !1634, metadata !DIExpression()), !dbg !1701
  br label %307, !dbg !1926

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1927
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1928
  call void @llvm.dbg.value(metadata i8 %309, metadata !1662, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %308, metadata !1659, metadata !DIExpression()), !dbg !1902
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1929
  %310 = add i64 %308, %122, !dbg !1930
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1931
  %312 = sub i64 %306, %310, !dbg !1932
  call void @llvm.dbg.value(metadata i32* %12, metadata !1681, metadata !DIExpression(DW_OP_deref)), !dbg !1933
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %313, metadata !1684, metadata !DIExpression()), !dbg !1933
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1935

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1659, metadata !DIExpression()), !dbg !1902
  %315 = icmp ugt i64 %306, %310, !dbg !1936
  br i1 %315, label %316, label %341, !dbg !1938

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1939
  br label %318, !dbg !1939

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1659, metadata !DIExpression()), !dbg !1902
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1940
  %322 = load i8, i8* %321, align 1, !dbg !1940, !tbaa !983
  %323 = icmp eq i8 %322, 0, !dbg !1938
  br i1 %323, label %341, label %324, !dbg !1939

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %325, metadata !1659, metadata !DIExpression()), !dbg !1902
  %326 = add i64 %325, %122, !dbg !1942
  %327 = icmp ult i64 %326, %306, !dbg !1936
  br i1 %327, label %318, label %341, !dbg !1938, !llvm.loop !1943

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1944
  call void @llvm.dbg.value(metadata i64 1, metadata !1685, metadata !DIExpression()), !dbg !1945
  br i1 %330, label %331, label %344, !dbg !1944

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1685, metadata !DIExpression()), !dbg !1945
  %333 = add i64 %332, %310, !dbg !1946
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1949
  %335 = load i8, i8* %334, align 1, !dbg !1949, !tbaa !983
  %336 = sext i8 %335 to i32, !dbg !1949
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1950

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %338, metadata !1685, metadata !DIExpression()), !dbg !1945
  %339 = icmp eq i64 %338, %313, !dbg !1952
  br i1 %339, label %344, label %331, !dbg !1953, !llvm.loop !1954

340:                                              ; preds = %307
  br label %341, !dbg !1956

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1662, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 undef, metadata !1659, metadata !DIExpression()), !dbg !1902
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1956
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1957, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %345, metadata !1681, metadata !DIExpression()), !dbg !1933
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !1959
  %347 = icmp eq i32 %346, 0, !dbg !1959
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1960
  call void @llvm.dbg.value(metadata i8 %348, metadata !1662, metadata !DIExpression()), !dbg !1902
  %349 = add i64 %313, %308, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %349, metadata !1659, metadata !DIExpression()), !dbg !1902
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1956
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !1962
  %351 = icmp eq i32 %350, 0, !dbg !1963
  br i1 %351, label %307, label %353, !dbg !1964, !llvm.loop !1965

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1662, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 undef, metadata !1659, metadata !DIExpression()), !dbg !1902
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1956
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !1967
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !1967
  call void @llvm.dbg.value(metadata i8 %354, metadata !1662, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %355, metadata !1659, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %306, metadata !1634, metadata !DIExpression()), !dbg !1701
  %356 = and i8 %354, 1, !dbg !1906
  %357 = icmp eq i8 %356, 0, !dbg !1906
  call void @llvm.dbg.value(metadata i1 %357, metadata !1658, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1768
  %358 = icmp ugt i64 %355, 1, !dbg !1968
  br i1 %358, label %367, label %359, !dbg !1907

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1969
  br i1 %364, label %367, label %365, !dbg !1969

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i8 %472, metadata !1658, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %441, metadata !1657, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %440, metadata !1656, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %439, metadata !1651, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %438, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %371, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %437, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %375, metadata !1640, metadata !DIExpression()), !dbg !1701
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %372, metadata !1692, metadata !DIExpression()), !dbg !1971
  %373 = and i1 %102, %368
  br label %374, !dbg !1972

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1761
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1701
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1710
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1768
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1768
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %380, metadata !1657, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %379, metadata !1656, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %378, metadata !1651, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %377, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %376, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %375, metadata !1640, metadata !DIExpression()), !dbg !1701
  br i1 %373, label %381, label %427, !dbg !1974

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1979

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1657, metadata !DIExpression()), !dbg !1768
  %383 = and i8 %377, 1, !dbg !1982
  %384 = icmp eq i8 %383, 0, !dbg !1982
  %385 = and i1 %110, %384, !dbg !1982
  br i1 %385, label %386, label %402, !dbg !1982

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1984
  br i1 %387, label %388, label %390, !dbg !1988

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1984
  store i8 39, i8* %389, align 1, !dbg !1984, !tbaa !983
  br label %390, !dbg !1984

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %391, metadata !1641, metadata !DIExpression()), !dbg !1701
  %392 = icmp ult i64 %391, %129, !dbg !1989
  br i1 %392, label %393, label %395, !dbg !1992

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1989
  store i8 36, i8* %394, align 1, !dbg !1989, !tbaa !983
  br label %395, !dbg !1989

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %396, metadata !1641, metadata !DIExpression()), !dbg !1701
  %397 = icmp ult i64 %396, %129, !dbg !1993
  br i1 %397, label %398, label %400, !dbg !1996

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1993
  store i8 39, i8* %399, align 1, !dbg !1993, !tbaa !983
  br label %400, !dbg !1993

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %401, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, metadata !1648, metadata !DIExpression()), !dbg !1701
  br label %402, !dbg !1997

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1701
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %404, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %403, metadata !1641, metadata !DIExpression()), !dbg !1701
  %405 = icmp ult i64 %403, %129, !dbg !1998
  br i1 %405, label %406, label %408, !dbg !2001

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1998
  store i8 92, i8* %407, align 1, !dbg !1998, !tbaa !983
  br label %408, !dbg !1998

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %409, metadata !1641, metadata !DIExpression()), !dbg !1701
  %410 = icmp ult i64 %409, %129, !dbg !2002
  br i1 %410, label %411, label %415, !dbg !2005

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2002
  %413 = or i8 %412, 48, !dbg !2002
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2002
  store i8 %413, i8* %414, align 1, !dbg !2002, !tbaa !983
  br label %415, !dbg !2002

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %416, metadata !1641, metadata !DIExpression()), !dbg !1701
  %417 = icmp ult i64 %416, %129, !dbg !2006
  br i1 %417, label %418, label %423, !dbg !2009

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2006
  %420 = and i8 %419, 7, !dbg !2006
  %421 = or i8 %420, 48, !dbg !2006
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2006
  store i8 %421, i8* %422, align 1, !dbg !2006, !tbaa !983
  br label %423, !dbg !2006

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %424, metadata !1641, metadata !DIExpression()), !dbg !1701
  %425 = and i8 %378, 7, !dbg !2010
  %426 = or i8 %425, 48, !dbg !2011
  call void @llvm.dbg.value(metadata i8 %426, metadata !1651, metadata !DIExpression()), !dbg !1768
  br label %436, !dbg !2012

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2013
  %429 = icmp eq i8 %428, 0, !dbg !2013
  br i1 %429, label %436, label %430, !dbg !2015

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2016
  br i1 %431, label %432, label %434, !dbg !2020

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2016
  store i8 92, i8* %433, align 1, !dbg !2016, !tbaa !983
  br label %434, !dbg !2016

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %435, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1656, metadata !DIExpression()), !dbg !1768
  br label %436, !dbg !2021

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1701
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1710
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1768
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1768
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1768
  call void @llvm.dbg.value(metadata i8 %441, metadata !1657, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %440, metadata !1656, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %439, metadata !1651, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %438, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %437, metadata !1641, metadata !DIExpression()), !dbg !1701
  %442 = add i64 %375, 1, !dbg !2022
  %443 = icmp ugt i64 %372, %442, !dbg !2024
  br i1 %443, label %444, label %471, !dbg !2025

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2026
  %446 = icmp ne i8 %445, 0, !dbg !2026
  %447 = and i8 %441, 1, !dbg !2026
  %448 = icmp eq i8 %447, 0, !dbg !2026
  %449 = and i1 %446, %448, !dbg !2026
  br i1 %449, label %450, label %461, !dbg !2026

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2029
  br i1 %451, label %452, label %454, !dbg !2033

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2029
  store i8 39, i8* %453, align 1, !dbg !2029, !tbaa !983
  br label %454, !dbg !2029

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %455, metadata !1641, metadata !DIExpression()), !dbg !1701
  %456 = icmp ult i64 %455, %129, !dbg !2034
  br i1 %456, label %457, label %459, !dbg !2037

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2034
  store i8 39, i8* %458, align 1, !dbg !2034, !tbaa !983
  br label %459, !dbg !2034

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %460, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1701
  br label %461, !dbg !2038

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2039
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %463, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %462, metadata !1641, metadata !DIExpression()), !dbg !1701
  %464 = icmp ult i64 %462, %129, !dbg !2040
  br i1 %464, label %465, label %467, !dbg !2043

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2040
  store i8 %439, i8* %466, align 1, !dbg !2040, !tbaa !983
  br label %467, !dbg !2040

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %468, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %442, metadata !1640, metadata !DIExpression()), !dbg !1701
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2044
  %470 = load i8, i8* %469, align 1, !dbg !2044, !tbaa !983
  call void @llvm.dbg.value(metadata i8 %470, metadata !1651, metadata !DIExpression()), !dbg !1768
  br label %374, !dbg !2045, !llvm.loop !2046

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i8 %472, metadata !1658, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %441, metadata !1657, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %440, metadata !1656, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %439, metadata !1651, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %438, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %371, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %437, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %375, metadata !1640, metadata !DIExpression()), !dbg !1701
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1761
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1701
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1706
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2049
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1701
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1701
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1768
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1768
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1768
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %482, metadata !1658, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %481, metadata !1657, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %156, metadata !1656, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %480, metadata !1651, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %479, metadata !1649, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %478, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %477, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %476, metadata !1642, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %475, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %474, metadata !1640, metadata !DIExpression()), !dbg !1701
  br i1 %116, label %494, label %484, !dbg !2050

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2052
  %486 = zext i8 %485 to i64, !dbg !2052
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2053
  %488 = load i32, i32* %487, align 4, !dbg !2053, !tbaa !947
  %489 = and i8 %480, 31, !dbg !2054
  %490 = zext i8 %489 to i32, !dbg !2054
  %491 = shl nuw i32 1, %490, !dbg !2055
  %492 = and i32 %488, %491, !dbg !2055
  %493 = icmp eq i32 %492, 0, !dbg !2055
  br i1 %493, label %494, label %495, !dbg !2056

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2057

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2058
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1701
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1706
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2049
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1710
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1711
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1768
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1768
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %503, metadata !1658, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %502, metadata !1651, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %501, metadata !1649, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %500, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %499, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %498, metadata !1642, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %497, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %496, metadata !1640, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.label(metadata !1698), !dbg !2059
  br i1 %109, label %505, label %635, !dbg !2060

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1657, metadata !DIExpression()), !dbg !1768
  %506 = and i8 %500, 1, !dbg !2062
  %507 = icmp eq i8 %506, 0, !dbg !2062
  %508 = and i1 %110, %507, !dbg !2062
  br i1 %508, label %509, label %525, !dbg !2062

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2064
  br i1 %510, label %511, label %513, !dbg !2068

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2064
  store i8 39, i8* %512, align 1, !dbg !2064, !tbaa !983
  br label %513, !dbg !2064

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %514, metadata !1641, metadata !DIExpression()), !dbg !1701
  %515 = icmp ult i64 %514, %504, !dbg !2069
  br i1 %515, label %516, label %518, !dbg !2072

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2069
  store i8 36, i8* %517, align 1, !dbg !2069, !tbaa !983
  br label %518, !dbg !2069

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %519, metadata !1641, metadata !DIExpression()), !dbg !1701
  %520 = icmp ult i64 %519, %504, !dbg !2073
  br i1 %520, label %521, label %523, !dbg !2076

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2073
  store i8 39, i8* %522, align 1, !dbg !2073, !tbaa !983
  br label %523, !dbg !2073

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %524, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 1, metadata !1648, metadata !DIExpression()), !dbg !1701
  br label %525, !dbg !2077

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1768
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %527, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %526, metadata !1641, metadata !DIExpression()), !dbg !1701
  %528 = icmp ult i64 %526, %504, !dbg !2078
  br i1 %528, label %529, label %531, !dbg !2081

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2078
  store i8 92, i8* %530, align 1, !dbg !2078, !tbaa !983
  br label %531, !dbg !2078

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %543, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %542, metadata !1658, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %541, metadata !1657, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %540, metadata !1651, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %539, metadata !1649, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %538, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %537, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %536, metadata !1642, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %535, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %534, metadata !1640, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.label(metadata !1699), !dbg !2082
  br label %560, !dbg !2083

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2058
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1701
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1706
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2049
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1710
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1711
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2086
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1768
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1768
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %542, metadata !1658, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %541, metadata !1657, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %540, metadata !1651, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %539, metadata !1649, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %538, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %537, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %536, metadata !1642, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %535, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %534, metadata !1640, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.label(metadata !1699), !dbg !2082
  %544 = and i8 %538, 1, !dbg !2083
  %545 = icmp ne i8 %544, 0, !dbg !2083
  %546 = and i8 %541, 1, !dbg !2083
  %547 = icmp eq i8 %546, 0, !dbg !2083
  %548 = and i1 %545, %547, !dbg !2083
  br i1 %548, label %549, label %560, !dbg !2083

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2087
  br i1 %550, label %551, label %553, !dbg !2091

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2087
  store i8 39, i8* %552, align 1, !dbg !2087, !tbaa !983
  br label %553, !dbg !2087

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %554, metadata !1641, metadata !DIExpression()), !dbg !1701
  %555 = icmp ult i64 %554, %543, !dbg !2092
  br i1 %555, label %556, label %558, !dbg !2095

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2092
  store i8 39, i8* %557, align 1, !dbg !2092, !tbaa !983
  br label %558, !dbg !2092

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %559, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1701
  br label %560, !dbg !2096

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1768
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %569, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %568, metadata !1641, metadata !DIExpression()), !dbg !1701
  %570 = icmp ult i64 %568, %561, !dbg !2097
  br i1 %570, label %571, label %573, !dbg !2100

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2097
  store i8 %563, i8* %572, align 1, !dbg !2097, !tbaa !983
  br label %573, !dbg !2097

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %574, metadata !1641, metadata !DIExpression()), !dbg !1701
  %575 = icmp eq i8 %562, 0, !dbg !2101
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2103
  call void @llvm.dbg.value(metadata i8 %576, metadata !1650, metadata !DIExpression()), !dbg !1701
  br label %577, !dbg !2104

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2058
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1701
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1706
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2049
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1710
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1701
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1712
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %584, metadata !1650, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %583, metadata !1649, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %582, metadata !1648, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %581, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %580, metadata !1642, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %579, metadata !1641, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %578, metadata !1640, metadata !DIExpression()), !dbg !1701
  %586 = add i64 %578, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %586, metadata !1640, metadata !DIExpression()), !dbg !1701
  br label %121, !dbg !2106, !llvm.loop !2107

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2109
  %590 = and i1 %110, %589, !dbg !2111
  %591 = xor i1 %590, true, !dbg !2111
  %592 = or i1 %109, %591, !dbg !2111
  br i1 %592, label %593, label %635, !dbg !2111

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2112
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2112
  br i1 %597, label %598, label %607, !dbg !2112

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2114
  %600 = icmp eq i8 %599, 0, !dbg !2114
  br i1 %600, label %603, label %601, !dbg !2117

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2118
  br label %652, !dbg !2119

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2120
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2122
  br i1 %606, label %26, label %607, !dbg !2122

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2123
  %610 = and i1 %609, %608, !dbg !2125
  br i1 %610, label %611, label %626, !dbg !2125

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1643, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %123, metadata !1641, metadata !DIExpression()), !dbg !1701
  %612 = load i8, i8* %97, align 1, !dbg !2126, !tbaa !983
  %613 = icmp eq i8 %612, 0, !dbg !2129
  br i1 %613, label %626, label %614, !dbg !2129

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1643, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %617, metadata !1641, metadata !DIExpression()), !dbg !1701
  %618 = icmp ult i64 %617, %129, !dbg !2130
  br i1 %618, label %619, label %621, !dbg !2133

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2130
  store i8 %615, i8* %620, align 1, !dbg !2130, !tbaa !983
  br label %621, !dbg !2130

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %622, metadata !1641, metadata !DIExpression()), !dbg !1701
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2134
  call void @llvm.dbg.value(metadata i8* %623, metadata !1643, metadata !DIExpression()), !dbg !1701
  %624 = load i8, i8* %623, align 1, !dbg !2126, !tbaa !983
  %625 = icmp eq i8 %624, 0, !dbg !2129
  br i1 %625, label %626, label %614, !dbg !2129, !llvm.loop !2135

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1743
  call void @llvm.dbg.value(metadata i64 %627, metadata !1641, metadata !DIExpression()), !dbg !1701
  %628 = icmp ult i64 %627, %129, !dbg !2137
  br i1 %628, label %629, label %652, !dbg !2139

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2140
  store i8 0, i8* %630, align 1, !dbg !2141, !tbaa !983
  br label %652, !dbg !2140

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %637, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.label(metadata !1700), !dbg !2142
  %633 = icmp eq i8 %101, 0, !dbg !2143
  %634 = select i1 %633, i32 2, i32 4, !dbg !2143
  br label %642, !dbg !2143

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1632, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %637, metadata !1634, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.label(metadata !1700), !dbg !2142
  %639 = icmp eq i32 %93, 2, !dbg !2145
  %640 = icmp eq i8 %636, 0, !dbg !2143
  %641 = select i1 %640, i32 2, i32 4, !dbg !2143
  br i1 %639, label %642, label %646, !dbg !2143

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2143

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1635, metadata !DIExpression()), !dbg !1701
  %650 = and i32 %5, -3, !dbg !2146
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2147
  br label %652, !dbg !2148

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2149
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2150 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2154, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i32 %1, metadata !2155, metadata !DIExpression()), !dbg !2158
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2159
  call void @llvm.dbg.value(metadata i8* %3, metadata !2156, metadata !DIExpression()), !dbg !2158
  %4 = icmp eq i8* %3, %0, !dbg !2160
  br i1 %4, label %5, label %72, !dbg !2162

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %6, metadata !2157, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8* %6, metadata !2164, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8* undef, metadata !2170, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 85, metadata !2171, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 84, metadata !2172, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 70, metadata !2173, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 45, metadata !2174, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 56, metadata !2175, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 0, metadata !2179, metadata !DIExpression()), !dbg !2180
  %7 = load i8, i8* %6, align 1, !dbg !2183, !tbaa !983
  %8 = and i8 %7, -33, !dbg !2183
  %9 = sext i8 %8 to i32, !dbg !2183
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2183

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2185, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* undef, metadata !2190, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 84, metadata !2191, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 70, metadata !2192, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 45, metadata !2193, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 56, metadata !2194, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2198, metadata !DIExpression()), !dbg !2199
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2203
  %12 = load i8, i8* %11, align 1, !dbg !2203, !tbaa !983
  %13 = and i8 %12, -33, !dbg !2203
  %14 = icmp eq i8 %13, 84, !dbg !2203
  br i1 %14, label %15, label %69, !dbg !2203

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2205, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* undef, metadata !2210, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 70, metadata !2211, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 45, metadata !2212, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 56, metadata !2213, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2214, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2217, metadata !DIExpression()), !dbg !2218
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2222
  %17 = load i8, i8* %16, align 1, !dbg !2222, !tbaa !983
  %18 = and i8 %17, -33, !dbg !2222
  %19 = icmp eq i8 %18, 70, !dbg !2222
  br i1 %19, label %20, label %69, !dbg !2222

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2224, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* undef, metadata !2229, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 45, metadata !2230, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 56, metadata !2231, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2232, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2236
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2240
  %22 = load i8, i8* %21, align 1, !dbg !2240, !tbaa !983
  %23 = icmp eq i8 %22, 45, !dbg !2240
  br i1 %23, label %24, label %69, !dbg !2242

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2243, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8* undef, metadata !2248, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 56, metadata !2249, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 0, metadata !2251, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 0, metadata !2252, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2254
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2258
  %26 = load i8, i8* %25, align 1, !dbg !2258, !tbaa !983
  %27 = icmp eq i8 %26, 56, !dbg !2258
  br i1 %27, label %28, label %69, !dbg !2260

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2261, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* undef, metadata !2266, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8 0, metadata !2267, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8 0, metadata !2268, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2271
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2275
  %30 = load i8, i8* %29, align 1, !dbg !2275, !tbaa !983
  %31 = icmp eq i8 %30, 0, !dbg !2275
  br i1 %31, label %32, label %69, !dbg !2277

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2278, !tbaa !983
  %34 = icmp eq i8 %33, 96, !dbg !2279
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2278
  br label %72, !dbg !2280

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2185, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* undef, metadata !2190, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 66, metadata !2191, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 49, metadata !2192, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 56, metadata !2193, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 48, metadata !2194, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 51, metadata !2195, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 48, metadata !2196, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 0, metadata !2198, metadata !DIExpression()), !dbg !2281
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2285
  %38 = load i8, i8* %37, align 1, !dbg !2285, !tbaa !983
  %39 = and i8 %38, -33, !dbg !2285
  %40 = icmp eq i8 %39, 66, !dbg !2285
  br i1 %40, label %41, label %69, !dbg !2285

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2205, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* undef, metadata !2210, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 49, metadata !2211, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 56, metadata !2212, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 48, metadata !2213, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 51, metadata !2214, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 48, metadata !2215, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 0, metadata !2217, metadata !DIExpression()), !dbg !2286
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2288
  %43 = load i8, i8* %42, align 1, !dbg !2288, !tbaa !983
  %44 = icmp eq i8 %43, 49, !dbg !2288
  br i1 %44, label %45, label %69, !dbg !2289

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2224, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* undef, metadata !2229, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 56, metadata !2230, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 48, metadata !2231, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 51, metadata !2232, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 48, metadata !2233, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 0, metadata !2234, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2290
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2292
  %47 = load i8, i8* %46, align 1, !dbg !2292, !tbaa !983
  %48 = icmp eq i8 %47, 56, !dbg !2292
  br i1 %48, label %49, label %69, !dbg !2293

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2243, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* undef, metadata !2248, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 48, metadata !2249, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 51, metadata !2250, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 48, metadata !2251, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 0, metadata !2252, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2294
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2296
  %51 = load i8, i8* %50, align 1, !dbg !2296, !tbaa !983
  %52 = icmp eq i8 %51, 48, !dbg !2296
  br i1 %52, label %53, label %69, !dbg !2297

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2261, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8* undef, metadata !2266, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 51, metadata !2267, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 48, metadata !2268, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2298
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2300
  %55 = load i8, i8* %54, align 1, !dbg !2300, !tbaa !983
  %56 = icmp eq i8 %55, 51, !dbg !2300
  br i1 %56, label %57, label %69, !dbg !2301

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2302, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* undef, metadata !2307, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 48, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2311
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2315
  %59 = load i8, i8* %58, align 1, !dbg !2315, !tbaa !983
  %60 = icmp eq i8 %59, 48, !dbg !2315
  br i1 %60, label %61, label %69, !dbg !2317

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2318, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* undef, metadata !2323, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2326
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2330
  %63 = load i8, i8* %62, align 1, !dbg !2330, !tbaa !983
  %64 = icmp eq i8 %63, 0, !dbg !2330
  br i1 %64, label %65, label %69, !dbg !2332

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2333, !tbaa !983
  %67 = icmp eq i8 %66, 96, !dbg !2334
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2333
  br label %72, !dbg !2335

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2336
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2337
  br label %72, !dbg !2338

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2158
  ret i8* %73, !dbg !2339
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind
declare !dbg !2340 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2342 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2352, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %1, metadata !2353, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2354, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %0, metadata !2356, metadata !DIExpression()) #27, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %1, metadata !2361, metadata !DIExpression()) #27, !dbg !2369
  call void @llvm.dbg.value(metadata i64* null, metadata !2362, metadata !DIExpression()) #27, !dbg !2369
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2363, metadata !DIExpression()) #27, !dbg !2369
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2371
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2364, metadata !DIExpression()) #27, !dbg !2369
  %6 = tail call i32* @__errno_location() #31, !dbg !2372
  %7 = load i32, i32* %6, align 4, !dbg !2372, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %7, metadata !2365, metadata !DIExpression()) #27, !dbg !2369
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2373
  %9 = load i32, i32* %8, align 4, !dbg !2373, !tbaa !1577
  %10 = or i32 %9, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %10, metadata !2366, metadata !DIExpression()) #27, !dbg !2369
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2375
  %12 = load i32, i32* %11, align 8, !dbg !2375, !tbaa !1525
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2376
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2377
  %15 = load i8*, i8** %14, align 8, !dbg !2377, !tbaa !1599
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2378
  %17 = load i8*, i8** %16, align 8, !dbg !2378, !tbaa !1602
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2379
  %19 = add i64 %18, 1, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %19, metadata !2367, metadata !DIExpression()) #27, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %19, metadata !2381, metadata !DIExpression()) #27, !dbg !2386
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2388
  call void @llvm.dbg.value(metadata i8* %20, metadata !2368, metadata !DIExpression()) #27, !dbg !2369
  %21 = load i32, i32* %11, align 8, !dbg !2389, !tbaa !1525
  %22 = load i8*, i8** %14, align 8, !dbg !2390, !tbaa !1599
  %23 = load i8*, i8** %16, align 8, !dbg !2391, !tbaa !1602
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2392
  store i32 %7, i32* %6, align 4, !dbg !2393, !tbaa !947
  ret i8* %20, !dbg !2394
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2356, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %1, metadata !2361, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64* %2, metadata !2362, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2363, metadata !DIExpression()), !dbg !2395
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2396
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2364, metadata !DIExpression()), !dbg !2395
  %7 = tail call i32* @__errno_location() #31, !dbg !2397
  %8 = load i32, i32* %7, align 4, !dbg !2397, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %8, metadata !2365, metadata !DIExpression()), !dbg !2395
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2398
  %10 = load i32, i32* %9, align 4, !dbg !2398, !tbaa !1577
  %11 = icmp eq i64* %2, null, !dbg !2399
  %12 = zext i1 %11 to i32, !dbg !2399
  %13 = or i32 %10, %12, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %13, metadata !2366, metadata !DIExpression()), !dbg !2395
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2401
  %15 = load i32, i32* %14, align 8, !dbg !2401, !tbaa !1525
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2402
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2403
  %18 = load i8*, i8** %17, align 8, !dbg !2403, !tbaa !1599
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2404
  %20 = load i8*, i8** %19, align 8, !dbg !2404, !tbaa !1602
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2405
  %22 = add i64 %21, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %22, metadata !2367, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %22, metadata !2381, metadata !DIExpression()) #27, !dbg !2407
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2409
  call void @llvm.dbg.value(metadata i8* %23, metadata !2368, metadata !DIExpression()), !dbg !2395
  %24 = load i32, i32* %14, align 8, !dbg !2410, !tbaa !1525
  %25 = load i8*, i8** %17, align 8, !dbg !2411, !tbaa !1599
  %26 = load i8*, i8** %19, align 8, !dbg !2412, !tbaa !1602
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2413
  store i32 %8, i32* %7, align 4, !dbg !2414, !tbaa !947
  br i1 %11, label %29, label %28, !dbg !2415

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2416, !tbaa !955
  br label %29, !dbg !2418

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2419
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2420 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2424, !tbaa !755
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 1, metadata !2423, metadata !DIExpression()), !dbg !2425
  %2 = load i32, i32* @nslots, align 4, !dbg !2426, !tbaa !947
  %3 = icmp sgt i32 %2, 1, !dbg !2429
  br i1 %3, label %4, label %12, !dbg !2430

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2429
  br label %6, !dbg !2430

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2423, metadata !DIExpression()), !dbg !2425
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2431
  %9 = load i8*, i8** %8, align 8, !dbg !2431, !tbaa !2432
  tail call void @free(i8* %9) #27, !dbg !2434
  %10 = add nuw nsw i64 %7, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %10, metadata !2423, metadata !DIExpression()), !dbg !2425
  %11 = icmp eq i64 %10, %5, !dbg !2429
  br i1 %11, label %12, label %6, !dbg !2430, !llvm.loop !2436

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2438
  %14 = load i8*, i8** %13, align 8, !dbg !2438, !tbaa !2432
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2440
  br i1 %15, label %17, label %16, !dbg !2441

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2442
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2444, !tbaa !2445
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2446, !tbaa !2432
  br label %17, !dbg !2447

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2448
  br i1 %18, label %21, label %19, !dbg !2450

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2451
  tail call void @free(i8* %20) #27, !dbg !2453
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2454, !tbaa !755
  br label %21, !dbg !2455

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2456, !tbaa !947
  ret void, !dbg !2457
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8* %1, metadata !2461, metadata !DIExpression()), !dbg !2462
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2463
  ret i8* %3, !dbg !2464
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2469, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %1, metadata !2470, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %2, metadata !2471, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2472, metadata !DIExpression()), !dbg !2484
  %5 = tail call i32* @__errno_location() #31, !dbg !2485
  %6 = load i32, i32* %5, align 4, !dbg !2485, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %6, metadata !2473, metadata !DIExpression()), !dbg !2484
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2486, !tbaa !755
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2474, metadata !DIExpression()), !dbg !2484
  %8 = icmp slt i32 %0, 0, !dbg !2487
  br i1 %8, label %9, label %10, !dbg !2489

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2490
  unreachable, !dbg !2490

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2491, !tbaa !947
  %12 = icmp sgt i32 %11, %0, !dbg !2492
  br i1 %12, label %34, label %13, !dbg !2493

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2494
  call void @llvm.dbg.value(metadata i1 %14, metadata !2475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2495
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2478, metadata !DIExpression()), !dbg !2495
  %15 = icmp eq i32 %0, 2147483647, !dbg !2496
  br i1 %15, label %16, label %17, !dbg !2498

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2499
  unreachable, !dbg !2499

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2500
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2500
  %20 = add nuw nsw i32 %0, 1, !dbg !2501
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2502
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !2503
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2503
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2474, metadata !DIExpression()), !dbg !2484
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2504, !tbaa !755
  br i1 %14, label %25, label %26, !dbg !2505

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2506, !tbaa.struct !2508
  br label %26, !dbg !2509

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2510, !tbaa !947
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2511
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2512
  %31 = sub nsw i32 %20, %27, !dbg !2513
  %32 = sext i32 %31 to i64, !dbg !2514
  %33 = shl nsw i64 %32, 4, !dbg !2515
  call void @llvm.dbg.value(metadata i8* %30, metadata !1910, metadata !DIExpression()) #27, !dbg !2516
  call void @llvm.dbg.value(metadata i32 0, metadata !1916, metadata !DIExpression()) #27, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %33, metadata !1917, metadata !DIExpression()) #27, !dbg !2516
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !2518
  store i32 %20, i32* @nslots, align 4, !dbg !2519, !tbaa !947
  br label %34, !dbg !2520

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2484
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2474, metadata !DIExpression()), !dbg !2484
  %36 = zext i32 %0 to i64, !dbg !2521
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2522
  %38 = load i64, i64* %37, align 8, !dbg !2522, !tbaa !2445
  call void @llvm.dbg.value(metadata i64 %38, metadata !2479, metadata !DIExpression()), !dbg !2523
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2524
  %40 = load i8*, i8** %39, align 8, !dbg !2524, !tbaa !2432
  call void @llvm.dbg.value(metadata i8* %40, metadata !2481, metadata !DIExpression()), !dbg !2523
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2525
  %42 = load i32, i32* %41, align 4, !dbg !2525, !tbaa !1577
  %43 = or i32 %42, 1, !dbg !2526
  call void @llvm.dbg.value(metadata i32 %43, metadata !2482, metadata !DIExpression()), !dbg !2523
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2527
  %45 = load i32, i32* %44, align 8, !dbg !2527, !tbaa !1525
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2528
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2529
  %48 = load i8*, i8** %47, align 8, !dbg !2529, !tbaa !1599
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2530
  %50 = load i8*, i8** %49, align 8, !dbg !2530, !tbaa !1602
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2531
  call void @llvm.dbg.value(metadata i64 %51, metadata !2483, metadata !DIExpression()), !dbg !2523
  %52 = icmp ugt i64 %38, %51, !dbg !2532
  br i1 %52, label %63, label %53, !dbg !2534

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %54, metadata !2479, metadata !DIExpression()), !dbg !2523
  store i64 %54, i64* %37, align 8, !dbg !2537, !tbaa !2445
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2538
  br i1 %55, label %57, label %56, !dbg !2540

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !2541
  br label %57, !dbg !2541

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2381, metadata !DIExpression()) #27, !dbg !2542
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !2544
  call void @llvm.dbg.value(metadata i8* %58, metadata !2481, metadata !DIExpression()), !dbg !2523
  store i8* %58, i8** %39, align 8, !dbg !2545, !tbaa !2432
  %59 = load i32, i32* %44, align 8, !dbg !2546, !tbaa !1525
  %60 = load i8*, i8** %47, align 8, !dbg !2547, !tbaa !1599
  %61 = load i8*, i8** %49, align 8, !dbg !2548, !tbaa !1602
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2549
  br label %63, !dbg !2550

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2523
  call void @llvm.dbg.value(metadata i8* %64, metadata !2481, metadata !DIExpression()), !dbg !2523
  store i32 %6, i32* %5, align 4, !dbg !2551, !tbaa !947
  ret i8* %64, !dbg !2552
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2553 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8* %1, metadata !2558, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %2, metadata !2559, metadata !DIExpression()), !dbg !2560
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2561
  ret i8* %4, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2565, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 0, metadata !2460, metadata !DIExpression()) #27, !dbg !2567
  call void @llvm.dbg.value(metadata i8* %0, metadata !2461, metadata !DIExpression()) #27, !dbg !2567
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2569
  ret i8* %2, !dbg !2570
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2571 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2576, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 0, metadata !2557, metadata !DIExpression()) #27, !dbg !2578
  call void @llvm.dbg.value(metadata i8* %0, metadata !2558, metadata !DIExpression()) #27, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %1, metadata !2559, metadata !DIExpression()) #27, !dbg !2578
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2580
  ret i8* %3, !dbg !2581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2582 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 %1, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8* %2, metadata !2588, metadata !DIExpression()), !dbg !2590
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2591
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2591
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2589, metadata !DIExpression()), !dbg !2592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()) #27, !dbg !2603
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2602, metadata !DIExpression()) #27, !dbg !2605
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2605, !alias.scope !2593
  %6 = icmp eq i32 %1, 10, !dbg !2606
  br i1 %6, label %7, label %8, !dbg !2608

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2609, !noalias !2593
  unreachable, !dbg !2609

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2610
  store i32 %1, i32* %9, align 8, !dbg !2611, !tbaa !1525, !alias.scope !2593
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2613
  ret i8* %10, !dbg !2614
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2615 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2619, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 %1, metadata !2620, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %2, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %3, metadata !2622, metadata !DIExpression()), !dbg !2624
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2625
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2625
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2623, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2627), !dbg !2630
  call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()) #27, !dbg !2631
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2602, metadata !DIExpression()) #27, !dbg !2633
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !2633, !alias.scope !2627
  %7 = icmp eq i32 %1, 10, !dbg !2634
  br i1 %7, label %8, label %9, !dbg !2635

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2636, !noalias !2627
  unreachable, !dbg !2636

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2637
  store i32 %1, i32* %10, align 8, !dbg !2638, !tbaa !1525, !alias.scope !2627
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2639
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2640
  ret i8* %11, !dbg !2641
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2642 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2646, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %1, metadata !2647, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i32 0, metadata !2586, metadata !DIExpression()) #27, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()) #27, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2588, metadata !DIExpression()) #27, !dbg !2649
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2651
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2651
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2589, metadata !DIExpression()) #27, !dbg !2652
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2653) #27, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()) #27, !dbg !2657
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2602, metadata !DIExpression()) #27, !dbg !2659
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !2659, !alias.scope !2653
  %5 = icmp eq i32 %0, 10, !dbg !2660
  br i1 %5, label %6, label %7, !dbg !2661

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !2662, !noalias !2653
  unreachable, !dbg !2662

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2663
  store i32 %0, i32* %8, align 8, !dbg !2664, !tbaa !1525, !alias.scope !2653
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2665
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2666
  ret i8* %9, !dbg !2667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2668 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %1, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %2, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !2619, metadata !DIExpression()) #27, !dbg !2676
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()) #27, !dbg !2676
  call void @llvm.dbg.value(metadata i8* %1, metadata !2621, metadata !DIExpression()) #27, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %2, metadata !2622, metadata !DIExpression()) #27, !dbg !2676
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2678
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2678
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2623, metadata !DIExpression()) #27, !dbg !2679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680) #27, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()) #27, !dbg !2684
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2602, metadata !DIExpression()) #27, !dbg !2686
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2686, !alias.scope !2680
  %6 = icmp eq i32 %0, 10, !dbg !2687
  br i1 %6, label %7, label %8, !dbg !2688

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2689, !noalias !2680
  unreachable, !dbg !2689

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2690
  store i32 %0, i32* %9, align 8, !dbg !2691, !tbaa !1525, !alias.scope !2680
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !2692
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2693
  ret i8* %10, !dbg !2694
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2695 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %1, metadata !2700, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 %2, metadata !2701, metadata !DIExpression()), !dbg !2703
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2704
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2704
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2702, metadata !DIExpression()), !dbg !2705
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2706, !tbaa.struct !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1543, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 %2, metadata !1544, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 1, metadata !1545, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 %2, metadata !1546, metadata !DIExpression()), !dbg !2708
  %6 = lshr i8 %2, 5, !dbg !2710
  %7 = zext i8 %6 to i64, !dbg !2710
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2711
  call void @llvm.dbg.value(metadata i32* %8, metadata !1548, metadata !DIExpression()), !dbg !2708
  %9 = and i8 %2, 31, !dbg !2712
  %10 = zext i8 %9 to i32, !dbg !2712
  call void @llvm.dbg.value(metadata i32 %10, metadata !1550, metadata !DIExpression()), !dbg !2708
  %11 = load i32, i32* %8, align 4, !dbg !2713, !tbaa !947
  %12 = lshr i32 %11, %10, !dbg !2714
  %13 = and i32 %12, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %13, metadata !1551, metadata !DIExpression()), !dbg !2708
  %14 = xor i32 %13, 1, !dbg !2716
  %15 = shl i32 %14, %10, !dbg !2717
  %16 = xor i32 %15, %11, !dbg !2718
  store i32 %16, i32* %8, align 4, !dbg !2718, !tbaa !947
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2719
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2720
  ret i8* %17, !dbg !2721
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2722 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8 %1, metadata !2727, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()) #27, !dbg !2729
  call void @llvm.dbg.value(metadata i64 -1, metadata !2700, metadata !DIExpression()) #27, !dbg !2729
  call void @llvm.dbg.value(metadata i8 %1, metadata !2701, metadata !DIExpression()) #27, !dbg !2729
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2731
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2731
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2702, metadata !DIExpression()) #27, !dbg !2732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2733, !tbaa.struct !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1543, metadata !DIExpression()) #27, !dbg !2734
  call void @llvm.dbg.value(metadata i8 %1, metadata !1544, metadata !DIExpression()) #27, !dbg !2734
  call void @llvm.dbg.value(metadata i32 1, metadata !1545, metadata !DIExpression()) #27, !dbg !2734
  call void @llvm.dbg.value(metadata i8 %1, metadata !1546, metadata !DIExpression()) #27, !dbg !2734
  %5 = lshr i8 %1, 5, !dbg !2736
  %6 = zext i8 %5 to i64, !dbg !2736
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2737
  call void @llvm.dbg.value(metadata i32* %7, metadata !1548, metadata !DIExpression()) #27, !dbg !2734
  %8 = and i8 %1, 31, !dbg !2738
  %9 = zext i8 %8 to i32, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %9, metadata !1550, metadata !DIExpression()) #27, !dbg !2734
  %10 = load i32, i32* %7, align 4, !dbg !2739, !tbaa !947
  %11 = lshr i32 %10, %9, !dbg !2740
  %12 = and i32 %11, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %12, metadata !1551, metadata !DIExpression()) #27, !dbg !2734
  %13 = xor i32 %12, 1, !dbg !2742
  %14 = shl i32 %13, %9, !dbg !2743
  %15 = xor i32 %14, %10, !dbg !2744
  store i32 %15, i32* %7, align 4, !dbg !2744, !tbaa !947
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2746
  ret i8* %16, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2748 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2750, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %0, metadata !2726, metadata !DIExpression()) #27, !dbg !2752
  call void @llvm.dbg.value(metadata i8 58, metadata !2727, metadata !DIExpression()) #27, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()) #27, !dbg !2754
  call void @llvm.dbg.value(metadata i64 -1, metadata !2700, metadata !DIExpression()) #27, !dbg !2754
  call void @llvm.dbg.value(metadata i8 58, metadata !2701, metadata !DIExpression()) #27, !dbg !2754
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2756
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2702, metadata !DIExpression()) #27, !dbg !2757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2758, !tbaa.struct !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1543, metadata !DIExpression()) #27, !dbg !2759
  call void @llvm.dbg.value(metadata i8 58, metadata !1544, metadata !DIExpression()) #27, !dbg !2759
  call void @llvm.dbg.value(metadata i32 1, metadata !1545, metadata !DIExpression()) #27, !dbg !2759
  call void @llvm.dbg.value(metadata i8 58, metadata !1546, metadata !DIExpression()) #27, !dbg !2759
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2761
  call void @llvm.dbg.value(metadata i32* %4, metadata !1548, metadata !DIExpression()) #27, !dbg !2759
  call void @llvm.dbg.value(metadata i32 26, metadata !1550, metadata !DIExpression()) #27, !dbg !2759
  %5 = load i32, i32* %4, align 4, !dbg !2762, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %5, metadata !1551, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2759
  %6 = or i32 %5, 67108864, !dbg !2763
  store i32 %6, i32* %4, align 4, !dbg !2763, !tbaa !947
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !2764
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2765
  ret i8* %7, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2767 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()) #27, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %1, metadata !2700, metadata !DIExpression()) #27, !dbg !2772
  call void @llvm.dbg.value(metadata i8 58, metadata !2701, metadata !DIExpression()) #27, !dbg !2772
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2774
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2774
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2702, metadata !DIExpression()) #27, !dbg !2775
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2776, !tbaa.struct !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1543, metadata !DIExpression()) #27, !dbg !2777
  call void @llvm.dbg.value(metadata i8 58, metadata !1544, metadata !DIExpression()) #27, !dbg !2777
  call void @llvm.dbg.value(metadata i32 1, metadata !1545, metadata !DIExpression()) #27, !dbg !2777
  call void @llvm.dbg.value(metadata i8 58, metadata !1546, metadata !DIExpression()) #27, !dbg !2777
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2779
  call void @llvm.dbg.value(metadata i32* %5, metadata !1548, metadata !DIExpression()) #27, !dbg !2777
  call void @llvm.dbg.value(metadata i32 26, metadata !1550, metadata !DIExpression()) #27, !dbg !2777
  %6 = load i32, i32* %5, align 4, !dbg !2780, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %6, metadata !1551, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2777
  %7 = or i32 %6, 67108864, !dbg !2781
  store i32 %7, i32* %5, align 4, !dbg !2781, !tbaa !947
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !2782
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2783
  ret i8* %8, !dbg !2784
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2785 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2602, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %0, metadata !2787, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 %1, metadata !2788, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8* %2, metadata !2789, metadata !DIExpression()), !dbg !2793
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2794
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2794
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2790, metadata !DIExpression()), !dbg !2795
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2796
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2797), !dbg !2796
  call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()) #27, !dbg !2800
  call void @llvm.dbg.value(metadata i32 0, metadata !2602, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2800
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2791, !alias.scope !2797
  %8 = icmp eq i32 %1, 10, !dbg !2801
  br i1 %8, label %9, label %10, !dbg !2802

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2803, !noalias !2797
  unreachable, !dbg !2803

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2602, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2800
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2796
  store i32 %1, i32* %11, align 8, !dbg !2796, !tbaa.struct !2707
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2796
  %13 = bitcast i32* %12 to i8*, !dbg !2796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2796, !tbaa.struct !2804
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2796
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1543, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 58, metadata !1544, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 1, metadata !1545, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 58, metadata !1546, metadata !DIExpression()), !dbg !2805
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2807
  call void @llvm.dbg.value(metadata i32* %14, metadata !1548, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 26, metadata !1550, metadata !DIExpression()), !dbg !2805
  %15 = load i32, i32* %14, align 4, !dbg !2808, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %15, metadata !1551, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2805
  %16 = or i32 %15, 67108864, !dbg !2809
  store i32 %16, i32* %14, align 4, !dbg !2809, !tbaa !947
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2810
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2811
  ret i8* %17, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2813 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %1, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %2, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %3, metadata !2820, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 %0, metadata !2822, metadata !DIExpression()) #27, !dbg !2832
  call void @llvm.dbg.value(metadata i8* %1, metadata !2827, metadata !DIExpression()) #27, !dbg !2832
  call void @llvm.dbg.value(metadata i8* %2, metadata !2828, metadata !DIExpression()) #27, !dbg !2832
  call void @llvm.dbg.value(metadata i8* %3, metadata !2829, metadata !DIExpression()) #27, !dbg !2832
  call void @llvm.dbg.value(metadata i64 -1, metadata !2830, metadata !DIExpression()) #27, !dbg !2832
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2834
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2834
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2831, metadata !DIExpression()) #27, !dbg !2835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2836, !tbaa.struct !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1584, metadata !DIExpression()) #27, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %1, metadata !1585, metadata !DIExpression()) #27, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %2, metadata !1586, metadata !DIExpression()) #27, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1584, metadata !DIExpression()) #27, !dbg !2837
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2839
  store i32 10, i32* %7, align 8, !dbg !2840, !tbaa !1525
  %8 = icmp ne i8* %1, null, !dbg !2841
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2842
  br i1 %10, label %12, label %11, !dbg !2842

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !2843
  unreachable, !dbg !2843

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2844
  store i8* %1, i8** %13, align 8, !dbg !2845, !tbaa !1599
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2846
  store i8* %2, i8** %14, align 8, !dbg !2847, !tbaa !1602
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !2848
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2849
  ret i8* %15, !dbg !2850
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2823 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2822, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %1, metadata !2827, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %2, metadata !2828, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %3, metadata !2829, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i64 %4, metadata !2830, metadata !DIExpression()), !dbg !2851
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2852
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !2852
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2831, metadata !DIExpression()), !dbg !2853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2854, !tbaa.struct !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1584, metadata !DIExpression()) #27, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %1, metadata !1585, metadata !DIExpression()) #27, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %2, metadata !1586, metadata !DIExpression()) #27, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1584, metadata !DIExpression()) #27, !dbg !2855
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2857
  store i32 10, i32* %8, align 8, !dbg !2858, !tbaa !1525
  %9 = icmp ne i8* %1, null, !dbg !2859
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2860
  br i1 %11, label %13, label %12, !dbg !2860

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !2861
  unreachable, !dbg !2861

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2862
  store i8* %1, i8** %14, align 8, !dbg !2863, !tbaa !1599
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2864
  store i8* %2, i8** %15, align 8, !dbg !2865, !tbaa !1602
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2866
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !2867
  ret i8* %16, !dbg !2868
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2869 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %1, metadata !2874, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %2, metadata !2875, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 0, metadata !2817, metadata !DIExpression()) #27, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %0, metadata !2818, metadata !DIExpression()) #27, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %1, metadata !2819, metadata !DIExpression()) #27, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %2, metadata !2820, metadata !DIExpression()) #27, !dbg !2877
  call void @llvm.dbg.value(metadata i32 0, metadata !2822, metadata !DIExpression()) #27, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %0, metadata !2827, metadata !DIExpression()) #27, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %1, metadata !2828, metadata !DIExpression()) #27, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %2, metadata !2829, metadata !DIExpression()) #27, !dbg !2879
  call void @llvm.dbg.value(metadata i64 -1, metadata !2830, metadata !DIExpression()) #27, !dbg !2879
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2881
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2881
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2831, metadata !DIExpression()) #27, !dbg !2882
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2883, !tbaa.struct !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1584, metadata !DIExpression()) #27, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %0, metadata !1585, metadata !DIExpression()) #27, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %1, metadata !1586, metadata !DIExpression()) #27, !dbg !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1584, metadata !DIExpression()) #27, !dbg !2884
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2886
  store i32 10, i32* %6, align 8, !dbg !2887, !tbaa !1525
  %7 = icmp ne i8* %0, null, !dbg !2888
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2889
  br i1 %9, label %11, label %10, !dbg !2889

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !2890
  unreachable, !dbg !2890

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2891
  store i8* %0, i8** %12, align 8, !dbg !2892, !tbaa !1599
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2893
  store i8* %1, i8** %13, align 8, !dbg !2894, !tbaa !1602
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2896
  ret i8* %14, !dbg !2897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2898 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2902, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %1, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %2, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %3, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 0, metadata !2822, metadata !DIExpression()) #27, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %0, metadata !2827, metadata !DIExpression()) #27, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %1, metadata !2828, metadata !DIExpression()) #27, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %2, metadata !2829, metadata !DIExpression()) #27, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %3, metadata !2830, metadata !DIExpression()) #27, !dbg !2907
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2909
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2909
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2831, metadata !DIExpression()) #27, !dbg !2910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2911, !tbaa.struct !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1584, metadata !DIExpression()) #27, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %0, metadata !1585, metadata !DIExpression()) #27, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %1, metadata !1586, metadata !DIExpression()) #27, !dbg !2912
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1584, metadata !DIExpression()) #27, !dbg !2912
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2914
  store i32 10, i32* %7, align 8, !dbg !2915, !tbaa !1525
  %8 = icmp ne i8* %0, null, !dbg !2916
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2917
  br i1 %10, label %12, label %11, !dbg !2917

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !2918
  unreachable, !dbg !2918

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2919
  store i8* %0, i8** %13, align 8, !dbg !2920, !tbaa !1599
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2921
  store i8* %1, i8** %14, align 8, !dbg !2922, !tbaa !1602
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2924
  ret i8* %15, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2926 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2930, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %1, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %2, metadata !2932, metadata !DIExpression()), !dbg !2933
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2934
  ret i8* %4, !dbg !2935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2936 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2940, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 %1, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 0, metadata !2930, metadata !DIExpression()) #27, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %0, metadata !2931, metadata !DIExpression()) #27, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()) #27, !dbg !2943
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !2945
  ret i8* %3, !dbg !2946
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2947 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2951, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8* %1, metadata !2952, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 %0, metadata !2930, metadata !DIExpression()) #27, !dbg !2954
  call void @llvm.dbg.value(metadata i8* %1, metadata !2931, metadata !DIExpression()) #27, !dbg !2954
  call void @llvm.dbg.value(metadata i64 -1, metadata !2932, metadata !DIExpression()) #27, !dbg !2954
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !2956
  ret i8* %3, !dbg !2957
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2958 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 0, metadata !2951, metadata !DIExpression()) #27, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %0, metadata !2952, metadata !DIExpression()) #27, !dbg !2964
  call void @llvm.dbg.value(metadata i32 0, metadata !2930, metadata !DIExpression()) #27, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %0, metadata !2931, metadata !DIExpression()) #27, !dbg !2966
  call void @llvm.dbg.value(metadata i64 -1, metadata !2932, metadata !DIExpression()) #27, !dbg !2966
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !2968
  ret i8* %2, !dbg !2969
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @parse_user_spec(i8* %0, i32* nocapture %1, i32* %2, i8** %3, i8** %4) local_unnamed_addr #8 !dbg !2970 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2974, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32* %1, metadata !2975, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32* %2, metadata !2976, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8** %3, metadata !2977, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8** %4, metadata !2978, metadata !DIExpression()), !dbg !2984
  %6 = icmp eq i32* %2, null, !dbg !2985
  br i1 %6, label %9, label %7, !dbg !2985

7:                                                ; preds = %5
  %8 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 58) #28, !dbg !2986
  br label %9, !dbg !2985

9:                                                ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !2985
  call void @llvm.dbg.value(metadata i8* %10, metadata !2979, metadata !DIExpression()), !dbg !2984
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !2987
  call void @llvm.dbg.value(metadata i8* %11, metadata !2980, metadata !DIExpression()), !dbg !2984
  %12 = icmp ne i32* %2, null, !dbg !2988
  %13 = icmp eq i8* %10, null
  %14 = and i1 %12, %13, !dbg !2989
  %15 = icmp ne i8* %11, null
  %16 = and i1 %14, %15, !dbg !2989
  br i1 %16, label %17, label %24, !dbg !2989

17:                                               ; preds = %9
  %18 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 46) #28, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %18, metadata !2981, metadata !DIExpression()), !dbg !2991
  %19 = icmp eq i8* %18, null, !dbg !2992
  br i1 %19, label %24, label %20, !dbg !2994

20:                                               ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !2995
  %22 = icmp eq i8* %21, null, !dbg !2995
  %23 = select i1 %22, i8* null, i8* %11, !dbg !2996
  ret i8* %23, !dbg !2996

24:                                               ; preds = %17, %9
  call void @llvm.dbg.value(metadata i8* %11, metadata !2980, metadata !DIExpression()), !dbg !2984
  ret i8* %11, !dbg !2997
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8* %0, i8* %1, i32* nocapture %2, i32* %3, i8** %4, i8** %5) unnamed_addr #8 !dbg !199 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !205, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %1, metadata !206, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32* %2, metadata !207, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32* %3, metadata !208, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8** %4, metadata !209, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8** %5, metadata !210, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* null, metadata !234, metadata !DIExpression()), !dbg !2998
  %10 = load i32, i32* %2, align 4, !dbg !2999, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %10, metadata !235, metadata !DIExpression()), !dbg !2998
  %11 = icmp eq i32* %3, null, !dbg !3000
  br i1 %11, label %14, label %12, !dbg !3000

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3001, !tbaa !947
  br label %14, !dbg !3000

14:                                               ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3000
  call void @llvm.dbg.value(metadata i32 %15, metadata !236, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* null, metadata !211, metadata !DIExpression()), !dbg !2998
  %16 = icmp eq i8** %4, null, !dbg !3002
  br i1 %16, label %18, label %17, !dbg !3004

17:                                               ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3005, !tbaa !755
  br label %18, !dbg !3006

18:                                               ; preds = %17, %14
  %19 = icmp eq i8** %5, null, !dbg !3007
  br i1 %19, label %21, label %20, !dbg !3009

20:                                               ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3010, !tbaa !755
  br label %21, !dbg !3011

21:                                               ; preds = %20, %18
  call void @llvm.dbg.value(metadata i8* null, metadata !232, metadata !DIExpression()), !dbg !2998
  %22 = icmp eq i8* %1, null, !dbg !3012
  br i1 %22, label %23, label %28, !dbg !3013

23:                                               ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3014, !tbaa !983
  %25 = icmp eq i8 %24, 0, !dbg !3014
  br i1 %25, label %133, label %26, !dbg !3017

26:                                               ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #27, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %27, metadata !232, metadata !DIExpression()), !dbg !2998
  br label %43, !dbg !3019

28:                                               ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3020
  %30 = ptrtoint i8* %0 to i64, !dbg !3020
  %31 = sub i64 %29, %30, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %31, metadata !237, metadata !DIExpression()), !dbg !3021
  %32 = icmp eq i64 %31, 0, !dbg !3022
  br i1 %32, label %37, label %33, !dbg !3024

33:                                               ; preds = %28
  %34 = add i64 %31, 1, !dbg !3025
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #27, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %35, metadata !232, metadata !DIExpression()), !dbg !2998
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3028
  store i8 0, i8* %36, align 1, !dbg !3029, !tbaa !983
  br label %37, !dbg !3030

37:                                               ; preds = %33, %28
  %38 = phi i8* [ %35, %33 ], [ null, %28 ], !dbg !2998
  call void @llvm.dbg.value(metadata i8* %38, metadata !232, metadata !DIExpression()), !dbg !2998
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3031
  %40 = load i8, i8* %39, align 1, !dbg !3032, !tbaa !983
  %41 = icmp eq i8 %40, 0, !dbg !3033
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3034
  br label %43, !dbg !3034

43:                                               ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3034
  call void @llvm.dbg.value(metadata i8* %45, metadata !233, metadata !DIExpression()), !dbg !2998
  %46 = icmp eq i8* %44, null, !dbg !3035
  br i1 %46, label %95, label %47, !dbg !3036

47:                                               ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3037, !tbaa !983
  %49 = icmp eq i8 %48, 43, !dbg !3038
  br i1 %49, label %53, label %50, !dbg !3037

50:                                               ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3039
  call void @llvm.dbg.value(metadata %struct.passwd* %51, metadata !212, metadata !DIExpression()), !dbg !2998
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3040
  br i1 %52, label %53, label %69, !dbg !3041

53:                                               ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3042
  %55 = icmp eq i8* %45, null, !dbg !3043
  %56 = and i1 %54, %55, !dbg !3043
  call void @llvm.dbg.value(metadata i1 %56, metadata !240, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3044
  br i1 %56, label %90, label %57, !dbg !3045

57:                                               ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #27, !dbg !3046
  call void @llvm.dbg.value(metadata i64* %7, metadata !245, metadata !DIExpression(DW_OP_deref)), !dbg !3047
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.94, i64 0, i64 0)) #27, !dbg !3048
  %60 = icmp ne i32 %59, 0, !dbg !3050
  %61 = load i64, i64* %7, align 8
  call void @llvm.dbg.value(metadata i64 %61, metadata !245, metadata !DIExpression()), !dbg !3047
  %62 = icmp ugt i64 %61, 4294967295
  %63 = or i1 %60, %62, !dbg !3051
  %64 = trunc i64 %61 to i32
  %65 = icmp eq i32 %64, -1
  %66 = or i1 %63, %65, !dbg !3051
  %67 = select i1 %66, i32 %10, i32 %64, !dbg !3051
  %68 = select i1 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i64 0, i64 0), i8* null, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %68, metadata !211, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %67, metadata !235, metadata !DIExpression()), !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #27, !dbg !3052
  br label %90

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3053
  %71 = load i32, i32* %70, align 8, !dbg !3053, !tbaa !3054
  call void @llvm.dbg.value(metadata i32 %71, metadata !235, metadata !DIExpression()), !dbg !2998
  %72 = icmp eq i8* %45, null, !dbg !3055
  %73 = icmp ne i8* %1, null
  %74 = and i1 %73, %72, !dbg !3056
  br i1 %74, label %75, label %90, !dbg !3056

75:                                               ; preds = %69
  %76 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3057
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %76) #27, !dbg !3057
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !248, metadata !DIExpression()), !dbg !3058
  %77 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3059
  %78 = load i32, i32* %77, align 4, !dbg !3059, !tbaa !1061
  call void @llvm.dbg.value(metadata i32 %78, metadata !236, metadata !DIExpression()), !dbg !2998
  %79 = tail call %struct.group* @getgrgid(i32 %78) #27, !dbg !3060
  call void @llvm.dbg.value(metadata %struct.group* %79, metadata !224, metadata !DIExpression()), !dbg !2998
  %80 = icmp eq %struct.group* %79, null, !dbg !3061
  br i1 %80, label %84, label %81, !dbg !3061

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.group, %struct.group* %79, i64 0, i32 0, !dbg !3062
  %83 = load i8*, i8** %82, align 8, !dbg !3062, !tbaa !3063
  br label %87, !dbg !3061

84:                                               ; preds = %75
  %85 = zext i32 %78 to i64, !dbg !3064
  %86 = call i8* @umaxtostr(i64 %85, i8* nonnull %76) #27, !dbg !3065
  br label %87, !dbg !3061

87:                                               ; preds = %84, %81
  %88 = phi i8* [ %83, %81 ], [ %86, %84 ], !dbg !3061
  %89 = call noalias i8* @xstrdup(i8* %88) #27, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %89, metadata !234, metadata !DIExpression()), !dbg !2998
  call void @endgrent() #27, !dbg !3067
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %76) #27, !dbg !3068
  br label %90, !dbg !3069

90:                                               ; preds = %57, %53, %69, %87
  %91 = phi i8* [ %89, %87 ], [ null, %69 ], [ null, %53 ], [ null, %57 ], !dbg !2998
  %92 = phi i32 [ %71, %87 ], [ %71, %69 ], [ %10, %53 ], [ %67, %57 ], !dbg !2998
  %93 = phi i32 [ %78, %87 ], [ %15, %69 ], [ %15, %53 ], [ %15, %57 ], !dbg !2998
  %94 = phi i8* [ null, %87 ], [ null, %69 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.96, i64 0, i64 0), %53 ], [ %68, %57 ], !dbg !2998
  call void @llvm.dbg.value(metadata i8* %94, metadata !211, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %93, metadata !236, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %92, metadata !235, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %91, metadata !234, metadata !DIExpression()), !dbg !2998
  call void @endpwent() #27, !dbg !3070
  br label %95, !dbg !3071

95:                                               ; preds = %90, %43
  %96 = phi i8* [ %91, %90 ], [ null, %43 ], !dbg !3072
  %97 = phi i32 [ %92, %90 ], [ %10, %43 ], !dbg !3073
  %98 = phi i32 [ %93, %90 ], [ %15, %43 ], !dbg !3074
  %99 = phi i8* [ %94, %90 ], [ null, %43 ], !dbg !2998
  call void @llvm.dbg.value(metadata i8* %99, metadata !211, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %98, metadata !236, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %97, metadata !235, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %96, metadata !234, metadata !DIExpression()), !dbg !2998
  %100 = icmp ne i8* %45, null, !dbg !3075
  %101 = icmp eq i8* %99, null
  %102 = and i1 %100, %101, !dbg !3076
  br i1 %102, label %103, label %128, !dbg !3076

103:                                              ; preds = %95
  %104 = load i8, i8* %45, align 1, !dbg !3077, !tbaa !983
  %105 = icmp eq i8 %104, 43, !dbg !3078
  br i1 %105, label %109, label %106, !dbg !3077

106:                                              ; preds = %103
  %107 = call %struct.group* @getgrnam(i8* nonnull %45) #27, !dbg !3079
  call void @llvm.dbg.value(metadata %struct.group* %107, metadata !224, metadata !DIExpression()), !dbg !2998
  %108 = icmp eq %struct.group* %107, null, !dbg !3080
  br i1 %108, label %109, label %121, !dbg !3081

109:                                              ; preds = %103, %106
  %110 = bitcast i64* %9 to i8*, !dbg !3082
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %110) #27, !dbg !3082
  call void @llvm.dbg.value(metadata i64* %9, metadata !255, metadata !DIExpression(DW_OP_deref)), !dbg !3083
  %111 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.94, i64 0, i64 0)) #27, !dbg !3084
  %112 = icmp ne i32 %111, 0, !dbg !3086
  %113 = load i64, i64* %9, align 8
  call void @llvm.dbg.value(metadata i64 %113, metadata !255, metadata !DIExpression()), !dbg !3083
  %114 = icmp ugt i64 %113, 4294967295
  %115 = or i1 %112, %114, !dbg !3087
  %116 = trunc i64 %113 to i32
  %117 = icmp eq i32 %116, -1
  %118 = or i1 %115, %117, !dbg !3087
  %119 = select i1 %118, i32 %98, i32 %116, !dbg !3087
  %120 = select i1 %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.97, i64 0, i64 0), i8* null, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %120, metadata !211, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %119, metadata !236, metadata !DIExpression()), !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %110) #27, !dbg !3088
  br label %124, !dbg !3089

121:                                              ; preds = %106
  %122 = getelementptr inbounds %struct.group, %struct.group* %107, i64 0, i32 2, !dbg !3090
  %123 = load i32, i32* %122, align 8, !dbg !3090, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %123, metadata !236, metadata !DIExpression()), !dbg !2998
  br label %124

124:                                              ; preds = %121, %109
  %125 = phi i32 [ %119, %109 ], [ %123, %121 ], !dbg !3091
  %126 = phi i8* [ %120, %109 ], [ null, %121 ], !dbg !3092
  call void @llvm.dbg.value(metadata i8* %126, metadata !211, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %125, metadata !236, metadata !DIExpression()), !dbg !2998
  call void @endgrent() #27, !dbg !3094
  %127 = call noalias i8* @xstrdup(i8* nonnull %45) #27, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %127, metadata !234, metadata !DIExpression()), !dbg !2998
  br label %128, !dbg !3096

128:                                              ; preds = %124, %95
  %129 = phi i8* [ %127, %124 ], [ %96, %95 ], !dbg !2998
  %130 = phi i32 [ %125, %124 ], [ %98, %95 ], !dbg !2998
  %131 = phi i8* [ %126, %124 ], [ %99, %95 ], !dbg !3092
  call void @llvm.dbg.value(metadata i8* %131, metadata !211, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %130, metadata !236, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %129, metadata !234, metadata !DIExpression()), !dbg !2998
  %132 = icmp eq i8* %131, null, !dbg !3097
  br i1 %132, label %133, label %144, !dbg !3099

133:                                              ; preds = %23, %128
  %134 = phi i32 [ %130, %128 ], [ %15, %23 ]
  %135 = phi i8* [ %129, %128 ], [ null, %23 ]
  %136 = phi i8* [ %44, %128 ], [ null, %23 ]
  %137 = phi i32 [ %97, %128 ], [ %10, %23 ]
  store i32 %137, i32* %2, align 4, !dbg !3100, !tbaa !947
  br i1 %11, label %139, label %138, !dbg !3102

138:                                              ; preds = %133
  store i32 %134, i32* %3, align 4, !dbg !3103, !tbaa !947
  br label %139, !dbg !3105

139:                                              ; preds = %138, %133
  br i1 %16, label %141, label %140, !dbg !3106

140:                                              ; preds = %139
  store i8* %136, i8** %4, align 8, !dbg !3107, !tbaa !755
  call void @llvm.dbg.value(metadata i8* null, metadata !232, metadata !DIExpression()), !dbg !2998
  br label %141, !dbg !3110

141:                                              ; preds = %140, %139
  %142 = phi i8* [ null, %140 ], [ %136, %139 ], !dbg !2998
  call void @llvm.dbg.value(metadata i8* %142, metadata !232, metadata !DIExpression()), !dbg !2998
  br i1 %19, label %144, label %143, !dbg !3111

143:                                              ; preds = %141
  store i8* %135, i8** %5, align 8, !dbg !3112, !tbaa !755
  call void @llvm.dbg.value(metadata i8* null, metadata !234, metadata !DIExpression()), !dbg !2998
  br label %144, !dbg !3115

144:                                              ; preds = %141, %143, %128
  %145 = phi i1 [ true, %143 ], [ true, %141 ], [ false, %128 ]
  %146 = phi i8* [ null, %143 ], [ null, %141 ], [ %131, %128 ]
  %147 = phi i8* [ %142, %143 ], [ %142, %141 ], [ %44, %128 ], !dbg !2998
  %148 = phi i8* [ null, %143 ], [ %135, %141 ], [ %129, %128 ], !dbg !2998
  call void @llvm.dbg.value(metadata i8* %148, metadata !234, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %147, metadata !232, metadata !DIExpression()), !dbg !2998
  call void @free(i8* %147) #27, !dbg !3116
  call void @free(i8* %148) #27, !dbg !3117
  br i1 %145, label %151, label %149, !dbg !3118

149:                                              ; preds = %144
  %150 = call i8* @dcgettext(i8* null, i8* nonnull %146, i32 5) #27, !dbg !3119
  br label %151, !dbg !3118

151:                                              ; preds = %144, %149
  %152 = phi i8* [ %150, %149 ], [ null, %144 ], !dbg !3118
  ret i8* %152, !dbg !3120
}

; Function Attrs: nofree nounwind
declare !dbg !3121 noundef %struct.passwd* @getpwnam(i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !3124 %struct.group* @getgrgid(i32) local_unnamed_addr #3

declare !dbg !3127 void @endgrent() local_unnamed_addr #3

declare !dbg !3128 void @endpwent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3129 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3169, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8* %1, metadata !3170, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8* %2, metadata !3171, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8* %3, metadata !3172, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8** %4, metadata !3173, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %5, metadata !3174, metadata !DIExpression()), !dbg !3175
  %7 = icmp eq i8* %1, null, !dbg !3176
  br i1 %7, label %10, label %8, !dbg !3178

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !3179
  br label %12, !dbg !3179

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.99, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !3180
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.100, i64 0, i64 0), i32 5) #27, !dbg !3181
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !3181
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.101, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3182
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.102, i64 0, i64 0), i32 5) #27, !dbg !3183
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.103, i64 0, i64 0)) #27, !dbg !3183
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.101, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3184
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
  ], !dbg !3185

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.104, i64 0, i64 0), i32 5) #27, !dbg !3186
  %21 = load i8*, i8** %4, align 8, !dbg !3186, !tbaa !755
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !3186
  br label %147, !dbg !3188

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.105, i64 0, i64 0), i32 5) #27, !dbg !3189
  %25 = load i8*, i8** %4, align 8, !dbg !3189, !tbaa !755
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3189
  %27 = load i8*, i8** %26, align 8, !dbg !3189, !tbaa !755
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !3189
  br label %147, !dbg !3190

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.106, i64 0, i64 0), i32 5) #27, !dbg !3191
  %31 = load i8*, i8** %4, align 8, !dbg !3191, !tbaa !755
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3191
  %33 = load i8*, i8** %32, align 8, !dbg !3191, !tbaa !755
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3191
  %35 = load i8*, i8** %34, align 8, !dbg !3191, !tbaa !755
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !3191
  br label %147, !dbg !3192

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.107, i64 0, i64 0), i32 5) #27, !dbg !3193
  %39 = load i8*, i8** %4, align 8, !dbg !3193, !tbaa !755
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3193
  %41 = load i8*, i8** %40, align 8, !dbg !3193, !tbaa !755
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3193
  %43 = load i8*, i8** %42, align 8, !dbg !3193, !tbaa !755
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3193
  %45 = load i8*, i8** %44, align 8, !dbg !3193, !tbaa !755
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !3193
  br label %147, !dbg !3194

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.108, i64 0, i64 0), i32 5) #27, !dbg !3195
  %49 = load i8*, i8** %4, align 8, !dbg !3195, !tbaa !755
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3195
  %51 = load i8*, i8** %50, align 8, !dbg !3195, !tbaa !755
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3195
  %53 = load i8*, i8** %52, align 8, !dbg !3195, !tbaa !755
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3195
  %55 = load i8*, i8** %54, align 8, !dbg !3195, !tbaa !755
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3195
  %57 = load i8*, i8** %56, align 8, !dbg !3195, !tbaa !755
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !3195
  br label %147, !dbg !3196

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.109, i64 0, i64 0), i32 5) #27, !dbg !3197
  %61 = load i8*, i8** %4, align 8, !dbg !3197, !tbaa !755
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3197
  %63 = load i8*, i8** %62, align 8, !dbg !3197, !tbaa !755
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3197
  %65 = load i8*, i8** %64, align 8, !dbg !3197, !tbaa !755
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3197
  %67 = load i8*, i8** %66, align 8, !dbg !3197, !tbaa !755
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3197
  %69 = load i8*, i8** %68, align 8, !dbg !3197, !tbaa !755
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3197
  %71 = load i8*, i8** %70, align 8, !dbg !3197, !tbaa !755
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !3197
  br label %147, !dbg !3198

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.110, i64 0, i64 0), i32 5) #27, !dbg !3199
  %75 = load i8*, i8** %4, align 8, !dbg !3199, !tbaa !755
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3199
  %77 = load i8*, i8** %76, align 8, !dbg !3199, !tbaa !755
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3199
  %79 = load i8*, i8** %78, align 8, !dbg !3199, !tbaa !755
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3199
  %81 = load i8*, i8** %80, align 8, !dbg !3199, !tbaa !755
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3199
  %83 = load i8*, i8** %82, align 8, !dbg !3199, !tbaa !755
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3199
  %85 = load i8*, i8** %84, align 8, !dbg !3199, !tbaa !755
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3199
  %87 = load i8*, i8** %86, align 8, !dbg !3199, !tbaa !755
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !3199
  br label %147, !dbg !3200

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.111, i64 0, i64 0), i32 5) #27, !dbg !3201
  %91 = load i8*, i8** %4, align 8, !dbg !3201, !tbaa !755
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3201
  %93 = load i8*, i8** %92, align 8, !dbg !3201, !tbaa !755
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3201
  %95 = load i8*, i8** %94, align 8, !dbg !3201, !tbaa !755
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3201
  %97 = load i8*, i8** %96, align 8, !dbg !3201, !tbaa !755
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3201
  %99 = load i8*, i8** %98, align 8, !dbg !3201, !tbaa !755
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3201
  %101 = load i8*, i8** %100, align 8, !dbg !3201, !tbaa !755
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3201
  %103 = load i8*, i8** %102, align 8, !dbg !3201, !tbaa !755
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3201
  %105 = load i8*, i8** %104, align 8, !dbg !3201, !tbaa !755
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !3201
  br label %147, !dbg !3202

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.112, i64 0, i64 0), i32 5) #27, !dbg !3203
  %109 = load i8*, i8** %4, align 8, !dbg !3203, !tbaa !755
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3203
  %111 = load i8*, i8** %110, align 8, !dbg !3203, !tbaa !755
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3203
  %113 = load i8*, i8** %112, align 8, !dbg !3203, !tbaa !755
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3203
  %115 = load i8*, i8** %114, align 8, !dbg !3203, !tbaa !755
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3203
  %117 = load i8*, i8** %116, align 8, !dbg !3203, !tbaa !755
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3203
  %119 = load i8*, i8** %118, align 8, !dbg !3203, !tbaa !755
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3203
  %121 = load i8*, i8** %120, align 8, !dbg !3203, !tbaa !755
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3203
  %123 = load i8*, i8** %122, align 8, !dbg !3203, !tbaa !755
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3203
  %125 = load i8*, i8** %124, align 8, !dbg !3203, !tbaa !755
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !3203
  br label %147, !dbg !3204

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.113, i64 0, i64 0), i32 5) #27, !dbg !3205
  %129 = load i8*, i8** %4, align 8, !dbg !3205, !tbaa !755
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3205
  %131 = load i8*, i8** %130, align 8, !dbg !3205, !tbaa !755
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3205
  %133 = load i8*, i8** %132, align 8, !dbg !3205, !tbaa !755
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3205
  %135 = load i8*, i8** %134, align 8, !dbg !3205, !tbaa !755
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3205
  %137 = load i8*, i8** %136, align 8, !dbg !3205, !tbaa !755
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3205
  %139 = load i8*, i8** %138, align 8, !dbg !3205, !tbaa !755
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3205
  %141 = load i8*, i8** %140, align 8, !dbg !3205, !tbaa !755
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3205
  %143 = load i8*, i8** %142, align 8, !dbg !3205, !tbaa !755
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3205
  %145 = load i8*, i8** %144, align 8, !dbg !3205, !tbaa !755
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !3205
  br label %147, !dbg !3206

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3208 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3212, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %1, metadata !3213, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %2, metadata !3214, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %3, metadata !3215, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8** %4, metadata !3216, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 0, metadata !3217, metadata !DIExpression()), !dbg !3218
  br label %6, !dbg !3219

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3221
  call void @llvm.dbg.value(metadata i64 %7, metadata !3217, metadata !DIExpression()), !dbg !3218
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3222
  %9 = load i8*, i8** %8, align 8, !dbg !3222, !tbaa !755
  %10 = icmp eq i8* %9, null, !dbg !3224
  %11 = add i64 %7, 1, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %11, metadata !3217, metadata !DIExpression()), !dbg !3218
  br i1 %10, label %12, label %6, !dbg !3224, !llvm.loop !3226

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3228
  ret void, !dbg !3229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3230 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3241, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8* %1, metadata !3242, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8* %2, metadata !3243, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8* %3, metadata !3244, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3245, metadata !DIExpression()), !dbg !3249
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3250
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3250
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3247, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 0, metadata !3246, metadata !DIExpression()), !dbg !3249
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3246, metadata !DIExpression()), !dbg !3249
  %11 = load i32, i32* %8, align 8, !dbg !3252
  %12 = icmp ult i32 %11, 41, !dbg !3252
  br i1 %12, label %13, label %18, !dbg !3252

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3252
  %15 = zext i32 %11 to i64, !dbg !3252
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3252
  %17 = add nuw nsw i32 %11, 8, !dbg !3252
  store i32 %17, i32* %8, align 8, !dbg !3252
  br label %21, !dbg !3252

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3252
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3252
  store i8* %20, i8** %9, align 8, !dbg !3252
  br label %21, !dbg !3252

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3252
  %25 = load i8*, i8** %24, align 8, !dbg !3252
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3255
  store i8* %25, i8** %26, align 16, !dbg !3256, !tbaa !755
  %27 = icmp eq i8* %25, null, !dbg !3257
  br i1 %27, label %30, label %28, !dbg !3258

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 1, metadata !3246, metadata !DIExpression()), !dbg !3249
  %29 = icmp ult i32 %22, 41, !dbg !3252
  br i1 %29, label %35, label %32, !dbg !3252

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3259
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3260
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3261
  ret void, !dbg !3261

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3252
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3252
  store i8* %34, i8** %9, align 8, !dbg !3252
  br label %40, !dbg !3252

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3252
  %37 = zext i32 %22 to i64, !dbg !3252
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3252
  %39 = add nuw nsw i32 %22, 8, !dbg !3252
  store i32 %39, i32* %8, align 8, !dbg !3252
  br label %40, !dbg !3252

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3252
  %44 = load i8*, i8** %43, align 8, !dbg !3252
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3255
  store i8* %44, i8** %45, align 8, !dbg !3256, !tbaa !755
  %46 = icmp eq i8* %44, null, !dbg !3257
  br i1 %46, label %30, label %47, !dbg !3258

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 2, metadata !3246, metadata !DIExpression()), !dbg !3249
  %48 = icmp ult i32 %41, 41, !dbg !3252
  br i1 %48, label %52, label %49, !dbg !3252

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3252
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3252
  store i8* %51, i8** %9, align 8, !dbg !3252
  br label %57, !dbg !3252

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3252
  %54 = zext i32 %41 to i64, !dbg !3252
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3252
  %56 = add nuw nsw i32 %41, 8, !dbg !3252
  store i32 %56, i32* %8, align 8, !dbg !3252
  br label %57, !dbg !3252

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3252
  %61 = load i8*, i8** %60, align 8, !dbg !3252
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3255
  store i8* %61, i8** %62, align 16, !dbg !3256, !tbaa !755
  %63 = icmp eq i8* %61, null, !dbg !3257
  br i1 %63, label %30, label %64, !dbg !3258

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 3, metadata !3246, metadata !DIExpression()), !dbg !3249
  %65 = icmp ult i32 %58, 41, !dbg !3252
  br i1 %65, label %69, label %66, !dbg !3252

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3252
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3252
  store i8* %68, i8** %9, align 8, !dbg !3252
  br label %74, !dbg !3252

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3252
  %71 = zext i32 %58 to i64, !dbg !3252
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3252
  %73 = add nuw nsw i32 %58, 8, !dbg !3252
  store i32 %73, i32* %8, align 8, !dbg !3252
  br label %74, !dbg !3252

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3252
  %78 = load i8*, i8** %77, align 8, !dbg !3252
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3255
  store i8* %78, i8** %79, align 8, !dbg !3256, !tbaa !755
  %80 = icmp eq i8* %78, null, !dbg !3257
  br i1 %80, label %30, label %81, !dbg !3258

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 4, metadata !3246, metadata !DIExpression()), !dbg !3249
  %82 = icmp ult i32 %75, 41, !dbg !3252
  br i1 %82, label %86, label %83, !dbg !3252

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3252
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3252
  store i8* %85, i8** %9, align 8, !dbg !3252
  br label %91, !dbg !3252

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3252
  %88 = zext i32 %75 to i64, !dbg !3252
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3252
  %90 = add nuw nsw i32 %75, 8, !dbg !3252
  store i32 %90, i32* %8, align 8, !dbg !3252
  br label %91, !dbg !3252

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3252
  %95 = load i8*, i8** %94, align 8, !dbg !3252
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3255
  store i8* %95, i8** %96, align 16, !dbg !3256, !tbaa !755
  %97 = icmp eq i8* %95, null, !dbg !3257
  br i1 %97, label %30, label %98, !dbg !3258

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 5, metadata !3246, metadata !DIExpression()), !dbg !3249
  %99 = icmp ult i32 %92, 41, !dbg !3252
  br i1 %99, label %103, label %100, !dbg !3252

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3252
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3252
  store i8* %102, i8** %9, align 8, !dbg !3252
  br label %108, !dbg !3252

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3252
  %105 = zext i32 %92 to i64, !dbg !3252
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3252
  %107 = add nuw nsw i32 %92, 8, !dbg !3252
  store i32 %107, i32* %8, align 8, !dbg !3252
  br label %108, !dbg !3252

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3252
  %111 = load i8*, i8** %110, align 8, !dbg !3252
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3255
  store i8* %111, i8** %112, align 8, !dbg !3256, !tbaa !755
  %113 = icmp eq i8* %111, null, !dbg !3257
  br i1 %113, label %30, label %114, !dbg !3258

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3246, metadata !DIExpression()), !dbg !3249
  %115 = load i8*, i8** %9, align 8, !dbg !3252
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3252
  store i8* %116, i8** %9, align 8, !dbg !3252
  %117 = bitcast i8* %115 to i8**, !dbg !3252
  %118 = load i8*, i8** %117, align 8, !dbg !3252
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3255
  store i8* %118, i8** %119, align 16, !dbg !3256, !tbaa !755
  %120 = icmp eq i8* %118, null, !dbg !3257
  br i1 %120, label %30, label %121, !dbg !3258

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3246, metadata !DIExpression()), !dbg !3249
  %122 = load i8*, i8** %9, align 8, !dbg !3252
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3252
  store i8* %123, i8** %9, align 8, !dbg !3252
  %124 = bitcast i8* %122 to i8**, !dbg !3252
  %125 = load i8*, i8** %124, align 8, !dbg !3252
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3255
  store i8* %125, i8** %126, align 8, !dbg !3256, !tbaa !755
  %127 = icmp eq i8* %125, null, !dbg !3257
  br i1 %127, label %30, label %128, !dbg !3258

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3246, metadata !DIExpression()), !dbg !3249
  %129 = load i8*, i8** %9, align 8, !dbg !3252
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3252
  store i8* %130, i8** %9, align 8, !dbg !3252
  %131 = bitcast i8* %129 to i8**, !dbg !3252
  %132 = load i8*, i8** %131, align 8, !dbg !3252
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3255
  store i8* %132, i8** %133, align 16, !dbg !3256, !tbaa !755
  %134 = icmp eq i8* %132, null, !dbg !3257
  br i1 %134, label %30, label %135, !dbg !3258

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3246, metadata !DIExpression()), !dbg !3249
  %136 = load i8*, i8** %9, align 8, !dbg !3252
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3252
  store i8* %137, i8** %9, align 8, !dbg !3252
  %138 = bitcast i8* %136 to i8**, !dbg !3252
  %139 = load i8*, i8** %138, align 8, !dbg !3252
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3255
  store i8* %139, i8** %140, align 8, !dbg !3256, !tbaa !755
  %141 = icmp eq i8* %139, null, !dbg !3257
  %142 = select i1 %141, i64 9, i64 10, !dbg !3258
  br label %30, !dbg !3258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3262 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3266, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8* %1, metadata !3267, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8* %2, metadata !3268, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8* %3, metadata !3269, metadata !DIExpression()), !dbg !3276
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3277
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3277
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3270, metadata !DIExpression()), !dbg !3278
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3279
  call void @llvm.va_start(i8* nonnull %6), !dbg !3279
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3280
  call void @llvm.va_end(i8* nonnull %6), !dbg !3281
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3282
  ret void, !dbg !3282
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3283 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3284, !tbaa !755
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.101, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3284
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.116, i64 0, i64 0), i32 5) #27, !dbg !3285
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.117, i64 0, i64 0)) #27, !dbg !3285
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.118, i64 0, i64 0), i32 5) #27, !dbg !3286
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.119, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.120, i64 0, i64 0)) #27, !dbg !3286
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.121, i64 0, i64 0), i32 5) #27, !dbg !3287
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.122, i64 0, i64 0)) #27, !dbg !3287
  ret void, !dbg !3288
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !3289 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3293, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %1, metadata !3294, metadata !DIExpression()), !dbg !3295
  %3 = udiv i64 9223372036854775807, %1, !dbg !3296
  %4 = icmp ult i64 %3, %0, !dbg !3296
  br i1 %4, label %5, label %6, !dbg !3298

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3299
  unreachable, !dbg !3299

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %7, metadata !3301, metadata !DIExpression()) #27, !dbg !3307
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3309
  call void @llvm.dbg.value(metadata i8* %8, metadata !3306, metadata !DIExpression()) #27, !dbg !3307
  %9 = icmp eq i8* %8, null, !dbg !3310
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3312
  br i1 %11, label %12, label %13, !dbg !3312

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3313
  unreachable, !dbg !3313

13:                                               ; preds = %6
  ret i8* %8, !dbg !3314
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3302 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3301, metadata !DIExpression()), !dbg !3315
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %2, metadata !3306, metadata !DIExpression()), !dbg !3315
  %3 = icmp eq i8* %2, null, !dbg !3317
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3318
  br i1 %5, label %6, label %7, !dbg !3318

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3319
  unreachable, !dbg !3319

7:                                                ; preds = %1
  ret i8* %2, !dbg !3320
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !3321 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3325, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %2, metadata !3327, metadata !DIExpression()), !dbg !3328
  %4 = udiv i64 9223372036854775807, %2, !dbg !3329
  %5 = icmp ult i64 %4, %1, !dbg !3329
  br i1 %5, label %6, label %7, !dbg !3331

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3332
  unreachable, !dbg !3332

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #27, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %8, metadata !3339, metadata !DIExpression()) #27, !dbg !3340
  %9 = icmp eq i64 %8, 0, !dbg !3342
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3344
  br i1 %11, label %12, label %13, !dbg !3344

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3345
  br label %19, !dbg !3347

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %14, metadata !3334, metadata !DIExpression()) #27, !dbg !3340
  %15 = icmp eq i8* %14, null, !dbg !3349
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3351
  br i1 %17, label %18, label %19, !dbg !3351

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3352
  unreachable, !dbg !3352

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3340
  ret i8* %20, !dbg !3353
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3339, metadata !DIExpression()), !dbg !3354
  %3 = icmp eq i64 %1, 0, !dbg !3355
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3356
  br i1 %5, label %6, label %7, !dbg !3356

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !3357
  br label %13, !dbg !3358

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %8, metadata !3334, metadata !DIExpression()), !dbg !3354
  %9 = icmp eq i8* %8, null, !dbg !3360
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3361
  br i1 %11, label %12, label %13, !dbg !3361

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3362
  unreachable, !dbg !3362

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3354
  ret i8* %14, !dbg !3363
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !277, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* %1, metadata !278, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %2, metadata !279, metadata !DIExpression()), !dbg !3364
  %4 = load i64, i64* %1, align 8, !dbg !3365, !tbaa !955
  call void @llvm.dbg.value(metadata i64 %4, metadata !280, metadata !DIExpression()), !dbg !3364
  %5 = icmp eq i8* %0, null, !dbg !3366
  br i1 %5, label %6, label %20, !dbg !3368

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3369
  br i1 %7, label %8, label %13, !dbg !3372

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %9, metadata !280, metadata !DIExpression()), !dbg !3364
  %10 = icmp ugt i64 %2, 128, !dbg !3375
  %11 = zext i1 %10 to i64, !dbg !3375
  %12 = add nuw nsw i64 %9, %11, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %12, metadata !280, metadata !DIExpression()), !dbg !3364
  br label %13, !dbg !3377

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3364
  call void @llvm.dbg.value(metadata i64 %14, metadata !280, metadata !DIExpression()), !dbg !3364
  %15 = udiv i64 9223372036854775807, %2, !dbg !3378
  %16 = icmp ult i64 %15, %14, !dbg !3378
  br i1 %16, label %19, label %17, !dbg !3380

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !280, metadata !DIExpression()), !dbg !3364
  store i64 %14, i64* %1, align 8, !dbg !3381, !tbaa !955
  %18 = mul i64 %14, %2, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #27, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %28, metadata !3339, metadata !DIExpression()) #27, !dbg !3383
  br label %31, !dbg !3385

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3386
  unreachable, !dbg !3386

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3387
  %22 = icmp ugt i64 %21, %4, !dbg !3390
  br i1 %22, label %24, label %23, !dbg !3391

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !3392
  unreachable, !dbg !3392

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3393
  %26 = add nuw i64 %4, 1, !dbg !3394
  %27 = add i64 %26, %25, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %27, metadata !280, metadata !DIExpression()), !dbg !3364
  store i64 %27, i64* %1, align 8, !dbg !3381, !tbaa !955
  %28 = mul i64 %27, %2, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #27, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %28, metadata !3339, metadata !DIExpression()) #27, !dbg !3383
  %29 = icmp eq i64 %28, 0, !dbg !3396
  br i1 %29, label %30, label %31, !dbg !3385

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !3397
  br label %38, !dbg !3398

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %33, metadata !3334, metadata !DIExpression()) #27, !dbg !3383
  %34 = icmp eq i8* %33, null, !dbg !3400
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3401
  br i1 %36, label %37, label %38, !dbg !3401

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !3402
  unreachable, !dbg !3402

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3383
  ret i8* %39, !dbg !3403
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !3404 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %0, metadata !3301, metadata !DIExpression()) #27, !dbg !3408
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3410
  call void @llvm.dbg.value(metadata i8* %2, metadata !3306, metadata !DIExpression()) #27, !dbg !3408
  %3 = icmp eq i8* %2, null, !dbg !3411
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3412
  br i1 %5, label %6, label %7, !dbg !3412

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3413
  unreachable, !dbg !3413

7:                                                ; preds = %1
  ret i8* %2, !dbg !3414
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3419, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i64* %1, metadata !3420, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i8* %0, metadata !277, metadata !DIExpression()) #27, !dbg !3422
  call void @llvm.dbg.value(metadata i64* %1, metadata !278, metadata !DIExpression()) #27, !dbg !3422
  call void @llvm.dbg.value(metadata i64 1, metadata !279, metadata !DIExpression()) #27, !dbg !3422
  %3 = load i64, i64* %1, align 8, !dbg !3424, !tbaa !955
  call void @llvm.dbg.value(metadata i64 %3, metadata !280, metadata !DIExpression()) #27, !dbg !3422
  %4 = icmp eq i8* %0, null, !dbg !3425
  br i1 %4, label %5, label %10, !dbg !3426

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3427
  br i1 %6, label %17, label %7, !dbg !3428

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !280, metadata !DIExpression()) #27, !dbg !3422
  %8 = icmp slt i64 %3, 0, !dbg !3429
  br i1 %8, label %9, label %17, !dbg !3430

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3431
  unreachable, !dbg !3431

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3432
  br i1 %11, label %13, label %12, !dbg !3433

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3434
  unreachable, !dbg !3434

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3435
  %15 = add nuw nsw i64 %3, 1, !dbg !3436
  %16 = add nuw nsw i64 %15, %14, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %16, metadata !280, metadata !DIExpression()) #27, !dbg !3422
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #27, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %16, metadata !3339, metadata !DIExpression()) #27, !dbg !3438
  br label %17, !dbg !3440

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3441
  store i64 %18, i64* %1, align 8, !dbg !3441, !tbaa !955
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %19, metadata !3334, metadata !DIExpression()) #27, !dbg !3438
  %20 = icmp eq i8* %19, null, !dbg !3443
  br i1 %20, label %21, label %22, !dbg !3444

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3445
  unreachable, !dbg !3445

22:                                               ; preds = %17
  ret i8* %19, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3447 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3449, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %0, metadata !3451, metadata !DIExpression()) #27, !dbg !3456
  call void @llvm.dbg.value(metadata i64 1, metadata !3454, metadata !DIExpression()) #27, !dbg !3456
  %2 = icmp slt i64 %0, 0, !dbg !3458
  br i1 %2, label %6, label %3, !dbg !3460

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %4, metadata !3455, metadata !DIExpression()) #27, !dbg !3456
  %5 = icmp eq i8* %4, null, !dbg !3462
  br i1 %5, label %6, label %7, !dbg !3463

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3464
  unreachable, !dbg !3464

7:                                                ; preds = %3
  ret i8* %4, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3452 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3451, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()), !dbg !3466
  %3 = udiv i64 9223372036854775807, %1, !dbg !3467
  %4 = icmp ult i64 %3, %0, !dbg !3467
  br i1 %4, label %8, label %5, !dbg !3468

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3469
  call void @llvm.dbg.value(metadata i8* %6, metadata !3455, metadata !DIExpression()), !dbg !3466
  %7 = icmp eq i8* %6, null, !dbg !3470
  br i1 %7, label %8, label %9, !dbg !3471

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3472
  unreachable, !dbg !3472

9:                                                ; preds = %5
  ret i8* %6, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3474 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3480, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %1, metadata !3481, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()) #27, !dbg !3483
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3485
  call void @llvm.dbg.value(metadata i8* %3, metadata !3306, metadata !DIExpression()) #27, !dbg !3483
  %4 = icmp eq i8* %3, null, !dbg !3486
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3487
  br i1 %6, label %7, label %8, !dbg !3487

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3488
  unreachable, !dbg !3488

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3489, metadata !DIExpression()) #27, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %0, metadata !3496, metadata !DIExpression()) #27, !dbg !3498
  call void @llvm.dbg.value(metadata i64 %1, metadata !3497, metadata !DIExpression()) #27, !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3500
  ret i8* %3, !dbg !3501
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3502 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3504, metadata !DIExpression()), !dbg !3505
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !3506
  %3 = add i64 %2, 1, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %0, metadata !3480, metadata !DIExpression()) #27, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %3, metadata !3481, metadata !DIExpression()) #27, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %3, metadata !3301, metadata !DIExpression()) #27, !dbg !3510
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %4, metadata !3306, metadata !DIExpression()) #27, !dbg !3510
  %5 = icmp eq i8* %4, null, !dbg !3513
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3514
  br i1 %7, label %8, label %9, !dbg !3514

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3515
  unreachable, !dbg !3515

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3489, metadata !DIExpression()) #27, !dbg !3516
  call void @llvm.dbg.value(metadata i8* %0, metadata !3496, metadata !DIExpression()) #27, !dbg !3516
  call void @llvm.dbg.value(metadata i64 %3, metadata !3497, metadata !DIExpression()) #27, !dbg !3516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !3518
  ret i8* %4, !dbg !3519
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3520 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3521, !tbaa !947
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.135, i64 0, i64 0), i32 5) #27, !dbg !3522
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i64 0, i64 0), i8* %2) #27, !dbg !3523
  tail call void @abort() #29, !dbg !3524
  unreachable, !dbg !3524
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xgetgroups(i8* %0, i32 %1, i32** %2) local_unnamed_addr #8 !dbg !3525 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3527, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 %1, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32** %2, metadata !3529, metadata !DIExpression()), !dbg !3531
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #27, !dbg !3532
  call void @llvm.dbg.value(metadata i32 %4, metadata !3530, metadata !DIExpression()), !dbg !3531
  %5 = icmp eq i32 %4, -1, !dbg !3533
  br i1 %5, label %6, label %11, !dbg !3535

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #31, !dbg !3536
  %8 = load i32, i32* %7, align 4, !dbg !3536, !tbaa !947
  %9 = icmp eq i32 %8, 12, !dbg !3537
  br i1 %9, label %10, label %11, !dbg !3538

10:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3539
  unreachable, !dbg !3539

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoul(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3541 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3548, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8** %1, metadata !3549, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %2, metadata !3550, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64* %3, metadata !3551, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %4, metadata !3552, metadata !DIExpression()), !dbg !3566
  %7 = bitcast i8** %6 to i8*, !dbg !3567
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #27, !dbg !3567
  call void @llvm.dbg.value(metadata i32 0, metadata !3556, metadata !DIExpression()), !dbg !3566
  %8 = icmp ult i32 %2, 37, !dbg !3568
  br i1 %8, label %10, label %9, !dbg !3568

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.141, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.142, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #29, !dbg !3568
  unreachable, !dbg !3568

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3571
  call void @llvm.dbg.value(metadata i8** %25, metadata !3554, metadata !DIExpression()), !dbg !3566
  %12 = tail call i32* @__errno_location() #31, !dbg !3572
  store i32 0, i32* %12, align 4, !dbg !3573, !tbaa !947
  call void @llvm.dbg.value(metadata i8* %0, metadata !3557, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8 undef, metadata !3560, metadata !DIExpression()), !dbg !3574
  %13 = tail call i16** @__ctype_b_loc() #31, !dbg !3566
  %14 = load i16*, i16** %13, align 8, !tbaa !755
  br label %15, !dbg !3575

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3574
  %17 = load i8, i8* %16, align 1, !dbg !3574, !tbaa !983
  call void @llvm.dbg.value(metadata i8 %17, metadata !3560, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8* %16, metadata !3557, metadata !DIExpression()), !dbg !3574
  %18 = zext i8 %17 to i64, !dbg !3576
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3576
  %20 = load i16, i16* %19, align 2, !dbg !3576, !tbaa !1306
  %21 = and i16 %20, 8192, !dbg !3576
  %22 = icmp eq i16 %21, 0, !dbg !3575
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3577
  call void @llvm.dbg.value(metadata i8* %23, metadata !3557, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8 undef, metadata !3560, metadata !DIExpression()), !dbg !3574
  br i1 %22, label %24, label %15, !dbg !3575, !llvm.loop !3578

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3571
  %26 = icmp eq i8 %17, 45, !dbg !3580
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #27, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %28, metadata !3555, metadata !DIExpression()), !dbg !3566
  %29 = load i8*, i8** %25, align 8, !dbg !3583, !tbaa !755
  %30 = icmp eq i8* %29, %0, !dbg !3585
  br i1 %30, label %31, label %40, !dbg !3586

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3587
  br i1 %32, label %285, label %33, !dbg !3590

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3591, !tbaa !983
  %35 = icmp eq i8 %34, 0, !dbg !3591
  br i1 %35, label %285, label %36, !dbg !3592

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3591
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #28, !dbg !3593
  %39 = icmp eq i8* %38, null, !dbg !3593
  br i1 %39, label %285, label %47, !dbg !3594

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3595, !tbaa !947
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3597

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3556, metadata !DIExpression()), !dbg !3566
  br label %43, !dbg !3598

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3566
  call void @llvm.dbg.value(metadata i32 %44, metadata !3556, metadata !DIExpression()), !dbg !3566
  %45 = icmp eq i8* %4, null, !dbg !3600
  br i1 %45, label %46, label %47, !dbg !3602

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3555, metadata !DIExpression()), !dbg !3566
  store i64 %28, i64* %3, align 8, !dbg !3603, !tbaa !955
  br label %285, !dbg !3605

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3606, !tbaa !983
  %51 = sext i8 %50 to i32, !dbg !3606
  %52 = icmp eq i8 %50, 0, !dbg !3607
  br i1 %52, label %282, label %53, !dbg !3608

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3561, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 1, metadata !3564, metadata !DIExpression()), !dbg !3609
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #28, !dbg !3610
  %55 = icmp eq i8* %54, null, !dbg !3610
  br i1 %55, label %56, label %58, !dbg !3612

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3555, metadata !DIExpression()), !dbg !3566
  store i64 %49, i64* %3, align 8, !dbg !3613, !tbaa !955
  %57 = or i32 %48, 2, !dbg !3615
  br label %285, !dbg !3616

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
  ], !dbg !3617

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #28, !dbg !3618
  %61 = icmp eq i8* %60, null, !dbg !3618
  br i1 %61, label %72, label %62, !dbg !3621

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3622
  %64 = load i8, i8* %63, align 1, !dbg !3622, !tbaa !983
  %65 = sext i8 %64 to i32, !dbg !3622
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3623

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3624
  %68 = load i8, i8* %67, align 1, !dbg !3624, !tbaa !983
  %69 = icmp eq i8 %68, 66, !dbg !3627
  %70 = select i1 %69, i64 3, i64 1, !dbg !3628
  br label %72, !dbg !3628

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3561, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 2, metadata !3564, metadata !DIExpression()), !dbg !3609
  br label %72, !dbg !3629

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3564, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 undef, metadata !3561, metadata !DIExpression()), !dbg !3609
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
  ], !dbg !3630

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 7, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 6, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3648
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3648
  %76 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3650
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3650
  %78 = mul i64 %49, %73, !dbg !3652
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3652
  call void @llvm.dbg.value(metadata i1 %77, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 6, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i1 %77, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 6, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3648
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3648
  %80 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #27, !dbg !3650
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3650
  %82 = mul i64 %79, %73, !dbg !3652
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3652
  %84 = or i1 %77, %81, !dbg !3653
  call void @llvm.dbg.value(metadata i1 %84, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i1 %84, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3648
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3648
  %85 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #27, !dbg !3650
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3650
  %87 = mul i64 %83, %73, !dbg !3652
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3652
  %89 = or i1 %84, %86, !dbg !3653
  call void @llvm.dbg.value(metadata i1 %89, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i1 %89, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3648
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3648
  %90 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #27, !dbg !3650
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3650
  %92 = mul i64 %88, %73, !dbg !3652
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3652
  %94 = or i1 %89, %91, !dbg !3653
  call void @llvm.dbg.value(metadata i1 %94, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i1 %94, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3648
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3648
  %95 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #27, !dbg !3650
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3650
  %97 = mul i64 %93, %73, !dbg !3652
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3652
  %99 = or i1 %94, %96, !dbg !3653
  call void @llvm.dbg.value(metadata i1 %99, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i1 %99, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3648
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3648
  %100 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #27, !dbg !3650
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3650
  %102 = mul i64 %98, %73, !dbg !3652
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3652
  %104 = or i1 %99, %101, !dbg !3653
  call void @llvm.dbg.value(metadata i1 %104, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i1 %104, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3648
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3648
  %105 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #27, !dbg !3650
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3650
  %107 = mul i64 %103, %73, !dbg !3652
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3652
  %109 = or i1 %104, %106, !dbg !3653
  call void @llvm.dbg.value(metadata i1 %109, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3639
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3639
  br label %272, !dbg !3654

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 8, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 7, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3657
  %111 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3659
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3659
  %113 = mul i64 %49, %73, !dbg !3660
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3660
  call void @llvm.dbg.value(metadata i1 %112, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 7, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i1 %112, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 7, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 6, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3657
  %115 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #27, !dbg !3659
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3659
  %117 = mul i64 %114, %73, !dbg !3660
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3660
  %119 = or i1 %112, %116, !dbg !3661
  call void @llvm.dbg.value(metadata i1 %119, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 6, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i1 %119, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 6, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3657
  %120 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #27, !dbg !3659
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3659
  %122 = mul i64 %118, %73, !dbg !3660
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3660
  %124 = or i1 %119, %121, !dbg !3661
  call void @llvm.dbg.value(metadata i1 %124, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i1 %124, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3657
  %125 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #27, !dbg !3659
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3659
  %127 = mul i64 %123, %73, !dbg !3660
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3660
  %129 = or i1 %124, %126, !dbg !3661
  call void @llvm.dbg.value(metadata i1 %129, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i1 %129, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3657
  %130 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #27, !dbg !3659
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3659
  %132 = mul i64 %128, %73, !dbg !3660
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3660
  %134 = or i1 %129, %131, !dbg !3661
  call void @llvm.dbg.value(metadata i1 %134, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i1 %134, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3657
  %135 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #27, !dbg !3659
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3659
  %137 = mul i64 %133, %73, !dbg !3660
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3660
  %139 = or i1 %134, %136, !dbg !3661
  call void @llvm.dbg.value(metadata i1 %139, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i1 %139, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3657
  %140 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #27, !dbg !3659
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3659
  %142 = mul i64 %138, %73, !dbg !3660
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3660
  %144 = or i1 %139, %141, !dbg !3661
  call void @llvm.dbg.value(metadata i1 %144, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i1 %144, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3657
  %145 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #27, !dbg !3659
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3659
  %147 = mul i64 %143, %73, !dbg !3660
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3660
  %149 = or i1 %144, %146, !dbg !3661
  call void @llvm.dbg.value(metadata i1 %149, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3655
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3655
  br label %272, !dbg !3654

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3664
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3664
  %151 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3666
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3666
  %153 = mul i64 %49, %73, !dbg !3667
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3667
  call void @llvm.dbg.value(metadata i1 %152, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i1 %152, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3664
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3664
  %155 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #27, !dbg !3666
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3666
  %157 = mul i64 %154, %73, !dbg !3667
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3667
  %159 = or i1 %152, %156, !dbg !3668
  call void @llvm.dbg.value(metadata i1 %159, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i1 %159, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3664
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3664
  %160 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #27, !dbg !3666
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3666
  %162 = mul i64 %158, %73, !dbg !3667
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3667
  %164 = or i1 %159, %161, !dbg !3668
  call void @llvm.dbg.value(metadata i1 %164, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i1 %164, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3664
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3664
  %165 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #27, !dbg !3666
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3666
  %167 = mul i64 %163, %73, !dbg !3667
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3667
  %169 = or i1 %164, %166, !dbg !3668
  call void @llvm.dbg.value(metadata i1 %169, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i1 %169, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3664
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3664
  %170 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #27, !dbg !3666
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3666
  %172 = mul i64 %168, %73, !dbg !3667
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3667
  %174 = or i1 %169, %171, !dbg !3668
  call void @llvm.dbg.value(metadata i1 %174, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3662
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3662
  br label %272, !dbg !3654

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 6, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3671
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3671
  %176 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3673
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3673
  %178 = mul i64 %49, %73, !dbg !3674
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3674
  call void @llvm.dbg.value(metadata i1 %177, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i1 %177, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 5, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3671
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3671
  %180 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #27, !dbg !3673
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3673
  %182 = mul i64 %179, %73, !dbg !3674
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3674
  %184 = or i1 %177, %181, !dbg !3675
  call void @llvm.dbg.value(metadata i1 %184, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i1 %184, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 4, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3671
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3671
  %185 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #27, !dbg !3673
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3673
  %187 = mul i64 %183, %73, !dbg !3674
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3674
  %189 = or i1 %184, %186, !dbg !3675
  call void @llvm.dbg.value(metadata i1 %189, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i1 %189, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3671
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3671
  %190 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #27, !dbg !3673
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3673
  %192 = mul i64 %188, %73, !dbg !3674
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3674
  %194 = or i1 %189, %191, !dbg !3675
  call void @llvm.dbg.value(metadata i1 %194, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i1 %194, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3671
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3671
  %195 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #27, !dbg !3673
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3673
  %197 = mul i64 %193, %73, !dbg !3674
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3674
  %199 = or i1 %194, %196, !dbg !3675
  call void @llvm.dbg.value(metadata i1 %199, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i1 %199, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3671
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3671
  %200 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #27, !dbg !3673
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3673
  %202 = mul i64 %198, %73, !dbg !3674
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3674
  %204 = or i1 %199, %201, !dbg !3675
  call void @llvm.dbg.value(metadata i1 %204, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3669
  br label %272, !dbg !3654

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3676
  call void @llvm.dbg.value(metadata i32 512, metadata !3647, metadata !DIExpression()) #27, !dbg !3676
  %206 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #27, !dbg !3678
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3678
  %208 = shl i64 %49, 9, !dbg !3679
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3679
  call void @llvm.dbg.value(metadata i1 %207, metadata !3565, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3609
  br label %272, !dbg !3680

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3681
  call void @llvm.dbg.value(metadata i32 1024, metadata !3647, metadata !DIExpression()) #27, !dbg !3681
  %211 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #27, !dbg !3683
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3683
  %213 = shl i64 %49, 10, !dbg !3684
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3684
  call void @llvm.dbg.value(metadata i1 %212, metadata !3565, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3609
  br label %272, !dbg !3685

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3636, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 undef, metadata !3637, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3688
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3688
  %216 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3690
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3690
  %218 = mul i64 %49, %73, !dbg !3691
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3691
  call void @llvm.dbg.value(metadata i1 %217, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i1 %217, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3688
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3688
  %220 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #27, !dbg !3690
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3690
  %222 = mul i64 %219, %73, !dbg !3691
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3691
  %224 = or i1 %217, %221, !dbg !3692
  call void @llvm.dbg.value(metadata i1 %224, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i1 %224, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3688
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3688
  %225 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #27, !dbg !3690
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3690
  %227 = mul i64 %223, %73, !dbg !3691
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3691
  %229 = or i1 %224, %226, !dbg !3692
  call void @llvm.dbg.value(metadata i1 %229, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3686
  br label %272, !dbg !3654

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3636, metadata !DIExpression()) #27, !dbg !3693
  call void @llvm.dbg.value(metadata i32 undef, metadata !3637, metadata !DIExpression()) #27, !dbg !3693
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()) #27, !dbg !3693
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3693
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3695
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3695
  %231 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3697
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3697
  %233 = mul i64 %49, %73, !dbg !3698
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3698
  call void @llvm.dbg.value(metadata i1 %232, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3693
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()) #27, !dbg !3693
  %235 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #27, !dbg !3697
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3697
  %237 = mul i64 %234, %73, !dbg !3698
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3698
  %239 = or i1 %232, %236, !dbg !3699
  call void @llvm.dbg.value(metadata i1 %239, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3693
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3693
  br label %272, !dbg !3654

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3636, metadata !DIExpression()) #27, !dbg !3700
  call void @llvm.dbg.value(metadata i32 undef, metadata !3637, metadata !DIExpression()) #27, !dbg !3700
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()) #27, !dbg !3700
  call void @llvm.dbg.value(metadata i32 3, metadata !3638, metadata !DIExpression()) #27, !dbg !3700
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3702
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3702
  %241 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3704
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3704
  %243 = mul i64 %49, %73, !dbg !3705
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3705
  call void @llvm.dbg.value(metadata i1 %242, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3700
  call void @llvm.dbg.value(metadata i32 2, metadata !3638, metadata !DIExpression()) #27, !dbg !3700
  %245 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #27, !dbg !3704
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3704
  %247 = mul i64 %244, %73, !dbg !3705
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3705
  %249 = or i1 %242, %246, !dbg !3706
  call void @llvm.dbg.value(metadata i1 %249, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3700
  call void @llvm.dbg.value(metadata i32 1, metadata !3638, metadata !DIExpression()) #27, !dbg !3700
  %250 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #27, !dbg !3704
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3704
  %252 = mul i64 %248, %73, !dbg !3705
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3705
  %254 = or i1 %249, %251, !dbg !3706
  call void @llvm.dbg.value(metadata i1 %254, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3700
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()) #27, !dbg !3700
  %255 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #27, !dbg !3704
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3704
  %257 = mul i64 %253, %73, !dbg !3705
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3705
  %259 = or i1 %254, %256, !dbg !3706
  call void @llvm.dbg.value(metadata i1 %259, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3700
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3700
  br label %272, !dbg !3654

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3707
  call void @llvm.dbg.value(metadata i32 2, metadata !3647, metadata !DIExpression()) #27, !dbg !3707
  %261 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #27, !dbg !3709
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3709
  %263 = shl i64 %49, 1, !dbg !3710
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3710
  call void @llvm.dbg.value(metadata i1 %262, metadata !3565, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3609
  br label %272, !dbg !3711

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3555, metadata !DIExpression()), !dbg !3566
  store i64 %49, i64* %3, align 8, !dbg !3712, !tbaa !955
  %266 = or i32 %48, 2, !dbg !3713
  br label %285, !dbg !3714

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3636, metadata !DIExpression()) #27, !dbg !3715
  call void @llvm.dbg.value(metadata i32 undef, metadata !3637, metadata !DIExpression()) #27, !dbg !3715
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()) #27, !dbg !3715
  call void @llvm.dbg.value(metadata i32 undef, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3715
  call void @llvm.dbg.value(metadata i64* undef, metadata !3642, metadata !DIExpression()) #27, !dbg !3717
  call void @llvm.dbg.value(metadata i32 undef, metadata !3647, metadata !DIExpression()) #27, !dbg !3717
  %268 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3719
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3719
  call void @llvm.dbg.value(metadata i32 undef, metadata !3638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3715
  call void @llvm.dbg.value(metadata i1 %269, metadata !3631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3715
  %270 = mul i64 %49, %73, !dbg !3720
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3720
  br label %272, !dbg !3654

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3566
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3721
  call void @llvm.dbg.value(metadata i32 %275, metadata !3565, metadata !DIExpression()), !dbg !3609
  %276 = or i32 %48, %275, !dbg !3654
  call void @llvm.dbg.value(metadata i32 %276, metadata !3556, metadata !DIExpression()), !dbg !3566
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3722
  store i8* %277, i8** %25, align 8, !dbg !3722, !tbaa !755
  %278 = load i8, i8* %277, align 1, !dbg !3723, !tbaa !983
  %279 = icmp eq i8 %278, 0, !dbg !3723
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3725
  call void @llvm.dbg.value(metadata i32 %281, metadata !3556, metadata !DIExpression()), !dbg !3566
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3726
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3727
  call void @llvm.dbg.value(metadata i32 %284, metadata !3556, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %283, metadata !3555, metadata !DIExpression()), !dbg !3566
  store i64 %283, i64* %3, align 8, !dbg !3728, !tbaa !955
  br label %285, !dbg !3729

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3566
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #27, !dbg !3730
  ret i32 %286, !dbg !3730
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3731 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3736, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i8** %1, metadata !3737, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 %2, metadata !3738, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64* %3, metadata !3739, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i8* %4, metadata !3740, metadata !DIExpression()), !dbg !3754
  %7 = bitcast i8** %6 to i8*, !dbg !3755
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #27, !dbg !3755
  call void @llvm.dbg.value(metadata i32 0, metadata !3744, metadata !DIExpression()), !dbg !3754
  %8 = icmp ult i32 %2, 37, !dbg !3756
  br i1 %8, label %10, label %9, !dbg !3756

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.145, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.146, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #29, !dbg !3756
  unreachable, !dbg !3756

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3759
  call void @llvm.dbg.value(metadata i8** %25, metadata !3742, metadata !DIExpression()), !dbg !3754
  %12 = tail call i32* @__errno_location() #31, !dbg !3760
  store i32 0, i32* %12, align 4, !dbg !3761, !tbaa !947
  call void @llvm.dbg.value(metadata i8* %0, metadata !3745, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i8 undef, metadata !3748, metadata !DIExpression()), !dbg !3762
  %13 = tail call i16** @__ctype_b_loc() #31, !dbg !3754
  %14 = load i16*, i16** %13, align 8, !tbaa !755
  br label %15, !dbg !3763

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3762
  %17 = load i8, i8* %16, align 1, !dbg !3762, !tbaa !983
  call void @llvm.dbg.value(metadata i8 %17, metadata !3748, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i8* %16, metadata !3745, metadata !DIExpression()), !dbg !3762
  %18 = zext i8 %17 to i64, !dbg !3764
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3764
  %20 = load i16, i16* %19, align 2, !dbg !3764, !tbaa !1306
  %21 = and i16 %20, 8192, !dbg !3764
  %22 = icmp eq i16 %21, 0, !dbg !3763
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3765
  call void @llvm.dbg.value(metadata i8* %23, metadata !3745, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i8 undef, metadata !3748, metadata !DIExpression()), !dbg !3762
  br i1 %22, label %24, label %15, !dbg !3763, !llvm.loop !3766

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3759
  %26 = icmp eq i8 %17, 45, !dbg !3768
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #27, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %28, metadata !3743, metadata !DIExpression()), !dbg !3754
  %29 = load i8*, i8** %25, align 8, !dbg !3771, !tbaa !755
  %30 = icmp eq i8* %29, %0, !dbg !3773
  br i1 %30, label %31, label %40, !dbg !3774

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3775
  br i1 %32, label %285, label %33, !dbg !3778

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3779, !tbaa !983
  %35 = icmp eq i8 %34, 0, !dbg !3779
  br i1 %35, label %285, label %36, !dbg !3780

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3779
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #28, !dbg !3781
  %39 = icmp eq i8* %38, null, !dbg !3781
  br i1 %39, label %285, label %47, !dbg !3782

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3783, !tbaa !947
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3785

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3744, metadata !DIExpression()), !dbg !3754
  br label %43, !dbg !3786

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3754
  call void @llvm.dbg.value(metadata i32 %44, metadata !3744, metadata !DIExpression()), !dbg !3754
  %45 = icmp eq i8* %4, null, !dbg !3788
  br i1 %45, label %46, label %47, !dbg !3790

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3743, metadata !DIExpression()), !dbg !3754
  store i64 %28, i64* %3, align 8, !dbg !3791, !tbaa !955
  br label %285, !dbg !3793

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3794, !tbaa !983
  %51 = sext i8 %50 to i32, !dbg !3794
  %52 = icmp eq i8 %50, 0, !dbg !3795
  br i1 %52, label %282, label %53, !dbg !3796

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3749, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 1, metadata !3752, metadata !DIExpression()), !dbg !3797
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #28, !dbg !3798
  %55 = icmp eq i8* %54, null, !dbg !3798
  br i1 %55, label %56, label %58, !dbg !3800

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3743, metadata !DIExpression()), !dbg !3754
  store i64 %49, i64* %3, align 8, !dbg !3801, !tbaa !955
  %57 = or i32 %48, 2, !dbg !3803
  br label %285, !dbg !3804

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
  ], !dbg !3805

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #28, !dbg !3806
  %61 = icmp eq i8* %60, null, !dbg !3806
  br i1 %61, label %72, label %62, !dbg !3809

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3810
  %64 = load i8, i8* %63, align 1, !dbg !3810, !tbaa !983
  %65 = sext i8 %64 to i32, !dbg !3810
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3811

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3812
  %68 = load i8, i8* %67, align 1, !dbg !3812, !tbaa !983
  %69 = icmp eq i8 %68, 66, !dbg !3815
  %70 = select i1 %69, i64 3, i64 1, !dbg !3816
  br label %72, !dbg !3816

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3749, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 2, metadata !3752, metadata !DIExpression()), !dbg !3797
  br label %72, !dbg !3817

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3752, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 undef, metadata !3749, metadata !DIExpression()), !dbg !3797
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
  ], !dbg !3818

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 7, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 6, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3836
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3836
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3838
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3838
  %78 = mul i64 %49, %73, !dbg !3840
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3840
  call void @llvm.dbg.value(metadata i1 %77, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 6, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %77, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 6, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3836
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3836
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #27, !dbg !3838
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3838
  %82 = mul i64 %79, %73, !dbg !3840
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3840
  %84 = or i1 %77, %81, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %84, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %84, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3836
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3836
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #27, !dbg !3838
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3838
  %87 = mul i64 %83, %73, !dbg !3840
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3840
  %89 = or i1 %84, %86, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %89, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %89, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3836
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3836
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #27, !dbg !3838
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3838
  %92 = mul i64 %88, %73, !dbg !3840
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3840
  %94 = or i1 %89, %91, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %94, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %94, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3836
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3836
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #27, !dbg !3838
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3838
  %97 = mul i64 %93, %73, !dbg !3840
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3840
  %99 = or i1 %94, %96, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %99, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %99, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3836
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3836
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #27, !dbg !3838
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3838
  %102 = mul i64 %98, %73, !dbg !3840
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3840
  %104 = or i1 %99, %101, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %104, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i1 %104, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3836
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3836
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #27, !dbg !3838
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3838
  %107 = mul i64 %103, %73, !dbg !3840
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3840
  %109 = or i1 %104, %106, !dbg !3841
  call void @llvm.dbg.value(metadata i1 %109, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3827
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3827
  br label %272, !dbg !3842

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 8, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 7, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3845
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3845
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3847
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3847
  %113 = mul i64 %49, %73, !dbg !3848
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3848
  call void @llvm.dbg.value(metadata i1 %112, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 7, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i1 %112, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 7, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 6, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3845
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3845
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #27, !dbg !3847
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3847
  %117 = mul i64 %114, %73, !dbg !3848
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3848
  %119 = or i1 %112, %116, !dbg !3849
  call void @llvm.dbg.value(metadata i1 %119, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 6, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i1 %119, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 6, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3845
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3845
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #27, !dbg !3847
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3847
  %122 = mul i64 %118, %73, !dbg !3848
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3848
  %124 = or i1 %119, %121, !dbg !3849
  call void @llvm.dbg.value(metadata i1 %124, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i1 %124, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3845
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3845
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #27, !dbg !3847
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3847
  %127 = mul i64 %123, %73, !dbg !3848
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3848
  %129 = or i1 %124, %126, !dbg !3849
  call void @llvm.dbg.value(metadata i1 %129, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i1 %129, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3845
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3845
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #27, !dbg !3847
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3847
  %132 = mul i64 %128, %73, !dbg !3848
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3848
  %134 = or i1 %129, %131, !dbg !3849
  call void @llvm.dbg.value(metadata i1 %134, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i1 %134, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3845
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3845
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #27, !dbg !3847
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3847
  %137 = mul i64 %133, %73, !dbg !3848
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3848
  %139 = or i1 %134, %136, !dbg !3849
  call void @llvm.dbg.value(metadata i1 %139, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i1 %139, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3845
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3845
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #27, !dbg !3847
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3847
  %142 = mul i64 %138, %73, !dbg !3848
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3848
  %144 = or i1 %139, %141, !dbg !3849
  call void @llvm.dbg.value(metadata i1 %144, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i1 %144, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3845
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3845
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #27, !dbg !3847
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3847
  %147 = mul i64 %143, %73, !dbg !3848
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3848
  %149 = or i1 %144, %146, !dbg !3849
  call void @llvm.dbg.value(metadata i1 %149, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3843
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3843
  br label %272, !dbg !3842

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3852
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3854
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3854
  %153 = mul i64 %49, %73, !dbg !3855
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3855
  call void @llvm.dbg.value(metadata i1 %152, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i1 %152, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3852
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #27, !dbg !3854
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3854
  %157 = mul i64 %154, %73, !dbg !3855
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3855
  %159 = or i1 %152, %156, !dbg !3856
  call void @llvm.dbg.value(metadata i1 %159, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i1 %159, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3852
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #27, !dbg !3854
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3854
  %162 = mul i64 %158, %73, !dbg !3855
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3855
  %164 = or i1 %159, %161, !dbg !3856
  call void @llvm.dbg.value(metadata i1 %164, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i1 %164, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3852
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #27, !dbg !3854
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3854
  %167 = mul i64 %163, %73, !dbg !3855
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3855
  %169 = or i1 %164, %166, !dbg !3856
  call void @llvm.dbg.value(metadata i1 %169, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i1 %169, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3852
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #27, !dbg !3854
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3854
  %172 = mul i64 %168, %73, !dbg !3855
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3855
  %174 = or i1 %169, %171, !dbg !3856
  call void @llvm.dbg.value(metadata i1 %174, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3850
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3850
  br label %272, !dbg !3842

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 6, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3859
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3861
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3861
  %178 = mul i64 %49, %73, !dbg !3862
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3862
  call void @llvm.dbg.value(metadata i1 %177, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i1 %177, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 5, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3859
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #27, !dbg !3861
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3861
  %182 = mul i64 %179, %73, !dbg !3862
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3862
  %184 = or i1 %177, %181, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %184, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i1 %184, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 4, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3859
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #27, !dbg !3861
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3861
  %187 = mul i64 %183, %73, !dbg !3862
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3862
  %189 = or i1 %184, %186, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %189, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i1 %189, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3859
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #27, !dbg !3861
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3861
  %192 = mul i64 %188, %73, !dbg !3862
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3862
  %194 = or i1 %189, %191, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %194, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i1 %194, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3859
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #27, !dbg !3861
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3861
  %197 = mul i64 %193, %73, !dbg !3862
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3862
  %199 = or i1 %194, %196, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %199, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i1 %199, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3859
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3859
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #27, !dbg !3861
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3861
  %202 = mul i64 %198, %73, !dbg !3862
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3862
  %204 = or i1 %199, %201, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %204, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3857
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3857
  br label %272, !dbg !3842

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3864
  call void @llvm.dbg.value(metadata i32 512, metadata !3835, metadata !DIExpression()) #27, !dbg !3864
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #27, !dbg !3866
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3866
  %208 = shl i64 %49, 9, !dbg !3867
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3867
  call void @llvm.dbg.value(metadata i1 %207, metadata !3753, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3797
  br label %272, !dbg !3868

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3869
  call void @llvm.dbg.value(metadata i32 1024, metadata !3835, metadata !DIExpression()) #27, !dbg !3869
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #27, !dbg !3871
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3871
  %213 = shl i64 %49, 10, !dbg !3872
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3872
  call void @llvm.dbg.value(metadata i1 %212, metadata !3753, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3797
  br label %272, !dbg !3873

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3824, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 undef, metadata !3825, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3876
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3878
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3878
  %218 = mul i64 %49, %73, !dbg !3879
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %217, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %217, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3876
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #27, !dbg !3878
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3878
  %222 = mul i64 %219, %73, !dbg !3879
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3879
  %224 = or i1 %217, %221, !dbg !3880
  call void @llvm.dbg.value(metadata i1 %224, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %224, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3876
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #27, !dbg !3878
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3878
  %227 = mul i64 %223, %73, !dbg !3879
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3879
  %229 = or i1 %224, %226, !dbg !3880
  call void @llvm.dbg.value(metadata i1 %229, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3874
  br label %272, !dbg !3842

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3824, metadata !DIExpression()) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3825, metadata !DIExpression()) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3883
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3883
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3885
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3885
  %233 = mul i64 %49, %73, !dbg !3886
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %232, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()) #27, !dbg !3881
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #27, !dbg !3885
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3885
  %237 = mul i64 %234, %73, !dbg !3886
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3886
  %239 = or i1 %232, %236, !dbg !3887
  call void @llvm.dbg.value(metadata i1 %239, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3881
  br label %272, !dbg !3842

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3824, metadata !DIExpression()) #27, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3825, metadata !DIExpression()) #27, !dbg !3888
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()) #27, !dbg !3888
  call void @llvm.dbg.value(metadata i32 3, metadata !3826, metadata !DIExpression()) #27, !dbg !3888
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3890
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3890
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3892
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3892
  %243 = mul i64 %49, %73, !dbg !3893
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3893
  call void @llvm.dbg.value(metadata i1 %242, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3888
  call void @llvm.dbg.value(metadata i32 2, metadata !3826, metadata !DIExpression()) #27, !dbg !3888
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #27, !dbg !3892
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3892
  %247 = mul i64 %244, %73, !dbg !3893
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3893
  %249 = or i1 %242, %246, !dbg !3894
  call void @llvm.dbg.value(metadata i1 %249, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3888
  call void @llvm.dbg.value(metadata i32 1, metadata !3826, metadata !DIExpression()) #27, !dbg !3888
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #27, !dbg !3892
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3892
  %252 = mul i64 %248, %73, !dbg !3893
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3893
  %254 = or i1 %249, %251, !dbg !3894
  call void @llvm.dbg.value(metadata i1 %254, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3888
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()) #27, !dbg !3888
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #27, !dbg !3892
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3892
  %257 = mul i64 %253, %73, !dbg !3893
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3893
  %259 = or i1 %254, %256, !dbg !3894
  call void @llvm.dbg.value(metadata i1 %259, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3888
  call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3888
  br label %272, !dbg !3842

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3895
  call void @llvm.dbg.value(metadata i32 2, metadata !3835, metadata !DIExpression()) #27, !dbg !3895
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #27, !dbg !3897
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3897
  %263 = shl i64 %49, 1, !dbg !3898
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3898
  call void @llvm.dbg.value(metadata i1 %262, metadata !3753, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3797
  br label %272, !dbg !3899

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3743, metadata !DIExpression()), !dbg !3754
  store i64 %49, i64* %3, align 8, !dbg !3900, !tbaa !955
  %266 = or i32 %48, 2, !dbg !3901
  br label %285, !dbg !3902

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3824, metadata !DIExpression()) #27, !dbg !3903
  call void @llvm.dbg.value(metadata i32 undef, metadata !3825, metadata !DIExpression()) #27, !dbg !3903
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()) #27, !dbg !3903
  call void @llvm.dbg.value(metadata i32 undef, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3903
  call void @llvm.dbg.value(metadata i64* undef, metadata !3830, metadata !DIExpression()) #27, !dbg !3905
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression()) #27, !dbg !3905
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3907
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3907
  call void @llvm.dbg.value(metadata i32 undef, metadata !3826, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3903
  call void @llvm.dbg.value(metadata i1 %269, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3903
  %270 = mul i64 %49, %73, !dbg !3908
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3908
  br label %272, !dbg !3842

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3754
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3909
  call void @llvm.dbg.value(metadata i32 %275, metadata !3753, metadata !DIExpression()), !dbg !3797
  %276 = or i32 %48, %275, !dbg !3842
  call void @llvm.dbg.value(metadata i32 %276, metadata !3744, metadata !DIExpression()), !dbg !3754
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3910
  store i8* %277, i8** %25, align 8, !dbg !3910, !tbaa !755
  %278 = load i8, i8* %277, align 1, !dbg !3911, !tbaa !983
  %279 = icmp eq i8 %278, 0, !dbg !3911
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3913
  call void @llvm.dbg.value(metadata i32 %281, metadata !3744, metadata !DIExpression()), !dbg !3754
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3914
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3915
  call void @llvm.dbg.value(metadata i32 %284, metadata !3744, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 %283, metadata !3743, metadata !DIExpression()), !dbg !3754
  store i64 %283, i64* %3, align 8, !dbg !3916, !tbaa !955
  br label %285, !dbg !3917

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3754
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #27, !dbg !3918
  ret i32 %286, !dbg !3918
}

; Function Attrs: nounwind
declare !dbg !3919 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3923 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3925, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %1, metadata !3926, metadata !DIExpression()), !dbg !3931
  %3 = icmp eq i64 %0, 0, !dbg !3932
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3933
  br i1 %5, label %11, label %6, !dbg !3933

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3928, metadata !DIExpression()), !dbg !3934
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3935
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3935
  br i1 %8, label %9, label %11, !dbg !3937

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !3938
  store i32 12, i32* %10, align 4, !dbg !3940, !tbaa !947
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3925, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %12, metadata !3926, metadata !DIExpression()), !dbg !3931
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !3941
  call void @llvm.dbg.value(metadata i8* %14, metadata !3927, metadata !DIExpression()), !dbg !3931
  br label %15, !dbg !3942

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3931
  ret i8* %16, !dbg !3943
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3944 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3960, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i8* %1, metadata !3961, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i64 %2, metadata !3962, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3963, metadata !DIExpression()), !dbg !3969
  %6 = bitcast i32* %5 to i8*, !dbg !3970
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3970
  %7 = icmp eq i32* %0, null, !dbg !3971
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3973
  call void @llvm.dbg.value(metadata i32* %8, metadata !3960, metadata !DIExpression()), !dbg !3969
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !3974
  call void @llvm.dbg.value(metadata i64 %9, metadata !3964, metadata !DIExpression()), !dbg !3969
  %10 = icmp ugt i64 %9, -3, !dbg !3975
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3976
  br i1 %12, label %13, label %18, !dbg !3976

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !3977
  br i1 %14, label %18, label %15, !dbg !3978

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3979, !tbaa !983
  call void @llvm.dbg.value(metadata i8 %16, metadata !3966, metadata !DIExpression()), !dbg !3980
  %17 = zext i8 %16 to i32, !dbg !3981
  store i32 %17, i32* %8, align 4, !dbg !3982, !tbaa !947
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3969
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3983
  ret i64 %19, !dbg !3983
}

; Function Attrs: nounwind
declare !dbg !3984 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3988 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4026, metadata !DIExpression()), !dbg !4031
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !4032
  call void @llvm.dbg.value(metadata i1 undef, metadata !4027, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4031
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4033, metadata !DIExpression()), !dbg !4037
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4039
  %4 = load i32, i32* %3, align 8, !dbg !4039, !tbaa !4040
  %5 = and i32 %4, 32, !dbg !4042
  %6 = icmp eq i32 %5, 0, !dbg !4042
  call void @llvm.dbg.value(metadata i1 %6, metadata !4029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4031
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !4043
  %8 = icmp eq i32 %7, 0, !dbg !4044
  call void @llvm.dbg.value(metadata i1 %8, metadata !4030, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4031
  br i1 %6, label %9, label %19, !dbg !4045

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4047
  call void @llvm.dbg.value(metadata i1 %10, metadata !4027, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4031
  %11 = or i1 %10, %8, !dbg !4048
  %12 = xor i1 %8, true, !dbg !4048
  %13 = sext i1 %12 to i32, !dbg !4048
  br i1 %11, label %22, label %14, !dbg !4048

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !4049
  %16 = load i32, i32* %15, align 4, !dbg !4049, !tbaa !947
  %17 = icmp ne i32 %16, 9, !dbg !4050
  %18 = sext i1 %17 to i32, !dbg !4051
  br label %22, !dbg !4051

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4052

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !4054
  store i32 0, i32* %21, align 4, !dbg !4056, !tbaa !947
  br label %22, !dbg !4054

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4031
  ret i32 %23, !dbg !4057
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4058 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4062, metadata !DIExpression()), !dbg !4067
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4068
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4068
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4063, metadata !DIExpression()), !dbg !4069
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !4070
  %5 = icmp eq i32 %4, 0, !dbg !4070
  br i1 %5, label %6, label %13, !dbg !4072

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4073
  %8 = load i16, i16* %7, align 16, !dbg !4073
  %9 = icmp eq i16 %8, 67, !dbg !4073
  br i1 %9, label %13, label %10, !dbg !4074

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i64 6), !dbg !4075
  %12 = icmp ne i32 %11, 0, !dbg !4076
  br label %13, !dbg !4074

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4067
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4077
  ret i1 %14, !dbg !4077
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #26 !dbg !4078 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4083, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i8* %1, metadata !4084, metadata !DIExpression()), !dbg !4086
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !4087
  call void @llvm.dbg.value(metadata i8* %3, metadata !4085, metadata !DIExpression()), !dbg !4086
  store i8 0, i8* %3, align 1, !dbg !4088, !tbaa !983
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !4086
  call void @llvm.dbg.value(metadata i8* %6, metadata !4085, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i64 %5, metadata !4083, metadata !DIExpression()), !dbg !4086
  %7 = urem i64 %5, 10, !dbg !4089
  %8 = trunc i64 %7 to i8, !dbg !4092
  %9 = or i8 %8, 48, !dbg !4092
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !4093
  call void @llvm.dbg.value(metadata i8* %10, metadata !4085, metadata !DIExpression()), !dbg !4086
  store i8 %9, i8* %10, align 1, !dbg !4094, !tbaa !983
  %11 = udiv i64 %5, 10, !dbg !4095
  call void @llvm.dbg.value(metadata i64 %11, metadata !4083, metadata !DIExpression()), !dbg !4086
  %12 = icmp ult i64 %5, 10, !dbg !4096
  br i1 %12, label %13, label %4, !dbg !4097, !llvm.loop !4098

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !4085, metadata !DIExpression()), !dbg !4086
  ret i8* %10, !dbg !4101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4102 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !4107
  call void @llvm.dbg.value(metadata i8* %1, metadata !4106, metadata !DIExpression()), !dbg !4108
  %2 = icmp eq i8* %1, null, !dbg !4109
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), i8* %1, !dbg !4111
  call void @llvm.dbg.value(metadata i8* %3, metadata !4106, metadata !DIExpression()), !dbg !4108
  %4 = load i8, i8* %3, align 1, !dbg !4112, !tbaa !983
  %5 = icmp eq i8 %4, 0, !dbg !4116
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i8* %3, !dbg !4117
  call void @llvm.dbg.value(metadata i8* %6, metadata !4106, metadata !DIExpression()), !dbg !4108
  ret i8* %6, !dbg !4118
}

; Function Attrs: nounwind
declare !dbg !4119 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mgetgroups(i8* %0, i32 %1, i32** nocapture %2) local_unnamed_addr #8 !dbg !700 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !705, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 %1, metadata !706, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32** %2, metadata !707, metadata !DIExpression()), !dbg !4122
  %5 = bitcast i32* %4 to i8*, !dbg !4123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #27, !dbg !4123
  %6 = icmp eq i8* %0, null, !dbg !4124
  br i1 %6, label %40, label %7, !dbg !4125

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !708, metadata !DIExpression()), !dbg !4122
  store i32 10, i32* %4, align 4, !dbg !4126, !tbaa !947
  call void @llvm.dbg.value(metadata i32* null, metadata !4127, metadata !DIExpression()) #27, !dbg !4133
  call void @llvm.dbg.value(metadata i64 10, metadata !4132, metadata !DIExpression()) #27, !dbg !4133
  %8 = tail call dereferenceable_or_null(40) i8* @malloc(i64 40), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %8, metadata !710, metadata !DIExpression()), !dbg !4122
  %9 = icmp eq i8* %8, null, !dbg !4136
  br i1 %9, label %141, label %10, !dbg !4138

10:                                               ; preds = %7, %36
  %11 = phi i32 [ %22, %36 ], [ 10, %7 ], !dbg !4139
  %12 = phi i8* [ %29, %36 ], [ %8, %7 ]
  %13 = bitcast i8* %12 to i32*, !dbg !4140
  call void @llvm.dbg.value(metadata i32* %13, metadata !710, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 %11, metadata !715, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i32* %4, metadata !708, metadata !DIExpression(DW_OP_deref)), !dbg !4122
  %14 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %13, i32* nonnull %4) #27, !dbg !4142
  call void @llvm.dbg.value(metadata i32 %14, metadata !709, metadata !DIExpression()), !dbg !4122
  %15 = icmp slt i32 %14, 0, !dbg !4143
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %11, %16
  %18 = and i1 %15, %17, !dbg !4145
  call void @llvm.dbg.value(metadata i32 %16, metadata !708, metadata !DIExpression()), !dbg !4122
  br i1 %18, label %19, label %21, !dbg !4145

19:                                               ; preds = %10
  %20 = shl nuw nsw i32 %11, 1, !dbg !4146
  call void @llvm.dbg.value(metadata i32 %20, metadata !708, metadata !DIExpression()), !dbg !4122
  store i32 %20, i32* %4, align 4, !dbg !4146, !tbaa !947
  br label %21, !dbg !4147

21:                                               ; preds = %19, %10
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !4148
  call void @llvm.dbg.value(metadata i32 %22, metadata !708, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %13, metadata !4127, metadata !DIExpression()) #27, !dbg !4149
  call void @llvm.dbg.value(metadata i32 %22, metadata !4132, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !4149
  %23 = icmp slt i32 %22, 0, !dbg !4151
  br i1 %23, label %24, label %26, !dbg !4153

24:                                               ; preds = %21
  %25 = tail call i32* @__errno_location() #31, !dbg !4154
  store i32 12, i32* %25, align 4, !dbg !4156, !tbaa !947
  call void @llvm.dbg.value(metadata i8* %29, metadata !711, metadata !DIExpression()), !dbg !4141
  br label %33, !dbg !4157

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64, !dbg !4148
  call void @llvm.dbg.value(metadata i64 %27, metadata !4132, metadata !DIExpression()) #27, !dbg !4149
  %28 = shl nuw nsw i64 %27, 2, !dbg !4158
  %29 = call i8* @realloc(i8* nonnull %12, i64 %28) #27, !dbg !4159
  call void @llvm.dbg.value(metadata i8* %29, metadata !711, metadata !DIExpression()), !dbg !4141
  %30 = icmp eq i8* %29, null, !dbg !4160
  br i1 %30, label %31, label %36, !dbg !4157

31:                                               ; preds = %26
  %32 = tail call i32* @__errno_location() #31, !dbg !4161
  br label %33, !dbg !4161

33:                                               ; preds = %31, %24
  %34 = phi i32* [ %32, %31 ], [ %25, %24 ], !dbg !4161
  %35 = load i32, i32* %34, align 4, !dbg !4161, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %35, metadata !716, metadata !DIExpression()), !dbg !4162
  call void @free(i8* nonnull %12) #27, !dbg !4163
  store i32 %35, i32* %34, align 4, !dbg !4164, !tbaa !947
  br label %141

36:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %29, metadata !711, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i8* %29, metadata !710, metadata !DIExpression()), !dbg !4122
  %37 = icmp sgt i32 %14, -1, !dbg !4165
  br i1 %37, label %38, label %10, !dbg !4167

38:                                               ; preds = %36
  %39 = bitcast i32** %2 to i8**, !dbg !4168
  store i8* %29, i8** %39, align 8, !dbg !4168, !tbaa !755
  call void @llvm.dbg.value(metadata i32 %22, metadata !708, metadata !DIExpression()), !dbg !4122
  br label %141, !dbg !4170

40:                                               ; preds = %3
  %41 = tail call i32 @getgroups(i32 0, i32* null) #27, !dbg !4171
  call void @llvm.dbg.value(metadata i32 %41, metadata !708, metadata !DIExpression()), !dbg !4122
  store i32 %41, i32* %4, align 4, !dbg !4172, !tbaa !947
  %42 = icmp slt i32 %41, 0, !dbg !4173
  br i1 %42, label %43, label %55, !dbg !4175

43:                                               ; preds = %40
  %44 = tail call i32* @__errno_location() #31, !dbg !4176
  %45 = load i32, i32* %44, align 4, !dbg !4176, !tbaa !947
  %46 = icmp eq i32 %45, 38, !dbg !4179
  br i1 %46, label %47, label %141, !dbg !4180

47:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32* null, metadata !4127, metadata !DIExpression()) #27, !dbg !4181
  call void @llvm.dbg.value(metadata i64 1, metadata !4132, metadata !DIExpression()) #27, !dbg !4181
  %48 = tail call dereferenceable_or_null(4) i8* @malloc(i64 4), !dbg !4183
  call void @llvm.dbg.value(metadata i8* %48, metadata !710, metadata !DIExpression()), !dbg !4122
  %49 = icmp eq i8* %48, null, !dbg !4184
  br i1 %49, label %141, label %50, !dbg !4185

50:                                               ; preds = %47
  %51 = bitcast i8* %48 to i32*, !dbg !4183
  call void @llvm.dbg.value(metadata i32* %51, metadata !710, metadata !DIExpression()), !dbg !4122
  %52 = bitcast i32** %2 to i8**, !dbg !4186
  store i8* %48, i8** %52, align 8, !dbg !4186, !tbaa !755
  store i32 %1, i32* %51, align 4, !dbg !4188, !tbaa !947
  %53 = icmp ne i32 %1, -1, !dbg !4189
  %54 = zext i1 %53 to i32, !dbg !4189
  br label %141, !dbg !4190

55:                                               ; preds = %40
  %56 = icmp ne i32 %41, 0, !dbg !4191
  %57 = icmp eq i32 %1, -1
  %58 = and i1 %57, %56, !dbg !4193
  br i1 %58, label %61, label %59, !dbg !4193

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 %41, metadata !708, metadata !DIExpression()), !dbg !4122
  %60 = add nuw nsw i32 %41, 1, !dbg !4194
  call void @llvm.dbg.value(metadata i32 %60, metadata !708, metadata !DIExpression()), !dbg !4122
  store i32 %60, i32* %4, align 4, !dbg !4194, !tbaa !947
  br label %61, !dbg !4195

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %41, %55 ], [ %60, %59 ], !dbg !4196
  call void @llvm.dbg.value(metadata i32 %62, metadata !708, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* null, metadata !4127, metadata !DIExpression()) #27, !dbg !4197
  call void @llvm.dbg.value(metadata i32 %62, metadata !4132, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !4197
  %63 = zext i32 %62 to i64, !dbg !4196
  call void @llvm.dbg.value(metadata i64 %63, metadata !4132, metadata !DIExpression()) #27, !dbg !4197
  %64 = shl nuw nsw i64 %63, 2, !dbg !4199
  %65 = tail call i8* @malloc(i64 %64), !dbg !4200
  %66 = bitcast i8* %65 to i32*, !dbg !4200
  call void @llvm.dbg.value(metadata i32* %66, metadata !710, metadata !DIExpression()), !dbg !4122
  %67 = icmp eq i8* %65, null, !dbg !4201
  br i1 %67, label %141, label %68, !dbg !4203

68:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 %62, metadata !708, metadata !DIExpression()), !dbg !4122
  %69 = icmp ne i32 %1, -1, !dbg !4204
  %70 = sext i1 %69 to i32, !dbg !4204
  %71 = add nsw i32 %62, %70, !dbg !4205
  %72 = zext i1 %69 to i64, !dbg !4206
  %73 = getelementptr inbounds i32, i32* %66, i64 %72, !dbg !4206
  %74 = tail call i32 @getgroups(i32 %71, i32* nonnull %73) #27, !dbg !4207
  call void @llvm.dbg.value(metadata i32 %74, metadata !709, metadata !DIExpression()), !dbg !4122
  %75 = icmp slt i32 %74, 0, !dbg !4208
  br i1 %75, label %76, label %79, !dbg !4209

76:                                               ; preds = %68
  %77 = tail call i32* @__errno_location() #31, !dbg !4210
  %78 = load i32, i32* %77, align 4, !dbg !4210, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %78, metadata !719, metadata !DIExpression()), !dbg !4211
  tail call void @free(i8* nonnull %65) #27, !dbg !4212
  store i32 %78, i32* %77, align 4, !dbg !4213, !tbaa !947
  br label %141

79:                                               ; preds = %68
  br i1 %57, label %82, label %80, !dbg !4214

80:                                               ; preds = %79
  store i32 %1, i32* %66, align 4, !dbg !4216, !tbaa !947
  %81 = add nuw nsw i32 %74, 1, !dbg !4218
  call void @llvm.dbg.value(metadata i32 %81, metadata !709, metadata !DIExpression()), !dbg !4122
  br label %82, !dbg !4219

82:                                               ; preds = %80, %79
  %83 = phi i32 [ %81, %80 ], [ %74, %79 ], !dbg !4122
  call void @llvm.dbg.value(metadata i32 %83, metadata !709, metadata !DIExpression()), !dbg !4122
  %84 = bitcast i32** %2 to i8**, !dbg !4220
  store i8* %65, i8** %84, align 8, !dbg !4220, !tbaa !755
  %85 = icmp sgt i32 %83, 1, !dbg !4221
  br i1 %85, label %86, label %141, !dbg !4222

86:                                               ; preds = %82
  %87 = load i32, i32* %66, align 4, !dbg !4223, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %87, metadata !722, metadata !DIExpression()), !dbg !4224
  %88 = zext i32 %83 to i64, !dbg !4225
  %89 = getelementptr inbounds i32, i32* %66, i64 %88, !dbg !4225
  call void @llvm.dbg.value(metadata i32* %89, metadata !726, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32* %66, metadata !725, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4224
  %90 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !4226
  %91 = bitcast i8* %90 to i32*, !dbg !4226
  call void @llvm.dbg.value(metadata i32* %91, metadata !725, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 %83, metadata !709, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %66, metadata !710, metadata !DIExpression()), !dbg !4122
  %92 = icmp ugt i32* %89, %91, !dbg !4228
  br i1 %92, label %93, label %141, !dbg !4230

93:                                               ; preds = %86
  %94 = shl nuw nsw i64 %88, 2, !dbg !4230
  %95 = add nsw i64 %94, -5, !dbg !4230
  %96 = and i64 %95, 4, !dbg !4230
  %97 = icmp eq i64 %96, 0, !dbg !4230
  br i1 %97, label %98, label %112, !dbg !4230

98:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i32 %83, metadata !709, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %66, metadata !710, metadata !DIExpression()), !dbg !4122
  %99 = load i32, i32* %91, align 4, !dbg !4231, !tbaa !947
  %100 = icmp eq i32 %99, %87
  br i1 %100, label %104, label %101, !dbg !4234

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !4235
  %103 = bitcast i8* %102 to i32*, !dbg !4235
  call void @llvm.dbg.value(metadata i32* %103, metadata !710, metadata !DIExpression()), !dbg !4122
  store i32 %99, i32* %103, align 4, !dbg !4236, !tbaa !947
  br label %106

104:                                              ; preds = %98
  %105 = add nsw i32 %83, -1, !dbg !4237
  call void @llvm.dbg.value(metadata i32 %105, metadata !709, metadata !DIExpression()), !dbg !4122
  br label %106, !dbg !4238

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %87, %104 ], [ %99, %101 ]
  %108 = phi i32* [ %66, %104 ], [ %103, %101 ], !dbg !4122
  %109 = phi i32 [ %105, %104 ], [ %83, %101 ], !dbg !4122
  call void @llvm.dbg.value(metadata i32 %109, metadata !709, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %108, metadata !710, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %91, metadata !725, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4224
  %110 = getelementptr inbounds i8, i8* %65, i64 8, !dbg !4226
  %111 = bitcast i8* %110 to i32*, !dbg !4226
  call void @llvm.dbg.value(metadata i32* %111, metadata !725, metadata !DIExpression()), !dbg !4224
  br label %112, !dbg !4230

112:                                              ; preds = %106, %93
  %113 = phi i32 [ %87, %93 ], [ %107, %106 ]
  %114 = phi i32* [ %91, %93 ], [ %111, %106 ]
  %115 = phi i32 [ %83, %93 ], [ %109, %106 ]
  %116 = phi i32* [ %66, %93 ], [ %108, %106 ]
  %117 = phi i32 [ undef, %93 ], [ %109, %106 ]
  %118 = icmp eq i64 %95, 3, !dbg !4230
  br i1 %118, label %141, label %119, !dbg !4230

119:                                              ; preds = %112, %147
  %120 = phi i32 [ %148, %147 ], [ %113, %112 ]
  %121 = phi i32* [ %151, %147 ], [ %114, %112 ]
  %122 = phi i32 [ %150, %147 ], [ %115, %112 ]
  %123 = phi i32* [ %149, %147 ], [ %116, %112 ]
  call void @llvm.dbg.value(metadata i32 %122, metadata !709, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %123, metadata !710, metadata !DIExpression()), !dbg !4122
  %124 = load i32, i32* %121, align 4, !dbg !4231, !tbaa !947
  %125 = icmp eq i32 %124, %87, !dbg !4239
  %126 = icmp eq i32 %124, %120
  %127 = or i1 %125, %126, !dbg !4234
  br i1 %127, label %128, label %130, !dbg !4234

128:                                              ; preds = %119
  %129 = add nsw i32 %122, -1, !dbg !4237
  call void @llvm.dbg.value(metadata i32 %129, metadata !709, metadata !DIExpression()), !dbg !4122
  br label %132, !dbg !4238

130:                                              ; preds = %119
  %131 = getelementptr inbounds i32, i32* %123, i64 1, !dbg !4235
  call void @llvm.dbg.value(metadata i32* %131, metadata !710, metadata !DIExpression()), !dbg !4122
  store i32 %124, i32* %131, align 4, !dbg !4236, !tbaa !947
  br label %132

132:                                              ; preds = %128, %130
  %133 = phi i32 [ %120, %128 ], [ %124, %130 ]
  %134 = phi i32* [ %123, %128 ], [ %131, %130 ], !dbg !4122
  %135 = phi i32 [ %129, %128 ], [ %122, %130 ], !dbg !4122
  call void @llvm.dbg.value(metadata i32 %135, metadata !709, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %134, metadata !710, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %121, metadata !725, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4224
  %136 = getelementptr inbounds i32, i32* %121, i64 1, !dbg !4226
  call void @llvm.dbg.value(metadata i32* %136, metadata !725, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 %135, metadata !709, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %134, metadata !710, metadata !DIExpression()), !dbg !4122
  %137 = load i32, i32* %136, align 4, !dbg !4231, !tbaa !947
  %138 = icmp eq i32 %137, %87, !dbg !4239
  %139 = icmp eq i32 %137, %133
  %140 = or i1 %138, %139, !dbg !4234
  br i1 %140, label %145, label %143, !dbg !4234

141:                                              ; preds = %112, %147, %86, %33, %38, %82, %61, %43, %47, %7, %76, %50
  %142 = phi i32 [ %54, %50 ], [ -1, %76 ], [ -1, %7 ], [ -1, %47 ], [ -1, %43 ], [ -1, %61 ], [ %83, %82 ], [ -1, %33 ], [ %22, %38 ], [ %83, %86 ], [ %117, %112 ], [ %150, %147 ], !dbg !4122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #27, !dbg !4240
  ret i32 %142, !dbg !4240

143:                                              ; preds = %132
  %144 = getelementptr inbounds i32, i32* %134, i64 1, !dbg !4235
  call void @llvm.dbg.value(metadata i32* %144, metadata !710, metadata !DIExpression()), !dbg !4122
  store i32 %137, i32* %144, align 4, !dbg !4236, !tbaa !947
  br label %147

145:                                              ; preds = %132
  %146 = add nsw i32 %135, -1, !dbg !4237
  call void @llvm.dbg.value(metadata i32 %146, metadata !709, metadata !DIExpression()), !dbg !4122
  br label %147, !dbg !4238

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %133, %145 ], [ %137, %143 ]
  %149 = phi i32* [ %134, %145 ], [ %144, %143 ], !dbg !4122
  %150 = phi i32 [ %146, %145 ], [ %135, %143 ], !dbg !4122
  call void @llvm.dbg.value(metadata i32 %150, metadata !709, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %149, metadata !710, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32* %136, metadata !725, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4224
  %151 = getelementptr inbounds i32, i32* %121, i64 2, !dbg !4226
  call void @llvm.dbg.value(metadata i32* %151, metadata !725, metadata !DIExpression()), !dbg !4224
  %152 = icmp ult i32* %151, %89, !dbg !4228
  br i1 %152, label %119, label %141, !dbg !4230, !llvm.loop !4241
}

declare !dbg !4243 i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4246 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4250, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i8* %1, metadata !4251, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i64 %2, metadata !4252, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i32 %0, metadata !4254, metadata !DIExpression()) #27, !dbg !4263
  call void @llvm.dbg.value(metadata i8* %1, metadata !4257, metadata !DIExpression()) #27, !dbg !4263
  call void @llvm.dbg.value(metadata i64 %2, metadata !4258, metadata !DIExpression()) #27, !dbg !4263
  call void @llvm.dbg.value(metadata i32 %0, metadata !4265, metadata !DIExpression()) #27, !dbg !4271
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %4, metadata !4270, metadata !DIExpression()) #27, !dbg !4271
  call void @llvm.dbg.value(metadata i8* %4, metadata !4259, metadata !DIExpression()) #27, !dbg !4263
  %5 = icmp eq i8* %4, null, !dbg !4274
  br i1 %5, label %6, label %9, !dbg !4275

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4276
  br i1 %7, label %19, label %8, !dbg !4279

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4280, !tbaa !983
  br label %19, !dbg !4281

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !4282
  call void @llvm.dbg.value(metadata i64 %10, metadata !4260, metadata !DIExpression()) #27, !dbg !4283
  %11 = icmp ult i64 %10, %2, !dbg !4284
  br i1 %11, label %12, label %14, !dbg !4286

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4287
  call void @llvm.dbg.value(metadata i8* %1, metadata !4289, metadata !DIExpression()) #27, !dbg !4294
  call void @llvm.dbg.value(metadata i8* %4, metadata !4292, metadata !DIExpression()) #27, !dbg !4294
  call void @llvm.dbg.value(metadata i64 %13, metadata !4293, metadata !DIExpression()) #27, !dbg !4294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !4296
  br label %19, !dbg !4297

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4298
  br i1 %15, label %19, label %16, !dbg !4301

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4302
  call void @llvm.dbg.value(metadata i8* %1, metadata !4289, metadata !DIExpression()) #27, !dbg !4304
  call void @llvm.dbg.value(metadata i8* %4, metadata !4292, metadata !DIExpression()) #27, !dbg !4304
  call void @llvm.dbg.value(metadata i64 %17, metadata !4293, metadata !DIExpression()) #27, !dbg !4304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !4306
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4307
  store i8 0, i8* %18, align 1, !dbg !4308, !tbaa !983
  br label %19, !dbg !4309

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4310
  ret i32 %20, !dbg !4311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4312 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4314, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 %0, metadata !4265, metadata !DIExpression()) #27, !dbg !4316
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4318
  call void @llvm.dbg.value(metadata i8* %2, metadata !4270, metadata !DIExpression()) #27, !dbg !4316
  ret i8* %2, !dbg !4319
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4320 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4358, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 0, metadata !4359, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 0, metadata !4361, metadata !DIExpression()), !dbg !4362
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4363
  call void @llvm.dbg.value(metadata i32 %2, metadata !4360, metadata !DIExpression()), !dbg !4362
  %3 = icmp slt i32 %2, 0, !dbg !4364
  br i1 %3, label %4, label %6, !dbg !4366

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4367
  br label %24, !dbg !4368

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4369
  %8 = icmp eq i32 %7, 0, !dbg !4369
  br i1 %8, label %13, label %9, !dbg !4371

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4372
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !4373
  %12 = icmp eq i64 %11, -1, !dbg !4374
  br i1 %12, label %16, label %13, !dbg !4375

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !4376
  %15 = icmp eq i32 %14, 0, !dbg !4376
  br i1 %15, label %16, label %18, !dbg !4377

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4359, metadata !DIExpression()), !dbg !4362
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4378
  call void @llvm.dbg.value(metadata i32 %21, metadata !4361, metadata !DIExpression()), !dbg !4362
  br label %24, !dbg !4379

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !4380
  %20 = load i32, i32* %19, align 4, !dbg !4380, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %20, metadata !4359, metadata !DIExpression()), !dbg !4362
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4378
  call void @llvm.dbg.value(metadata i32 %21, metadata !4361, metadata !DIExpression()), !dbg !4362
  %22 = icmp eq i32 %20, 0, !dbg !4381
  br i1 %22, label %24, label %23, !dbg !4379

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4383, !tbaa !947
  call void @llvm.dbg.value(metadata i32 -1, metadata !4361, metadata !DIExpression()), !dbg !4362
  br label %24, !dbg !4385

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4362
  ret i32 %25, !dbg !4386
}

; Function Attrs: nofree nounwind
declare !dbg !4387 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4390 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4391 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4394 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4432, metadata !DIExpression()), !dbg !4433
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4434
  br i1 %2, label %6, label %3, !dbg !4436

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4437
  %5 = icmp eq i32 %4, 0, !dbg !4437
  br i1 %5, label %6, label %8, !dbg !4438

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4439
  br label %17, !dbg !4440

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4441, metadata !DIExpression()) #27, !dbg !4446
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4448
  %10 = load i32, i32* %9, align 8, !dbg !4448, !tbaa !4040
  %11 = and i32 %10, 256, !dbg !4450
  %12 = icmp eq i32 %11, 0, !dbg !4450
  br i1 %12, label %15, label %13, !dbg !4451

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !4452
  br label %15, !dbg !4452

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4453
  br label %17, !dbg !4454

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4433
  ret i32 %18, !dbg !4455
}

; Function Attrs: nofree nounwind
declare !dbg !4456 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4459 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4498, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %1, metadata !4499, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 %2, metadata !4500, metadata !DIExpression()), !dbg !4504
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4505
  %5 = load i8*, i8** %4, align 8, !dbg !4505, !tbaa !4506
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4507
  %7 = load i8*, i8** %6, align 8, !dbg !4507, !tbaa !4508
  %8 = icmp eq i8* %5, %7, !dbg !4509
  br i1 %8, label %9, label %28, !dbg !4510

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4511
  %11 = load i8*, i8** %10, align 8, !dbg !4511, !tbaa !4512
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4513
  %13 = load i8*, i8** %12, align 8, !dbg !4513, !tbaa !4514
  %14 = icmp eq i8* %11, %13, !dbg !4515
  br i1 %14, label %15, label %28, !dbg !4516

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4517
  %17 = load i8*, i8** %16, align 8, !dbg !4517, !tbaa !4518
  %18 = icmp eq i8* %17, null, !dbg !4519
  br i1 %18, label %19, label %28, !dbg !4520

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4521
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !4522
  call void @llvm.dbg.value(metadata i64 %21, metadata !4501, metadata !DIExpression()), !dbg !4523
  %22 = icmp eq i64 %21, -1, !dbg !4524
  br i1 %22, label %30, label %23, !dbg !4526

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4527
  %25 = load i32, i32* %24, align 8, !dbg !4528, !tbaa !4040
  %26 = and i32 %25, -17, !dbg !4528
  store i32 %26, i32* %24, align 8, !dbg !4528, !tbaa !4040
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4529
  store i64 %21, i64* %27, align 8, !dbg !4530, !tbaa !4531
  br label %30, !dbg !4532

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4533
  br label %30, !dbg !4534

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4504
  ret i32 %31, !dbg !4535
}

; Function Attrs: nofree nounwind
declare !dbg !4536 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
attributes #25 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree norecurse nounwind sspstrong uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!2, !108, !114, !122, !128, !134, !192, !264, !186, !271, !282, !284, !286, !290, !292, !294, !297, !299, !301, !307, !696, !730, !732, !734, !736}
!llvm.ident = !{!738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738, !738}
!llvm.module.flags = !{!739, !740, !741, !742, !743}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_opts", scope: !2, file: !3, line: 57, type: !92, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !67, globals: !91, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/chroot.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !27, !35, !50}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 87, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!24 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!25 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!26 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !28, line: 25, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!51 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!52 = distinct !DISubprogram(name: "x2nrealloc", scope: !51, file: !51, line: 174, type: !53, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !55, !56, !57}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 46, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!59 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !{!61, !62, !63, !64}
!61 = !DILocalVariable(name: "p", arg: 1, scope: !52, file: !51, line: 174, type: !55)
!62 = !DILocalVariable(name: "pn", arg: 2, scope: !52, file: !51, line: 174, type: !56)
!63 = !DILocalVariable(name: "s", arg: 3, scope: !52, file: !51, line: 174, type: !57)
!64 = !DILocalVariable(name: "n", scope: !52, file: !51, line: 176, type: !57)
!65 = !{!66}
!66 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!67 = !{!68, !55, !70, !71, !75, !77, !78, !87, !57}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !72, line: 79, baseType: !73)
!72 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !74, line: 146, baseType: !7)
!74 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !72, line: 64, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !74, line: 147, baseType: !7)
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !80, line: 42, size: 256, elements: !81)
!80 = !DIFile(filename: "/usr/include/grp.h", directory: "")
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !79, file: !80, line: 44, baseType: !68, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !79, file: !80, line: 45, baseType: !68, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !79, file: !80, line: 46, baseType: !76, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !79, file: !80, line: 47, baseType: !86, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !88, line: 267, baseType: !89)
!88 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !74, line: 207, baseType: !90)
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !{!0}
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1536, elements: !104)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !95, line: 50, size: 256, elements: !96)
!95 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!96 = !{!97, !100, !101, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 52, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !94, file: !95, line: 55, baseType: !70, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !94, file: !95, line: 56, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !94, file: !95, line: 57, baseType: !70, size: 32, offset: 192)
!104 = !{!105}
!105 = !DISubrange(count: 6)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "Version", scope: !108, file: !109, line: 2, type: !98, isLocal: false, isDefinition: true)
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !111, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!110 = !{}
!111 = !{!106}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "file_name", scope: !114, file: !115, line: 46, type: !98, isLocal: true, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !116, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!116 = !{!112, !117}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !114, file: !115, line: 56, type: !119, isLocal: true, isDefinition: true)
!119 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "exit_failure", scope: !122, file: !123, line: 24, type: !125, isLocal: false, isDefinition: true)
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !124, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!124 = !{!120}
!125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "program_name", scope: !128, file: !129, line: 33, type: !98, isLocal: false, isDefinition: true)
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !130, globals: !131, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!130 = !{!55, !68}
!131 = !{!126}
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !134, file: !135, line: 85, type: !180, isLocal: false, isDefinition: true)
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !136, retainedTypes: !142, globals: !143, splitDebugInlining: false, nameTableKind: None)
!135 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!136 = !{!5, !137, !35}
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!142 = !{!70, !77, !57, !68}
!143 = !{!132, !144, !150, !162, !164, !169, !176, !178}
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !134, file: !135, line: 101, type: !146, isLocal: false, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 320, elements: !148)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!148 = !{!149}
!149 = !DISubrange(count: 10)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !134, file: !135, line: 1052, type: !152, isLocal: false, isDefinition: true)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !135, line: 65, size: 448, elements: !153)
!153 = !{!154, !155, !156, !160, !161}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !152, file: !135, line: 68, baseType: !5, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !135, line: 71, baseType: !70, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !152, file: !135, line: 75, baseType: !157, size: 256, offset: 64)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !152, file: !135, line: 78, baseType: !98, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !152, file: !135, line: 81, baseType: !98, size: 64, offset: 384)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !134, file: !135, line: 116, type: !152, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "slot0", scope: !134, file: !135, line: 842, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2048, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 256)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "slotvec", scope: !134, file: !135, line: 845, type: !171, isLocal: true, isDefinition: true)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !135, line: 834, size: 128, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !172, file: !135, line: 836, baseType: !57, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !172, file: !135, line: 837, baseType: !68, size: 64, offset: 64)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "nslots", scope: !134, file: !135, line: 843, type: !70, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "slotvec0", scope: !134, file: !135, line: 844, type: !172, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 704, elements: !182)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!182 = !{!183}
!183 = !DISubrange(count: 11)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !186, file: !187, line: 26, type: !189, isLocal: false, isDefinition: true)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !188, splitDebugInlining: false, nameTableKind: None)
!187 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!188 = !{!184}
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 376, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 47)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !195, globals: !196, splitDebugInlining: false, nameTableKind: None)
!193 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!194 = !{!27}
!195 = !{!55, !71, !75}
!196 = !{!197, !260, !262}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !199, file: !193, line: 106, type: !98, isLocal: true, isDefinition: true)
!199 = distinct !DISubprogram(name: "parse_with_separator", scope: !193, file: !193, line: 102, type: !200, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !192, retainedNodes: !204)
!200 = !DISubroutineType(types: !201)
!201 = !{!98, !98, !98, !202, !203, !86, !86}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !224, !232, !233, !234, !235, !236, !237, !240, !245, !248, !255}
!205 = !DILocalVariable(name: "spec", arg: 1, scope: !199, file: !193, line: 102, type: !98)
!206 = !DILocalVariable(name: "separator", arg: 2, scope: !199, file: !193, line: 102, type: !98)
!207 = !DILocalVariable(name: "uid", arg: 3, scope: !199, file: !193, line: 103, type: !202)
!208 = !DILocalVariable(name: "gid", arg: 4, scope: !199, file: !193, line: 103, type: !203)
!209 = !DILocalVariable(name: "username", arg: 5, scope: !199, file: !193, line: 104, type: !86)
!210 = !DILocalVariable(name: "groupname", arg: 6, scope: !199, file: !193, line: 104, type: !86)
!211 = !DILocalVariable(name: "error_msg", scope: !199, file: !193, line: 110, type: !98)
!212 = !DILocalVariable(name: "pwd", scope: !199, file: !193, line: 111, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !215, line: 49, size: 384, elements: !216)
!215 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!216 = !{!217, !218, !219, !220, !221, !222, !223}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !214, file: !215, line: 51, baseType: !68, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !214, file: !215, line: 52, baseType: !68, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !214, file: !215, line: 54, baseType: !73, size: 32, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !214, file: !215, line: 55, baseType: !76, size: 32, offset: 160)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !214, file: !215, line: 56, baseType: !68, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !214, file: !215, line: 57, baseType: !68, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !214, file: !215, line: 58, baseType: !68, size: 64, offset: 320)
!224 = !DILocalVariable(name: "grp", scope: !199, file: !193, line: 112, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !80, line: 42, size: 256, elements: !227)
!227 = !{!228, !229, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !226, file: !80, line: 44, baseType: !68, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !226, file: !80, line: 45, baseType: !68, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !226, file: !80, line: 46, baseType: !76, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !226, file: !80, line: 47, baseType: !86, size: 64, offset: 192)
!232 = !DILocalVariable(name: "u", scope: !199, file: !193, line: 113, type: !68)
!233 = !DILocalVariable(name: "g", scope: !199, file: !193, line: 114, type: !98)
!234 = !DILocalVariable(name: "gname", scope: !199, file: !193, line: 115, type: !68)
!235 = !DILocalVariable(name: "unum", scope: !199, file: !193, line: 116, type: !71)
!236 = !DILocalVariable(name: "gnum", scope: !199, file: !193, line: 117, type: !75)
!237 = !DILocalVariable(name: "ulen", scope: !238, file: !193, line: 137, type: !57)
!238 = distinct !DILexicalBlock(scope: !239, file: !193, line: 136, column: 5)
!239 = distinct !DILexicalBlock(scope: !199, file: !193, line: 130, column: 7)
!240 = !DILocalVariable(name: "use_login_group", scope: !241, file: !193, line: 164, type: !119)
!241 = distinct !DILexicalBlock(scope: !242, file: !193, line: 163, column: 9)
!242 = distinct !DILexicalBlock(scope: !243, file: !193, line: 162, column: 11)
!243 = distinct !DILexicalBlock(scope: !244, file: !193, line: 159, column: 5)
!244 = distinct !DILexicalBlock(scope: !199, file: !193, line: 158, column: 7)
!245 = !DILocalVariable(name: "tmp", scope: !246, file: !193, line: 173, type: !59)
!246 = distinct !DILexicalBlock(scope: !247, file: !193, line: 172, column: 13)
!247 = distinct !DILexicalBlock(scope: !241, file: !193, line: 165, column: 15)
!248 = !DILocalVariable(name: "buf", scope: !249, file: !193, line: 188, type: !252)
!249 = distinct !DILexicalBlock(scope: !250, file: !193, line: 185, column: 13)
!250 = distinct !DILexicalBlock(scope: !251, file: !193, line: 184, column: 15)
!251 = distinct !DILexicalBlock(scope: !242, file: !193, line: 182, column: 9)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 168, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 21)
!255 = !DILocalVariable(name: "tmp", scope: !256, file: !193, line: 205, type: !59)
!256 = distinct !DILexicalBlock(scope: !257, file: !193, line: 204, column: 9)
!257 = distinct !DILexicalBlock(scope: !258, file: !193, line: 203, column: 11)
!258 = distinct !DILexicalBlock(scope: !259, file: !193, line: 199, column: 5)
!259 = distinct !DILexicalBlock(scope: !199, file: !193, line: 198, column: 7)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !199, file: !193, line: 107, type: !98, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !199, file: !193, line: 108, type: !98, isLocal: true, isDefinition: true)
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !266, retainedTypes: !270, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!266 = !{!267}
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 40, baseType: !7, size: 32, elements: !268)
!268 = !{!269}
!269 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!270 = !{!55}
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !273, retainedTypes: !281, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!273 = !{!274}
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !275, file: !51, line: 186, baseType: !7, size: 32, elements: !65)
!275 = distinct !DISubprogram(name: "x2nrealloc", scope: !51, file: !51, line: 174, type: !53, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !276)
!276 = !{!277, !278, !279, !280}
!277 = !DILocalVariable(name: "p", arg: 1, scope: !275, file: !51, line: 174, type: !55)
!278 = !DILocalVariable(name: "pn", arg: 2, scope: !275, file: !51, line: 174, type: !56)
!279 = !DILocalVariable(name: "s", arg: 3, scope: !275, file: !51, line: 174, type: !57)
!280 = !DILocalVariable(name: "n", scope: !275, file: !51, line: 176, type: !57)
!281 = !{!57, !68, !55}
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !288, retainedTypes: !289, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/xstrtoul.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!288 = !{!27, !35}
!289 = !{!70, !77}
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !288, retainedTypes: !289, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !270, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !296, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!296 = !{!57}
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !303, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !305, line: 102, baseType: !306)
!305 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !74, line: 73, baseType: !59)
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !309, retainedTypes: !270, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!309 = !{!310}
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !311, line: 41, baseType: !7, size: 32, elements: !312)
!311 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!313 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!314 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!315 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!316 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!317 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!318 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!319 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!320 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!321 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!322 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!323 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!324 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!325 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!326 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!327 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!328 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!329 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!330 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!331 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!332 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!333 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!334 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!335 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!336 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!337 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!338 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!339 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!340 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!341 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!342 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!343 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!344 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!345 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!346 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!347 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!348 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!349 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!350 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!351 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!352 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!353 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!354 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!355 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!356 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!357 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!358 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!359 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!360 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!361 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!362 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!421 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!424 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!425 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!426 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!427 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!428 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!429 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!430 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!431 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!432 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!433 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!434 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!435 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!508 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!581 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!582 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!583 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!584 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!585 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!586 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!587 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!588 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!589 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!590 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!591 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!592 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!593 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!594 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!595 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!597 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!598 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!599 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!600 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!601 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!602 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!628 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!629 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!630 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!631 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!632 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!637 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!638 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!639 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!640 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !698, retainedTypes: !729, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!698 = !{!699}
!699 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !700, file: !697, line: 83, baseType: !7, size: 32, elements: !727)
!700 = distinct !DISubprogram(name: "mgetgroups", scope: !697, file: !697, line: 66, type: !701, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{!70, !98, !75, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !715, !716, !719, !722, !725, !726}
!705 = !DILocalVariable(name: "username", arg: 1, scope: !700, file: !697, line: 66, type: !98)
!706 = !DILocalVariable(name: "gid", arg: 2, scope: !700, file: !697, line: 66, type: !75)
!707 = !DILocalVariable(name: "groups", arg: 3, scope: !700, file: !697, line: 66, type: !703)
!708 = !DILocalVariable(name: "max_n_groups", scope: !700, file: !697, line: 68, type: !70)
!709 = !DILocalVariable(name: "ng", scope: !700, file: !697, line: 69, type: !70)
!710 = !DILocalVariable(name: "g", scope: !700, file: !697, line: 70, type: !203)
!711 = !DILocalVariable(name: "h", scope: !712, file: !697, line: 92, type: !203)
!712 = distinct !DILexicalBlock(scope: !713, file: !697, line: 91, column: 9)
!713 = distinct !DILexicalBlock(scope: !714, file: !697, line: 82, column: 5)
!714 = distinct !DILexicalBlock(scope: !700, file: !697, line: 81, column: 7)
!715 = !DILocalVariable(name: "last_n_groups", scope: !712, file: !697, line: 93, type: !70)
!716 = !DILocalVariable(name: "saved_errno", scope: !717, file: !697, line: 105, type: !70)
!717 = distinct !DILexicalBlock(scope: !718, file: !697, line: 104, column: 13)
!718 = distinct !DILexicalBlock(scope: !712, file: !697, line: 103, column: 15)
!719 = !DILocalVariable(name: "saved_errno", scope: !720, file: !697, line: 156, type: !70)
!720 = distinct !DILexicalBlock(scope: !721, file: !697, line: 154, column: 5)
!721 = distinct !DILexicalBlock(scope: !700, file: !697, line: 153, column: 7)
!722 = !DILocalVariable(name: "first", scope: !723, file: !697, line: 187, type: !75)
!723 = distinct !DILexicalBlock(scope: !724, file: !697, line: 186, column: 5)
!724 = distinct !DILexicalBlock(scope: !700, file: !697, line: 185, column: 7)
!725 = !DILocalVariable(name: "next", scope: !723, file: !697, line: 188, type: !203)
!726 = !DILocalVariable(name: "groups_end", scope: !723, file: !697, line: 189, type: !203)
!727 = !{!728}
!728 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!729 = !{!55, !75, !57}
!730 = distinct !DICompileUnit(language: DW_LANG_C99, file: !731, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !270, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!732 = distinct !DICompileUnit(language: DW_LANG_C99, file: !733, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!734 = distinct !DICompileUnit(language: DW_LANG_C99, file: !735, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !270, splitDebugInlining: false, nameTableKind: None)
!735 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!736 = distinct !DICompileUnit(language: DW_LANG_C99, file: !737, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !270, splitDebugInlining: false, nameTableKind: None)
!737 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!738 = !{!"clang version 12.0.1"}
!739 = !{i32 7, !"Dwarf Version", i32 4}
!740 = !{i32 2, !"Debug Info Version", i32 3}
!741 = !{i32 1, !"wchar_size", i32 4}
!742 = !{i32 7, !"PIC Level", i32 2}
!743 = !{i32 7, !"PIE Level", i32 2}
!744 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 181, type: !745, scopeLine: 182, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !70}
!747 = !{!748}
!748 = !DILocalVariable(name: "status", arg: 1, scope: !744, file: !3, line: 181, type: !70)
!749 = !DILocation(line: 0, scope: !744)
!750 = !DILocation(line: 183, column: 14, scope: !751)
!751 = distinct !DILexicalBlock(scope: !744, file: !3, line: 183, column: 7)
!752 = !DILocation(line: 183, column: 7, scope: !744)
!753 = !DILocation(line: 184, column: 5, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !3, line: 184, column: 5)
!755 = !{!756, !756, i64 0}
!756 = !{!"any pointer", !757, i64 0}
!757 = !{!"omnipotent char", !758, i64 0}
!758 = !{!"Simple C/C++ TBAA"}
!759 = !DILocation(line: 187, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !751, file: !3, line: 186, column: 5)
!761 = !DILocation(line: 192, column: 7, scope: !760)
!762 = !DILocation(line: 197, column: 7, scope: !760)
!763 = !DILocation(line: 200, column: 7, scope: !760)
!764 = !DILocation(line: 203, column: 7, scope: !760)
!765 = !DILocation(line: 207, column: 7, scope: !760)
!766 = !DILocation(line: 208, column: 7, scope: !760)
!767 = !DILocation(line: 209, column: 7, scope: !760)
!768 = !DILocalVariable(name: "program", arg: 1, scope: !769, file: !21, line: 634, type: !98)
!769 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !21, file: !21, line: 634, type: !770, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !98}
!772 = !{!768, !773, !782, !783, !785}
!773 = !DILocalVariable(name: "infomap", scope: !769, file: !21, line: 636, type: !774)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 896, elements: !780)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !769, file: !21, line: 636, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !776, file: !21, line: 636, baseType: !98, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !776, file: !21, line: 636, baseType: !98, size: 64, offset: 64)
!780 = !{!781}
!781 = !DISubrange(count: 7)
!782 = !DILocalVariable(name: "node", scope: !769, file: !21, line: 646, type: !98)
!783 = !DILocalVariable(name: "map_prog", scope: !769, file: !21, line: 647, type: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!785 = !DILocalVariable(name: "lc_messages", scope: !769, file: !21, line: 659, type: !98)
!786 = !DILocation(line: 0, scope: !769, inlinedAt: !787)
!787 = distinct !DILocation(line: 213, column: 7, scope: !760)
!788 = !DILocation(line: 636, column: 3, scope: !769, inlinedAt: !787)
!789 = !DILocation(line: 636, column: 67, scope: !769, inlinedAt: !787)
!790 = !DILocation(line: 647, column: 36, scope: !769, inlinedAt: !787)
!791 = !DILocation(line: 649, column: 3, scope: !769, inlinedAt: !787)
!792 = !DILocation(line: 649, column: 33, scope: !769, inlinedAt: !787)
!793 = !DILocation(line: 650, column: 13, scope: !769, inlinedAt: !787)
!794 = !DILocation(line: 649, column: 20, scope: !769, inlinedAt: !787)
!795 = !{!796, !756, i64 0}
!796 = !{!"infomap", !756, i64 0, !756, i64 8}
!797 = !DILocation(line: 649, column: 10, scope: !769, inlinedAt: !787)
!798 = !DILocation(line: 649, column: 28, scope: !769, inlinedAt: !787)
!799 = distinct !{!799, !791, !793, !800}
!800 = !{!"llvm.loop.mustprogress"}
!801 = !DILocation(line: 652, column: 17, scope: !802, inlinedAt: !787)
!802 = distinct !DILexicalBlock(scope: !769, file: !21, line: 652, column: 7)
!803 = !{!796, !756, i64 8}
!804 = !DILocation(line: 652, column: 7, scope: !802, inlinedAt: !787)
!805 = !DILocation(line: 652, column: 7, scope: !769, inlinedAt: !787)
!806 = !DILocation(line: 655, column: 3, scope: !769, inlinedAt: !787)
!807 = !DILocation(line: 659, column: 29, scope: !769, inlinedAt: !787)
!808 = !DILocation(line: 660, column: 7, scope: !809, inlinedAt: !787)
!809 = distinct !DILexicalBlock(scope: !769, file: !21, line: 660, column: 7)
!810 = !DILocation(line: 660, column: 19, scope: !809, inlinedAt: !787)
!811 = !DILocation(line: 660, column: 22, scope: !809, inlinedAt: !787)
!812 = !DILocation(line: 660, column: 7, scope: !769, inlinedAt: !787)
!813 = !DILocation(line: 666, column: 7, scope: !814, inlinedAt: !787)
!814 = distinct !DILexicalBlock(scope: !809, file: !21, line: 661, column: 5)
!815 = !DILocation(line: 668, column: 5, scope: !814, inlinedAt: !787)
!816 = !DILocation(line: 669, column: 3, scope: !769, inlinedAt: !787)
!817 = !DILocation(line: 671, column: 3, scope: !769, inlinedAt: !787)
!818 = !DILocation(line: 673, column: 1, scope: !769, inlinedAt: !787)
!819 = !DILocation(line: 215, column: 3, scope: !744)
!820 = !DISubprogram(name: "dcgettext", scope: !821, file: !821, line: 51, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!821 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!822 = !DISubroutineType(types: !823)
!823 = !{!68, !98, !98, !70}
!824 = !DISubprogram(name: "fputs_unlocked", scope: !825, file: !825, line: 667, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!825 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!826 = !DISubroutineType(types: !827)
!827 = !{!70, !98, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !831)
!830 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!831 = !{!832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !847, !848, !849, !850, !852, !853, !855, !859, !862, !864, !867, !870, !871, !872, !873, !874}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !829, file: !830, line: 51, baseType: !70, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !829, file: !830, line: 54, baseType: !68, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !829, file: !830, line: 55, baseType: !68, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !829, file: !830, line: 56, baseType: !68, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !829, file: !830, line: 57, baseType: !68, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !829, file: !830, line: 58, baseType: !68, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !829, file: !830, line: 59, baseType: !68, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !829, file: !830, line: 60, baseType: !68, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !829, file: !830, line: 61, baseType: !68, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !829, file: !830, line: 64, baseType: !68, size: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !829, file: !830, line: 65, baseType: !68, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !829, file: !830, line: 66, baseType: !68, size: 64, offset: 704)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !829, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !830, line: 36, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !829, file: !830, line: 70, baseType: !828, size: 64, offset: 832)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !829, file: !830, line: 72, baseType: !70, size: 32, offset: 896)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !829, file: !830, line: 73, baseType: !70, size: 32, offset: 928)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !829, file: !830, line: 74, baseType: !851, size: 64, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !74, line: 152, baseType: !90)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !829, file: !830, line: 77, baseType: !77, size: 16, offset: 1024)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !829, file: !830, line: 78, baseType: !854, size: 8, offset: 1040)
!854 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !829, file: !830, line: 79, baseType: !856, size: 8, offset: 1048)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 1)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !829, file: !830, line: 81, baseType: !860, size: 64, offset: 1088)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !830, line: 43, baseType: null)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !829, file: !830, line: 89, baseType: !863, size: 64, offset: 1152)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !74, line: 153, baseType: !90)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !829, file: !830, line: 91, baseType: !865, size: 64, offset: 1216)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !830, line: 37, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !829, file: !830, line: 92, baseType: !868, size: 64, offset: 1280)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !830, line: 38, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !829, file: !830, line: 93, baseType: !828, size: 64, offset: 1344)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !829, file: !830, line: 94, baseType: !55, size: 64, offset: 1408)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !829, file: !830, line: 95, baseType: !57, size: 64, offset: 1472)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !829, file: !830, line: 96, baseType: !70, size: 32, offset: 1536)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !829, file: !830, line: 98, baseType: !875, size: 160, offset: 1568)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 160, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 20)
!878 = !DISubprogram(name: "setlocale", scope: !879, file: !879, line: 122, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!879 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!880 = !DISubroutineType(types: !881)
!881 = !{!68, !70, !98}
!882 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 219, type: !883, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{!70, !70, !86}
!885 = !{!886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !901, !902, !903, !908, !922, !925, !928, !931, !934, !937, !938, !939, !943}
!886 = !DILocalVariable(name: "argc", arg: 1, scope: !882, file: !3, line: 219, type: !70)
!887 = !DILocalVariable(name: "argv", arg: 2, scope: !882, file: !3, line: 219, type: !86)
!888 = !DILocalVariable(name: "c", scope: !882, file: !3, line: 221, type: !70)
!889 = !DILocalVariable(name: "userspec", scope: !882, file: !3, line: 224, type: !68)
!890 = !DILocalVariable(name: "username", scope: !882, file: !3, line: 225, type: !98)
!891 = !DILocalVariable(name: "groups", scope: !882, file: !3, line: 226, type: !98)
!892 = !DILocalVariable(name: "skip_chdir", scope: !882, file: !3, line: 227, type: !119)
!893 = !DILocalVariable(name: "uid", scope: !882, file: !3, line: 230, type: !71)
!894 = !DILocalVariable(name: "gid", scope: !882, file: !3, line: 231, type: !75)
!895 = !DILocalVariable(name: "out_gids", scope: !882, file: !3, line: 232, type: !203)
!896 = !DILocalVariable(name: "n_gids", scope: !882, file: !3, line: 233, type: !57)
!897 = !DILocalVariable(name: "userlen", scope: !898, file: !3, line: 254, type: !57)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 249, column: 11)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 247, column: 9)
!900 = distinct !DILexicalBlock(scope: !882, file: !3, line: 245, column: 5)
!901 = !DILocalVariable(name: "newroot", scope: !882, file: !3, line: 283, type: !98)
!902 = !DILocalVariable(name: "is_oldroot", scope: !882, file: !3, line: 284, type: !119)
!903 = !DILocalVariable(name: "__x", scope: !904, file: !3, line: 302, type: !98)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 302, column: 9)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 301, column: 11)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 294, column: 5)
!907 = distinct !DILexicalBlock(scope: !882, file: !3, line: 293, column: 7)
!908 = !DILocalVariable(name: "pwd", scope: !909, file: !3, line: 308, type: !911)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 307, column: 9)
!910 = distinct !DILexicalBlock(scope: !906, file: !3, line: 306, column: 11)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !215, line: 49, size: 384, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !921}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !913, file: !215, line: 51, baseType: !68, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !913, file: !215, line: 52, baseType: !68, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !913, file: !215, line: 54, baseType: !73, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !913, file: !215, line: 55, baseType: !76, size: 32, offset: 160)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !913, file: !215, line: 56, baseType: !68, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !913, file: !215, line: 57, baseType: !68, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !913, file: !215, line: 58, baseType: !68, size: 64, offset: 320)
!922 = !DILocalVariable(name: "__x", scope: !923, file: !3, line: 318, type: !70)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 318, column: 9)
!924 = distinct !DILexicalBlock(scope: !906, file: !3, line: 317, column: 11)
!925 = !DILocalVariable(name: "ngroups", scope: !926, file: !3, line: 323, type: !70)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 322, column: 9)
!927 = distinct !DILexicalBlock(scope: !924, file: !3, line: 321, column: 16)
!928 = !DILocalVariable(name: "shell", scope: !929, file: !3, line: 340, type: !68)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 338, column: 5)
!930 = distinct !DILexicalBlock(scope: !882, file: !3, line: 337, column: 7)
!931 = !DILocalVariable(name: "err", scope: !932, file: !3, line: 357, type: !98)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 356, column: 5)
!933 = distinct !DILexicalBlock(scope: !882, file: !3, line: 355, column: 7)
!934 = !DILocalVariable(name: "pwd", scope: !935, file: !3, line: 367, type: !911)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 366, column: 5)
!936 = distinct !DILexicalBlock(scope: !882, file: !3, line: 365, column: 7)
!937 = !DILocalVariable(name: "gids", scope: !882, file: !3, line: 381, type: !203)
!938 = !DILocalVariable(name: "in_gids", scope: !882, file: !3, line: 382, type: !203)
!939 = !DILocalVariable(name: "ngroups", scope: !940, file: !3, line: 397, type: !70)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 396, column: 5)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 395, column: 12)
!942 = distinct !DILexicalBlock(scope: !882, file: !3, line: 383, column: 7)
!943 = !DILocalVariable(name: "exit_status", scope: !882, file: !3, line: 428, type: !70)
!944 = !DILocation(line: 0, scope: !882)
!945 = !DILocation(line: 230, column: 3, scope: !882)
!946 = !DILocation(line: 230, column: 9, scope: !882)
!947 = !{!948, !948, i64 0}
!948 = !{!"int", !757, i64 0}
!949 = !DILocation(line: 231, column: 3, scope: !882)
!950 = !DILocation(line: 231, column: 9, scope: !882)
!951 = !DILocation(line: 232, column: 3, scope: !882)
!952 = !DILocation(line: 232, column: 16, scope: !882)
!953 = !DILocation(line: 233, column: 3, scope: !882)
!954 = !DILocation(line: 233, column: 10, scope: !882)
!955 = !{!956, !956, i64 0}
!956 = !{!"long", !757, i64 0}
!957 = !DILocation(line: 236, column: 21, scope: !882)
!958 = !DILocation(line: 236, column: 3, scope: !882)
!959 = !DILocation(line: 237, column: 3, scope: !882)
!960 = !DILocation(line: 238, column: 3, scope: !882)
!961 = !DILocation(line: 239, column: 3, scope: !882)
!962 = !DILocalVariable(name: "status", arg: 1, scope: !963, file: !21, line: 99, type: !70)
!963 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !21, file: !21, line: 99, type: !745, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !964)
!964 = !{!962}
!965 = !DILocation(line: 0, scope: !963, inlinedAt: !966)
!966 = distinct !DILocation(line: 241, column: 3, scope: !882)
!967 = !DILocation(line: 102, column: 18, scope: !968, inlinedAt: !966)
!968 = distinct !DILexicalBlock(scope: !963, file: !21, line: 101, column: 7)
!969 = !DILocation(line: 242, column: 3, scope: !882)
!970 = !DILocation(line: 244, column: 3, scope: !882)
!971 = !DILocation(line: 224, column: 9, scope: !882)
!972 = !DILocation(line: 244, column: 15, scope: !882)
!973 = distinct !{!973, !970, !974, !800}
!974 = !DILocation(line: 275, column: 5, scope: !882)
!975 = !DILocation(line: 250, column: 24, scope: !898)
!976 = !DILocation(line: 254, column: 30, scope: !898)
!977 = !DILocation(line: 0, scope: !898)
!978 = !DILocation(line: 255, column: 17, scope: !979)
!979 = distinct !DILexicalBlock(scope: !898, file: !3, line: 255, column: 17)
!980 = !DILocation(line: 255, column: 25, scope: !979)
!981 = !DILocation(line: 255, column: 45, scope: !979)
!982 = !DILocation(line: 255, column: 28, scope: !979)
!983 = !{!757, !757, i64 0}
!984 = !DILocation(line: 255, column: 50, scope: !979)
!985 = !DILocation(line: 255, column: 17, scope: !898)
!986 = !DILocation(line: 256, column: 37, scope: !979)
!987 = !DILocation(line: 256, column: 15, scope: !979)
!988 = !DILocation(line: 261, column: 20, scope: !899)
!989 = !DILocation(line: 262, column: 11, scope: !899)
!990 = !DILocation(line: 268, column: 9, scope: !899)
!991 = !DILocation(line: 270, column: 9, scope: !899)
!992 = !DILocation(line: 273, column: 11, scope: !899)
!993 = !DILocation(line: 277, column: 15, scope: !994)
!994 = distinct !DILexicalBlock(scope: !882, file: !3, line: 277, column: 7)
!995 = !DILocation(line: 277, column: 12, scope: !994)
!996 = !DILocation(line: 277, column: 7, scope: !882)
!997 = !DILocation(line: 279, column: 20, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !3, line: 278, column: 5)
!999 = !DILocation(line: 279, column: 7, scope: !998)
!1000 = !DILocation(line: 280, column: 7, scope: !998)
!1001 = !DILocation(line: 283, column: 25, scope: !882)
!1002 = !DILocalVariable(name: "dir", arg: 1, scope: !1003, file: !3, line: 172, type: !98)
!1003 = distinct !DISubprogram(name: "is_root", scope: !3, file: !3, line: 172, type: !1004, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!119, !98}
!1006 = !{!1002, !1007, !1008}
!1007 = !DILocalVariable(name: "resolved", scope: !1003, file: !3, line: 174, type: !68)
!1008 = !DILocalVariable(name: "is_res_root", scope: !1003, file: !3, line: 175, type: !119)
!1009 = !DILocation(line: 0, scope: !1003, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 284, column: 21, scope: !882)
!1011 = !DILocation(line: 174, column: 20, scope: !1003, inlinedAt: !1010)
!1012 = !DILocation(line: 175, column: 22, scope: !1003, inlinedAt: !1010)
!1013 = !DILocation(line: 175, column: 31, scope: !1003, inlinedAt: !1010)
!1014 = !DILocation(line: 175, column: 34, scope: !1003, inlinedAt: !1010)
!1015 = !DILocation(line: 176, column: 3, scope: !1003, inlinedAt: !1010)
!1016 = !DILocation(line: 286, column: 20, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !882, file: !3, line: 286, column: 7)
!1018 = !DILocation(line: 288, column: 20, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 287, column: 5)
!1020 = !DILocation(line: 289, column: 14, scope: !1019)
!1021 = !DILocation(line: 288, column: 7, scope: !1019)
!1022 = !DILocation(line: 290, column: 7, scope: !1019)
!1023 = !DILocation(line: 293, column: 7, scope: !882)
!1024 = !DILocation(line: 301, column: 11, scope: !905)
!1025 = !DILocation(line: 301, column: 11, scope: !906)
!1026 = !DILocation(line: 302, column: 9, scope: !904)
!1027 = !DILocation(line: 0, scope: !904)
!1028 = !DILocation(line: 302, column: 9, scope: !905)
!1029 = !DILocation(line: 306, column: 11, scope: !910)
!1030 = !DILocalVariable(name: "uid", arg: 1, scope: !1031, file: !3, line: 45, type: !71)
!1031 = distinct !DISubprogram(name: "uid_unset", scope: !3, file: !3, line: 45, type: !1032, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1034)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!119, !71}
!1034 = !{!1030}
!1035 = !DILocation(line: 0, scope: !1031, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 306, column: 11, scope: !910)
!1037 = !DILocation(line: 45, column: 55, scope: !1031, inlinedAt: !1036)
!1038 = !DILocation(line: 306, column: 25, scope: !910)
!1039 = !DILocation(line: 306, column: 31, scope: !910)
!1040 = !DILocation(line: 306, column: 38, scope: !910)
!1041 = !DILocalVariable(name: "gid", arg: 1, scope: !1042, file: !3, line: 46, type: !75)
!1042 = distinct !DISubprogram(name: "gid_unset", scope: !3, file: !3, line: 46, type: !1043, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!119, !75}
!1045 = !{!1041}
!1046 = !DILocation(line: 0, scope: !1042, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 306, column: 41, scope: !910)
!1048 = !DILocation(line: 309, column: 22, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !909, file: !3, line: 309, column: 15)
!1050 = !DILocation(line: 0, scope: !909)
!1051 = !DILocation(line: 309, column: 20, scope: !1049)
!1052 = !DILocation(line: 309, column: 15, scope: !909)
!1053 = !DILocation(line: 311, column: 30, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 311, column: 19)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 310, column: 13)
!1056 = !DILocation(line: 0, scope: !1042, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 311, column: 19, scope: !1054)
!1058 = !DILocation(line: 46, column: 55, scope: !1042, inlinedAt: !1057)
!1059 = !DILocation(line: 311, column: 19, scope: !1055)
!1060 = !DILocation(line: 312, column: 28, scope: !1054)
!1061 = !{!1062, !948, i64 20}
!1062 = !{!"passwd", !756, i64 0, !756, i64 8, !948, i64 16, !948, i64 20, !756, i64 24, !756, i64 32, !756, i64 40}
!1063 = !DILocation(line: 312, column: 21, scope: !1054)
!1064 = !DILocation(line: 312, column: 17, scope: !1054)
!1065 = !DILocation(line: 313, column: 31, scope: !1055)
!1066 = !{!1062, !756, i64 0}
!1067 = !DILocation(line: 314, column: 13, scope: !1055)
!1068 = !DILocation(line: 317, column: 11, scope: !924)
!1069 = !DILocation(line: 317, column: 18, scope: !924)
!1070 = !DILocation(line: 317, column: 21, scope: !924)
!1071 = !DILocation(line: 317, column: 11, scope: !906)
!1072 = !DILocation(line: 318, column: 9, scope: !923)
!1073 = !DILocation(line: 0, scope: !923)
!1074 = !DILocation(line: 318, column: 9, scope: !924)
!1075 = !DILocation(line: 321, column: 28, scope: !927)
!1076 = !DILocation(line: 0, scope: !1042, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 321, column: 28, scope: !927)
!1078 = !DILocation(line: 46, column: 55, scope: !1042, inlinedAt: !1077)
!1079 = !DILocation(line: 321, column: 42, scope: !927)
!1080 = !DILocation(line: 323, column: 25, scope: !926)
!1081 = !DILocation(line: 0, scope: !926)
!1082 = !DILocation(line: 324, column: 17, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !926, file: !3, line: 324, column: 15)
!1084 = !DILocation(line: 324, column: 15, scope: !926)
!1085 = !DILocation(line: 325, column: 22, scope: !1083)
!1086 = !DILocation(line: 325, column: 20, scope: !1083)
!1087 = !DILocation(line: 325, column: 13, scope: !1083)
!1088 = !DILocation(line: 225, column: 15, scope: !882)
!1089 = !DILocation(line: 330, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !882, file: !3, line: 330, column: 7)
!1091 = !DILocation(line: 330, column: 24, scope: !1090)
!1092 = !DILocation(line: 330, column: 7, scope: !882)
!1093 = !DILocation(line: 331, column: 5, scope: !1090)
!1094 = !DILocation(line: 334, column: 20, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !882, file: !3, line: 334, column: 7)
!1096 = !DILocation(line: 334, column: 23, scope: !1095)
!1097 = !DILocation(line: 334, column: 7, scope: !882)
!1098 = !DILocation(line: 335, column: 5, scope: !1095)
!1099 = !DILocation(line: 337, column: 15, scope: !930)
!1100 = !DILocation(line: 337, column: 22, scope: !930)
!1101 = !DILocation(line: 337, column: 12, scope: !930)
!1102 = !DILocation(line: 337, column: 7, scope: !882)
!1103 = !DILocation(line: 340, column: 21, scope: !929)
!1104 = !DILocation(line: 0, scope: !929)
!1105 = !DILocation(line: 341, column: 17, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !929, file: !3, line: 341, column: 11)
!1107 = !DILocation(line: 341, column: 11, scope: !929)
!1108 = !DILocation(line: 343, column: 15, scope: !929)
!1109 = !DILocation(line: 344, column: 7, scope: !929)
!1110 = !DILocation(line: 344, column: 15, scope: !929)
!1111 = !DILocation(line: 345, column: 7, scope: !929)
!1112 = !DILocation(line: 345, column: 15, scope: !929)
!1113 = !DILocation(line: 346, column: 5, scope: !929)
!1114 = !DILocation(line: 350, column: 12, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !930, file: !3, line: 348, column: 5)
!1116 = !DILocation(line: 355, column: 7, scope: !933)
!1117 = !DILocation(line: 355, column: 7, scope: !882)
!1118 = !DILocation(line: 357, column: 25, scope: !932)
!1119 = !DILocation(line: 0, scope: !932)
!1120 = !DILocation(line: 359, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !932, file: !3, line: 359, column: 11)
!1122 = !DILocation(line: 359, column: 15, scope: !1121)
!1123 = !DILocation(line: 359, column: 29, scope: !1121)
!1124 = !DILocation(line: 0, scope: !1031, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 359, column: 18, scope: !1121)
!1126 = !DILocation(line: 45, column: 55, scope: !1031, inlinedAt: !1125)
!1127 = !DILocation(line: 359, column: 34, scope: !1121)
!1128 = !DILocation(line: 359, column: 48, scope: !1121)
!1129 = !DILocation(line: 0, scope: !1042, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 359, column: 37, scope: !1121)
!1131 = !DILocation(line: 46, column: 55, scope: !1042, inlinedAt: !1130)
!1132 = !DILocation(line: 359, column: 11, scope: !932)
!1133 = !DILocation(line: 360, column: 9, scope: !1121)
!1134 = !DILocation(line: 365, column: 7, scope: !936)
!1135 = !DILocation(line: 0, scope: !1031, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 365, column: 7, scope: !936)
!1137 = !DILocation(line: 45, column: 55, scope: !1031, inlinedAt: !1136)
!1138 = !DILocation(line: 365, column: 21, scope: !936)
!1139 = !DILocation(line: 365, column: 27, scope: !936)
!1140 = !DILocation(line: 365, column: 34, scope: !936)
!1141 = !DILocation(line: 0, scope: !1042, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 365, column: 37, scope: !936)
!1143 = !DILocation(line: 381, column: 23, scope: !882)
!1144 = !DILocation(line: 382, column: 3, scope: !882)
!1145 = !DILocation(line: 382, column: 16, scope: !882)
!1146 = !DILocation(line: 383, column: 14, scope: !942)
!1147 = !DILocation(line: 368, column: 18, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !935, file: !3, line: 368, column: 11)
!1149 = !DILocation(line: 0, scope: !935)
!1150 = !DILocation(line: 368, column: 16, scope: !1148)
!1151 = !DILocation(line: 0, scope: !1148)
!1152 = !DILocation(line: 0, scope: !1042, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 374, column: 16, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 374, column: 16)
!1155 = !DILocation(line: 0, scope: !1042, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 370, column: 15, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 370, column: 15)
!1158 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 369, column: 9)
!1159 = !DILocation(line: 368, column: 11, scope: !935)
!1160 = !DILocation(line: 370, column: 15, scope: !1158)
!1161 = !DILocation(line: 371, column: 24, scope: !1157)
!1162 = !DILocation(line: 371, column: 17, scope: !1157)
!1163 = !DILocation(line: 371, column: 13, scope: !1157)
!1164 = !DILocation(line: 372, column: 27, scope: !1158)
!1165 = !DILocation(line: 373, column: 9, scope: !1158)
!1166 = !DILocation(line: 374, column: 16, scope: !1148)
!1167 = !DILocation(line: 376, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 375, column: 9)
!1169 = !DILocation(line: 383, column: 7, scope: !942)
!1170 = !DILocation(line: 383, column: 17, scope: !942)
!1171 = !DILocation(line: 383, column: 7, scope: !882)
!1172 = !DILocation(line: 385, column: 64, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 385, column: 11)
!1174 = distinct !DILexicalBlock(scope: !942, file: !3, line: 384, column: 5)
!1175 = !DILocation(line: 385, column: 63, scope: !1173)
!1176 = !DILocation(line: 385, column: 11, scope: !1173)
!1177 = !DILocation(line: 385, column: 72, scope: !1173)
!1178 = !DILocation(line: 385, column: 11, scope: !1174)
!1179 = !DILocation(line: 387, column: 17, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 387, column: 15)
!1181 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 386, column: 9)
!1182 = !DILocation(line: 387, column: 15, scope: !1181)
!1183 = !DILocation(line: 392, column: 16, scope: !1173)
!1184 = !DILocation(line: 395, column: 24, scope: !941)
!1185 = !DILocation(line: 0, scope: !1042, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 395, column: 24, scope: !941)
!1187 = !DILocation(line: 46, column: 55, scope: !1042, inlinedAt: !1186)
!1188 = !DILocation(line: 395, column: 38, scope: !941)
!1189 = !DILocation(line: 397, column: 21, scope: !940)
!1190 = !DILocation(line: 0, scope: !940)
!1191 = !DILocation(line: 398, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !940, file: !3, line: 398, column: 11)
!1193 = !DILocation(line: 398, column: 11, scope: !940)
!1194 = !DILocation(line: 400, column: 17, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 400, column: 15)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 399, column: 9)
!1197 = !DILocation(line: 400, column: 15, scope: !1196)
!1198 = !DILocation(line: 401, column: 13, scope: !1195)
!1199 = !DILocation(line: 407, column: 20, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 406, column: 9)
!1201 = !DILocation(line: 407, column: 18, scope: !1200)
!1202 = !DILocation(line: 408, column: 18, scope: !1200)
!1203 = !DILocation(line: 413, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !882, file: !3, line: 413, column: 7)
!1205 = !DILocation(line: 0, scope: !1031, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 413, column: 8, scope: !1204)
!1207 = !DILocation(line: 45, column: 55, scope: !1031, inlinedAt: !1206)
!1208 = !DILocation(line: 413, column: 22, scope: !1204)
!1209 = !DILocation(line: 413, column: 47, scope: !1204)
!1210 = !DILocation(line: 413, column: 36, scope: !1204)
!1211 = !DILocation(line: 413, column: 61, scope: !1204)
!1212 = !DILocation(line: 413, column: 7, scope: !882)
!1213 = !DILocation(line: 414, column: 5, scope: !1204)
!1214 = !DILocation(line: 416, column: 9, scope: !882)
!1215 = !DILocation(line: 416, column: 3, scope: !882)
!1216 = !DILocation(line: 417, column: 9, scope: !882)
!1217 = !DILocation(line: 417, column: 3, scope: !882)
!1218 = !DILocation(line: 419, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !882, file: !3, line: 419, column: 7)
!1220 = !DILocation(line: 0, scope: !1042, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 419, column: 7, scope: !1219)
!1222 = !DILocation(line: 46, column: 55, scope: !1042, inlinedAt: !1221)
!1223 = !DILocation(line: 419, column: 21, scope: !1219)
!1224 = !DILocation(line: 419, column: 24, scope: !1219)
!1225 = !DILocation(line: 419, column: 7, scope: !882)
!1226 = !DILocation(line: 420, column: 5, scope: !1219)
!1227 = !DILocation(line: 422, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !882, file: !3, line: 422, column: 7)
!1229 = !DILocation(line: 0, scope: !1031, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 422, column: 7, scope: !1228)
!1231 = !DILocation(line: 45, column: 55, scope: !1031, inlinedAt: !1230)
!1232 = !DILocation(line: 422, column: 21, scope: !1228)
!1233 = !DILocation(line: 422, column: 24, scope: !1228)
!1234 = !DILocation(line: 422, column: 7, scope: !882)
!1235 = !DILocation(line: 423, column: 5, scope: !1228)
!1236 = !DILocation(line: 426, column: 11, scope: !882)
!1237 = !DILocation(line: 426, column: 3, scope: !882)
!1238 = !DILocation(line: 428, column: 21, scope: !882)
!1239 = !DILocation(line: 428, column: 27, scope: !882)
!1240 = !DILocation(line: 429, column: 20, scope: !882)
!1241 = !DILocation(line: 429, column: 58, scope: !882)
!1242 = !DILocation(line: 429, column: 51, scope: !882)
!1243 = !DILocation(line: 429, column: 3, scope: !882)
!1244 = !DILocation(line: 431, column: 1, scope: !882)
!1245 = !DISubprogram(name: "bindtextdomain", scope: !821, file: !821, line: 86, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!68, !98, !98}
!1248 = !DISubprogram(name: "textdomain", scope: !821, file: !821, line: 82, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!68, !98}
!1251 = !DISubprogram(name: "atexit", scope: !1252, file: !1252, line: 595, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1252 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!70, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null}
!1258 = !DISubprogram(name: "getopt_long", scope: !95, file: !95, line: 66, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!70, !70, !1261, !98, !1263, !102}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1264 = !DISubprogram(name: "error", scope: !1265, file: !1265, line: 52, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1265 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !70, !70, !98, null}
!1268 = !DISubprogram(name: "canonicalize_file_name", scope: !1252, file: !1252, line: 790, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1269 = !DISubprogram(name: "getpwuid", scope: !215, file: !215, line: 110, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!1272, !7}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!1273 = distinct !DISubprogram(name: "parse_additional_groups", scope: !3, file: !3, line: 96, type: !1274, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!70, !98, !703, !56, !119}
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1291}
!1277 = !DILocalVariable(name: "groups", arg: 1, scope: !1273, file: !3, line: 96, type: !98)
!1278 = !DILocalVariable(name: "pgids", arg: 2, scope: !1273, file: !3, line: 96, type: !703)
!1279 = !DILocalVariable(name: "pn_gids", arg: 3, scope: !1273, file: !3, line: 97, type: !56)
!1280 = !DILocalVariable(name: "show_errors", arg: 4, scope: !1273, file: !3, line: 97, type: !119)
!1281 = !DILocalVariable(name: "gids", scope: !1273, file: !3, line: 99, type: !203)
!1282 = !DILocalVariable(name: "n_gids_allocated", scope: !1273, file: !3, line: 100, type: !57)
!1283 = !DILocalVariable(name: "n_gids", scope: !1273, file: !3, line: 101, type: !57)
!1284 = !DILocalVariable(name: "buffer", scope: !1273, file: !3, line: 102, type: !68)
!1285 = !DILocalVariable(name: "tmp", scope: !1273, file: !3, line: 103, type: !98)
!1286 = !DILocalVariable(name: "ret", scope: !1273, file: !3, line: 104, type: !70)
!1287 = !DILocalVariable(name: "g", scope: !1288, file: !3, line: 108, type: !78)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 107, column: 5)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 106, column: 3)
!1290 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 106, column: 3)
!1291 = !DILocalVariable(name: "value", scope: !1288, file: !3, line: 109, type: !304)
!1292 = !DILocation(line: 0, scope: !1273)
!1293 = !DILocation(line: 102, column: 18, scope: !1273)
!1294 = !DILocation(line: 106, column: 14, scope: !1290)
!1295 = !DILocation(line: 106, column: 3, scope: !1290)
!1296 = !DILocation(line: 109, column: 7, scope: !1288)
!1297 = !DILocation(line: 0, scope: !1288)
!1298 = !DILocation(line: 111, column: 11, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 111, column: 11)
!1300 = !DILocation(line: 111, column: 50, scope: !1299)
!1301 = !DILocation(line: 112, column: 11, scope: !1299)
!1302 = !DILocation(line: 114, column: 11, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 113, column: 9)
!1304 = !DILocation(line: 0, scope: !1290)
!1305 = !DILocation(line: 114, column: 18, scope: !1303)
!1306 = !{!1307, !1307, i64 0}
!1307 = !{!"short", !757, i64 0}
!1308 = !DILocation(line: 115, column: 16, scope: !1303)
!1309 = distinct !{!1309, !1302, !1308, !800}
!1310 = !DILocation(line: 116, column: 20, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 116, column: 15)
!1312 = !DILocation(line: 116, column: 15, scope: !1303)
!1313 = !DILocation(line: 119, column: 19, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 117, column: 13)
!1315 = !DILocation(line: 120, column: 21, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 120, column: 19)
!1317 = !DILocation(line: 120, column: 19, scope: !1314)
!1318 = !DILocation(line: 121, column: 28, scope: !1316)
!1319 = !{!1320, !948, i64 16}
!1320 = !{!"group", !756, i64 0, !756, i64 8, !948, i64 16, !756, i64 24}
!1321 = !DILocation(line: 121, column: 25, scope: !1316)
!1322 = !DILocation(line: 121, column: 23, scope: !1316)
!1323 = !DILocation(line: 121, column: 17, scope: !1316)
!1324 = !DILocation(line: 128, column: 15, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 127, column: 9)
!1326 = !DILocation(line: 129, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 129, column: 15)
!1328 = !DILocation(line: 129, column: 15, scope: !1325)
!1329 = !DILocation(line: 130, column: 24, scope: !1327)
!1330 = !DILocation(line: 130, column: 21, scope: !1327)
!1331 = !DILocation(line: 130, column: 19, scope: !1327)
!1332 = !DILocation(line: 130, column: 13, scope: !1327)
!1333 = !DILocation(line: 137, column: 15, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 134, column: 9)
!1335 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 133, column: 11)
!1336 = !DILocation(line: 139, column: 25, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 138, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 137, column: 15)
!1339 = !DILocation(line: 139, column: 32, scope: !1337)
!1340 = !DILocation(line: 139, column: 55, scope: !1337)
!1341 = !DILocation(line: 139, column: 15, scope: !1337)
!1342 = !DILocation(line: 140, column: 15, scope: !1337)
!1343 = !DILocation(line: 146, column: 18, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 146, column: 11)
!1345 = !DILocation(line: 146, column: 11, scope: !1288)
!1346 = !DILocation(line: 147, column: 16, scope: !1344)
!1347 = !DILocation(line: 0, scope: !52, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 147, column: 16, scope: !1344)
!1349 = !DILocation(line: 178, column: 9, scope: !1350, inlinedAt: !1348)
!1350 = distinct !DILexicalBlock(scope: !52, file: !51, line: 178, column: 7)
!1351 = !DILocation(line: 178, column: 7, scope: !52, inlinedAt: !1348)
!1352 = !DILocation(line: 180, column: 13, scope: !1353, inlinedAt: !1348)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !51, line: 180, column: 11)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !51, line: 179, column: 5)
!1355 = !DILocation(line: 180, column: 11, scope: !1354, inlinedAt: !1348)
!1356 = !DILocation(line: 191, column: 11, scope: !1357, inlinedAt: !1348)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !51, line: 191, column: 11)
!1358 = !DILocation(line: 191, column: 11, scope: !1354, inlinedAt: !1348)
!1359 = !DILocation(line: 192, column: 9, scope: !1357, inlinedAt: !1348)
!1360 = !DILocation(line: 201, column: 11, scope: !1361, inlinedAt: !1348)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !51, line: 200, column: 11)
!1362 = distinct !DILexicalBlock(scope: !1350, file: !51, line: 195, column: 5)
!1363 = !DILocation(line: 200, column: 11, scope: !1362, inlinedAt: !1348)
!1364 = !DILocation(line: 202, column: 9, scope: !1361, inlinedAt: !1348)
!1365 = !DILocation(line: 203, column: 14, scope: !1362, inlinedAt: !1348)
!1366 = !DILocation(line: 203, column: 18, scope: !1362, inlinedAt: !1348)
!1367 = !DILocation(line: 203, column: 9, scope: !1362, inlinedAt: !1348)
!1368 = !DILocation(line: 207, column: 25, scope: !52, inlinedAt: !1348)
!1369 = !DILocation(line: 207, column: 10, scope: !52, inlinedAt: !1348)
!1370 = !DILocation(line: 147, column: 9, scope: !1344)
!1371 = !DILocation(line: 148, column: 24, scope: !1288)
!1372 = !DILocation(line: 148, column: 18, scope: !1288)
!1373 = !DILocation(line: 148, column: 7, scope: !1288)
!1374 = !DILocation(line: 148, column: 22, scope: !1288)
!1375 = !DILocation(line: 149, column: 5, scope: !1289)
!1376 = !DILocation(line: 158, column: 10, scope: !1273)
!1377 = !DILocation(line: 160, column: 7, scope: !1273)
!1378 = !DILocation(line: 106, column: 47, scope: !1289)
!1379 = distinct !{!1379, !1295, !1380, !800}
!1380 = !DILocation(line: 149, column: 5, scope: !1290)
!1381 = !DILocation(line: 151, column: 11, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 151, column: 7)
!1383 = !DILocation(line: 151, column: 16, scope: !1382)
!1384 = !DILocation(line: 154, column: 22, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 153, column: 11)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 152, column: 5)
!1387 = !DILocation(line: 154, column: 50, scope: !1385)
!1388 = !DILocation(line: 154, column: 9, scope: !1385)
!1389 = !DILocation(line: 160, column: 11, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 160, column: 7)
!1391 = !DILocation(line: 161, column: 14, scope: !1390)
!1392 = !DILocation(line: 161, column: 5, scope: !1390)
!1393 = !DILocation(line: 163, column: 3, scope: !1273)
!1394 = !DILocation(line: 164, column: 3, scope: !1273)
!1395 = !DISubprogram(name: "chroot", scope: !88, file: !88, line: 956, type: !1396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!70, !98}
!1398 = !DISubprogram(name: "chdir", scope: !88, file: !88, line: 506, type: !1396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1399 = !DISubprogram(name: "getenv", scope: !1252, file: !1252, line: 634, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1400 = !DISubprogram(name: "setgroups", scope: !80, file: !80, line: 176, type: !1401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!70, !59, !1403}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1405 = !DISubprogram(name: "setgid", scope: !88, file: !88, line: 729, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!70, !7}
!1408 = !DISubprogram(name: "setuid", scope: !88, file: !88, line: 712, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1409 = !DISubprogram(name: "execvp", scope: !88, file: !88, line: 589, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!70, !98, !1261}
!1412 = !DISubprogram(name: "getgrnam", scope: !80, file: !80, line: 107, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!78, !98}
!1415 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !115, file: !115, line: 51, type: !770, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !1416)
!1416 = !{!1417}
!1417 = !DILocalVariable(name: "file", arg: 1, scope: !1415, file: !115, line: 51, type: !98)
!1418 = !DILocation(line: 0, scope: !1415)
!1419 = !DILocation(line: 53, column: 13, scope: !1415)
!1420 = !DILocation(line: 54, column: 1, scope: !1415)
!1421 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !115, file: !115, line: 88, type: !1422, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !1424)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !119}
!1424 = !{!1425}
!1425 = !DILocalVariable(name: "ignore", arg: 1, scope: !1421, file: !115, line: 88, type: !119)
!1426 = !DILocation(line: 0, scope: !1421)
!1427 = !DILocation(line: 90, column: 16, scope: !1421)
!1428 = !{!1429, !1429, i64 0}
!1429 = !{!"_Bool", !757, i64 0}
!1430 = !DILocation(line: 91, column: 1, scope: !1421)
!1431 = distinct !DISubprogram(name: "close_stdout", scope: !115, file: !115, line: 117, type: !1256, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !1432)
!1432 = !{!1433}
!1433 = !DILocalVariable(name: "write_error", scope: !1434, file: !115, line: 122, type: !98)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !115, line: 121, column: 5)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !115, line: 119, column: 7)
!1436 = !DILocation(line: 119, column: 21, scope: !1435)
!1437 = !DILocation(line: 119, column: 7, scope: !1435)
!1438 = !DILocation(line: 119, column: 29, scope: !1435)
!1439 = !DILocation(line: 120, column: 7, scope: !1435)
!1440 = !DILocation(line: 120, column: 12, scope: !1435)
!1441 = !{i8 0, i8 2}
!1442 = !DILocation(line: 120, column: 25, scope: !1435)
!1443 = !DILocation(line: 120, column: 28, scope: !1435)
!1444 = !DILocation(line: 120, column: 34, scope: !1435)
!1445 = !DILocation(line: 119, column: 7, scope: !1431)
!1446 = !DILocation(line: 122, column: 33, scope: !1434)
!1447 = !DILocation(line: 0, scope: !1434)
!1448 = !DILocation(line: 123, column: 11, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1434, file: !115, line: 123, column: 11)
!1450 = !DILocation(line: 0, scope: !1449)
!1451 = !DILocation(line: 123, column: 11, scope: !1434)
!1452 = !DILocation(line: 124, column: 36, scope: !1449)
!1453 = !DILocation(line: 124, column: 9, scope: !1449)
!1454 = !DILocation(line: 127, column: 9, scope: !1449)
!1455 = !DILocation(line: 129, column: 14, scope: !1434)
!1456 = !DILocation(line: 129, column: 7, scope: !1434)
!1457 = !DILocation(line: 134, column: 42, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1431, file: !115, line: 134, column: 7)
!1459 = !DILocation(line: 134, column: 28, scope: !1458)
!1460 = !DILocation(line: 134, column: 50, scope: !1458)
!1461 = !DILocation(line: 134, column: 7, scope: !1431)
!1462 = !DILocation(line: 135, column: 12, scope: !1458)
!1463 = !DILocation(line: 135, column: 5, scope: !1458)
!1464 = !DILocation(line: 136, column: 1, scope: !1431)
!1465 = distinct !DISubprogram(name: "set_program_name", scope: !129, file: !129, line: 39, type: !770, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !128, retainedNodes: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DILocalVariable(name: "argv0", arg: 1, scope: !1465, file: !129, line: 39, type: !98)
!1468 = !DILocalVariable(name: "slash", scope: !1465, file: !129, line: 46, type: !98)
!1469 = !DILocalVariable(name: "base", scope: !1465, file: !129, line: 47, type: !98)
!1470 = !DILocation(line: 0, scope: !1465)
!1471 = !DILocation(line: 51, column: 13, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1465, file: !129, line: 51, column: 7)
!1473 = !DILocation(line: 51, column: 7, scope: !1465)
!1474 = !DILocation(line: 55, column: 14, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !129, line: 52, column: 5)
!1476 = !DILocation(line: 54, column: 7, scope: !1475)
!1477 = !DILocation(line: 56, column: 7, scope: !1475)
!1478 = !DILocation(line: 59, column: 11, scope: !1465)
!1479 = !DILocation(line: 60, column: 17, scope: !1465)
!1480 = !DILocation(line: 60, column: 11, scope: !1465)
!1481 = !DILocation(line: 61, column: 12, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1465, file: !129, line: 61, column: 7)
!1483 = !DILocation(line: 61, column: 20, scope: !1482)
!1484 = !DILocation(line: 61, column: 25, scope: !1482)
!1485 = !DILocation(line: 61, column: 42, scope: !1482)
!1486 = !DILocation(line: 61, column: 28, scope: !1482)
!1487 = !DILocation(line: 61, column: 61, scope: !1482)
!1488 = !DILocation(line: 61, column: 7, scope: !1465)
!1489 = !DILocation(line: 64, column: 11, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !129, line: 64, column: 11)
!1491 = distinct !DILexicalBlock(scope: !1482, file: !129, line: 62, column: 5)
!1492 = !DILocation(line: 64, column: 36, scope: !1490)
!1493 = !DILocation(line: 64, column: 11, scope: !1491)
!1494 = !DILocation(line: 66, column: 24, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !129, line: 65, column: 9)
!1496 = !DILocation(line: 70, column: 41, scope: !1495)
!1497 = !DILocation(line: 72, column: 9, scope: !1495)
!1498 = !DILocation(line: 84, column: 16, scope: !1465)
!1499 = !DILocation(line: 90, column: 27, scope: !1465)
!1500 = !DILocation(line: 92, column: 1, scope: !1465)
!1501 = distinct !DISubprogram(name: "clone_quoting_options", scope: !135, file: !135, line: 122, type: !1502, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1505)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1504, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1505 = !{!1506, !1507, !1508}
!1506 = !DILocalVariable(name: "o", arg: 1, scope: !1501, file: !135, line: 122, type: !1504)
!1507 = !DILocalVariable(name: "e", scope: !1501, file: !135, line: 124, type: !70)
!1508 = !DILocalVariable(name: "p", scope: !1501, file: !135, line: 125, type: !1504)
!1509 = !DILocation(line: 0, scope: !1501)
!1510 = !DILocation(line: 124, column: 11, scope: !1501)
!1511 = !DILocation(line: 125, column: 40, scope: !1501)
!1512 = !DILocation(line: 125, column: 31, scope: !1501)
!1513 = !DILocation(line: 127, column: 9, scope: !1501)
!1514 = !DILocation(line: 128, column: 3, scope: !1501)
!1515 = distinct !DISubprogram(name: "get_quoting_style", scope: !135, file: !135, line: 133, type: !1516, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1520)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!5, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1520 = !{!1521}
!1521 = !DILocalVariable(name: "o", arg: 1, scope: !1515, file: !135, line: 133, type: !1518)
!1522 = !DILocation(line: 0, scope: !1515)
!1523 = !DILocation(line: 135, column: 11, scope: !1515)
!1524 = !DILocation(line: 135, column: 46, scope: !1515)
!1525 = !{!1526, !757, i64 0}
!1526 = !{!"quoting_options", !757, i64 0, !948, i64 4, !757, i64 8, !756, i64 40, !756, i64 48}
!1527 = !DILocation(line: 135, column: 3, scope: !1515)
!1528 = distinct !DISubprogram(name: "set_quoting_style", scope: !135, file: !135, line: 141, type: !1529, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1531)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1504, !5}
!1531 = !{!1532, !1533}
!1532 = !DILocalVariable(name: "o", arg: 1, scope: !1528, file: !135, line: 141, type: !1504)
!1533 = !DILocalVariable(name: "s", arg: 2, scope: !1528, file: !135, line: 141, type: !5)
!1534 = !DILocation(line: 0, scope: !1528)
!1535 = !DILocation(line: 143, column: 4, scope: !1528)
!1536 = !DILocation(line: 143, column: 39, scope: !1528)
!1537 = !DILocation(line: 143, column: 45, scope: !1528)
!1538 = !DILocation(line: 144, column: 1, scope: !1528)
!1539 = distinct !DISubprogram(name: "set_char_quoting", scope: !135, file: !135, line: 152, type: !1540, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!70, !1504, !69, !70}
!1542 = !{!1543, !1544, !1545, !1546, !1548, !1550, !1551}
!1543 = !DILocalVariable(name: "o", arg: 1, scope: !1539, file: !135, line: 152, type: !1504)
!1544 = !DILocalVariable(name: "c", arg: 2, scope: !1539, file: !135, line: 152, type: !69)
!1545 = !DILocalVariable(name: "i", arg: 3, scope: !1539, file: !135, line: 152, type: !70)
!1546 = !DILocalVariable(name: "uc", scope: !1539, file: !135, line: 154, type: !1547)
!1547 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1548 = !DILocalVariable(name: "p", scope: !1539, file: !135, line: 155, type: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1550 = !DILocalVariable(name: "shift", scope: !1539, file: !135, line: 157, type: !70)
!1551 = !DILocalVariable(name: "r", scope: !1539, file: !135, line: 158, type: !70)
!1552 = !DILocation(line: 0, scope: !1539)
!1553 = !DILocation(line: 156, column: 6, scope: !1539)
!1554 = !DILocation(line: 156, column: 62, scope: !1539)
!1555 = !DILocation(line: 156, column: 57, scope: !1539)
!1556 = !DILocation(line: 157, column: 15, scope: !1539)
!1557 = !DILocation(line: 158, column: 12, scope: !1539)
!1558 = !DILocation(line: 158, column: 15, scope: !1539)
!1559 = !DILocation(line: 158, column: 25, scope: !1539)
!1560 = !DILocation(line: 159, column: 13, scope: !1539)
!1561 = !DILocation(line: 159, column: 18, scope: !1539)
!1562 = !DILocation(line: 159, column: 23, scope: !1539)
!1563 = !DILocation(line: 159, column: 6, scope: !1539)
!1564 = !DILocation(line: 160, column: 3, scope: !1539)
!1565 = distinct !DISubprogram(name: "set_quoting_flags", scope: !135, file: !135, line: 168, type: !1566, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!70, !1504, !70}
!1568 = !{!1569, !1570, !1571}
!1569 = !DILocalVariable(name: "o", arg: 1, scope: !1565, file: !135, line: 168, type: !1504)
!1570 = !DILocalVariable(name: "i", arg: 2, scope: !1565, file: !135, line: 168, type: !70)
!1571 = !DILocalVariable(name: "r", scope: !1565, file: !135, line: 170, type: !70)
!1572 = !DILocation(line: 0, scope: !1565)
!1573 = !DILocation(line: 171, column: 8, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1565, file: !135, line: 171, column: 7)
!1575 = !DILocation(line: 171, column: 7, scope: !1565)
!1576 = !DILocation(line: 173, column: 10, scope: !1565)
!1577 = !{!1526, !948, i64 4}
!1578 = !DILocation(line: 174, column: 12, scope: !1565)
!1579 = !DILocation(line: 175, column: 3, scope: !1565)
!1580 = distinct !DISubprogram(name: "set_custom_quoting", scope: !135, file: !135, line: 179, type: !1581, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !1504, !98, !98}
!1583 = !{!1584, !1585, !1586}
!1584 = !DILocalVariable(name: "o", arg: 1, scope: !1580, file: !135, line: 179, type: !1504)
!1585 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1580, file: !135, line: 180, type: !98)
!1586 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1580, file: !135, line: 180, type: !98)
!1587 = !DILocation(line: 0, scope: !1580)
!1588 = !DILocation(line: 182, column: 8, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1580, file: !135, line: 182, column: 7)
!1590 = !DILocation(line: 182, column: 7, scope: !1580)
!1591 = !DILocation(line: 184, column: 6, scope: !1580)
!1592 = !DILocation(line: 184, column: 12, scope: !1580)
!1593 = !DILocation(line: 185, column: 8, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1580, file: !135, line: 185, column: 7)
!1595 = !DILocation(line: 185, column: 19, scope: !1594)
!1596 = !DILocation(line: 186, column: 5, scope: !1594)
!1597 = !DILocation(line: 187, column: 6, scope: !1580)
!1598 = !DILocation(line: 187, column: 17, scope: !1580)
!1599 = !{!1526, !756, i64 40}
!1600 = !DILocation(line: 188, column: 6, scope: !1580)
!1601 = !DILocation(line: 188, column: 18, scope: !1580)
!1602 = !{!1526, !756, i64 48}
!1603 = !DILocation(line: 189, column: 1, scope: !1580)
!1604 = distinct !DISubprogram(name: "quotearg_buffer", scope: !135, file: !135, line: 784, type: !1605, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1607)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!57, !68, !57, !98, !57, !1518}
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615}
!1608 = !DILocalVariable(name: "buffer", arg: 1, scope: !1604, file: !135, line: 784, type: !68)
!1609 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1604, file: !135, line: 784, type: !57)
!1610 = !DILocalVariable(name: "arg", arg: 3, scope: !1604, file: !135, line: 785, type: !98)
!1611 = !DILocalVariable(name: "argsize", arg: 4, scope: !1604, file: !135, line: 785, type: !57)
!1612 = !DILocalVariable(name: "o", arg: 5, scope: !1604, file: !135, line: 786, type: !1518)
!1613 = !DILocalVariable(name: "p", scope: !1604, file: !135, line: 788, type: !1518)
!1614 = !DILocalVariable(name: "e", scope: !1604, file: !135, line: 789, type: !70)
!1615 = !DILocalVariable(name: "r", scope: !1604, file: !135, line: 790, type: !57)
!1616 = !DILocation(line: 0, scope: !1604)
!1617 = !DILocation(line: 788, column: 37, scope: !1604)
!1618 = !DILocation(line: 789, column: 11, scope: !1604)
!1619 = !DILocation(line: 791, column: 43, scope: !1604)
!1620 = !DILocation(line: 791, column: 53, scope: !1604)
!1621 = !DILocation(line: 791, column: 60, scope: !1604)
!1622 = !DILocation(line: 792, column: 43, scope: !1604)
!1623 = !DILocation(line: 792, column: 58, scope: !1604)
!1624 = !DILocation(line: 790, column: 14, scope: !1604)
!1625 = !DILocation(line: 793, column: 9, scope: !1604)
!1626 = !DILocation(line: 794, column: 3, scope: !1604)
!1627 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !135, file: !135, line: 256, type: !1628, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!57, !68, !57, !98, !57, !5, !70, !1403, !98, !98}
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1655, !1656, !1657, !1658, !1659, !1662, !1663, !1681, !1684, !1685, !1692, !1695, !1696, !1697, !1698, !1699, !1700}
!1631 = !DILocalVariable(name: "buffer", arg: 1, scope: !1627, file: !135, line: 256, type: !68)
!1632 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1627, file: !135, line: 256, type: !57)
!1633 = !DILocalVariable(name: "arg", arg: 3, scope: !1627, file: !135, line: 257, type: !98)
!1634 = !DILocalVariable(name: "argsize", arg: 4, scope: !1627, file: !135, line: 257, type: !57)
!1635 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1627, file: !135, line: 258, type: !5)
!1636 = !DILocalVariable(name: "flags", arg: 6, scope: !1627, file: !135, line: 258, type: !70)
!1637 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1627, file: !135, line: 259, type: !1403)
!1638 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1627, file: !135, line: 260, type: !98)
!1639 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1627, file: !135, line: 261, type: !98)
!1640 = !DILocalVariable(name: "i", scope: !1627, file: !135, line: 263, type: !57)
!1641 = !DILocalVariable(name: "len", scope: !1627, file: !135, line: 264, type: !57)
!1642 = !DILocalVariable(name: "orig_buffersize", scope: !1627, file: !135, line: 265, type: !57)
!1643 = !DILocalVariable(name: "quote_string", scope: !1627, file: !135, line: 266, type: !98)
!1644 = !DILocalVariable(name: "quote_string_len", scope: !1627, file: !135, line: 267, type: !57)
!1645 = !DILocalVariable(name: "backslash_escapes", scope: !1627, file: !135, line: 268, type: !119)
!1646 = !DILocalVariable(name: "unibyte_locale", scope: !1627, file: !135, line: 269, type: !119)
!1647 = !DILocalVariable(name: "elide_outer_quotes", scope: !1627, file: !135, line: 270, type: !119)
!1648 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1627, file: !135, line: 271, type: !119)
!1649 = !DILocalVariable(name: "encountered_single_quote", scope: !1627, file: !135, line: 272, type: !119)
!1650 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1627, file: !135, line: 273, type: !119)
!1651 = !DILocalVariable(name: "c", scope: !1652, file: !135, line: 402, type: !1547)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !135, line: 401, column: 5)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !135, line: 400, column: 3)
!1654 = distinct !DILexicalBlock(scope: !1627, file: !135, line: 400, column: 3)
!1655 = !DILocalVariable(name: "esc", scope: !1652, file: !135, line: 403, type: !1547)
!1656 = !DILocalVariable(name: "is_right_quote", scope: !1652, file: !135, line: 404, type: !119)
!1657 = !DILocalVariable(name: "escaping", scope: !1652, file: !135, line: 405, type: !119)
!1658 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1652, file: !135, line: 406, type: !119)
!1659 = !DILocalVariable(name: "m", scope: !1660, file: !135, line: 610, type: !57)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 608, column: 11)
!1661 = distinct !DILexicalBlock(scope: !1652, file: !135, line: 426, column: 9)
!1662 = !DILocalVariable(name: "printable", scope: !1660, file: !135, line: 612, type: !119)
!1663 = !DILocalVariable(name: "mbstate", scope: !1664, file: !135, line: 621, type: !1666)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !135, line: 620, column: 15)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !135, line: 614, column: 17)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1667, line: 6, baseType: !1668)
!1667 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1669, line: 21, baseType: !1670)
!1669 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1669, line: 13, size: 64, elements: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1670, file: !1669, line: 15, baseType: !70, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1670, file: !1669, line: 20, baseType: !1674, size: 32, offset: 32)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !1669, line: 16, size: 32, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1674, file: !1669, line: 18, baseType: !7, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1674, file: !1669, line: 19, baseType: !1678, size: 32)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 32, elements: !1679)
!1679 = !{!1680}
!1680 = !DISubrange(count: 4)
!1681 = !DILocalVariable(name: "w", scope: !1682, file: !135, line: 631, type: !1683)
!1682 = distinct !DILexicalBlock(scope: !1664, file: !135, line: 630, column: 19)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !58, line: 74, baseType: !70)
!1684 = !DILocalVariable(name: "bytes", scope: !1682, file: !135, line: 632, type: !57)
!1685 = !DILocalVariable(name: "j", scope: !1686, file: !135, line: 657, type: !57)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !135, line: 656, column: 27)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !135, line: 654, column: 29)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !135, line: 649, column: 23)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !135, line: 641, column: 30)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !135, line: 636, column: 30)
!1691 = distinct !DILexicalBlock(scope: !1682, file: !135, line: 634, column: 25)
!1692 = !DILocalVariable(name: "ilim", scope: !1693, file: !135, line: 684, type: !57)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !135, line: 681, column: 15)
!1694 = distinct !DILexicalBlock(scope: !1660, file: !135, line: 680, column: 17)
!1695 = !DILabel(scope: !1627, name: "process_input", file: !135, line: 314)
!1696 = !DILabel(scope: !1661, name: "c_and_shell_escape", file: !135, line: 512)
!1697 = !DILabel(scope: !1661, name: "c_escape", file: !135, line: 517)
!1698 = !DILabel(scope: !1652, name: "store_escape", file: !135, line: 719)
!1699 = !DILabel(scope: !1652, name: "store_c", file: !135, line: 722)
!1700 = !DILabel(scope: !1627, name: "force_outer_quoting_style", file: !135, line: 763)
!1701 = !DILocation(line: 0, scope: !1627)
!1702 = !DILocation(line: 269, column: 25, scope: !1627)
!1703 = !DILocation(line: 269, column: 36, scope: !1627)
!1704 = !DILocation(line: 270, column: 8, scope: !1627)
!1705 = !DILocation(line: 273, column: 3, scope: !1627)
!1706 = !DILocation(line: 265, column: 10, scope: !1627)
!1707 = !DILocation(line: 266, column: 15, scope: !1627)
!1708 = !DILocation(line: 267, column: 10, scope: !1627)
!1709 = !DILocation(line: 268, column: 8, scope: !1627)
!1710 = !DILocation(line: 271, column: 8, scope: !1627)
!1711 = !DILocation(line: 272, column: 8, scope: !1627)
!1712 = !DILocation(line: 273, column: 8, scope: !1627)
!1713 = !DILocation(line: 314, column: 2, scope: !1627)
!1714 = !DILocation(line: 316, column: 3, scope: !1627)
!1715 = !DILocation(line: 323, column: 11, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1627, file: !135, line: 317, column: 5)
!1717 = !DILocation(line: 323, column: 12, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1716, file: !135, line: 323, column: 11)
!1719 = !DILocation(line: 324, column: 9, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !135, line: 324, column: 9)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !135, line: 324, column: 9)
!1722 = !DILocation(line: 324, column: 9, scope: !1721)
!1723 = !DILocation(line: 362, column: 26, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !135, line: 340, column: 11)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !135, line: 339, column: 13)
!1726 = distinct !DILexicalBlock(scope: !1716, file: !135, line: 338, column: 7)
!1727 = !DILocation(line: 363, column: 27, scope: !1724)
!1728 = !DILocation(line: 364, column: 11, scope: !1724)
!1729 = !DILocation(line: 365, column: 14, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1726, file: !135, line: 365, column: 13)
!1731 = !DILocation(line: 365, column: 13, scope: !1726)
!1732 = !DILocation(line: 366, column: 43, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !135, line: 366, column: 11)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !135, line: 366, column: 11)
!1735 = !DILocation(line: 366, column: 11, scope: !1734)
!1736 = !DILocation(line: 367, column: 13, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !135, line: 367, column: 13)
!1738 = distinct !DILexicalBlock(scope: !1733, file: !135, line: 367, column: 13)
!1739 = !DILocation(line: 367, column: 13, scope: !1738)
!1740 = !DILocation(line: 366, column: 70, scope: !1733)
!1741 = distinct !{!1741, !1735, !1742, !800}
!1742 = !DILocation(line: 367, column: 13, scope: !1734)
!1743 = !DILocation(line: 264, column: 10, scope: !1627)
!1744 = !DILocation(line: 370, column: 28, scope: !1726)
!1745 = !DILocation(line: 372, column: 7, scope: !1716)
!1746 = !DILocation(line: 376, column: 7, scope: !1716)
!1747 = !DILocation(line: 379, column: 7, scope: !1716)
!1748 = !DILocation(line: 381, column: 12, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1716, file: !135, line: 381, column: 11)
!1750 = !DILocation(line: 381, column: 11, scope: !1716)
!1751 = !DILocation(line: 386, column: 12, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1716, file: !135, line: 386, column: 11)
!1753 = !DILocation(line: 386, column: 11, scope: !1716)
!1754 = !DILocation(line: 387, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !135, line: 387, column: 9)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !135, line: 387, column: 9)
!1757 = !DILocation(line: 387, column: 9, scope: !1756)
!1758 = !DILocation(line: 394, column: 7, scope: !1716)
!1759 = !DILocation(line: 397, column: 7, scope: !1716)
!1760 = !DILocation(line: 400, column: 8, scope: !1654)
!1761 = !DILocation(line: 0, scope: !1654)
!1762 = !DILocation(line: 400, column: 27, scope: !1653)
!1763 = !DILocation(line: 400, column: 19, scope: !1653)
!1764 = !DILocation(line: 400, column: 41, scope: !1653)
!1765 = !DILocation(line: 400, column: 48, scope: !1653)
!1766 = !DILocation(line: 400, column: 3, scope: !1654)
!1767 = !DILocation(line: 400, column: 60, scope: !1653)
!1768 = !DILocation(line: 0, scope: !1652)
!1769 = !DILocation(line: 409, column: 11, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1652, file: !135, line: 408, column: 11)
!1771 = !DILocation(line: 411, column: 17, scope: !1770)
!1772 = !DILocation(line: 412, column: 39, scope: !1770)
!1773 = !DILocation(line: 416, column: 32, scope: !1770)
!1774 = !DILocation(line: 412, column: 19, scope: !1770)
!1775 = !DILocation(line: 412, column: 15, scope: !1770)
!1776 = !DILocation(line: 417, column: 11, scope: !1770)
!1777 = !DILocation(line: 417, column: 26, scope: !1770)
!1778 = !DILocation(line: 417, column: 14, scope: !1770)
!1779 = !DILocation(line: 417, column: 63, scope: !1770)
!1780 = !DILocation(line: 408, column: 11, scope: !1652)
!1781 = !DILocation(line: 424, column: 11, scope: !1652)
!1782 = !DILocation(line: 425, column: 7, scope: !1652)
!1783 = !DILocation(line: 428, column: 15, scope: !1661)
!1784 = !DILocation(line: 430, column: 15, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !135, line: 430, column: 15)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !135, line: 429, column: 13)
!1787 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 428, column: 15)
!1788 = !DILocation(line: 430, column: 15, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !135, line: 430, column: 15)
!1790 = !DILocation(line: 430, column: 15, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !135, line: 430, column: 15)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !135, line: 430, column: 15)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !135, line: 430, column: 15)
!1794 = !DILocation(line: 430, column: 15, scope: !1792)
!1795 = !DILocation(line: 430, column: 15, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !135, line: 430, column: 15)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !135, line: 430, column: 15)
!1798 = !DILocation(line: 430, column: 15, scope: !1797)
!1799 = !DILocation(line: 430, column: 15, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !135, line: 430, column: 15)
!1801 = distinct !DILexicalBlock(scope: !1793, file: !135, line: 430, column: 15)
!1802 = !DILocation(line: 430, column: 15, scope: !1801)
!1803 = !DILocation(line: 430, column: 15, scope: !1793)
!1804 = !DILocation(line: 430, column: 15, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !135, line: 430, column: 15)
!1806 = distinct !DILexicalBlock(scope: !1785, file: !135, line: 430, column: 15)
!1807 = !DILocation(line: 430, column: 15, scope: !1806)
!1808 = !DILocation(line: 438, column: 19, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1786, file: !135, line: 437, column: 19)
!1810 = !DILocation(line: 438, column: 48, scope: !1809)
!1811 = !DILocation(line: 438, column: 59, scope: !1809)
!1812 = !DILocation(line: 440, column: 19, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !135, line: 440, column: 19)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !135, line: 440, column: 19)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !135, line: 439, column: 17)
!1816 = !DILocation(line: 440, column: 19, scope: !1814)
!1817 = !DILocation(line: 441, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !135, line: 441, column: 19)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !135, line: 441, column: 19)
!1820 = !DILocation(line: 441, column: 19, scope: !1819)
!1821 = !DILocation(line: 442, column: 17, scope: !1815)
!1822 = !DILocation(line: 449, column: 20, scope: !1787)
!1823 = !DILocation(line: 454, column: 11, scope: !1661)
!1824 = !DILocation(line: 457, column: 19, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 455, column: 13)
!1826 = !DILocation(line: 463, column: 19, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !135, line: 462, column: 19)
!1828 = !DILocation(line: 463, column: 47, scope: !1827)
!1829 = !DILocation(line: 463, column: 41, scope: !1827)
!1830 = !DILocation(line: 463, column: 52, scope: !1827)
!1831 = !DILocation(line: 462, column: 19, scope: !1825)
!1832 = !DILocation(line: 464, column: 25, scope: !1827)
!1833 = !DILocation(line: 464, column: 17, scope: !1827)
!1834 = !DILocation(line: 471, column: 25, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1827, file: !135, line: 465, column: 19)
!1836 = !DILocation(line: 475, column: 21, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !135, line: 475, column: 21)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !135, line: 475, column: 21)
!1839 = !DILocation(line: 475, column: 21, scope: !1838)
!1840 = !DILocation(line: 476, column: 21, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !135, line: 476, column: 21)
!1842 = distinct !DILexicalBlock(scope: !1835, file: !135, line: 476, column: 21)
!1843 = !DILocation(line: 476, column: 21, scope: !1842)
!1844 = !DILocation(line: 477, column: 21, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !135, line: 477, column: 21)
!1846 = distinct !DILexicalBlock(scope: !1835, file: !135, line: 477, column: 21)
!1847 = !DILocation(line: 477, column: 21, scope: !1846)
!1848 = !DILocation(line: 478, column: 21, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !135, line: 478, column: 21)
!1850 = distinct !DILexicalBlock(scope: !1835, file: !135, line: 478, column: 21)
!1851 = !DILocation(line: 478, column: 21, scope: !1850)
!1852 = !DILocation(line: 479, column: 21, scope: !1835)
!1853 = !DILocation(line: 492, column: 31, scope: !1661)
!1854 = !DILocation(line: 493, column: 31, scope: !1661)
!1855 = !DILocation(line: 495, column: 31, scope: !1661)
!1856 = !DILocation(line: 496, column: 31, scope: !1661)
!1857 = !DILocation(line: 497, column: 31, scope: !1661)
!1858 = !DILocation(line: 500, column: 15, scope: !1661)
!1859 = !DILocation(line: 502, column: 19, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !135, line: 501, column: 13)
!1861 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 500, column: 15)
!1862 = !DILocation(line: 509, column: 33, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 509, column: 15)
!1864 = !DILocation(line: 0, scope: !1661)
!1865 = !DILocation(line: 512, column: 9, scope: !1661)
!1866 = !DILocation(line: 514, column: 15, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 513, column: 15)
!1868 = !DILocation(line: 517, column: 9, scope: !1661)
!1869 = !DILocation(line: 518, column: 15, scope: !1661)
!1870 = !DILocation(line: 526, column: 15, scope: !1661)
!1871 = !DILocation(line: 526, column: 40, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 526, column: 15)
!1873 = !DILocation(line: 526, column: 47, scope: !1872)
!1874 = !DILocation(line: 526, column: 18, scope: !1872)
!1875 = !DILocation(line: 530, column: 17, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 530, column: 15)
!1877 = !DILocation(line: 530, column: 15, scope: !1661)
!1878 = !DILocation(line: 535, column: 11, scope: !1661)
!1879 = !DILocation(line: 549, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 548, column: 15)
!1881 = !DILocation(line: 556, column: 15, scope: !1661)
!1882 = !DILocation(line: 558, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !135, line: 557, column: 13)
!1884 = distinct !DILexicalBlock(scope: !1661, file: !135, line: 556, column: 15)
!1885 = !DILocation(line: 561, column: 19, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !135, line: 561, column: 19)
!1887 = !DILocation(line: 561, column: 30, scope: !1886)
!1888 = !DILocation(line: 570, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !135, line: 570, column: 15)
!1890 = distinct !DILexicalBlock(scope: !1883, file: !135, line: 570, column: 15)
!1891 = !DILocation(line: 570, column: 15, scope: !1890)
!1892 = !DILocation(line: 571, column: 15, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !135, line: 571, column: 15)
!1894 = distinct !DILexicalBlock(scope: !1883, file: !135, line: 571, column: 15)
!1895 = !DILocation(line: 571, column: 15, scope: !1894)
!1896 = !DILocation(line: 572, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !135, line: 572, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1883, file: !135, line: 572, column: 15)
!1899 = !DILocation(line: 572, column: 15, scope: !1898)
!1900 = !DILocation(line: 574, column: 13, scope: !1883)
!1901 = !DILocation(line: 614, column: 17, scope: !1660)
!1902 = !DILocation(line: 0, scope: !1660)
!1903 = !DILocation(line: 617, column: 29, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1665, file: !135, line: 615, column: 15)
!1905 = !DILocation(line: 617, column: 27, scope: !1904)
!1906 = !DILocation(line: 678, column: 40, scope: !1660)
!1907 = !DILocation(line: 680, column: 23, scope: !1694)
!1908 = !DILocation(line: 621, column: 17, scope: !1664)
!1909 = !DILocation(line: 621, column: 27, scope: !1664)
!1910 = !DILocalVariable(name: "__dest", arg: 1, scope: !1911, file: !1912, line: 57, type: !55)
!1911 = distinct !DISubprogram(name: "memset", scope: !1912, file: !1912, line: 57, type: !1913, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !1915)
!1912 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!55, !55, !70, !57}
!1915 = !{!1910, !1916, !1917}
!1916 = !DILocalVariable(name: "__ch", arg: 2, scope: !1911, file: !1912, line: 57, type: !70)
!1917 = !DILocalVariable(name: "__len", arg: 3, scope: !1911, file: !1912, line: 57, type: !57)
!1918 = !DILocation(line: 0, scope: !1911, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 622, column: 17, scope: !1664)
!1920 = !DILocation(line: 59, column: 10, scope: !1911, inlinedAt: !1919)
!1921 = !DILocation(line: 626, column: 29, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1664, file: !135, line: 626, column: 21)
!1923 = !DILocation(line: 626, column: 21, scope: !1664)
!1924 = !DILocation(line: 627, column: 29, scope: !1922)
!1925 = !DILocation(line: 627, column: 19, scope: !1922)
!1926 = !DILocation(line: 629, column: 17, scope: !1664)
!1927 = !DILocation(line: 624, column: 19, scope: !1664)
!1928 = !DILocation(line: 625, column: 27, scope: !1664)
!1929 = !DILocation(line: 631, column: 21, scope: !1682)
!1930 = !DILocation(line: 632, column: 56, scope: !1682)
!1931 = !DILocation(line: 632, column: 50, scope: !1682)
!1932 = !DILocation(line: 633, column: 53, scope: !1682)
!1933 = !DILocation(line: 0, scope: !1682)
!1934 = !DILocation(line: 632, column: 36, scope: !1682)
!1935 = !DILocation(line: 634, column: 25, scope: !1682)
!1936 = !DILocation(line: 644, column: 38, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1689, file: !135, line: 642, column: 23)
!1938 = !DILocation(line: 644, column: 48, scope: !1937)
!1939 = !DILocation(line: 644, column: 25, scope: !1937)
!1940 = !DILocation(line: 644, column: 51, scope: !1937)
!1941 = !DILocation(line: 645, column: 28, scope: !1937)
!1942 = !DILocation(line: 644, column: 34, scope: !1937)
!1943 = distinct !{!1943, !1939, !1941, !800}
!1944 = !DILocation(line: 655, column: 29, scope: !1687)
!1945 = !DILocation(line: 0, scope: !1686)
!1946 = !DILocation(line: 659, column: 49, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !135, line: 658, column: 29)
!1948 = distinct !DILexicalBlock(scope: !1686, file: !135, line: 658, column: 29)
!1949 = !DILocation(line: 659, column: 39, scope: !1947)
!1950 = !DILocation(line: 659, column: 31, scope: !1947)
!1951 = !DILocation(line: 658, column: 53, scope: !1947)
!1952 = !DILocation(line: 658, column: 43, scope: !1947)
!1953 = !DILocation(line: 658, column: 29, scope: !1948)
!1954 = distinct !{!1954, !1953, !1955, !800}
!1955 = !DILocation(line: 667, column: 33, scope: !1948)
!1956 = !DILocation(line: 674, column: 19, scope: !1664)
!1957 = !DILocation(line: 670, column: 41, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1688, file: !135, line: 670, column: 29)
!1959 = !DILocation(line: 670, column: 31, scope: !1958)
!1960 = !DILocation(line: 670, column: 29, scope: !1688)
!1961 = !DILocation(line: 672, column: 27, scope: !1688)
!1962 = !DILocation(line: 675, column: 26, scope: !1664)
!1963 = !DILocation(line: 675, column: 24, scope: !1664)
!1964 = !DILocation(line: 674, column: 19, scope: !1682)
!1965 = distinct !{!1965, !1926, !1966, !800}
!1966 = !DILocation(line: 675, column: 44, scope: !1664)
!1967 = !DILocation(line: 676, column: 15, scope: !1665)
!1968 = !DILocation(line: 680, column: 19, scope: !1694)
!1969 = !DILocation(line: 680, column: 45, scope: !1694)
!1970 = !DILocation(line: 684, column: 33, scope: !1693)
!1971 = !DILocation(line: 0, scope: !1693)
!1972 = !DILocation(line: 686, column: 17, scope: !1693)
!1973 = !DILocation(line: 405, column: 12, scope: !1652)
!1974 = !DILocation(line: 688, column: 43, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !135, line: 688, column: 25)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !135, line: 687, column: 19)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !135, line: 686, column: 17)
!1978 = distinct !DILexicalBlock(scope: !1693, file: !135, line: 686, column: 17)
!1979 = !DILocation(line: 690, column: 25, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !135, line: 690, column: 25)
!1981 = distinct !DILexicalBlock(scope: !1975, file: !135, line: 689, column: 23)
!1982 = !DILocation(line: 690, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !135, line: 690, column: 25)
!1984 = !DILocation(line: 690, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !135, line: 690, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !135, line: 690, column: 25)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !135, line: 690, column: 25)
!1988 = !DILocation(line: 690, column: 25, scope: !1986)
!1989 = !DILocation(line: 690, column: 25, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !135, line: 690, column: 25)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !135, line: 690, column: 25)
!1992 = !DILocation(line: 690, column: 25, scope: !1991)
!1993 = !DILocation(line: 690, column: 25, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !135, line: 690, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1987, file: !135, line: 690, column: 25)
!1996 = !DILocation(line: 690, column: 25, scope: !1995)
!1997 = !DILocation(line: 690, column: 25, scope: !1987)
!1998 = !DILocation(line: 690, column: 25, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !135, line: 690, column: 25)
!2000 = distinct !DILexicalBlock(scope: !1980, file: !135, line: 690, column: 25)
!2001 = !DILocation(line: 690, column: 25, scope: !2000)
!2002 = !DILocation(line: 691, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !135, line: 691, column: 25)
!2004 = distinct !DILexicalBlock(scope: !1981, file: !135, line: 691, column: 25)
!2005 = !DILocation(line: 691, column: 25, scope: !2004)
!2006 = !DILocation(line: 692, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !135, line: 692, column: 25)
!2008 = distinct !DILexicalBlock(scope: !1981, file: !135, line: 692, column: 25)
!2009 = !DILocation(line: 692, column: 25, scope: !2008)
!2010 = !DILocation(line: 693, column: 38, scope: !1981)
!2011 = !DILocation(line: 693, column: 33, scope: !1981)
!2012 = !DILocation(line: 694, column: 23, scope: !1981)
!2013 = !DILocation(line: 695, column: 30, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1975, file: !135, line: 695, column: 30)
!2015 = !DILocation(line: 695, column: 30, scope: !1975)
!2016 = !DILocation(line: 697, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !135, line: 697, column: 25)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !135, line: 697, column: 25)
!2019 = distinct !DILexicalBlock(scope: !2014, file: !135, line: 696, column: 23)
!2020 = !DILocation(line: 697, column: 25, scope: !2018)
!2021 = !DILocation(line: 699, column: 23, scope: !2019)
!2022 = !DILocation(line: 700, column: 35, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1976, file: !135, line: 700, column: 25)
!2024 = !DILocation(line: 700, column: 30, scope: !2023)
!2025 = !DILocation(line: 700, column: 25, scope: !1976)
!2026 = !DILocation(line: 702, column: 21, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !135, line: 702, column: 21)
!2028 = distinct !DILexicalBlock(scope: !1976, file: !135, line: 702, column: 21)
!2029 = !DILocation(line: 702, column: 21, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !135, line: 702, column: 21)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !135, line: 702, column: 21)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !135, line: 702, column: 21)
!2033 = !DILocation(line: 702, column: 21, scope: !2031)
!2034 = !DILocation(line: 702, column: 21, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !135, line: 702, column: 21)
!2036 = distinct !DILexicalBlock(scope: !2032, file: !135, line: 702, column: 21)
!2037 = !DILocation(line: 702, column: 21, scope: !2036)
!2038 = !DILocation(line: 702, column: 21, scope: !2032)
!2039 = !DILocation(line: 0, scope: !1976)
!2040 = !DILocation(line: 703, column: 21, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !135, line: 703, column: 21)
!2042 = distinct !DILexicalBlock(scope: !1976, file: !135, line: 703, column: 21)
!2043 = !DILocation(line: 703, column: 21, scope: !2042)
!2044 = !DILocation(line: 704, column: 25, scope: !1976)
!2045 = !DILocation(line: 686, column: 17, scope: !1977)
!2046 = distinct !{!2046, !2047, !2048}
!2047 = !DILocation(line: 686, column: 17, scope: !1978)
!2048 = !DILocation(line: 705, column: 19, scope: !1978)
!2049 = !DILocation(line: 416, column: 30, scope: !1770)
!2050 = !DILocation(line: 712, column: 34, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1652, file: !135, line: 712, column: 11)
!2052 = !DILocation(line: 715, column: 35, scope: !2051)
!2053 = !DILocation(line: 715, column: 17, scope: !2051)
!2054 = !DILocation(line: 715, column: 47, scope: !2051)
!2055 = !DILocation(line: 715, column: 65, scope: !2051)
!2056 = !DILocation(line: 716, column: 11, scope: !2051)
!2057 = !DILocation(line: 712, column: 11, scope: !1652)
!2058 = !DILocation(line: 400, column: 10, scope: !1654)
!2059 = !DILocation(line: 719, column: 5, scope: !1652)
!2060 = !DILocation(line: 720, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1652, file: !135, line: 720, column: 7)
!2062 = !DILocation(line: 720, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2061, file: !135, line: 720, column: 7)
!2064 = !DILocation(line: 720, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !135, line: 720, column: 7)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !135, line: 720, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !135, line: 720, column: 7)
!2068 = !DILocation(line: 720, column: 7, scope: !2066)
!2069 = !DILocation(line: 720, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !135, line: 720, column: 7)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !135, line: 720, column: 7)
!2072 = !DILocation(line: 720, column: 7, scope: !2071)
!2073 = !DILocation(line: 720, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !135, line: 720, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2067, file: !135, line: 720, column: 7)
!2076 = !DILocation(line: 720, column: 7, scope: !2075)
!2077 = !DILocation(line: 720, column: 7, scope: !2067)
!2078 = !DILocation(line: 720, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !135, line: 720, column: 7)
!2080 = distinct !DILexicalBlock(scope: !2061, file: !135, line: 720, column: 7)
!2081 = !DILocation(line: 720, column: 7, scope: !2080)
!2082 = !DILocation(line: 722, column: 5, scope: !1652)
!2083 = !DILocation(line: 723, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !135, line: 723, column: 7)
!2085 = distinct !DILexicalBlock(scope: !1652, file: !135, line: 723, column: 7)
!2086 = !DILocation(line: 424, column: 9, scope: !1652)
!2087 = !DILocation(line: 723, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !135, line: 723, column: 7)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !135, line: 723, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !135, line: 723, column: 7)
!2091 = !DILocation(line: 723, column: 7, scope: !2089)
!2092 = !DILocation(line: 723, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !135, line: 723, column: 7)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !135, line: 723, column: 7)
!2095 = !DILocation(line: 723, column: 7, scope: !2094)
!2096 = !DILocation(line: 723, column: 7, scope: !2090)
!2097 = !DILocation(line: 724, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !135, line: 724, column: 7)
!2099 = distinct !DILexicalBlock(scope: !1652, file: !135, line: 724, column: 7)
!2100 = !DILocation(line: 724, column: 7, scope: !2099)
!2101 = !DILocation(line: 726, column: 13, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1652, file: !135, line: 726, column: 11)
!2103 = !DILocation(line: 726, column: 11, scope: !1652)
!2104 = !DILocation(line: 728, column: 5, scope: !1653)
!2105 = !DILocation(line: 400, column: 75, scope: !1653)
!2106 = !DILocation(line: 400, column: 3, scope: !1653)
!2107 = distinct !{!2107, !1766, !2108, !800}
!2108 = !DILocation(line: 728, column: 5, scope: !1654)
!2109 = !DILocation(line: 730, column: 11, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1627, file: !135, line: 730, column: 7)
!2111 = !DILocation(line: 730, column: 16, scope: !2110)
!2112 = !DILocation(line: 738, column: 51, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1627, file: !135, line: 738, column: 7)
!2114 = !DILocation(line: 741, column: 11, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !135, line: 741, column: 11)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !135, line: 740, column: 5)
!2117 = !DILocation(line: 741, column: 11, scope: !2116)
!2118 = !DILocation(line: 742, column: 16, scope: !2115)
!2119 = !DILocation(line: 742, column: 9, scope: !2115)
!2120 = !DILocation(line: 746, column: 18, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2115, file: !135, line: 746, column: 16)
!2122 = !DILocation(line: 746, column: 29, scope: !2121)
!2123 = !DILocation(line: 755, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1627, file: !135, line: 755, column: 7)
!2125 = !DILocation(line: 755, column: 20, scope: !2124)
!2126 = !DILocation(line: 756, column: 12, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !135, line: 756, column: 5)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !135, line: 756, column: 5)
!2129 = !DILocation(line: 756, column: 5, scope: !2128)
!2130 = !DILocation(line: 757, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !135, line: 757, column: 7)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !135, line: 757, column: 7)
!2133 = !DILocation(line: 757, column: 7, scope: !2132)
!2134 = !DILocation(line: 756, column: 39, scope: !2127)
!2135 = distinct !{!2135, !2129, !2136, !800}
!2136 = !DILocation(line: 757, column: 7, scope: !2128)
!2137 = !DILocation(line: 759, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1627, file: !135, line: 759, column: 7)
!2139 = !DILocation(line: 759, column: 7, scope: !1627)
!2140 = !DILocation(line: 760, column: 5, scope: !2138)
!2141 = !DILocation(line: 760, column: 17, scope: !2138)
!2142 = !DILocation(line: 763, column: 2, scope: !1627)
!2143 = !DILocation(line: 766, column: 51, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1627, file: !135, line: 766, column: 7)
!2145 = !DILocation(line: 766, column: 21, scope: !2144)
!2146 = !DILocation(line: 770, column: 42, scope: !1627)
!2147 = !DILocation(line: 768, column: 10, scope: !1627)
!2148 = !DILocation(line: 768, column: 3, scope: !1627)
!2149 = !DILocation(line: 772, column: 1, scope: !1627)
!2150 = distinct !DISubprogram(name: "gettext_quote", scope: !135, file: !135, line: 207, type: !2151, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!98, !98, !5}
!2153 = !{!2154, !2155, !2156, !2157}
!2154 = !DILocalVariable(name: "msgid", arg: 1, scope: !2150, file: !135, line: 207, type: !98)
!2155 = !DILocalVariable(name: "s", arg: 2, scope: !2150, file: !135, line: 207, type: !5)
!2156 = !DILocalVariable(name: "translation", scope: !2150, file: !135, line: 209, type: !98)
!2157 = !DILocalVariable(name: "locale_code", scope: !2150, file: !135, line: 210, type: !98)
!2158 = !DILocation(line: 0, scope: !2150)
!2159 = !DILocation(line: 209, column: 29, scope: !2150)
!2160 = !DILocation(line: 212, column: 19, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2150, file: !135, line: 212, column: 7)
!2162 = !DILocation(line: 212, column: 7, scope: !2150)
!2163 = !DILocation(line: 233, column: 17, scope: !2150)
!2164 = !DILocalVariable(name: "s1", arg: 1, scope: !2165, file: !2166, line: 160, type: !98)
!2165 = distinct !DISubprogram(name: "strcaseeq0", scope: !2166, file: !2166, line: 160, type: !2167, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2169)
!2166 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!70, !98, !98, !69, !69, !69, !69, !69, !69, !69, !69, !69}
!2169 = !{!2164, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2170 = !DILocalVariable(name: "s2", arg: 2, scope: !2165, file: !2166, line: 160, type: !98)
!2171 = !DILocalVariable(name: "s20", arg: 3, scope: !2165, file: !2166, line: 160, type: !69)
!2172 = !DILocalVariable(name: "s21", arg: 4, scope: !2165, file: !2166, line: 160, type: !69)
!2173 = !DILocalVariable(name: "s22", arg: 5, scope: !2165, file: !2166, line: 160, type: !69)
!2174 = !DILocalVariable(name: "s23", arg: 6, scope: !2165, file: !2166, line: 160, type: !69)
!2175 = !DILocalVariable(name: "s24", arg: 7, scope: !2165, file: !2166, line: 160, type: !69)
!2176 = !DILocalVariable(name: "s25", arg: 8, scope: !2165, file: !2166, line: 160, type: !69)
!2177 = !DILocalVariable(name: "s26", arg: 9, scope: !2165, file: !2166, line: 160, type: !69)
!2178 = !DILocalVariable(name: "s27", arg: 10, scope: !2165, file: !2166, line: 160, type: !69)
!2179 = !DILocalVariable(name: "s28", arg: 11, scope: !2165, file: !2166, line: 160, type: !69)
!2180 = !DILocation(line: 0, scope: !2165, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 234, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2150, file: !135, line: 234, column: 7)
!2183 = !DILocation(line: 162, column: 7, scope: !2184, inlinedAt: !2181)
!2184 = distinct !DILexicalBlock(scope: !2165, file: !2166, line: 162, column: 7)
!2185 = !DILocalVariable(name: "s1", arg: 1, scope: !2186, file: !2166, line: 146, type: !98)
!2186 = distinct !DISubprogram(name: "strcaseeq1", scope: !2166, file: !2166, line: 146, type: !2187, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!70, !98, !98, !69, !69, !69, !69, !69, !69, !69, !69}
!2189 = !{!2185, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198}
!2190 = !DILocalVariable(name: "s2", arg: 2, scope: !2186, file: !2166, line: 146, type: !98)
!2191 = !DILocalVariable(name: "s21", arg: 3, scope: !2186, file: !2166, line: 146, type: !69)
!2192 = !DILocalVariable(name: "s22", arg: 4, scope: !2186, file: !2166, line: 146, type: !69)
!2193 = !DILocalVariable(name: "s23", arg: 5, scope: !2186, file: !2166, line: 146, type: !69)
!2194 = !DILocalVariable(name: "s24", arg: 6, scope: !2186, file: !2166, line: 146, type: !69)
!2195 = !DILocalVariable(name: "s25", arg: 7, scope: !2186, file: !2166, line: 146, type: !69)
!2196 = !DILocalVariable(name: "s26", arg: 8, scope: !2186, file: !2166, line: 146, type: !69)
!2197 = !DILocalVariable(name: "s27", arg: 9, scope: !2186, file: !2166, line: 146, type: !69)
!2198 = !DILocalVariable(name: "s28", arg: 10, scope: !2186, file: !2166, line: 146, type: !69)
!2199 = !DILocation(line: 0, scope: !2186, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 167, column: 16, scope: !2201, inlinedAt: !2181)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !2166, line: 164, column: 11)
!2202 = distinct !DILexicalBlock(scope: !2184, file: !2166, line: 163, column: 5)
!2203 = !DILocation(line: 148, column: 7, scope: !2204, inlinedAt: !2200)
!2204 = distinct !DILexicalBlock(scope: !2186, file: !2166, line: 148, column: 7)
!2205 = !DILocalVariable(name: "s1", arg: 1, scope: !2206, file: !2166, line: 132, type: !98)
!2206 = distinct !DISubprogram(name: "strcaseeq2", scope: !2166, file: !2166, line: 132, type: !2207, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!70, !98, !98, !69, !69, !69, !69, !69, !69, !69}
!2209 = !{!2205, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217}
!2210 = !DILocalVariable(name: "s2", arg: 2, scope: !2206, file: !2166, line: 132, type: !98)
!2211 = !DILocalVariable(name: "s22", arg: 3, scope: !2206, file: !2166, line: 132, type: !69)
!2212 = !DILocalVariable(name: "s23", arg: 4, scope: !2206, file: !2166, line: 132, type: !69)
!2213 = !DILocalVariable(name: "s24", arg: 5, scope: !2206, file: !2166, line: 132, type: !69)
!2214 = !DILocalVariable(name: "s25", arg: 6, scope: !2206, file: !2166, line: 132, type: !69)
!2215 = !DILocalVariable(name: "s26", arg: 7, scope: !2206, file: !2166, line: 132, type: !69)
!2216 = !DILocalVariable(name: "s27", arg: 8, scope: !2206, file: !2166, line: 132, type: !69)
!2217 = !DILocalVariable(name: "s28", arg: 9, scope: !2206, file: !2166, line: 132, type: !69)
!2218 = !DILocation(line: 0, scope: !2206, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 153, column: 16, scope: !2220, inlinedAt: !2200)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !2166, line: 150, column: 11)
!2221 = distinct !DILexicalBlock(scope: !2204, file: !2166, line: 149, column: 5)
!2222 = !DILocation(line: 134, column: 7, scope: !2223, inlinedAt: !2219)
!2223 = distinct !DILexicalBlock(scope: !2206, file: !2166, line: 134, column: 7)
!2224 = !DILocalVariable(name: "s1", arg: 1, scope: !2225, file: !2166, line: 118, type: !98)
!2225 = distinct !DISubprogram(name: "strcaseeq3", scope: !2166, file: !2166, line: 118, type: !2226, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!70, !98, !98, !69, !69, !69, !69, !69, !69}
!2228 = !{!2224, !2229, !2230, !2231, !2232, !2233, !2234, !2235}
!2229 = !DILocalVariable(name: "s2", arg: 2, scope: !2225, file: !2166, line: 118, type: !98)
!2230 = !DILocalVariable(name: "s23", arg: 3, scope: !2225, file: !2166, line: 118, type: !69)
!2231 = !DILocalVariable(name: "s24", arg: 4, scope: !2225, file: !2166, line: 118, type: !69)
!2232 = !DILocalVariable(name: "s25", arg: 5, scope: !2225, file: !2166, line: 118, type: !69)
!2233 = !DILocalVariable(name: "s26", arg: 6, scope: !2225, file: !2166, line: 118, type: !69)
!2234 = !DILocalVariable(name: "s27", arg: 7, scope: !2225, file: !2166, line: 118, type: !69)
!2235 = !DILocalVariable(name: "s28", arg: 8, scope: !2225, file: !2166, line: 118, type: !69)
!2236 = !DILocation(line: 0, scope: !2225, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 139, column: 16, scope: !2238, inlinedAt: !2219)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !2166, line: 136, column: 11)
!2239 = distinct !DILexicalBlock(scope: !2223, file: !2166, line: 135, column: 5)
!2240 = !DILocation(line: 120, column: 7, scope: !2241, inlinedAt: !2237)
!2241 = distinct !DILexicalBlock(scope: !2225, file: !2166, line: 120, column: 7)
!2242 = !DILocation(line: 120, column: 7, scope: !2225, inlinedAt: !2237)
!2243 = !DILocalVariable(name: "s1", arg: 1, scope: !2244, file: !2166, line: 104, type: !98)
!2244 = distinct !DISubprogram(name: "strcaseeq4", scope: !2166, file: !2166, line: 104, type: !2245, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!70, !98, !98, !69, !69, !69, !69, !69}
!2247 = !{!2243, !2248, !2249, !2250, !2251, !2252, !2253}
!2248 = !DILocalVariable(name: "s2", arg: 2, scope: !2244, file: !2166, line: 104, type: !98)
!2249 = !DILocalVariable(name: "s24", arg: 3, scope: !2244, file: !2166, line: 104, type: !69)
!2250 = !DILocalVariable(name: "s25", arg: 4, scope: !2244, file: !2166, line: 104, type: !69)
!2251 = !DILocalVariable(name: "s26", arg: 5, scope: !2244, file: !2166, line: 104, type: !69)
!2252 = !DILocalVariable(name: "s27", arg: 6, scope: !2244, file: !2166, line: 104, type: !69)
!2253 = !DILocalVariable(name: "s28", arg: 7, scope: !2244, file: !2166, line: 104, type: !69)
!2254 = !DILocation(line: 0, scope: !2244, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 125, column: 16, scope: !2256, inlinedAt: !2237)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !2166, line: 122, column: 11)
!2257 = distinct !DILexicalBlock(scope: !2241, file: !2166, line: 121, column: 5)
!2258 = !DILocation(line: 106, column: 7, scope: !2259, inlinedAt: !2255)
!2259 = distinct !DILexicalBlock(scope: !2244, file: !2166, line: 106, column: 7)
!2260 = !DILocation(line: 106, column: 7, scope: !2244, inlinedAt: !2255)
!2261 = !DILocalVariable(name: "s1", arg: 1, scope: !2262, file: !2166, line: 90, type: !98)
!2262 = distinct !DISubprogram(name: "strcaseeq5", scope: !2166, file: !2166, line: 90, type: !2263, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!70, !98, !98, !69, !69, !69, !69}
!2265 = !{!2261, !2266, !2267, !2268, !2269, !2270}
!2266 = !DILocalVariable(name: "s2", arg: 2, scope: !2262, file: !2166, line: 90, type: !98)
!2267 = !DILocalVariable(name: "s25", arg: 3, scope: !2262, file: !2166, line: 90, type: !69)
!2268 = !DILocalVariable(name: "s26", arg: 4, scope: !2262, file: !2166, line: 90, type: !69)
!2269 = !DILocalVariable(name: "s27", arg: 5, scope: !2262, file: !2166, line: 90, type: !69)
!2270 = !DILocalVariable(name: "s28", arg: 6, scope: !2262, file: !2166, line: 90, type: !69)
!2271 = !DILocation(line: 0, scope: !2262, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 111, column: 16, scope: !2273, inlinedAt: !2255)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !2166, line: 108, column: 11)
!2274 = distinct !DILexicalBlock(scope: !2259, file: !2166, line: 107, column: 5)
!2275 = !DILocation(line: 92, column: 7, scope: !2276, inlinedAt: !2272)
!2276 = distinct !DILexicalBlock(scope: !2262, file: !2166, line: 92, column: 7)
!2277 = !DILocation(line: 92, column: 7, scope: !2262, inlinedAt: !2272)
!2278 = !DILocation(line: 235, column: 12, scope: !2182)
!2279 = !DILocation(line: 235, column: 21, scope: !2182)
!2280 = !DILocation(line: 235, column: 5, scope: !2182)
!2281 = !DILocation(line: 0, scope: !2186, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 167, column: 16, scope: !2201, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 236, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2150, file: !135, line: 236, column: 7)
!2285 = !DILocation(line: 148, column: 7, scope: !2204, inlinedAt: !2282)
!2286 = !DILocation(line: 0, scope: !2206, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 153, column: 16, scope: !2220, inlinedAt: !2282)
!2288 = !DILocation(line: 134, column: 7, scope: !2223, inlinedAt: !2287)
!2289 = !DILocation(line: 134, column: 7, scope: !2206, inlinedAt: !2287)
!2290 = !DILocation(line: 0, scope: !2225, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 139, column: 16, scope: !2238, inlinedAt: !2287)
!2292 = !DILocation(line: 120, column: 7, scope: !2241, inlinedAt: !2291)
!2293 = !DILocation(line: 120, column: 7, scope: !2225, inlinedAt: !2291)
!2294 = !DILocation(line: 0, scope: !2244, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 125, column: 16, scope: !2256, inlinedAt: !2291)
!2296 = !DILocation(line: 106, column: 7, scope: !2259, inlinedAt: !2295)
!2297 = !DILocation(line: 106, column: 7, scope: !2244, inlinedAt: !2295)
!2298 = !DILocation(line: 0, scope: !2262, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 111, column: 16, scope: !2273, inlinedAt: !2295)
!2300 = !DILocation(line: 92, column: 7, scope: !2276, inlinedAt: !2299)
!2301 = !DILocation(line: 92, column: 7, scope: !2262, inlinedAt: !2299)
!2302 = !DILocalVariable(name: "s1", arg: 1, scope: !2303, file: !2166, line: 76, type: !98)
!2303 = distinct !DISubprogram(name: "strcaseeq6", scope: !2166, file: !2166, line: 76, type: !2304, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!70, !98, !98, !69, !69, !69}
!2306 = !{!2302, !2307, !2308, !2309, !2310}
!2307 = !DILocalVariable(name: "s2", arg: 2, scope: !2303, file: !2166, line: 76, type: !98)
!2308 = !DILocalVariable(name: "s26", arg: 3, scope: !2303, file: !2166, line: 76, type: !69)
!2309 = !DILocalVariable(name: "s27", arg: 4, scope: !2303, file: !2166, line: 76, type: !69)
!2310 = !DILocalVariable(name: "s28", arg: 5, scope: !2303, file: !2166, line: 76, type: !69)
!2311 = !DILocation(line: 0, scope: !2303, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 97, column: 16, scope: !2313, inlinedAt: !2299)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !2166, line: 94, column: 11)
!2314 = distinct !DILexicalBlock(scope: !2276, file: !2166, line: 93, column: 5)
!2315 = !DILocation(line: 78, column: 7, scope: !2316, inlinedAt: !2312)
!2316 = distinct !DILexicalBlock(scope: !2303, file: !2166, line: 78, column: 7)
!2317 = !DILocation(line: 78, column: 7, scope: !2303, inlinedAt: !2312)
!2318 = !DILocalVariable(name: "s1", arg: 1, scope: !2319, file: !2166, line: 62, type: !98)
!2319 = distinct !DISubprogram(name: "strcaseeq7", scope: !2166, file: !2166, line: 62, type: !2320, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!70, !98, !98, !69, !69}
!2322 = !{!2318, !2323, !2324, !2325}
!2323 = !DILocalVariable(name: "s2", arg: 2, scope: !2319, file: !2166, line: 62, type: !98)
!2324 = !DILocalVariable(name: "s27", arg: 3, scope: !2319, file: !2166, line: 62, type: !69)
!2325 = !DILocalVariable(name: "s28", arg: 4, scope: !2319, file: !2166, line: 62, type: !69)
!2326 = !DILocation(line: 0, scope: !2319, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 83, column: 16, scope: !2328, inlinedAt: !2312)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !2166, line: 80, column: 11)
!2329 = distinct !DILexicalBlock(scope: !2316, file: !2166, line: 79, column: 5)
!2330 = !DILocation(line: 64, column: 7, scope: !2331, inlinedAt: !2327)
!2331 = distinct !DILexicalBlock(scope: !2319, file: !2166, line: 64, column: 7)
!2332 = !DILocation(line: 236, column: 7, scope: !2150)
!2333 = !DILocation(line: 237, column: 12, scope: !2284)
!2334 = !DILocation(line: 237, column: 21, scope: !2284)
!2335 = !DILocation(line: 237, column: 5, scope: !2284)
!2336 = !DILocation(line: 239, column: 13, scope: !2150)
!2337 = !DILocation(line: 239, column: 11, scope: !2150)
!2338 = !DILocation(line: 239, column: 3, scope: !2150)
!2339 = !DILocation(line: 240, column: 1, scope: !2150)
!2340 = !DISubprogram(name: "iswprint", scope: !2341, file: !2341, line: 120, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!2341 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2342 = !DISubprogram(name: "mbsinit", scope: !2343, file: !2343, line: 292, type: !2344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!2343 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!70, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!2348 = distinct !DISubprogram(name: "quotearg_alloc", scope: !135, file: !135, line: 799, type: !2349, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!68, !98, !57, !1518}
!2351 = !{!2352, !2353, !2354}
!2352 = !DILocalVariable(name: "arg", arg: 1, scope: !2348, file: !135, line: 799, type: !98)
!2353 = !DILocalVariable(name: "argsize", arg: 2, scope: !2348, file: !135, line: 799, type: !57)
!2354 = !DILocalVariable(name: "o", arg: 3, scope: !2348, file: !135, line: 800, type: !1518)
!2355 = !DILocation(line: 0, scope: !2348)
!2356 = !DILocalVariable(name: "arg", arg: 1, scope: !2357, file: !135, line: 812, type: !98)
!2357 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !135, file: !135, line: 812, type: !2358, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!68, !98, !57, !56, !1518}
!2360 = !{!2356, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368}
!2361 = !DILocalVariable(name: "argsize", arg: 2, scope: !2357, file: !135, line: 812, type: !57)
!2362 = !DILocalVariable(name: "size", arg: 3, scope: !2357, file: !135, line: 812, type: !56)
!2363 = !DILocalVariable(name: "o", arg: 4, scope: !2357, file: !135, line: 813, type: !1518)
!2364 = !DILocalVariable(name: "p", scope: !2357, file: !135, line: 815, type: !1518)
!2365 = !DILocalVariable(name: "e", scope: !2357, file: !135, line: 816, type: !70)
!2366 = !DILocalVariable(name: "flags", scope: !2357, file: !135, line: 818, type: !70)
!2367 = !DILocalVariable(name: "bufsize", scope: !2357, file: !135, line: 819, type: !57)
!2368 = !DILocalVariable(name: "buf", scope: !2357, file: !135, line: 823, type: !68)
!2369 = !DILocation(line: 0, scope: !2357, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 802, column: 10, scope: !2348)
!2371 = !DILocation(line: 815, column: 37, scope: !2357, inlinedAt: !2370)
!2372 = !DILocation(line: 816, column: 11, scope: !2357, inlinedAt: !2370)
!2373 = !DILocation(line: 818, column: 18, scope: !2357, inlinedAt: !2370)
!2374 = !DILocation(line: 818, column: 24, scope: !2357, inlinedAt: !2370)
!2375 = !DILocation(line: 819, column: 69, scope: !2357, inlinedAt: !2370)
!2376 = !DILocation(line: 820, column: 53, scope: !2357, inlinedAt: !2370)
!2377 = !DILocation(line: 821, column: 49, scope: !2357, inlinedAt: !2370)
!2378 = !DILocation(line: 822, column: 49, scope: !2357, inlinedAt: !2370)
!2379 = !DILocation(line: 819, column: 20, scope: !2357, inlinedAt: !2370)
!2380 = !DILocation(line: 822, column: 62, scope: !2357, inlinedAt: !2370)
!2381 = !DILocalVariable(name: "n", arg: 1, scope: !2382, file: !51, line: 216, type: !57)
!2382 = distinct !DISubprogram(name: "xcharalloc", scope: !51, file: !51, line: 216, type: !2383, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!68, !57}
!2385 = !{!2381}
!2386 = !DILocation(line: 0, scope: !2382, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 823, column: 15, scope: !2357, inlinedAt: !2370)
!2388 = !DILocation(line: 218, column: 10, scope: !2382, inlinedAt: !2387)
!2389 = !DILocation(line: 824, column: 60, scope: !2357, inlinedAt: !2370)
!2390 = !DILocation(line: 826, column: 32, scope: !2357, inlinedAt: !2370)
!2391 = !DILocation(line: 826, column: 47, scope: !2357, inlinedAt: !2370)
!2392 = !DILocation(line: 824, column: 3, scope: !2357, inlinedAt: !2370)
!2393 = !DILocation(line: 827, column: 9, scope: !2357, inlinedAt: !2370)
!2394 = !DILocation(line: 802, column: 3, scope: !2348)
!2395 = !DILocation(line: 0, scope: !2357)
!2396 = !DILocation(line: 815, column: 37, scope: !2357)
!2397 = !DILocation(line: 816, column: 11, scope: !2357)
!2398 = !DILocation(line: 818, column: 18, scope: !2357)
!2399 = !DILocation(line: 818, column: 27, scope: !2357)
!2400 = !DILocation(line: 818, column: 24, scope: !2357)
!2401 = !DILocation(line: 819, column: 69, scope: !2357)
!2402 = !DILocation(line: 820, column: 53, scope: !2357)
!2403 = !DILocation(line: 821, column: 49, scope: !2357)
!2404 = !DILocation(line: 822, column: 49, scope: !2357)
!2405 = !DILocation(line: 819, column: 20, scope: !2357)
!2406 = !DILocation(line: 822, column: 62, scope: !2357)
!2407 = !DILocation(line: 0, scope: !2382, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 823, column: 15, scope: !2357)
!2409 = !DILocation(line: 218, column: 10, scope: !2382, inlinedAt: !2408)
!2410 = !DILocation(line: 824, column: 60, scope: !2357)
!2411 = !DILocation(line: 826, column: 32, scope: !2357)
!2412 = !DILocation(line: 826, column: 47, scope: !2357)
!2413 = !DILocation(line: 824, column: 3, scope: !2357)
!2414 = !DILocation(line: 827, column: 9, scope: !2357)
!2415 = !DILocation(line: 828, column: 7, scope: !2357)
!2416 = !DILocation(line: 829, column: 11, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2357, file: !135, line: 828, column: 7)
!2418 = !DILocation(line: 829, column: 5, scope: !2417)
!2419 = !DILocation(line: 830, column: 3, scope: !2357)
!2420 = distinct !DISubprogram(name: "quotearg_free", scope: !135, file: !135, line: 848, type: !1256, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2421)
!2421 = !{!2422, !2423}
!2422 = !DILocalVariable(name: "sv", scope: !2420, file: !135, line: 850, type: !171)
!2423 = !DILocalVariable(name: "i", scope: !2420, file: !135, line: 851, type: !70)
!2424 = !DILocation(line: 850, column: 24, scope: !2420)
!2425 = !DILocation(line: 0, scope: !2420)
!2426 = !DILocation(line: 852, column: 19, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !135, line: 852, column: 3)
!2428 = distinct !DILexicalBlock(scope: !2420, file: !135, line: 852, column: 3)
!2429 = !DILocation(line: 852, column: 17, scope: !2427)
!2430 = !DILocation(line: 852, column: 3, scope: !2428)
!2431 = !DILocation(line: 853, column: 17, scope: !2427)
!2432 = !{!2433, !756, i64 8}
!2433 = !{!"slotvec", !956, i64 0, !756, i64 8}
!2434 = !DILocation(line: 853, column: 5, scope: !2427)
!2435 = !DILocation(line: 852, column: 28, scope: !2427)
!2436 = distinct !{!2436, !2430, !2437, !800}
!2437 = !DILocation(line: 853, column: 20, scope: !2428)
!2438 = !DILocation(line: 854, column: 13, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2420, file: !135, line: 854, column: 7)
!2440 = !DILocation(line: 854, column: 17, scope: !2439)
!2441 = !DILocation(line: 854, column: 7, scope: !2420)
!2442 = !DILocation(line: 856, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !135, line: 855, column: 5)
!2444 = !DILocation(line: 857, column: 21, scope: !2443)
!2445 = !{!2433, !956, i64 0}
!2446 = !DILocation(line: 858, column: 20, scope: !2443)
!2447 = !DILocation(line: 859, column: 5, scope: !2443)
!2448 = !DILocation(line: 860, column: 10, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2420, file: !135, line: 860, column: 7)
!2450 = !DILocation(line: 860, column: 7, scope: !2420)
!2451 = !DILocation(line: 862, column: 13, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !135, line: 861, column: 5)
!2453 = !DILocation(line: 862, column: 7, scope: !2452)
!2454 = !DILocation(line: 863, column: 15, scope: !2452)
!2455 = !DILocation(line: 864, column: 5, scope: !2452)
!2456 = !DILocation(line: 865, column: 10, scope: !2420)
!2457 = !DILocation(line: 866, column: 1, scope: !2420)
!2458 = distinct !DISubprogram(name: "quotearg_n", scope: !135, file: !135, line: 931, type: !880, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2459)
!2459 = !{!2460, !2461}
!2460 = !DILocalVariable(name: "n", arg: 1, scope: !2458, file: !135, line: 931, type: !70)
!2461 = !DILocalVariable(name: "arg", arg: 2, scope: !2458, file: !135, line: 931, type: !98)
!2462 = !DILocation(line: 0, scope: !2458)
!2463 = !DILocation(line: 933, column: 10, scope: !2458)
!2464 = !DILocation(line: 933, column: 3, scope: !2458)
!2465 = distinct !DISubprogram(name: "quotearg_n_options", scope: !135, file: !135, line: 877, type: !2466, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!68, !70, !98, !57, !1518}
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2478, !2479, !2481, !2482, !2483}
!2469 = !DILocalVariable(name: "n", arg: 1, scope: !2465, file: !135, line: 877, type: !70)
!2470 = !DILocalVariable(name: "arg", arg: 2, scope: !2465, file: !135, line: 877, type: !98)
!2471 = !DILocalVariable(name: "argsize", arg: 3, scope: !2465, file: !135, line: 877, type: !57)
!2472 = !DILocalVariable(name: "options", arg: 4, scope: !2465, file: !135, line: 878, type: !1518)
!2473 = !DILocalVariable(name: "e", scope: !2465, file: !135, line: 880, type: !70)
!2474 = !DILocalVariable(name: "sv", scope: !2465, file: !135, line: 882, type: !171)
!2475 = !DILocalVariable(name: "preallocated", scope: !2476, file: !135, line: 889, type: !119)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !135, line: 888, column: 5)
!2477 = distinct !DILexicalBlock(scope: !2465, file: !135, line: 887, column: 7)
!2478 = !DILocalVariable(name: "nmax", scope: !2476, file: !135, line: 890, type: !70)
!2479 = !DILocalVariable(name: "size", scope: !2480, file: !135, line: 903, type: !57)
!2480 = distinct !DILexicalBlock(scope: !2465, file: !135, line: 902, column: 3)
!2481 = !DILocalVariable(name: "val", scope: !2480, file: !135, line: 904, type: !68)
!2482 = !DILocalVariable(name: "flags", scope: !2480, file: !135, line: 906, type: !70)
!2483 = !DILocalVariable(name: "qsize", scope: !2480, file: !135, line: 907, type: !57)
!2484 = !DILocation(line: 0, scope: !2465)
!2485 = !DILocation(line: 880, column: 11, scope: !2465)
!2486 = !DILocation(line: 882, column: 24, scope: !2465)
!2487 = !DILocation(line: 884, column: 9, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2465, file: !135, line: 884, column: 7)
!2489 = !DILocation(line: 884, column: 7, scope: !2465)
!2490 = !DILocation(line: 885, column: 5, scope: !2488)
!2491 = !DILocation(line: 887, column: 7, scope: !2477)
!2492 = !DILocation(line: 887, column: 14, scope: !2477)
!2493 = !DILocation(line: 887, column: 7, scope: !2465)
!2494 = !DILocation(line: 889, column: 31, scope: !2476)
!2495 = !DILocation(line: 0, scope: !2476)
!2496 = !DILocation(line: 892, column: 16, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2476, file: !135, line: 892, column: 11)
!2498 = !DILocation(line: 892, column: 11, scope: !2476)
!2499 = !DILocation(line: 893, column: 9, scope: !2497)
!2500 = !DILocation(line: 895, column: 32, scope: !2476)
!2501 = !DILocation(line: 895, column: 61, scope: !2476)
!2502 = !DILocation(line: 895, column: 66, scope: !2476)
!2503 = !DILocation(line: 895, column: 22, scope: !2476)
!2504 = !DILocation(line: 895, column: 15, scope: !2476)
!2505 = !DILocation(line: 896, column: 11, scope: !2476)
!2506 = !DILocation(line: 897, column: 15, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2476, file: !135, line: 896, column: 11)
!2508 = !{i64 0, i64 8, !955, i64 8, i64 8, !755}
!2509 = !DILocation(line: 897, column: 9, scope: !2507)
!2510 = !DILocation(line: 898, column: 20, scope: !2476)
!2511 = !DILocation(line: 898, column: 18, scope: !2476)
!2512 = !DILocation(line: 898, column: 15, scope: !2476)
!2513 = !DILocation(line: 898, column: 38, scope: !2476)
!2514 = !DILocation(line: 898, column: 31, scope: !2476)
!2515 = !DILocation(line: 898, column: 48, scope: !2476)
!2516 = !DILocation(line: 0, scope: !1911, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 898, column: 7, scope: !2476)
!2518 = !DILocation(line: 59, column: 10, scope: !1911, inlinedAt: !2517)
!2519 = !DILocation(line: 899, column: 14, scope: !2476)
!2520 = !DILocation(line: 900, column: 5, scope: !2476)
!2521 = !DILocation(line: 903, column: 19, scope: !2480)
!2522 = !DILocation(line: 903, column: 25, scope: !2480)
!2523 = !DILocation(line: 0, scope: !2480)
!2524 = !DILocation(line: 904, column: 23, scope: !2480)
!2525 = !DILocation(line: 906, column: 26, scope: !2480)
!2526 = !DILocation(line: 906, column: 32, scope: !2480)
!2527 = !DILocation(line: 908, column: 55, scope: !2480)
!2528 = !DILocation(line: 909, column: 46, scope: !2480)
!2529 = !DILocation(line: 910, column: 55, scope: !2480)
!2530 = !DILocation(line: 911, column: 55, scope: !2480)
!2531 = !DILocation(line: 907, column: 20, scope: !2480)
!2532 = !DILocation(line: 913, column: 14, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2480, file: !135, line: 913, column: 9)
!2534 = !DILocation(line: 913, column: 9, scope: !2480)
!2535 = !DILocation(line: 915, column: 35, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2533, file: !135, line: 914, column: 7)
!2537 = !DILocation(line: 915, column: 20, scope: !2536)
!2538 = !DILocation(line: 916, column: 17, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !135, line: 916, column: 13)
!2540 = !DILocation(line: 916, column: 13, scope: !2536)
!2541 = !DILocation(line: 917, column: 11, scope: !2539)
!2542 = !DILocation(line: 0, scope: !2382, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 918, column: 27, scope: !2536)
!2544 = !DILocation(line: 218, column: 10, scope: !2382, inlinedAt: !2543)
!2545 = !DILocation(line: 918, column: 19, scope: !2536)
!2546 = !DILocation(line: 919, column: 69, scope: !2536)
!2547 = !DILocation(line: 921, column: 44, scope: !2536)
!2548 = !DILocation(line: 922, column: 44, scope: !2536)
!2549 = !DILocation(line: 919, column: 9, scope: !2536)
!2550 = !DILocation(line: 923, column: 7, scope: !2536)
!2551 = !DILocation(line: 925, column: 11, scope: !2480)
!2552 = !DILocation(line: 926, column: 5, scope: !2480)
!2553 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !135, file: !135, line: 937, type: !2554, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!68, !70, !98, !57}
!2556 = !{!2557, !2558, !2559}
!2557 = !DILocalVariable(name: "n", arg: 1, scope: !2553, file: !135, line: 937, type: !70)
!2558 = !DILocalVariable(name: "arg", arg: 2, scope: !2553, file: !135, line: 937, type: !98)
!2559 = !DILocalVariable(name: "argsize", arg: 3, scope: !2553, file: !135, line: 937, type: !57)
!2560 = !DILocation(line: 0, scope: !2553)
!2561 = !DILocation(line: 939, column: 10, scope: !2553)
!2562 = !DILocation(line: 939, column: 3, scope: !2553)
!2563 = distinct !DISubprogram(name: "quotearg", scope: !135, file: !135, line: 943, type: !1249, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2564)
!2564 = !{!2565}
!2565 = !DILocalVariable(name: "arg", arg: 1, scope: !2563, file: !135, line: 943, type: !98)
!2566 = !DILocation(line: 0, scope: !2563)
!2567 = !DILocation(line: 0, scope: !2458, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 945, column: 10, scope: !2563)
!2569 = !DILocation(line: 933, column: 10, scope: !2458, inlinedAt: !2568)
!2570 = !DILocation(line: 945, column: 3, scope: !2563)
!2571 = distinct !DISubprogram(name: "quotearg_mem", scope: !135, file: !135, line: 949, type: !2572, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!68, !98, !57}
!2574 = !{!2575, !2576}
!2575 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !135, line: 949, type: !98)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2571, file: !135, line: 949, type: !57)
!2577 = !DILocation(line: 0, scope: !2571)
!2578 = !DILocation(line: 0, scope: !2553, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 951, column: 10, scope: !2571)
!2580 = !DILocation(line: 939, column: 10, scope: !2553, inlinedAt: !2579)
!2581 = !DILocation(line: 951, column: 3, scope: !2571)
!2582 = distinct !DISubprogram(name: "quotearg_n_style", scope: !135, file: !135, line: 955, type: !2583, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!68, !70, !5, !98}
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DILocalVariable(name: "n", arg: 1, scope: !2582, file: !135, line: 955, type: !70)
!2587 = !DILocalVariable(name: "s", arg: 2, scope: !2582, file: !135, line: 955, type: !5)
!2588 = !DILocalVariable(name: "arg", arg: 3, scope: !2582, file: !135, line: 955, type: !98)
!2589 = !DILocalVariable(name: "o", scope: !2582, file: !135, line: 957, type: !1519)
!2590 = !DILocation(line: 0, scope: !2582)
!2591 = !DILocation(line: 957, column: 3, scope: !2582)
!2592 = !DILocation(line: 957, column: 32, scope: !2582)
!2593 = !{!2594}
!2594 = distinct !{!2594, !2595, !"quoting_options_from_style: argument 0"}
!2595 = distinct !{!2595, !"quoting_options_from_style"}
!2596 = !DILocation(line: 957, column: 36, scope: !2582)
!2597 = !DILocalVariable(name: "style", arg: 1, scope: !2598, file: !135, line: 193, type: !5)
!2598 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !135, file: !135, line: 193, type: !2599, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!152, !5}
!2601 = !{!2597, !2602}
!2602 = !DILocalVariable(name: "o", scope: !2598, file: !135, line: 195, type: !152)
!2603 = !DILocation(line: 0, scope: !2598, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 957, column: 36, scope: !2582)
!2605 = !DILocation(line: 195, column: 26, scope: !2598, inlinedAt: !2604)
!2606 = !DILocation(line: 196, column: 13, scope: !2607, inlinedAt: !2604)
!2607 = distinct !DILexicalBlock(scope: !2598, file: !135, line: 196, column: 7)
!2608 = !DILocation(line: 196, column: 7, scope: !2598, inlinedAt: !2604)
!2609 = !DILocation(line: 197, column: 5, scope: !2607, inlinedAt: !2604)
!2610 = !DILocation(line: 198, column: 5, scope: !2598, inlinedAt: !2604)
!2611 = !DILocation(line: 198, column: 11, scope: !2598, inlinedAt: !2604)
!2612 = !DILocation(line: 958, column: 10, scope: !2582)
!2613 = !DILocation(line: 959, column: 1, scope: !2582)
!2614 = !DILocation(line: 958, column: 3, scope: !2582)
!2615 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !135, file: !135, line: 962, type: !2616, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!68, !70, !5, !98, !57}
!2618 = !{!2619, !2620, !2621, !2622, !2623}
!2619 = !DILocalVariable(name: "n", arg: 1, scope: !2615, file: !135, line: 962, type: !70)
!2620 = !DILocalVariable(name: "s", arg: 2, scope: !2615, file: !135, line: 962, type: !5)
!2621 = !DILocalVariable(name: "arg", arg: 3, scope: !2615, file: !135, line: 963, type: !98)
!2622 = !DILocalVariable(name: "argsize", arg: 4, scope: !2615, file: !135, line: 963, type: !57)
!2623 = !DILocalVariable(name: "o", scope: !2615, file: !135, line: 965, type: !1519)
!2624 = !DILocation(line: 0, scope: !2615)
!2625 = !DILocation(line: 965, column: 3, scope: !2615)
!2626 = !DILocation(line: 965, column: 32, scope: !2615)
!2627 = !{!2628}
!2628 = distinct !{!2628, !2629, !"quoting_options_from_style: argument 0"}
!2629 = distinct !{!2629, !"quoting_options_from_style"}
!2630 = !DILocation(line: 965, column: 36, scope: !2615)
!2631 = !DILocation(line: 0, scope: !2598, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 965, column: 36, scope: !2615)
!2633 = !DILocation(line: 195, column: 26, scope: !2598, inlinedAt: !2632)
!2634 = !DILocation(line: 196, column: 13, scope: !2607, inlinedAt: !2632)
!2635 = !DILocation(line: 196, column: 7, scope: !2598, inlinedAt: !2632)
!2636 = !DILocation(line: 197, column: 5, scope: !2607, inlinedAt: !2632)
!2637 = !DILocation(line: 198, column: 5, scope: !2598, inlinedAt: !2632)
!2638 = !DILocation(line: 198, column: 11, scope: !2598, inlinedAt: !2632)
!2639 = !DILocation(line: 966, column: 10, scope: !2615)
!2640 = !DILocation(line: 967, column: 1, scope: !2615)
!2641 = !DILocation(line: 966, column: 3, scope: !2615)
!2642 = distinct !DISubprogram(name: "quotearg_style", scope: !135, file: !135, line: 970, type: !2643, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!68, !5, !98}
!2645 = !{!2646, !2647}
!2646 = !DILocalVariable(name: "s", arg: 1, scope: !2642, file: !135, line: 970, type: !5)
!2647 = !DILocalVariable(name: "arg", arg: 2, scope: !2642, file: !135, line: 970, type: !98)
!2648 = !DILocation(line: 0, scope: !2642)
!2649 = !DILocation(line: 0, scope: !2582, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 972, column: 10, scope: !2642)
!2651 = !DILocation(line: 957, column: 3, scope: !2582, inlinedAt: !2650)
!2652 = !DILocation(line: 957, column: 32, scope: !2582, inlinedAt: !2650)
!2653 = !{!2654}
!2654 = distinct !{!2654, !2655, !"quoting_options_from_style: argument 0"}
!2655 = distinct !{!2655, !"quoting_options_from_style"}
!2656 = !DILocation(line: 957, column: 36, scope: !2582, inlinedAt: !2650)
!2657 = !DILocation(line: 0, scope: !2598, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 957, column: 36, scope: !2582, inlinedAt: !2650)
!2659 = !DILocation(line: 195, column: 26, scope: !2598, inlinedAt: !2658)
!2660 = !DILocation(line: 196, column: 13, scope: !2607, inlinedAt: !2658)
!2661 = !DILocation(line: 196, column: 7, scope: !2598, inlinedAt: !2658)
!2662 = !DILocation(line: 197, column: 5, scope: !2607, inlinedAt: !2658)
!2663 = !DILocation(line: 198, column: 5, scope: !2598, inlinedAt: !2658)
!2664 = !DILocation(line: 198, column: 11, scope: !2598, inlinedAt: !2658)
!2665 = !DILocation(line: 958, column: 10, scope: !2582, inlinedAt: !2650)
!2666 = !DILocation(line: 959, column: 1, scope: !2582, inlinedAt: !2650)
!2667 = !DILocation(line: 972, column: 3, scope: !2642)
!2668 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !135, file: !135, line: 976, type: !2669, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!68, !5, !98, !57}
!2671 = !{!2672, !2673, !2674}
!2672 = !DILocalVariable(name: "s", arg: 1, scope: !2668, file: !135, line: 976, type: !5)
!2673 = !DILocalVariable(name: "arg", arg: 2, scope: !2668, file: !135, line: 976, type: !98)
!2674 = !DILocalVariable(name: "argsize", arg: 3, scope: !2668, file: !135, line: 976, type: !57)
!2675 = !DILocation(line: 0, scope: !2668)
!2676 = !DILocation(line: 0, scope: !2615, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 978, column: 10, scope: !2668)
!2678 = !DILocation(line: 965, column: 3, scope: !2615, inlinedAt: !2677)
!2679 = !DILocation(line: 965, column: 32, scope: !2615, inlinedAt: !2677)
!2680 = !{!2681}
!2681 = distinct !{!2681, !2682, !"quoting_options_from_style: argument 0"}
!2682 = distinct !{!2682, !"quoting_options_from_style"}
!2683 = !DILocation(line: 965, column: 36, scope: !2615, inlinedAt: !2677)
!2684 = !DILocation(line: 0, scope: !2598, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 965, column: 36, scope: !2615, inlinedAt: !2677)
!2686 = !DILocation(line: 195, column: 26, scope: !2598, inlinedAt: !2685)
!2687 = !DILocation(line: 196, column: 13, scope: !2607, inlinedAt: !2685)
!2688 = !DILocation(line: 196, column: 7, scope: !2598, inlinedAt: !2685)
!2689 = !DILocation(line: 197, column: 5, scope: !2607, inlinedAt: !2685)
!2690 = !DILocation(line: 198, column: 5, scope: !2598, inlinedAt: !2685)
!2691 = !DILocation(line: 198, column: 11, scope: !2598, inlinedAt: !2685)
!2692 = !DILocation(line: 966, column: 10, scope: !2615, inlinedAt: !2677)
!2693 = !DILocation(line: 967, column: 1, scope: !2615, inlinedAt: !2677)
!2694 = !DILocation(line: 978, column: 3, scope: !2668)
!2695 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !135, file: !135, line: 982, type: !2696, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!68, !98, !57, !69}
!2698 = !{!2699, !2700, !2701, !2702}
!2699 = !DILocalVariable(name: "arg", arg: 1, scope: !2695, file: !135, line: 982, type: !98)
!2700 = !DILocalVariable(name: "argsize", arg: 2, scope: !2695, file: !135, line: 982, type: !57)
!2701 = !DILocalVariable(name: "ch", arg: 3, scope: !2695, file: !135, line: 982, type: !69)
!2702 = !DILocalVariable(name: "options", scope: !2695, file: !135, line: 984, type: !152)
!2703 = !DILocation(line: 0, scope: !2695)
!2704 = !DILocation(line: 984, column: 3, scope: !2695)
!2705 = !DILocation(line: 984, column: 26, scope: !2695)
!2706 = !DILocation(line: 985, column: 13, scope: !2695)
!2707 = !{i64 0, i64 4, !983, i64 4, i64 4, !947, i64 8, i64 32, !983, i64 40, i64 8, !755, i64 48, i64 8, !755}
!2708 = !DILocation(line: 0, scope: !1539, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 986, column: 3, scope: !2695)
!2710 = !DILocation(line: 156, column: 62, scope: !1539, inlinedAt: !2709)
!2711 = !DILocation(line: 156, column: 57, scope: !1539, inlinedAt: !2709)
!2712 = !DILocation(line: 157, column: 15, scope: !1539, inlinedAt: !2709)
!2713 = !DILocation(line: 158, column: 12, scope: !1539, inlinedAt: !2709)
!2714 = !DILocation(line: 158, column: 15, scope: !1539, inlinedAt: !2709)
!2715 = !DILocation(line: 158, column: 25, scope: !1539, inlinedAt: !2709)
!2716 = !DILocation(line: 159, column: 18, scope: !1539, inlinedAt: !2709)
!2717 = !DILocation(line: 159, column: 23, scope: !1539, inlinedAt: !2709)
!2718 = !DILocation(line: 159, column: 6, scope: !1539, inlinedAt: !2709)
!2719 = !DILocation(line: 987, column: 10, scope: !2695)
!2720 = !DILocation(line: 988, column: 1, scope: !2695)
!2721 = !DILocation(line: 987, column: 3, scope: !2695)
!2722 = distinct !DISubprogram(name: "quotearg_char", scope: !135, file: !135, line: 991, type: !2723, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!68, !98, !69}
!2725 = !{!2726, !2727}
!2726 = !DILocalVariable(name: "arg", arg: 1, scope: !2722, file: !135, line: 991, type: !98)
!2727 = !DILocalVariable(name: "ch", arg: 2, scope: !2722, file: !135, line: 991, type: !69)
!2728 = !DILocation(line: 0, scope: !2722)
!2729 = !DILocation(line: 0, scope: !2695, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 993, column: 10, scope: !2722)
!2731 = !DILocation(line: 984, column: 3, scope: !2695, inlinedAt: !2730)
!2732 = !DILocation(line: 984, column: 26, scope: !2695, inlinedAt: !2730)
!2733 = !DILocation(line: 985, column: 13, scope: !2695, inlinedAt: !2730)
!2734 = !DILocation(line: 0, scope: !1539, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 986, column: 3, scope: !2695, inlinedAt: !2730)
!2736 = !DILocation(line: 156, column: 62, scope: !1539, inlinedAt: !2735)
!2737 = !DILocation(line: 156, column: 57, scope: !1539, inlinedAt: !2735)
!2738 = !DILocation(line: 157, column: 15, scope: !1539, inlinedAt: !2735)
!2739 = !DILocation(line: 158, column: 12, scope: !1539, inlinedAt: !2735)
!2740 = !DILocation(line: 158, column: 15, scope: !1539, inlinedAt: !2735)
!2741 = !DILocation(line: 158, column: 25, scope: !1539, inlinedAt: !2735)
!2742 = !DILocation(line: 159, column: 18, scope: !1539, inlinedAt: !2735)
!2743 = !DILocation(line: 159, column: 23, scope: !1539, inlinedAt: !2735)
!2744 = !DILocation(line: 159, column: 6, scope: !1539, inlinedAt: !2735)
!2745 = !DILocation(line: 987, column: 10, scope: !2695, inlinedAt: !2730)
!2746 = !DILocation(line: 988, column: 1, scope: !2695, inlinedAt: !2730)
!2747 = !DILocation(line: 993, column: 3, scope: !2722)
!2748 = distinct !DISubprogram(name: "quotearg_colon", scope: !135, file: !135, line: 997, type: !1249, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2749)
!2749 = !{!2750}
!2750 = !DILocalVariable(name: "arg", arg: 1, scope: !2748, file: !135, line: 997, type: !98)
!2751 = !DILocation(line: 0, scope: !2748)
!2752 = !DILocation(line: 0, scope: !2722, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 999, column: 10, scope: !2748)
!2754 = !DILocation(line: 0, scope: !2695, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 993, column: 10, scope: !2722, inlinedAt: !2753)
!2756 = !DILocation(line: 984, column: 3, scope: !2695, inlinedAt: !2755)
!2757 = !DILocation(line: 984, column: 26, scope: !2695, inlinedAt: !2755)
!2758 = !DILocation(line: 985, column: 13, scope: !2695, inlinedAt: !2755)
!2759 = !DILocation(line: 0, scope: !1539, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 986, column: 3, scope: !2695, inlinedAt: !2755)
!2761 = !DILocation(line: 156, column: 57, scope: !1539, inlinedAt: !2760)
!2762 = !DILocation(line: 158, column: 12, scope: !1539, inlinedAt: !2760)
!2763 = !DILocation(line: 159, column: 6, scope: !1539, inlinedAt: !2760)
!2764 = !DILocation(line: 987, column: 10, scope: !2695, inlinedAt: !2755)
!2765 = !DILocation(line: 988, column: 1, scope: !2695, inlinedAt: !2755)
!2766 = !DILocation(line: 999, column: 3, scope: !2748)
!2767 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !135, file: !135, line: 1003, type: !2572, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2768)
!2768 = !{!2769, !2770}
!2769 = !DILocalVariable(name: "arg", arg: 1, scope: !2767, file: !135, line: 1003, type: !98)
!2770 = !DILocalVariable(name: "argsize", arg: 2, scope: !2767, file: !135, line: 1003, type: !57)
!2771 = !DILocation(line: 0, scope: !2767)
!2772 = !DILocation(line: 0, scope: !2695, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 1005, column: 10, scope: !2767)
!2774 = !DILocation(line: 984, column: 3, scope: !2695, inlinedAt: !2773)
!2775 = !DILocation(line: 984, column: 26, scope: !2695, inlinedAt: !2773)
!2776 = !DILocation(line: 985, column: 13, scope: !2695, inlinedAt: !2773)
!2777 = !DILocation(line: 0, scope: !1539, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 986, column: 3, scope: !2695, inlinedAt: !2773)
!2779 = !DILocation(line: 156, column: 57, scope: !1539, inlinedAt: !2778)
!2780 = !DILocation(line: 158, column: 12, scope: !1539, inlinedAt: !2778)
!2781 = !DILocation(line: 159, column: 6, scope: !1539, inlinedAt: !2778)
!2782 = !DILocation(line: 987, column: 10, scope: !2695, inlinedAt: !2773)
!2783 = !DILocation(line: 988, column: 1, scope: !2695, inlinedAt: !2773)
!2784 = !DILocation(line: 1005, column: 3, scope: !2767)
!2785 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !135, file: !135, line: 1009, type: !2583, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2786)
!2786 = !{!2787, !2788, !2789, !2790}
!2787 = !DILocalVariable(name: "n", arg: 1, scope: !2785, file: !135, line: 1009, type: !70)
!2788 = !DILocalVariable(name: "s", arg: 2, scope: !2785, file: !135, line: 1009, type: !5)
!2789 = !DILocalVariable(name: "arg", arg: 3, scope: !2785, file: !135, line: 1009, type: !98)
!2790 = !DILocalVariable(name: "options", scope: !2785, file: !135, line: 1011, type: !152)
!2791 = !DILocation(line: 195, column: 26, scope: !2598, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 1012, column: 13, scope: !2785)
!2793 = !DILocation(line: 0, scope: !2785)
!2794 = !DILocation(line: 1011, column: 3, scope: !2785)
!2795 = !DILocation(line: 1011, column: 26, scope: !2785)
!2796 = !DILocation(line: 1012, column: 13, scope: !2785)
!2797 = !{!2798}
!2798 = distinct !{!2798, !2799, !"quoting_options_from_style: argument 0"}
!2799 = distinct !{!2799, !"quoting_options_from_style"}
!2800 = !DILocation(line: 0, scope: !2598, inlinedAt: !2792)
!2801 = !DILocation(line: 196, column: 13, scope: !2607, inlinedAt: !2792)
!2802 = !DILocation(line: 196, column: 7, scope: !2598, inlinedAt: !2792)
!2803 = !DILocation(line: 197, column: 5, scope: !2607, inlinedAt: !2792)
!2804 = !{i64 0, i64 4, !947, i64 4, i64 32, !983, i64 36, i64 8, !755, i64 44, i64 8, !755}
!2805 = !DILocation(line: 0, scope: !1539, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 1013, column: 3, scope: !2785)
!2807 = !DILocation(line: 156, column: 57, scope: !1539, inlinedAt: !2806)
!2808 = !DILocation(line: 158, column: 12, scope: !1539, inlinedAt: !2806)
!2809 = !DILocation(line: 159, column: 6, scope: !1539, inlinedAt: !2806)
!2810 = !DILocation(line: 1014, column: 10, scope: !2785)
!2811 = !DILocation(line: 1015, column: 1, scope: !2785)
!2812 = !DILocation(line: 1014, column: 3, scope: !2785)
!2813 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !135, file: !135, line: 1018, type: !2814, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!68, !70, !98, !98, !98}
!2816 = !{!2817, !2818, !2819, !2820}
!2817 = !DILocalVariable(name: "n", arg: 1, scope: !2813, file: !135, line: 1018, type: !70)
!2818 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2813, file: !135, line: 1018, type: !98)
!2819 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2813, file: !135, line: 1019, type: !98)
!2820 = !DILocalVariable(name: "arg", arg: 4, scope: !2813, file: !135, line: 1019, type: !98)
!2821 = !DILocation(line: 0, scope: !2813)
!2822 = !DILocalVariable(name: "n", arg: 1, scope: !2823, file: !135, line: 1026, type: !70)
!2823 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !135, file: !135, line: 1026, type: !2824, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!68, !70, !98, !98, !98, !57}
!2826 = !{!2822, !2827, !2828, !2829, !2830, !2831}
!2827 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2823, file: !135, line: 1026, type: !98)
!2828 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2823, file: !135, line: 1027, type: !98)
!2829 = !DILocalVariable(name: "arg", arg: 4, scope: !2823, file: !135, line: 1028, type: !98)
!2830 = !DILocalVariable(name: "argsize", arg: 5, scope: !2823, file: !135, line: 1028, type: !57)
!2831 = !DILocalVariable(name: "o", scope: !2823, file: !135, line: 1030, type: !152)
!2832 = !DILocation(line: 0, scope: !2823, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 1021, column: 10, scope: !2813)
!2834 = !DILocation(line: 1030, column: 3, scope: !2823, inlinedAt: !2833)
!2835 = !DILocation(line: 1030, column: 26, scope: !2823, inlinedAt: !2833)
!2836 = !DILocation(line: 1030, column: 30, scope: !2823, inlinedAt: !2833)
!2837 = !DILocation(line: 0, scope: !1580, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 1031, column: 3, scope: !2823, inlinedAt: !2833)
!2839 = !DILocation(line: 184, column: 6, scope: !1580, inlinedAt: !2838)
!2840 = !DILocation(line: 184, column: 12, scope: !1580, inlinedAt: !2838)
!2841 = !DILocation(line: 185, column: 8, scope: !1594, inlinedAt: !2838)
!2842 = !DILocation(line: 185, column: 19, scope: !1594, inlinedAt: !2838)
!2843 = !DILocation(line: 186, column: 5, scope: !1594, inlinedAt: !2838)
!2844 = !DILocation(line: 187, column: 6, scope: !1580, inlinedAt: !2838)
!2845 = !DILocation(line: 187, column: 17, scope: !1580, inlinedAt: !2838)
!2846 = !DILocation(line: 188, column: 6, scope: !1580, inlinedAt: !2838)
!2847 = !DILocation(line: 188, column: 18, scope: !1580, inlinedAt: !2838)
!2848 = !DILocation(line: 1032, column: 10, scope: !2823, inlinedAt: !2833)
!2849 = !DILocation(line: 1033, column: 1, scope: !2823, inlinedAt: !2833)
!2850 = !DILocation(line: 1021, column: 3, scope: !2813)
!2851 = !DILocation(line: 0, scope: !2823)
!2852 = !DILocation(line: 1030, column: 3, scope: !2823)
!2853 = !DILocation(line: 1030, column: 26, scope: !2823)
!2854 = !DILocation(line: 1030, column: 30, scope: !2823)
!2855 = !DILocation(line: 0, scope: !1580, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 1031, column: 3, scope: !2823)
!2857 = !DILocation(line: 184, column: 6, scope: !1580, inlinedAt: !2856)
!2858 = !DILocation(line: 184, column: 12, scope: !1580, inlinedAt: !2856)
!2859 = !DILocation(line: 185, column: 8, scope: !1594, inlinedAt: !2856)
!2860 = !DILocation(line: 185, column: 19, scope: !1594, inlinedAt: !2856)
!2861 = !DILocation(line: 186, column: 5, scope: !1594, inlinedAt: !2856)
!2862 = !DILocation(line: 187, column: 6, scope: !1580, inlinedAt: !2856)
!2863 = !DILocation(line: 187, column: 17, scope: !1580, inlinedAt: !2856)
!2864 = !DILocation(line: 188, column: 6, scope: !1580, inlinedAt: !2856)
!2865 = !DILocation(line: 188, column: 18, scope: !1580, inlinedAt: !2856)
!2866 = !DILocation(line: 1032, column: 10, scope: !2823)
!2867 = !DILocation(line: 1033, column: 1, scope: !2823)
!2868 = !DILocation(line: 1032, column: 3, scope: !2823)
!2869 = distinct !DISubprogram(name: "quotearg_custom", scope: !135, file: !135, line: 1036, type: !2870, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!68, !98, !98, !98}
!2872 = !{!2873, !2874, !2875}
!2873 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2869, file: !135, line: 1036, type: !98)
!2874 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2869, file: !135, line: 1036, type: !98)
!2875 = !DILocalVariable(name: "arg", arg: 3, scope: !2869, file: !135, line: 1037, type: !98)
!2876 = !DILocation(line: 0, scope: !2869)
!2877 = !DILocation(line: 0, scope: !2813, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1039, column: 10, scope: !2869)
!2879 = !DILocation(line: 0, scope: !2823, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 1021, column: 10, scope: !2813, inlinedAt: !2878)
!2881 = !DILocation(line: 1030, column: 3, scope: !2823, inlinedAt: !2880)
!2882 = !DILocation(line: 1030, column: 26, scope: !2823, inlinedAt: !2880)
!2883 = !DILocation(line: 1030, column: 30, scope: !2823, inlinedAt: !2880)
!2884 = !DILocation(line: 0, scope: !1580, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1031, column: 3, scope: !2823, inlinedAt: !2880)
!2886 = !DILocation(line: 184, column: 6, scope: !1580, inlinedAt: !2885)
!2887 = !DILocation(line: 184, column: 12, scope: !1580, inlinedAt: !2885)
!2888 = !DILocation(line: 185, column: 8, scope: !1594, inlinedAt: !2885)
!2889 = !DILocation(line: 185, column: 19, scope: !1594, inlinedAt: !2885)
!2890 = !DILocation(line: 186, column: 5, scope: !1594, inlinedAt: !2885)
!2891 = !DILocation(line: 187, column: 6, scope: !1580, inlinedAt: !2885)
!2892 = !DILocation(line: 187, column: 17, scope: !1580, inlinedAt: !2885)
!2893 = !DILocation(line: 188, column: 6, scope: !1580, inlinedAt: !2885)
!2894 = !DILocation(line: 188, column: 18, scope: !1580, inlinedAt: !2885)
!2895 = !DILocation(line: 1032, column: 10, scope: !2823, inlinedAt: !2880)
!2896 = !DILocation(line: 1033, column: 1, scope: !2823, inlinedAt: !2880)
!2897 = !DILocation(line: 1039, column: 3, scope: !2869)
!2898 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !135, file: !135, line: 1043, type: !2899, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!68, !98, !98, !98, !57}
!2901 = !{!2902, !2903, !2904, !2905}
!2902 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2898, file: !135, line: 1043, type: !98)
!2903 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2898, file: !135, line: 1043, type: !98)
!2904 = !DILocalVariable(name: "arg", arg: 3, scope: !2898, file: !135, line: 1044, type: !98)
!2905 = !DILocalVariable(name: "argsize", arg: 4, scope: !2898, file: !135, line: 1044, type: !57)
!2906 = !DILocation(line: 0, scope: !2898)
!2907 = !DILocation(line: 0, scope: !2823, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 1046, column: 10, scope: !2898)
!2909 = !DILocation(line: 1030, column: 3, scope: !2823, inlinedAt: !2908)
!2910 = !DILocation(line: 1030, column: 26, scope: !2823, inlinedAt: !2908)
!2911 = !DILocation(line: 1030, column: 30, scope: !2823, inlinedAt: !2908)
!2912 = !DILocation(line: 0, scope: !1580, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 1031, column: 3, scope: !2823, inlinedAt: !2908)
!2914 = !DILocation(line: 184, column: 6, scope: !1580, inlinedAt: !2913)
!2915 = !DILocation(line: 184, column: 12, scope: !1580, inlinedAt: !2913)
!2916 = !DILocation(line: 185, column: 8, scope: !1594, inlinedAt: !2913)
!2917 = !DILocation(line: 185, column: 19, scope: !1594, inlinedAt: !2913)
!2918 = !DILocation(line: 186, column: 5, scope: !1594, inlinedAt: !2913)
!2919 = !DILocation(line: 187, column: 6, scope: !1580, inlinedAt: !2913)
!2920 = !DILocation(line: 187, column: 17, scope: !1580, inlinedAt: !2913)
!2921 = !DILocation(line: 188, column: 6, scope: !1580, inlinedAt: !2913)
!2922 = !DILocation(line: 188, column: 18, scope: !1580, inlinedAt: !2913)
!2923 = !DILocation(line: 1032, column: 10, scope: !2823, inlinedAt: !2908)
!2924 = !DILocation(line: 1033, column: 1, scope: !2823, inlinedAt: !2908)
!2925 = !DILocation(line: 1046, column: 3, scope: !2898)
!2926 = distinct !DISubprogram(name: "quote_n_mem", scope: !135, file: !135, line: 1061, type: !2927, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!98, !70, !98, !57}
!2929 = !{!2930, !2931, !2932}
!2930 = !DILocalVariable(name: "n", arg: 1, scope: !2926, file: !135, line: 1061, type: !70)
!2931 = !DILocalVariable(name: "arg", arg: 2, scope: !2926, file: !135, line: 1061, type: !98)
!2932 = !DILocalVariable(name: "argsize", arg: 3, scope: !2926, file: !135, line: 1061, type: !57)
!2933 = !DILocation(line: 0, scope: !2926)
!2934 = !DILocation(line: 1063, column: 10, scope: !2926)
!2935 = !DILocation(line: 1063, column: 3, scope: !2926)
!2936 = distinct !DISubprogram(name: "quote_mem", scope: !135, file: !135, line: 1067, type: !2937, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!98, !98, !57}
!2939 = !{!2940, !2941}
!2940 = !DILocalVariable(name: "arg", arg: 1, scope: !2936, file: !135, line: 1067, type: !98)
!2941 = !DILocalVariable(name: "argsize", arg: 2, scope: !2936, file: !135, line: 1067, type: !57)
!2942 = !DILocation(line: 0, scope: !2936)
!2943 = !DILocation(line: 0, scope: !2926, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 1069, column: 10, scope: !2936)
!2945 = !DILocation(line: 1063, column: 10, scope: !2926, inlinedAt: !2944)
!2946 = !DILocation(line: 1069, column: 3, scope: !2936)
!2947 = distinct !DISubprogram(name: "quote_n", scope: !135, file: !135, line: 1073, type: !2948, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!98, !70, !98}
!2950 = !{!2951, !2952}
!2951 = !DILocalVariable(name: "n", arg: 1, scope: !2947, file: !135, line: 1073, type: !70)
!2952 = !DILocalVariable(name: "arg", arg: 2, scope: !2947, file: !135, line: 1073, type: !98)
!2953 = !DILocation(line: 0, scope: !2947)
!2954 = !DILocation(line: 0, scope: !2926, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 1075, column: 10, scope: !2947)
!2956 = !DILocation(line: 1063, column: 10, scope: !2926, inlinedAt: !2955)
!2957 = !DILocation(line: 1075, column: 3, scope: !2947)
!2958 = distinct !DISubprogram(name: "quote", scope: !135, file: !135, line: 1079, type: !2959, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!98, !98}
!2961 = !{!2962}
!2962 = !DILocalVariable(name: "arg", arg: 1, scope: !2958, file: !135, line: 1079, type: !98)
!2963 = !DILocation(line: 0, scope: !2958)
!2964 = !DILocation(line: 0, scope: !2947, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 1081, column: 10, scope: !2958)
!2966 = !DILocation(line: 0, scope: !2926, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 1075, column: 10, scope: !2947, inlinedAt: !2965)
!2968 = !DILocation(line: 1063, column: 10, scope: !2926, inlinedAt: !2967)
!2969 = !DILocation(line: 1081, column: 3, scope: !2958)
!2970 = distinct !DISubprogram(name: "parse_user_spec", scope: !193, file: !193, line: 259, type: !2971, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !192, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!98, !98, !202, !203, !86, !86}
!2973 = !{!2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981}
!2974 = !DILocalVariable(name: "spec", arg: 1, scope: !2970, file: !193, line: 259, type: !98)
!2975 = !DILocalVariable(name: "uid", arg: 2, scope: !2970, file: !193, line: 259, type: !202)
!2976 = !DILocalVariable(name: "gid", arg: 3, scope: !2970, file: !193, line: 259, type: !203)
!2977 = !DILocalVariable(name: "username", arg: 4, scope: !2970, file: !193, line: 260, type: !86)
!2978 = !DILocalVariable(name: "groupname", arg: 5, scope: !2970, file: !193, line: 260, type: !86)
!2979 = !DILocalVariable(name: "colon", scope: !2970, file: !193, line: 262, type: !98)
!2980 = !DILocalVariable(name: "error_msg", scope: !2970, file: !193, line: 263, type: !98)
!2981 = !DILocalVariable(name: "dot", scope: !2982, file: !193, line: 274, type: !98)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !193, line: 267, column: 5)
!2983 = distinct !DILexicalBlock(scope: !2970, file: !193, line: 266, column: 7)
!2984 = !DILocation(line: 0, scope: !2970)
!2985 = !DILocation(line: 262, column: 23, scope: !2970)
!2986 = !DILocation(line: 262, column: 29, scope: !2970)
!2987 = !DILocation(line: 264, column: 5, scope: !2970)
!2988 = !DILocation(line: 266, column: 7, scope: !2983)
!2989 = !DILocation(line: 266, column: 11, scope: !2983)
!2990 = !DILocation(line: 274, column: 25, scope: !2982)
!2991 = !DILocation(line: 0, scope: !2982)
!2992 = !DILocation(line: 275, column: 11, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2982, file: !193, line: 275, column: 11)
!2994 = !DILocation(line: 276, column: 11, scope: !2993)
!2995 = !DILocation(line: 276, column: 16, scope: !2993)
!2996 = !DILocation(line: 275, column: 11, scope: !2982)
!2997 = !DILocation(line: 280, column: 3, scope: !2970)
!2998 = !DILocation(line: 0, scope: !199)
!2999 = !DILocation(line: 116, column: 16, scope: !199)
!3000 = !DILocation(line: 117, column: 16, scope: !199)
!3001 = !DILocation(line: 117, column: 22, scope: !199)
!3002 = !DILocation(line: 120, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !199, file: !193, line: 120, column: 7)
!3004 = !DILocation(line: 120, column: 7, scope: !199)
!3005 = !DILocation(line: 121, column: 15, scope: !3003)
!3006 = !DILocation(line: 121, column: 5, scope: !3003)
!3007 = !DILocation(line: 122, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !199, file: !193, line: 122, column: 7)
!3009 = !DILocation(line: 122, column: 7, scope: !199)
!3010 = !DILocation(line: 123, column: 16, scope: !3008)
!3011 = !DILocation(line: 123, column: 5, scope: !3008)
!3012 = !DILocation(line: 130, column: 17, scope: !239)
!3013 = !DILocation(line: 130, column: 7, scope: !199)
!3014 = !DILocation(line: 132, column: 11, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !193, line: 132, column: 11)
!3016 = distinct !DILexicalBlock(scope: !239, file: !193, line: 131, column: 5)
!3017 = !DILocation(line: 132, column: 11, scope: !3016)
!3018 = !DILocation(line: 133, column: 13, scope: !3015)
!3019 = !DILocation(line: 133, column: 9, scope: !3015)
!3020 = !DILocation(line: 137, column: 31, scope: !238)
!3021 = !DILocation(line: 0, scope: !238)
!3022 = !DILocation(line: 138, column: 16, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !238, file: !193, line: 138, column: 11)
!3024 = !DILocation(line: 138, column: 11, scope: !238)
!3025 = !DILocation(line: 140, column: 35, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3023, file: !193, line: 139, column: 9)
!3027 = !DILocation(line: 140, column: 15, scope: !3026)
!3028 = !DILocation(line: 141, column: 11, scope: !3026)
!3029 = !DILocation(line: 141, column: 19, scope: !3026)
!3030 = !DILocation(line: 142, column: 9, scope: !3026)
!3031 = !DILocation(line: 145, column: 41, scope: !199)
!3032 = !DILocation(line: 145, column: 29, scope: !199)
!3033 = !DILocation(line: 145, column: 46, scope: !199)
!3034 = !DILocation(line: 145, column: 8, scope: !199)
!3035 = !DILocation(line: 158, column: 9, scope: !244)
!3036 = !DILocation(line: 158, column: 7, scope: !199)
!3037 = !DILocation(line: 161, column: 14, scope: !243)
!3038 = !DILocation(line: 161, column: 17, scope: !243)
!3039 = !DILocation(line: 161, column: 33, scope: !243)
!3040 = !DILocation(line: 162, column: 15, scope: !242)
!3041 = !DILocation(line: 162, column: 11, scope: !243)
!3042 = !DILocation(line: 164, column: 45, scope: !241)
!3043 = !DILocation(line: 164, column: 53, scope: !241)
!3044 = !DILocation(line: 0, scope: !241)
!3045 = !DILocation(line: 165, column: 15, scope: !241)
!3046 = !DILocation(line: 173, column: 15, scope: !246)
!3047 = !DILocation(line: 0, scope: !246)
!3048 = !DILocation(line: 174, column: 19, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !246, file: !193, line: 174, column: 19)
!3050 = !DILocation(line: 174, column: 52, scope: !3049)
!3051 = !DILocation(line: 175, column: 19, scope: !3049)
!3052 = !DILocation(line: 179, column: 13, scope: !247)
!3053 = !DILocation(line: 183, column: 23, scope: !251)
!3054 = !{!1062, !948, i64 16}
!3055 = !DILocation(line: 184, column: 17, scope: !250)
!3056 = !DILocation(line: 184, column: 25, scope: !250)
!3057 = !DILocation(line: 188, column: 15, scope: !249)
!3058 = !DILocation(line: 188, column: 20, scope: !249)
!3059 = !DILocation(line: 189, column: 27, scope: !249)
!3060 = !DILocation(line: 190, column: 21, scope: !249)
!3061 = !DILocation(line: 191, column: 32, scope: !249)
!3062 = !DILocation(line: 191, column: 43, scope: !249)
!3063 = !{!1320, !756, i64 0}
!3064 = !DILocation(line: 191, column: 64, scope: !249)
!3065 = !DILocation(line: 191, column: 53, scope: !249)
!3066 = !DILocation(line: 191, column: 23, scope: !249)
!3067 = !DILocation(line: 192, column: 15, scope: !249)
!3068 = !DILocation(line: 193, column: 13, scope: !250)
!3069 = !DILocation(line: 193, column: 13, scope: !249)
!3070 = !DILocation(line: 195, column: 7, scope: !243)
!3071 = !DILocation(line: 196, column: 5, scope: !243)
!3072 = !DILocation(line: 115, column: 9, scope: !199)
!3073 = !DILocation(line: 116, column: 9, scope: !199)
!3074 = !DILocation(line: 117, column: 9, scope: !199)
!3075 = !DILocation(line: 198, column: 9, scope: !259)
!3076 = !DILocation(line: 198, column: 17, scope: !259)
!3077 = !DILocation(line: 202, column: 14, scope: !258)
!3078 = !DILocation(line: 202, column: 17, scope: !258)
!3079 = !DILocation(line: 202, column: 33, scope: !258)
!3080 = !DILocation(line: 203, column: 15, scope: !257)
!3081 = !DILocation(line: 203, column: 11, scope: !258)
!3082 = !DILocation(line: 205, column: 11, scope: !256)
!3083 = !DILocation(line: 0, scope: !256)
!3084 = !DILocation(line: 206, column: 15, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !256, file: !193, line: 206, column: 15)
!3086 = !DILocation(line: 206, column: 48, scope: !3085)
!3087 = !DILocation(line: 207, column: 15, scope: !3085)
!3088 = !DILocation(line: 211, column: 9, scope: !257)
!3089 = !DILocation(line: 211, column: 9, scope: !256)
!3090 = !DILocation(line: 213, column: 21, scope: !257)
!3091 = !DILocation(line: 0, scope: !257)
!3092 = !DILocation(line: 169, column: 25, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !247, file: !193, line: 166, column: 13)
!3094 = !DILocation(line: 214, column: 7, scope: !258)
!3095 = !DILocation(line: 215, column: 15, scope: !258)
!3096 = !DILocation(line: 216, column: 5, scope: !258)
!3097 = !DILocation(line: 218, column: 17, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !199, file: !193, line: 218, column: 7)
!3099 = !DILocation(line: 218, column: 7, scope: !199)
!3100 = !DILocation(line: 220, column: 12, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3098, file: !193, line: 219, column: 5)
!3102 = !DILocation(line: 221, column: 11, scope: !3101)
!3103 = !DILocation(line: 222, column: 14, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3101, file: !193, line: 221, column: 11)
!3105 = !DILocation(line: 222, column: 9, scope: !3104)
!3106 = !DILocation(line: 223, column: 11, scope: !3101)
!3107 = !DILocation(line: 225, column: 21, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !193, line: 224, column: 9)
!3109 = distinct !DILexicalBlock(scope: !3101, file: !193, line: 223, column: 11)
!3110 = !DILocation(line: 227, column: 9, scope: !3108)
!3111 = !DILocation(line: 228, column: 11, scope: !3101)
!3112 = !DILocation(line: 230, column: 22, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !193, line: 229, column: 9)
!3114 = distinct !DILexicalBlock(scope: !3101, file: !193, line: 228, column: 11)
!3115 = !DILocation(line: 232, column: 9, scope: !3113)
!3116 = !DILocation(line: 235, column: 3, scope: !199)
!3117 = !DILocation(line: 236, column: 3, scope: !199)
!3118 = !DILocation(line: 237, column: 10, scope: !199)
!3119 = !DILocation(line: 237, column: 22, scope: !199)
!3120 = !DILocation(line: 237, column: 3, scope: !199)
!3121 = !DISubprogram(name: "getpwnam", scope: !215, file: !215, line: 116, type: !3122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!213, !98}
!3124 = !DISubprogram(name: "getgrgid", scope: !80, file: !80, line: 101, type: !3125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!225, !7}
!3127 = !DISubprogram(name: "endgrent", scope: !80, file: !80, line: 67, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!3128 = !DISubprogram(name: "endpwent", scope: !215, file: !215, line: 78, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!3129 = distinct !DISubprogram(name: "version_etc_arn", scope: !265, file: !265, line: 61, type: !3130, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !3168)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3132, !98, !98, !98, !3167, !57}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3134, line: 7, baseType: !3135)
!3134 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3135, file: !830, line: 51, baseType: !70, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3135, file: !830, line: 54, baseType: !68, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3135, file: !830, line: 55, baseType: !68, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3135, file: !830, line: 56, baseType: !68, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3135, file: !830, line: 57, baseType: !68, size: 64, offset: 256)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3135, file: !830, line: 58, baseType: !68, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3135, file: !830, line: 59, baseType: !68, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3135, file: !830, line: 60, baseType: !68, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3135, file: !830, line: 61, baseType: !68, size: 64, offset: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3135, file: !830, line: 64, baseType: !68, size: 64, offset: 576)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3135, file: !830, line: 65, baseType: !68, size: 64, offset: 640)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3135, file: !830, line: 66, baseType: !68, size: 64, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3135, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3135, file: !830, line: 70, baseType: !3151, size: 64, offset: 832)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3135, file: !830, line: 72, baseType: !70, size: 32, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3135, file: !830, line: 73, baseType: !70, size: 32, offset: 928)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3135, file: !830, line: 74, baseType: !851, size: 64, offset: 960)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3135, file: !830, line: 77, baseType: !77, size: 16, offset: 1024)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3135, file: !830, line: 78, baseType: !854, size: 8, offset: 1040)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3135, file: !830, line: 79, baseType: !856, size: 8, offset: 1048)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3135, file: !830, line: 81, baseType: !860, size: 64, offset: 1088)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3135, file: !830, line: 89, baseType: !863, size: 64, offset: 1152)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3135, file: !830, line: 91, baseType: !865, size: 64, offset: 1216)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3135, file: !830, line: 92, baseType: !868, size: 64, offset: 1280)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3135, file: !830, line: 93, baseType: !3151, size: 64, offset: 1344)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3135, file: !830, line: 94, baseType: !55, size: 64, offset: 1408)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3135, file: !830, line: 95, baseType: !57, size: 64, offset: 1472)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3135, file: !830, line: 96, baseType: !70, size: 32, offset: 1536)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3135, file: !830, line: 98, baseType: !875, size: 160, offset: 1568)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3174}
!3169 = !DILocalVariable(name: "stream", arg: 1, scope: !3129, file: !265, line: 61, type: !3132)
!3170 = !DILocalVariable(name: "command_name", arg: 2, scope: !3129, file: !265, line: 62, type: !98)
!3171 = !DILocalVariable(name: "package", arg: 3, scope: !3129, file: !265, line: 62, type: !98)
!3172 = !DILocalVariable(name: "version", arg: 4, scope: !3129, file: !265, line: 63, type: !98)
!3173 = !DILocalVariable(name: "authors", arg: 5, scope: !3129, file: !265, line: 64, type: !3167)
!3174 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3129, file: !265, line: 64, type: !57)
!3175 = !DILocation(line: 0, scope: !3129)
!3176 = !DILocation(line: 66, column: 7, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3129, file: !265, line: 66, column: 7)
!3178 = !DILocation(line: 66, column: 7, scope: !3129)
!3179 = !DILocation(line: 67, column: 5, scope: !3177)
!3180 = !DILocation(line: 69, column: 5, scope: !3177)
!3181 = !DILocation(line: 83, column: 3, scope: !3129)
!3182 = !DILocation(line: 85, column: 3, scope: !3129)
!3183 = !DILocation(line: 88, column: 3, scope: !3129)
!3184 = !DILocation(line: 95, column: 3, scope: !3129)
!3185 = !DILocation(line: 97, column: 3, scope: !3129)
!3186 = !DILocation(line: 105, column: 7, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3129, file: !265, line: 98, column: 5)
!3188 = !DILocation(line: 106, column: 7, scope: !3187)
!3189 = !DILocation(line: 109, column: 7, scope: !3187)
!3190 = !DILocation(line: 110, column: 7, scope: !3187)
!3191 = !DILocation(line: 113, column: 7, scope: !3187)
!3192 = !DILocation(line: 115, column: 7, scope: !3187)
!3193 = !DILocation(line: 120, column: 7, scope: !3187)
!3194 = !DILocation(line: 122, column: 7, scope: !3187)
!3195 = !DILocation(line: 127, column: 7, scope: !3187)
!3196 = !DILocation(line: 129, column: 7, scope: !3187)
!3197 = !DILocation(line: 134, column: 7, scope: !3187)
!3198 = !DILocation(line: 137, column: 7, scope: !3187)
!3199 = !DILocation(line: 142, column: 7, scope: !3187)
!3200 = !DILocation(line: 145, column: 7, scope: !3187)
!3201 = !DILocation(line: 150, column: 7, scope: !3187)
!3202 = !DILocation(line: 154, column: 7, scope: !3187)
!3203 = !DILocation(line: 159, column: 7, scope: !3187)
!3204 = !DILocation(line: 163, column: 7, scope: !3187)
!3205 = !DILocation(line: 170, column: 7, scope: !3187)
!3206 = !DILocation(line: 174, column: 7, scope: !3187)
!3207 = !DILocation(line: 176, column: 1, scope: !3129)
!3208 = distinct !DISubprogram(name: "version_etc_ar", scope: !265, file: !265, line: 183, type: !3209, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !3132, !98, !98, !98, !3167}
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217}
!3212 = !DILocalVariable(name: "stream", arg: 1, scope: !3208, file: !265, line: 183, type: !3132)
!3213 = !DILocalVariable(name: "command_name", arg: 2, scope: !3208, file: !265, line: 184, type: !98)
!3214 = !DILocalVariable(name: "package", arg: 3, scope: !3208, file: !265, line: 184, type: !98)
!3215 = !DILocalVariable(name: "version", arg: 4, scope: !3208, file: !265, line: 185, type: !98)
!3216 = !DILocalVariable(name: "authors", arg: 5, scope: !3208, file: !265, line: 185, type: !3167)
!3217 = !DILocalVariable(name: "n_authors", scope: !3208, file: !265, line: 187, type: !57)
!3218 = !DILocation(line: 0, scope: !3208)
!3219 = !DILocation(line: 189, column: 8, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3208, file: !265, line: 189, column: 3)
!3221 = !DILocation(line: 0, scope: !3220)
!3222 = !DILocation(line: 189, column: 23, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3220, file: !265, line: 189, column: 3)
!3224 = !DILocation(line: 189, column: 3, scope: !3220)
!3225 = !DILocation(line: 189, column: 52, scope: !3223)
!3226 = distinct !{!3226, !3224, !3227, !800}
!3227 = !DILocation(line: 190, column: 5, scope: !3220)
!3228 = !DILocation(line: 191, column: 3, scope: !3208)
!3229 = !DILocation(line: 192, column: 1, scope: !3208)
!3230 = distinct !DISubprogram(name: "version_etc_va", scope: !265, file: !265, line: 199, type: !3231, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !3240)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !3132, !98, !98, !98, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3235)
!3235 = !{!3236, !3237, !3238, !3239}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3234, file: !265, line: 192, baseType: !7, size: 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3234, file: !265, line: 192, baseType: !7, size: 32, offset: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3234, file: !265, line: 192, baseType: !55, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3234, file: !265, line: 192, baseType: !55, size: 64, offset: 128)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247}
!3241 = !DILocalVariable(name: "stream", arg: 1, scope: !3230, file: !265, line: 199, type: !3132)
!3242 = !DILocalVariable(name: "command_name", arg: 2, scope: !3230, file: !265, line: 200, type: !98)
!3243 = !DILocalVariable(name: "package", arg: 3, scope: !3230, file: !265, line: 200, type: !98)
!3244 = !DILocalVariable(name: "version", arg: 4, scope: !3230, file: !265, line: 201, type: !98)
!3245 = !DILocalVariable(name: "authors", arg: 5, scope: !3230, file: !265, line: 201, type: !3233)
!3246 = !DILocalVariable(name: "n_authors", scope: !3230, file: !265, line: 203, type: !57)
!3247 = !DILocalVariable(name: "authtab", scope: !3230, file: !265, line: 204, type: !3248)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 640, elements: !148)
!3249 = !DILocation(line: 0, scope: !3230)
!3250 = !DILocation(line: 204, column: 3, scope: !3230)
!3251 = !DILocation(line: 204, column: 15, scope: !3230)
!3252 = !DILocation(line: 208, column: 35, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !265, line: 206, column: 3)
!3254 = distinct !DILexicalBlock(scope: !3230, file: !265, line: 206, column: 3)
!3255 = !DILocation(line: 208, column: 14, scope: !3253)
!3256 = !DILocation(line: 208, column: 33, scope: !3253)
!3257 = !DILocation(line: 208, column: 67, scope: !3253)
!3258 = !DILocation(line: 206, column: 3, scope: !3254)
!3259 = !DILocation(line: 0, scope: !3254)
!3260 = !DILocation(line: 211, column: 3, scope: !3230)
!3261 = !DILocation(line: 213, column: 1, scope: !3230)
!3262 = distinct !DISubprogram(name: "version_etc", scope: !265, file: !265, line: 230, type: !3263, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !3132, !98, !98, !98, null}
!3265 = !{!3266, !3267, !3268, !3269, !3270}
!3266 = !DILocalVariable(name: "stream", arg: 1, scope: !3262, file: !265, line: 230, type: !3132)
!3267 = !DILocalVariable(name: "command_name", arg: 2, scope: !3262, file: !265, line: 231, type: !98)
!3268 = !DILocalVariable(name: "package", arg: 3, scope: !3262, file: !265, line: 231, type: !98)
!3269 = !DILocalVariable(name: "version", arg: 4, scope: !3262, file: !265, line: 232, type: !98)
!3270 = !DILocalVariable(name: "authors", scope: !3262, file: !265, line: 234, type: !3271)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !825, line: 52, baseType: !3272)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3273, line: 32, baseType: !3274)
!3273 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !265, baseType: !3275)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3234, size: 192, elements: !857)
!3276 = !DILocation(line: 0, scope: !3262)
!3277 = !DILocation(line: 234, column: 3, scope: !3262)
!3278 = !DILocation(line: 234, column: 11, scope: !3262)
!3279 = !DILocation(line: 236, column: 3, scope: !3262)
!3280 = !DILocation(line: 237, column: 3, scope: !3262)
!3281 = !DILocation(line: 238, column: 3, scope: !3262)
!3282 = !DILocation(line: 239, column: 1, scope: !3262)
!3283 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !265, file: !265, line: 242, type: !1256, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !110)
!3284 = !DILocation(line: 244, column: 3, scope: !3283)
!3285 = !DILocation(line: 249, column: 3, scope: !3283)
!3286 = !DILocation(line: 255, column: 3, scope: !3283)
!3287 = !DILocation(line: 260, column: 3, scope: !3283)
!3288 = !DILocation(line: 262, column: 1, scope: !3283)
!3289 = distinct !DISubprogram(name: "xnmalloc", scope: !51, file: !51, line: 99, type: !3290, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!55, !57, !57}
!3292 = !{!3293, !3294}
!3293 = !DILocalVariable(name: "n", arg: 1, scope: !3289, file: !51, line: 99, type: !57)
!3294 = !DILocalVariable(name: "s", arg: 2, scope: !3289, file: !51, line: 99, type: !57)
!3295 = !DILocation(line: 0, scope: !3289)
!3296 = !DILocation(line: 101, column: 7, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3289, file: !51, line: 101, column: 7)
!3298 = !DILocation(line: 101, column: 7, scope: !3289)
!3299 = !DILocation(line: 102, column: 5, scope: !3297)
!3300 = !DILocation(line: 103, column: 21, scope: !3289)
!3301 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !272, line: 39, type: !57)
!3302 = distinct !DISubprogram(name: "xmalloc", scope: !272, file: !272, line: 39, type: !3303, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!55, !57}
!3305 = !{!3301, !3306}
!3306 = !DILocalVariable(name: "p", scope: !3302, file: !272, line: 41, type: !55)
!3307 = !DILocation(line: 0, scope: !3302, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 103, column: 10, scope: !3289)
!3309 = !DILocation(line: 41, column: 13, scope: !3302, inlinedAt: !3308)
!3310 = !DILocation(line: 42, column: 8, scope: !3311, inlinedAt: !3308)
!3311 = distinct !DILexicalBlock(scope: !3302, file: !272, line: 42, column: 7)
!3312 = !DILocation(line: 42, column: 10, scope: !3311, inlinedAt: !3308)
!3313 = !DILocation(line: 43, column: 5, scope: !3311, inlinedAt: !3308)
!3314 = !DILocation(line: 103, column: 3, scope: !3289)
!3315 = !DILocation(line: 0, scope: !3302)
!3316 = !DILocation(line: 41, column: 13, scope: !3302)
!3317 = !DILocation(line: 42, column: 8, scope: !3311)
!3318 = !DILocation(line: 42, column: 10, scope: !3311)
!3319 = !DILocation(line: 43, column: 5, scope: !3311)
!3320 = !DILocation(line: 44, column: 3, scope: !3302)
!3321 = distinct !DISubprogram(name: "xnrealloc", scope: !51, file: !51, line: 112, type: !3322, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!55, !55, !57, !57}
!3324 = !{!3325, !3326, !3327}
!3325 = !DILocalVariable(name: "p", arg: 1, scope: !3321, file: !51, line: 112, type: !55)
!3326 = !DILocalVariable(name: "n", arg: 2, scope: !3321, file: !51, line: 112, type: !57)
!3327 = !DILocalVariable(name: "s", arg: 3, scope: !3321, file: !51, line: 112, type: !57)
!3328 = !DILocation(line: 0, scope: !3321)
!3329 = !DILocation(line: 114, column: 7, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3321, file: !51, line: 114, column: 7)
!3331 = !DILocation(line: 114, column: 7, scope: !3321)
!3332 = !DILocation(line: 115, column: 5, scope: !3330)
!3333 = !DILocation(line: 116, column: 25, scope: !3321)
!3334 = !DILocalVariable(name: "p", arg: 1, scope: !3335, file: !272, line: 51, type: !55)
!3335 = distinct !DISubprogram(name: "xrealloc", scope: !272, file: !272, line: 51, type: !3336, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!55, !55, !57}
!3338 = !{!3334, !3339}
!3339 = !DILocalVariable(name: "n", arg: 2, scope: !3335, file: !272, line: 51, type: !57)
!3340 = !DILocation(line: 0, scope: !3335, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 116, column: 10, scope: !3321)
!3342 = !DILocation(line: 53, column: 8, scope: !3343, inlinedAt: !3341)
!3343 = distinct !DILexicalBlock(scope: !3335, file: !272, line: 53, column: 7)
!3344 = !DILocation(line: 53, column: 10, scope: !3343, inlinedAt: !3341)
!3345 = !DILocation(line: 57, column: 7, scope: !3346, inlinedAt: !3341)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !272, line: 54, column: 5)
!3347 = !DILocation(line: 58, column: 7, scope: !3346, inlinedAt: !3341)
!3348 = !DILocation(line: 61, column: 7, scope: !3335, inlinedAt: !3341)
!3349 = !DILocation(line: 62, column: 8, scope: !3350, inlinedAt: !3341)
!3350 = distinct !DILexicalBlock(scope: !3335, file: !272, line: 62, column: 7)
!3351 = !DILocation(line: 62, column: 10, scope: !3350, inlinedAt: !3341)
!3352 = !DILocation(line: 63, column: 5, scope: !3350, inlinedAt: !3341)
!3353 = !DILocation(line: 116, column: 3, scope: !3321)
!3354 = !DILocation(line: 0, scope: !3335)
!3355 = !DILocation(line: 53, column: 8, scope: !3343)
!3356 = !DILocation(line: 53, column: 10, scope: !3343)
!3357 = !DILocation(line: 57, column: 7, scope: !3346)
!3358 = !DILocation(line: 58, column: 7, scope: !3346)
!3359 = !DILocation(line: 61, column: 7, scope: !3335)
!3360 = !DILocation(line: 62, column: 8, scope: !3350)
!3361 = !DILocation(line: 62, column: 10, scope: !3350)
!3362 = !DILocation(line: 63, column: 5, scope: !3350)
!3363 = !DILocation(line: 65, column: 1, scope: !3335)
!3364 = !DILocation(line: 0, scope: !275)
!3365 = !DILocation(line: 176, column: 14, scope: !275)
!3366 = !DILocation(line: 178, column: 9, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !275, file: !51, line: 178, column: 7)
!3368 = !DILocation(line: 178, column: 7, scope: !275)
!3369 = !DILocation(line: 180, column: 13, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !51, line: 180, column: 11)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !51, line: 179, column: 5)
!3372 = !DILocation(line: 180, column: 11, scope: !3371)
!3373 = !DILocation(line: 188, column: 30, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !51, line: 181, column: 9)
!3375 = !DILocation(line: 189, column: 16, scope: !3374)
!3376 = !DILocation(line: 189, column: 13, scope: !3374)
!3377 = !DILocation(line: 190, column: 9, scope: !3374)
!3378 = !DILocation(line: 191, column: 11, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3371, file: !51, line: 191, column: 11)
!3380 = !DILocation(line: 191, column: 11, scope: !3371)
!3381 = !DILocation(line: 206, column: 7, scope: !275)
!3382 = !DILocation(line: 207, column: 25, scope: !275)
!3383 = !DILocation(line: 0, scope: !3335, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 207, column: 10, scope: !275)
!3385 = !DILocation(line: 53, column: 10, scope: !3343, inlinedAt: !3384)
!3386 = !DILocation(line: 192, column: 9, scope: !3379)
!3387 = !DILocation(line: 200, column: 69, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !51, line: 200, column: 11)
!3389 = distinct !DILexicalBlock(scope: !3367, file: !51, line: 195, column: 5)
!3390 = !DILocation(line: 201, column: 11, scope: !3388)
!3391 = !DILocation(line: 200, column: 11, scope: !3389)
!3392 = !DILocation(line: 202, column: 9, scope: !3388)
!3393 = !DILocation(line: 203, column: 14, scope: !3389)
!3394 = !DILocation(line: 203, column: 18, scope: !3389)
!3395 = !DILocation(line: 203, column: 9, scope: !3389)
!3396 = !DILocation(line: 53, column: 8, scope: !3343, inlinedAt: !3384)
!3397 = !DILocation(line: 57, column: 7, scope: !3346, inlinedAt: !3384)
!3398 = !DILocation(line: 58, column: 7, scope: !3346, inlinedAt: !3384)
!3399 = !DILocation(line: 61, column: 7, scope: !3335, inlinedAt: !3384)
!3400 = !DILocation(line: 62, column: 8, scope: !3350, inlinedAt: !3384)
!3401 = !DILocation(line: 62, column: 10, scope: !3350, inlinedAt: !3384)
!3402 = !DILocation(line: 63, column: 5, scope: !3350, inlinedAt: !3384)
!3403 = !DILocation(line: 207, column: 3, scope: !275)
!3404 = distinct !DISubprogram(name: "xcharalloc", scope: !51, file: !51, line: 216, type: !2383, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3405)
!3405 = !{!3406}
!3406 = !DILocalVariable(name: "n", arg: 1, scope: !3404, file: !51, line: 216, type: !57)
!3407 = !DILocation(line: 0, scope: !3404)
!3408 = !DILocation(line: 0, scope: !3302, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 218, column: 10, scope: !3404)
!3410 = !DILocation(line: 41, column: 13, scope: !3302, inlinedAt: !3409)
!3411 = !DILocation(line: 42, column: 8, scope: !3311, inlinedAt: !3409)
!3412 = !DILocation(line: 42, column: 10, scope: !3311, inlinedAt: !3409)
!3413 = !DILocation(line: 43, column: 5, scope: !3311, inlinedAt: !3409)
!3414 = !DILocation(line: 218, column: 3, scope: !3404)
!3415 = distinct !DISubprogram(name: "x2realloc", scope: !272, file: !272, line: 74, type: !3416, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!55, !55, !56}
!3418 = !{!3419, !3420}
!3419 = !DILocalVariable(name: "p", arg: 1, scope: !3415, file: !272, line: 74, type: !55)
!3420 = !DILocalVariable(name: "pn", arg: 2, scope: !3415, file: !272, line: 74, type: !56)
!3421 = !DILocation(line: 0, scope: !3415)
!3422 = !DILocation(line: 0, scope: !275, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 76, column: 10, scope: !3415)
!3424 = !DILocation(line: 176, column: 14, scope: !275, inlinedAt: !3423)
!3425 = !DILocation(line: 178, column: 9, scope: !3367, inlinedAt: !3423)
!3426 = !DILocation(line: 178, column: 7, scope: !275, inlinedAt: !3423)
!3427 = !DILocation(line: 180, column: 13, scope: !3370, inlinedAt: !3423)
!3428 = !DILocation(line: 180, column: 11, scope: !3371, inlinedAt: !3423)
!3429 = !DILocation(line: 191, column: 11, scope: !3379, inlinedAt: !3423)
!3430 = !DILocation(line: 191, column: 11, scope: !3371, inlinedAt: !3423)
!3431 = !DILocation(line: 192, column: 9, scope: !3379, inlinedAt: !3423)
!3432 = !DILocation(line: 201, column: 11, scope: !3388, inlinedAt: !3423)
!3433 = !DILocation(line: 200, column: 11, scope: !3389, inlinedAt: !3423)
!3434 = !DILocation(line: 202, column: 9, scope: !3388, inlinedAt: !3423)
!3435 = !DILocation(line: 203, column: 14, scope: !3389, inlinedAt: !3423)
!3436 = !DILocation(line: 203, column: 18, scope: !3389, inlinedAt: !3423)
!3437 = !DILocation(line: 203, column: 9, scope: !3389, inlinedAt: !3423)
!3438 = !DILocation(line: 0, scope: !3335, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 207, column: 10, scope: !275, inlinedAt: !3423)
!3440 = !DILocation(line: 53, column: 10, scope: !3343, inlinedAt: !3439)
!3441 = !DILocation(line: 206, column: 7, scope: !275, inlinedAt: !3423)
!3442 = !DILocation(line: 61, column: 7, scope: !3335, inlinedAt: !3439)
!3443 = !DILocation(line: 62, column: 8, scope: !3350, inlinedAt: !3439)
!3444 = !DILocation(line: 62, column: 10, scope: !3350, inlinedAt: !3439)
!3445 = !DILocation(line: 63, column: 5, scope: !3350, inlinedAt: !3439)
!3446 = !DILocation(line: 76, column: 3, scope: !3415)
!3447 = distinct !DISubprogram(name: "xzalloc", scope: !272, file: !272, line: 84, type: !3303, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3448)
!3448 = !{!3449}
!3449 = !DILocalVariable(name: "n", arg: 1, scope: !3447, file: !272, line: 84, type: !57)
!3450 = !DILocation(line: 0, scope: !3447)
!3451 = !DILocalVariable(name: "n", arg: 1, scope: !3452, file: !272, line: 93, type: !57)
!3452 = distinct !DISubprogram(name: "xcalloc", scope: !272, file: !272, line: 93, type: !3290, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3453)
!3453 = !{!3451, !3454, !3455}
!3454 = !DILocalVariable(name: "s", arg: 2, scope: !3452, file: !272, line: 93, type: !57)
!3455 = !DILocalVariable(name: "p", scope: !3452, file: !272, line: 95, type: !55)
!3456 = !DILocation(line: 0, scope: !3452, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 86, column: 10, scope: !3447)
!3458 = !DILocation(line: 100, column: 7, scope: !3459, inlinedAt: !3457)
!3459 = distinct !DILexicalBlock(scope: !3452, file: !272, line: 100, column: 7)
!3460 = !DILocation(line: 101, column: 7, scope: !3459, inlinedAt: !3457)
!3461 = !DILocation(line: 101, column: 18, scope: !3459, inlinedAt: !3457)
!3462 = !DILocation(line: 101, column: 16, scope: !3459, inlinedAt: !3457)
!3463 = !DILocation(line: 100, column: 7, scope: !3452, inlinedAt: !3457)
!3464 = !DILocation(line: 102, column: 5, scope: !3459, inlinedAt: !3457)
!3465 = !DILocation(line: 86, column: 3, scope: !3447)
!3466 = !DILocation(line: 0, scope: !3452)
!3467 = !DILocation(line: 100, column: 7, scope: !3459)
!3468 = !DILocation(line: 101, column: 7, scope: !3459)
!3469 = !DILocation(line: 101, column: 18, scope: !3459)
!3470 = !DILocation(line: 101, column: 16, scope: !3459)
!3471 = !DILocation(line: 100, column: 7, scope: !3452)
!3472 = !DILocation(line: 102, column: 5, scope: !3459)
!3473 = !DILocation(line: 103, column: 3, scope: !3452)
!3474 = distinct !DISubprogram(name: "xmemdup", scope: !272, file: !272, line: 111, type: !3475, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3479)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!55, !3477, !57}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3479 = !{!3480, !3481}
!3480 = !DILocalVariable(name: "p", arg: 1, scope: !3474, file: !272, line: 111, type: !3477)
!3481 = !DILocalVariable(name: "s", arg: 2, scope: !3474, file: !272, line: 111, type: !57)
!3482 = !DILocation(line: 0, scope: !3474)
!3483 = !DILocation(line: 0, scope: !3302, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 113, column: 18, scope: !3474)
!3485 = !DILocation(line: 41, column: 13, scope: !3302, inlinedAt: !3484)
!3486 = !DILocation(line: 42, column: 8, scope: !3311, inlinedAt: !3484)
!3487 = !DILocation(line: 42, column: 10, scope: !3311, inlinedAt: !3484)
!3488 = !DILocation(line: 43, column: 5, scope: !3311, inlinedAt: !3484)
!3489 = !DILocalVariable(name: "__dest", arg: 1, scope: !3490, file: !1912, line: 26, type: !3493)
!3490 = distinct !DISubprogram(name: "memcpy", scope: !1912, file: !1912, line: 26, type: !3491, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3495)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!55, !3493, !3494, !57}
!3493 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!3494 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3477)
!3495 = !{!3489, !3496, !3497}
!3496 = !DILocalVariable(name: "__src", arg: 2, scope: !3490, file: !1912, line: 26, type: !3494)
!3497 = !DILocalVariable(name: "__len", arg: 3, scope: !3490, file: !1912, line: 26, type: !57)
!3498 = !DILocation(line: 0, scope: !3490, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 113, column: 10, scope: !3474)
!3500 = !DILocation(line: 29, column: 10, scope: !3490, inlinedAt: !3499)
!3501 = !DILocation(line: 113, column: 3, scope: !3474)
!3502 = distinct !DISubprogram(name: "xstrdup", scope: !272, file: !272, line: 119, type: !1249, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !3503)
!3503 = !{!3504}
!3504 = !DILocalVariable(name: "string", arg: 1, scope: !3502, file: !272, line: 119, type: !98)
!3505 = !DILocation(line: 0, scope: !3502)
!3506 = !DILocation(line: 121, column: 27, scope: !3502)
!3507 = !DILocation(line: 121, column: 43, scope: !3502)
!3508 = !DILocation(line: 0, scope: !3474, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 121, column: 10, scope: !3502)
!3510 = !DILocation(line: 0, scope: !3302, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 113, column: 18, scope: !3474, inlinedAt: !3509)
!3512 = !DILocation(line: 41, column: 13, scope: !3302, inlinedAt: !3511)
!3513 = !DILocation(line: 42, column: 8, scope: !3311, inlinedAt: !3511)
!3514 = !DILocation(line: 42, column: 10, scope: !3311, inlinedAt: !3511)
!3515 = !DILocation(line: 43, column: 5, scope: !3311, inlinedAt: !3511)
!3516 = !DILocation(line: 0, scope: !3490, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 113, column: 10, scope: !3474, inlinedAt: !3509)
!3518 = !DILocation(line: 29, column: 10, scope: !3490, inlinedAt: !3517)
!3519 = !DILocation(line: 121, column: 3, scope: !3502)
!3520 = distinct !DISubprogram(name: "xalloc_die", scope: !283, file: !283, line: 32, type: !1256, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !110)
!3521 = !DILocation(line: 34, column: 10, scope: !3520)
!3522 = !DILocation(line: 34, column: 33, scope: !3520)
!3523 = !DILocation(line: 34, column: 3, scope: !3520)
!3524 = !DILocation(line: 40, column: 3, scope: !3520)
!3525 = distinct !DISubprogram(name: "xgetgroups", scope: !285, file: !285, line: 31, type: !701, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !284, retainedNodes: !3526)
!3526 = !{!3527, !3528, !3529, !3530}
!3527 = !DILocalVariable(name: "username", arg: 1, scope: !3525, file: !285, line: 31, type: !98)
!3528 = !DILocalVariable(name: "gid", arg: 2, scope: !3525, file: !285, line: 31, type: !75)
!3529 = !DILocalVariable(name: "groups", arg: 3, scope: !3525, file: !285, line: 31, type: !703)
!3530 = !DILocalVariable(name: "result", scope: !3525, file: !285, line: 33, type: !70)
!3531 = !DILocation(line: 0, scope: !3525)
!3532 = !DILocation(line: 33, column: 16, scope: !3525)
!3533 = !DILocation(line: 34, column: 14, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3525, file: !285, line: 34, column: 7)
!3535 = !DILocation(line: 34, column: 20, scope: !3534)
!3536 = !DILocation(line: 34, column: 23, scope: !3534)
!3537 = !DILocation(line: 34, column: 29, scope: !3534)
!3538 = !DILocation(line: 34, column: 7, scope: !3525)
!3539 = !DILocation(line: 35, column: 5, scope: !3534)
!3540 = !DILocation(line: 36, column: 3, scope: !3525)
!3541 = distinct !DISubprogram(name: "xstrtoul", scope: !3542, file: !3542, line: 76, type: !3543, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3547)
!3542 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!3545, !98, !86, !70, !3546, !98}
!3545 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !28, line: 38, baseType: !27)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3560, !3561, !3564, !3565}
!3548 = !DILocalVariable(name: "s", arg: 1, scope: !3541, file: !3542, line: 76, type: !98)
!3549 = !DILocalVariable(name: "ptr", arg: 2, scope: !3541, file: !3542, line: 76, type: !86)
!3550 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3541, file: !3542, line: 76, type: !70)
!3551 = !DILocalVariable(name: "val", arg: 4, scope: !3541, file: !3542, line: 77, type: !3546)
!3552 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3541, file: !3542, line: 77, type: !98)
!3553 = !DILocalVariable(name: "t_ptr", scope: !3541, file: !3542, line: 79, type: !68)
!3554 = !DILocalVariable(name: "p", scope: !3541, file: !3542, line: 80, type: !86)
!3555 = !DILocalVariable(name: "tmp", scope: !3541, file: !3542, line: 81, type: !59)
!3556 = !DILocalVariable(name: "err", scope: !3541, file: !3542, line: 82, type: !3545)
!3557 = !DILocalVariable(name: "q", scope: !3558, file: !3542, line: 92, type: !98)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !3542, line: 91, column: 5)
!3559 = distinct !DILexicalBlock(scope: !3541, file: !3542, line: 90, column: 7)
!3560 = !DILocalVariable(name: "ch", scope: !3558, file: !3542, line: 93, type: !1547)
!3561 = !DILocalVariable(name: "base", scope: !3562, file: !3542, line: 129, type: !70)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !3542, line: 128, column: 5)
!3563 = distinct !DILexicalBlock(scope: !3541, file: !3542, line: 127, column: 7)
!3564 = !DILocalVariable(name: "suffixes", scope: !3562, file: !3542, line: 130, type: !70)
!3565 = !DILocalVariable(name: "overflow", scope: !3562, file: !3542, line: 131, type: !3545)
!3566 = !DILocation(line: 0, scope: !3541)
!3567 = !DILocation(line: 79, column: 3, scope: !3541)
!3568 = !DILocation(line: 84, column: 3, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !3542, line: 84, column: 3)
!3570 = distinct !DILexicalBlock(scope: !3541, file: !3542, line: 84, column: 3)
!3571 = !DILocation(line: 86, column: 8, scope: !3541)
!3572 = !DILocation(line: 88, column: 3, scope: !3541)
!3573 = !DILocation(line: 88, column: 9, scope: !3541)
!3574 = !DILocation(line: 0, scope: !3558)
!3575 = !DILocation(line: 94, column: 7, scope: !3558)
!3576 = !DILocation(line: 94, column: 14, scope: !3558)
!3577 = !DILocation(line: 95, column: 15, scope: !3558)
!3578 = distinct !{!3578, !3575, !3579, !800}
!3579 = !DILocation(line: 95, column: 17, scope: !3558)
!3580 = !DILocation(line: 96, column: 14, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3558, file: !3542, line: 96, column: 11)
!3582 = !DILocation(line: 100, column: 9, scope: !3541)
!3583 = !DILocation(line: 102, column: 7, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3541, file: !3542, line: 102, column: 7)
!3585 = !DILocation(line: 102, column: 10, scope: !3584)
!3586 = !DILocation(line: 102, column: 7, scope: !3541)
!3587 = !DILocation(line: 106, column: 11, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3542, line: 106, column: 11)
!3589 = distinct !DILexicalBlock(scope: !3584, file: !3542, line: 103, column: 5)
!3590 = !DILocation(line: 106, column: 26, scope: !3588)
!3591 = !DILocation(line: 106, column: 29, scope: !3588)
!3592 = !DILocation(line: 106, column: 33, scope: !3588)
!3593 = !DILocation(line: 106, column: 36, scope: !3588)
!3594 = !DILocation(line: 106, column: 11, scope: !3589)
!3595 = !DILocation(line: 111, column: 12, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3584, file: !3542, line: 111, column: 12)
!3597 = !DILocation(line: 111, column: 12, scope: !3584)
!3598 = !DILocation(line: 116, column: 5, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3596, file: !3542, line: 112, column: 5)
!3600 = !DILocation(line: 121, column: 8, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3541, file: !3542, line: 121, column: 7)
!3602 = !DILocation(line: 121, column: 7, scope: !3541)
!3603 = !DILocation(line: 123, column: 12, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3601, file: !3542, line: 122, column: 5)
!3605 = !DILocation(line: 124, column: 7, scope: !3604)
!3606 = !DILocation(line: 127, column: 7, scope: !3563)
!3607 = !DILocation(line: 127, column: 11, scope: !3563)
!3608 = !DILocation(line: 127, column: 7, scope: !3541)
!3609 = !DILocation(line: 0, scope: !3562)
!3610 = !DILocation(line: 133, column: 12, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3562, file: !3542, line: 133, column: 11)
!3612 = !DILocation(line: 133, column: 11, scope: !3562)
!3613 = !DILocation(line: 135, column: 16, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3611, file: !3542, line: 134, column: 9)
!3615 = !DILocation(line: 136, column: 22, scope: !3614)
!3616 = !DILocation(line: 136, column: 11, scope: !3614)
!3617 = !DILocation(line: 139, column: 7, scope: !3562)
!3618 = !DILocation(line: 151, column: 15, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !3542, line: 151, column: 15)
!3620 = distinct !DILexicalBlock(scope: !3562, file: !3542, line: 140, column: 9)
!3621 = !DILocation(line: 151, column: 15, scope: !3620)
!3622 = !DILocation(line: 152, column: 21, scope: !3619)
!3623 = !DILocation(line: 152, column: 13, scope: !3619)
!3624 = !DILocation(line: 155, column: 21, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !3542, line: 155, column: 21)
!3626 = distinct !DILexicalBlock(scope: !3619, file: !3542, line: 153, column: 15)
!3627 = !DILocation(line: 155, column: 29, scope: !3625)
!3628 = !DILocation(line: 155, column: 21, scope: !3626)
!3629 = !DILocation(line: 163, column: 17, scope: !3626)
!3630 = !DILocation(line: 167, column: 7, scope: !3562)
!3631 = !DILocalVariable(name: "err", scope: !3632, file: !3542, line: 67, type: !3545)
!3632 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3542, file: !3542, line: 65, type: !3633, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!3545, !3546, !70, !70}
!3635 = !{!3636, !3637, !3638, !3631}
!3636 = !DILocalVariable(name: "x", arg: 1, scope: !3632, file: !3542, line: 65, type: !3546)
!3637 = !DILocalVariable(name: "base", arg: 2, scope: !3632, file: !3542, line: 65, type: !70)
!3638 = !DILocalVariable(name: "power", arg: 3, scope: !3632, file: !3542, line: 65, type: !70)
!3639 = !DILocation(line: 0, scope: !3632, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 221, column: 22, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3562, file: !3542, line: 168, column: 9)
!3642 = !DILocalVariable(name: "x", arg: 1, scope: !3643, file: !3542, line: 48, type: !3546)
!3643 = distinct !DISubprogram(name: "bkm_scale", scope: !3542, file: !3542, line: 48, type: !3644, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!3545, !3546, !70}
!3646 = !{!3642, !3647}
!3647 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3643, file: !3542, line: 48, type: !70)
!3648 = !DILocation(line: 0, scope: !3643, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 69, column: 12, scope: !3632, inlinedAt: !3640)
!3650 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3649)
!3651 = distinct !DILexicalBlock(scope: !3643, file: !3542, line: 55, column: 7)
!3652 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3649)
!3653 = !DILocation(line: 69, column: 9, scope: !3632, inlinedAt: !3640)
!3654 = !DILocation(line: 229, column: 11, scope: !3562)
!3655 = !DILocation(line: 0, scope: !3632, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 217, column: 22, scope: !3641)
!3657 = !DILocation(line: 0, scope: !3643, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 69, column: 12, scope: !3632, inlinedAt: !3656)
!3659 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3658)
!3660 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3658)
!3661 = !DILocation(line: 69, column: 9, scope: !3632, inlinedAt: !3656)
!3662 = !DILocation(line: 0, scope: !3632, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 204, column: 22, scope: !3641)
!3664 = !DILocation(line: 0, scope: !3643, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 69, column: 12, scope: !3632, inlinedAt: !3663)
!3666 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3665)
!3667 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3665)
!3668 = !DILocation(line: 69, column: 9, scope: !3632, inlinedAt: !3663)
!3669 = !DILocation(line: 0, scope: !3632, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 185, column: 22, scope: !3641)
!3671 = !DILocation(line: 0, scope: !3643, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 69, column: 12, scope: !3632, inlinedAt: !3670)
!3673 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3672)
!3674 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3672)
!3675 = !DILocation(line: 69, column: 9, scope: !3632, inlinedAt: !3670)
!3676 = !DILocation(line: 0, scope: !3643, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 170, column: 22, scope: !3641)
!3678 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3677)
!3679 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3677)
!3680 = !DILocation(line: 171, column: 11, scope: !3641)
!3681 = !DILocation(line: 0, scope: !3643, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 177, column: 22, scope: !3641)
!3683 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3682)
!3684 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3682)
!3685 = !DILocation(line: 178, column: 11, scope: !3641)
!3686 = !DILocation(line: 0, scope: !3632, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 190, column: 22, scope: !3641)
!3688 = !DILocation(line: 0, scope: !3643, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 69, column: 12, scope: !3632, inlinedAt: !3687)
!3690 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3689)
!3691 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3689)
!3692 = !DILocation(line: 69, column: 9, scope: !3632, inlinedAt: !3687)
!3693 = !DILocation(line: 0, scope: !3632, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 200, column: 22, scope: !3641)
!3695 = !DILocation(line: 0, scope: !3643, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 69, column: 12, scope: !3632, inlinedAt: !3694)
!3697 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3696)
!3698 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3696)
!3699 = !DILocation(line: 69, column: 9, scope: !3632, inlinedAt: !3694)
!3700 = !DILocation(line: 0, scope: !3632, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 209, column: 22, scope: !3641)
!3702 = !DILocation(line: 0, scope: !3643, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 69, column: 12, scope: !3632, inlinedAt: !3701)
!3704 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3703)
!3705 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3703)
!3706 = !DILocation(line: 69, column: 9, scope: !3632, inlinedAt: !3701)
!3707 = !DILocation(line: 0, scope: !3643, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 213, column: 22, scope: !3641)
!3709 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3708)
!3710 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3708)
!3711 = !DILocation(line: 214, column: 11, scope: !3641)
!3712 = !DILocation(line: 225, column: 16, scope: !3641)
!3713 = !DILocation(line: 226, column: 22, scope: !3641)
!3714 = !DILocation(line: 226, column: 11, scope: !3641)
!3715 = !DILocation(line: 0, scope: !3632, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 195, column: 22, scope: !3641)
!3717 = !DILocation(line: 0, scope: !3643, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 69, column: 12, scope: !3632, inlinedAt: !3716)
!3719 = !DILocation(line: 55, column: 39, scope: !3651, inlinedAt: !3718)
!3720 = !DILocation(line: 55, column: 7, scope: !3643, inlinedAt: !3718)
!3721 = !DILocation(line: 0, scope: !3641)
!3722 = !DILocation(line: 230, column: 10, scope: !3562)
!3723 = !DILocation(line: 231, column: 11, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3562, file: !3542, line: 231, column: 11)
!3725 = !DILocation(line: 231, column: 11, scope: !3562)
!3726 = !DILocation(line: 107, column: 13, scope: !3588)
!3727 = !DILocation(line: 82, column: 16, scope: !3541)
!3728 = !DILocation(line: 235, column: 8, scope: !3541)
!3729 = !DILocation(line: 236, column: 3, scope: !3541)
!3730 = !DILocation(line: 237, column: 1, scope: !3541)
!3731 = distinct !DISubprogram(name: "xstrtoumax", scope: !3542, file: !3542, line: 76, type: !3732, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3735)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!3545, !98, !86, !70, !3734, !98}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!3735 = !{!3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3748, !3749, !3752, !3753}
!3736 = !DILocalVariable(name: "s", arg: 1, scope: !3731, file: !3542, line: 76, type: !98)
!3737 = !DILocalVariable(name: "ptr", arg: 2, scope: !3731, file: !3542, line: 76, type: !86)
!3738 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3731, file: !3542, line: 76, type: !70)
!3739 = !DILocalVariable(name: "val", arg: 4, scope: !3731, file: !3542, line: 77, type: !3734)
!3740 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3731, file: !3542, line: 77, type: !98)
!3741 = !DILocalVariable(name: "t_ptr", scope: !3731, file: !3542, line: 79, type: !68)
!3742 = !DILocalVariable(name: "p", scope: !3731, file: !3542, line: 80, type: !86)
!3743 = !DILocalVariable(name: "tmp", scope: !3731, file: !3542, line: 81, type: !304)
!3744 = !DILocalVariable(name: "err", scope: !3731, file: !3542, line: 82, type: !3545)
!3745 = !DILocalVariable(name: "q", scope: !3746, file: !3542, line: 92, type: !98)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !3542, line: 91, column: 5)
!3747 = distinct !DILexicalBlock(scope: !3731, file: !3542, line: 90, column: 7)
!3748 = !DILocalVariable(name: "ch", scope: !3746, file: !3542, line: 93, type: !1547)
!3749 = !DILocalVariable(name: "base", scope: !3750, file: !3542, line: 129, type: !70)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3542, line: 128, column: 5)
!3751 = distinct !DILexicalBlock(scope: !3731, file: !3542, line: 127, column: 7)
!3752 = !DILocalVariable(name: "suffixes", scope: !3750, file: !3542, line: 130, type: !70)
!3753 = !DILocalVariable(name: "overflow", scope: !3750, file: !3542, line: 131, type: !3545)
!3754 = !DILocation(line: 0, scope: !3731)
!3755 = !DILocation(line: 79, column: 3, scope: !3731)
!3756 = !DILocation(line: 84, column: 3, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !3542, line: 84, column: 3)
!3758 = distinct !DILexicalBlock(scope: !3731, file: !3542, line: 84, column: 3)
!3759 = !DILocation(line: 86, column: 8, scope: !3731)
!3760 = !DILocation(line: 88, column: 3, scope: !3731)
!3761 = !DILocation(line: 88, column: 9, scope: !3731)
!3762 = !DILocation(line: 0, scope: !3746)
!3763 = !DILocation(line: 94, column: 7, scope: !3746)
!3764 = !DILocation(line: 94, column: 14, scope: !3746)
!3765 = !DILocation(line: 95, column: 15, scope: !3746)
!3766 = distinct !{!3766, !3763, !3767, !800}
!3767 = !DILocation(line: 95, column: 17, scope: !3746)
!3768 = !DILocation(line: 96, column: 14, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3746, file: !3542, line: 96, column: 11)
!3770 = !DILocation(line: 100, column: 9, scope: !3731)
!3771 = !DILocation(line: 102, column: 7, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3731, file: !3542, line: 102, column: 7)
!3773 = !DILocation(line: 102, column: 10, scope: !3772)
!3774 = !DILocation(line: 102, column: 7, scope: !3731)
!3775 = !DILocation(line: 106, column: 11, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !3542, line: 106, column: 11)
!3777 = distinct !DILexicalBlock(scope: !3772, file: !3542, line: 103, column: 5)
!3778 = !DILocation(line: 106, column: 26, scope: !3776)
!3779 = !DILocation(line: 106, column: 29, scope: !3776)
!3780 = !DILocation(line: 106, column: 33, scope: !3776)
!3781 = !DILocation(line: 106, column: 36, scope: !3776)
!3782 = !DILocation(line: 106, column: 11, scope: !3777)
!3783 = !DILocation(line: 111, column: 12, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3772, file: !3542, line: 111, column: 12)
!3785 = !DILocation(line: 111, column: 12, scope: !3772)
!3786 = !DILocation(line: 116, column: 5, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3784, file: !3542, line: 112, column: 5)
!3788 = !DILocation(line: 121, column: 8, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3731, file: !3542, line: 121, column: 7)
!3790 = !DILocation(line: 121, column: 7, scope: !3731)
!3791 = !DILocation(line: 123, column: 12, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3789, file: !3542, line: 122, column: 5)
!3793 = !DILocation(line: 124, column: 7, scope: !3792)
!3794 = !DILocation(line: 127, column: 7, scope: !3751)
!3795 = !DILocation(line: 127, column: 11, scope: !3751)
!3796 = !DILocation(line: 127, column: 7, scope: !3731)
!3797 = !DILocation(line: 0, scope: !3750)
!3798 = !DILocation(line: 133, column: 12, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3750, file: !3542, line: 133, column: 11)
!3800 = !DILocation(line: 133, column: 11, scope: !3750)
!3801 = !DILocation(line: 135, column: 16, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3799, file: !3542, line: 134, column: 9)
!3803 = !DILocation(line: 136, column: 22, scope: !3802)
!3804 = !DILocation(line: 136, column: 11, scope: !3802)
!3805 = !DILocation(line: 139, column: 7, scope: !3750)
!3806 = !DILocation(line: 151, column: 15, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !3542, line: 151, column: 15)
!3808 = distinct !DILexicalBlock(scope: !3750, file: !3542, line: 140, column: 9)
!3809 = !DILocation(line: 151, column: 15, scope: !3808)
!3810 = !DILocation(line: 152, column: 21, scope: !3807)
!3811 = !DILocation(line: 152, column: 13, scope: !3807)
!3812 = !DILocation(line: 155, column: 21, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3814, file: !3542, line: 155, column: 21)
!3814 = distinct !DILexicalBlock(scope: !3807, file: !3542, line: 153, column: 15)
!3815 = !DILocation(line: 155, column: 29, scope: !3813)
!3816 = !DILocation(line: 155, column: 21, scope: !3814)
!3817 = !DILocation(line: 163, column: 17, scope: !3814)
!3818 = !DILocation(line: 167, column: 7, scope: !3750)
!3819 = !DILocalVariable(name: "err", scope: !3820, file: !3542, line: 67, type: !3545)
!3820 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3542, file: !3542, line: 65, type: !3821, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!3545, !3734, !70, !70}
!3823 = !{!3824, !3825, !3826, !3819}
!3824 = !DILocalVariable(name: "x", arg: 1, scope: !3820, file: !3542, line: 65, type: !3734)
!3825 = !DILocalVariable(name: "base", arg: 2, scope: !3820, file: !3542, line: 65, type: !70)
!3826 = !DILocalVariable(name: "power", arg: 3, scope: !3820, file: !3542, line: 65, type: !70)
!3827 = !DILocation(line: 0, scope: !3820, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 221, column: 22, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3750, file: !3542, line: 168, column: 9)
!3830 = !DILocalVariable(name: "x", arg: 1, scope: !3831, file: !3542, line: 48, type: !3734)
!3831 = distinct !DISubprogram(name: "bkm_scale", scope: !3542, file: !3542, line: 48, type: !3832, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!3545, !3734, !70}
!3834 = !{!3830, !3835}
!3835 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3831, file: !3542, line: 48, type: !70)
!3836 = !DILocation(line: 0, scope: !3831, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 69, column: 12, scope: !3820, inlinedAt: !3828)
!3838 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3837)
!3839 = distinct !DILexicalBlock(scope: !3831, file: !3542, line: 55, column: 7)
!3840 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3837)
!3841 = !DILocation(line: 69, column: 9, scope: !3820, inlinedAt: !3828)
!3842 = !DILocation(line: 229, column: 11, scope: !3750)
!3843 = !DILocation(line: 0, scope: !3820, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 217, column: 22, scope: !3829)
!3845 = !DILocation(line: 0, scope: !3831, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 69, column: 12, scope: !3820, inlinedAt: !3844)
!3847 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3846)
!3848 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3846)
!3849 = !DILocation(line: 69, column: 9, scope: !3820, inlinedAt: !3844)
!3850 = !DILocation(line: 0, scope: !3820, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 204, column: 22, scope: !3829)
!3852 = !DILocation(line: 0, scope: !3831, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 69, column: 12, scope: !3820, inlinedAt: !3851)
!3854 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3853)
!3855 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3853)
!3856 = !DILocation(line: 69, column: 9, scope: !3820, inlinedAt: !3851)
!3857 = !DILocation(line: 0, scope: !3820, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 185, column: 22, scope: !3829)
!3859 = !DILocation(line: 0, scope: !3831, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 69, column: 12, scope: !3820, inlinedAt: !3858)
!3861 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3860)
!3862 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3860)
!3863 = !DILocation(line: 69, column: 9, scope: !3820, inlinedAt: !3858)
!3864 = !DILocation(line: 0, scope: !3831, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 170, column: 22, scope: !3829)
!3866 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3865)
!3867 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3865)
!3868 = !DILocation(line: 171, column: 11, scope: !3829)
!3869 = !DILocation(line: 0, scope: !3831, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 177, column: 22, scope: !3829)
!3871 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3870)
!3872 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3870)
!3873 = !DILocation(line: 178, column: 11, scope: !3829)
!3874 = !DILocation(line: 0, scope: !3820, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 190, column: 22, scope: !3829)
!3876 = !DILocation(line: 0, scope: !3831, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 69, column: 12, scope: !3820, inlinedAt: !3875)
!3878 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3877)
!3879 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3877)
!3880 = !DILocation(line: 69, column: 9, scope: !3820, inlinedAt: !3875)
!3881 = !DILocation(line: 0, scope: !3820, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 200, column: 22, scope: !3829)
!3883 = !DILocation(line: 0, scope: !3831, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 69, column: 12, scope: !3820, inlinedAt: !3882)
!3885 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3884)
!3886 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3884)
!3887 = !DILocation(line: 69, column: 9, scope: !3820, inlinedAt: !3882)
!3888 = !DILocation(line: 0, scope: !3820, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 209, column: 22, scope: !3829)
!3890 = !DILocation(line: 0, scope: !3831, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 69, column: 12, scope: !3820, inlinedAt: !3889)
!3892 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3891)
!3893 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3891)
!3894 = !DILocation(line: 69, column: 9, scope: !3820, inlinedAt: !3889)
!3895 = !DILocation(line: 0, scope: !3831, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 213, column: 22, scope: !3829)
!3897 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3896)
!3898 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3896)
!3899 = !DILocation(line: 214, column: 11, scope: !3829)
!3900 = !DILocation(line: 225, column: 16, scope: !3829)
!3901 = !DILocation(line: 226, column: 22, scope: !3829)
!3902 = !DILocation(line: 226, column: 11, scope: !3829)
!3903 = !DILocation(line: 0, scope: !3820, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 195, column: 22, scope: !3829)
!3905 = !DILocation(line: 0, scope: !3831, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 69, column: 12, scope: !3820, inlinedAt: !3904)
!3907 = !DILocation(line: 55, column: 39, scope: !3839, inlinedAt: !3906)
!3908 = !DILocation(line: 55, column: 7, scope: !3831, inlinedAt: !3906)
!3909 = !DILocation(line: 0, scope: !3829)
!3910 = !DILocation(line: 230, column: 10, scope: !3750)
!3911 = !DILocation(line: 231, column: 11, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3750, file: !3542, line: 231, column: 11)
!3913 = !DILocation(line: 231, column: 11, scope: !3750)
!3914 = !DILocation(line: 107, column: 13, scope: !3776)
!3915 = !DILocation(line: 82, column: 16, scope: !3731)
!3916 = !DILocation(line: 235, column: 8, scope: !3731)
!3917 = !DILocation(line: 236, column: 3, scope: !3731)
!3918 = !DILocation(line: 237, column: 1, scope: !3731)
!3919 = !DISubprogram(name: "strtoumax", scope: !3920, file: !3920, line: 301, type: !3921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!3920 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!59, !98, !86, !70}
!3923 = distinct !DISubprogram(name: "rpl_calloc", scope: !293, file: !293, line: 42, type: !3290, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3924)
!3924 = !{!3925, !3926, !3927, !3928}
!3925 = !DILocalVariable(name: "n", arg: 1, scope: !3923, file: !293, line: 42, type: !57)
!3926 = !DILocalVariable(name: "s", arg: 2, scope: !3923, file: !293, line: 42, type: !57)
!3927 = !DILocalVariable(name: "result", scope: !3923, file: !293, line: 44, type: !55)
!3928 = !DILocalVariable(name: "bytes", scope: !3929, file: !293, line: 56, type: !57)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !293, line: 53, column: 5)
!3930 = distinct !DILexicalBlock(scope: !3923, file: !293, line: 47, column: 7)
!3931 = !DILocation(line: 0, scope: !3923)
!3932 = !DILocation(line: 47, column: 9, scope: !3930)
!3933 = !DILocation(line: 47, column: 14, scope: !3930)
!3934 = !DILocation(line: 0, scope: !3929)
!3935 = !DILocation(line: 57, column: 21, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3929, file: !293, line: 57, column: 11)
!3937 = !DILocation(line: 57, column: 11, scope: !3929)
!3938 = !DILocation(line: 59, column: 11, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3936, file: !293, line: 58, column: 9)
!3940 = !DILocation(line: 59, column: 17, scope: !3939)
!3941 = !DILocation(line: 65, column: 12, scope: !3923)
!3942 = !DILocation(line: 72, column: 3, scope: !3923)
!3943 = !DILocation(line: 73, column: 1, scope: !3923)
!3944 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !295, file: !295, line: 86, type: !3945, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3959)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!57, !3947, !98, !57, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1667, line: 6, baseType: !3950)
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1669, line: 21, baseType: !3951)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1669, line: 13, size: 64, elements: !3952)
!3952 = !{!3953, !3954}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3951, file: !1669, line: 15, baseType: !70, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3951, file: !1669, line: 20, baseType: !3955, size: 32, offset: 32)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3951, file: !1669, line: 16, size: 32, elements: !3956)
!3956 = !{!3957, !3958}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3955, file: !1669, line: 18, baseType: !7, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3955, file: !1669, line: 19, baseType: !1678, size: 32)
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965, !3966}
!3960 = !DILocalVariable(name: "pwc", arg: 1, scope: !3944, file: !295, line: 86, type: !3947)
!3961 = !DILocalVariable(name: "s", arg: 2, scope: !3944, file: !295, line: 86, type: !98)
!3962 = !DILocalVariable(name: "n", arg: 3, scope: !3944, file: !295, line: 86, type: !57)
!3963 = !DILocalVariable(name: "ps", arg: 4, scope: !3944, file: !295, line: 86, type: !3948)
!3964 = !DILocalVariable(name: "ret", scope: !3944, file: !295, line: 88, type: !57)
!3965 = !DILocalVariable(name: "wc", scope: !3944, file: !295, line: 89, type: !1683)
!3966 = !DILocalVariable(name: "uc", scope: !3967, file: !295, line: 156, type: !1547)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !295, line: 155, column: 5)
!3968 = distinct !DILexicalBlock(scope: !3944, file: !295, line: 154, column: 7)
!3969 = !DILocation(line: 0, scope: !3944)
!3970 = !DILocation(line: 89, column: 3, scope: !3944)
!3971 = !DILocation(line: 105, column: 9, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3944, file: !295, line: 105, column: 7)
!3973 = !DILocation(line: 105, column: 7, scope: !3944)
!3974 = !DILocation(line: 145, column: 9, scope: !3944)
!3975 = !DILocation(line: 154, column: 19, scope: !3968)
!3976 = !DILocation(line: 154, column: 26, scope: !3968)
!3977 = !DILocation(line: 154, column: 41, scope: !3968)
!3978 = !DILocation(line: 154, column: 7, scope: !3944)
!3979 = !DILocation(line: 156, column: 26, scope: !3967)
!3980 = !DILocation(line: 0, scope: !3967)
!3981 = !DILocation(line: 157, column: 14, scope: !3967)
!3982 = !DILocation(line: 157, column: 12, scope: !3967)
!3983 = !DILocation(line: 163, column: 1, scope: !3944)
!3984 = !DISubprogram(name: "mbrtowc", scope: !2343, file: !2343, line: 296, type: !3985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!59, !102, !98, !59, !3987}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3988 = distinct !DISubprogram(name: "close_stream", scope: !298, file: !298, line: 56, type: !3989, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4025)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!70, !3991}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3134, line: 7, baseType: !3993)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !3994)
!3994 = !{!3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3993, file: !830, line: 51, baseType: !70, size: 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3993, file: !830, line: 54, baseType: !68, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3993, file: !830, line: 55, baseType: !68, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3993, file: !830, line: 56, baseType: !68, size: 64, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3993, file: !830, line: 57, baseType: !68, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3993, file: !830, line: 58, baseType: !68, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3993, file: !830, line: 59, baseType: !68, size: 64, offset: 384)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3993, file: !830, line: 60, baseType: !68, size: 64, offset: 448)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3993, file: !830, line: 61, baseType: !68, size: 64, offset: 512)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3993, file: !830, line: 64, baseType: !68, size: 64, offset: 576)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3993, file: !830, line: 65, baseType: !68, size: 64, offset: 640)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3993, file: !830, line: 66, baseType: !68, size: 64, offset: 704)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3993, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3993, file: !830, line: 70, baseType: !4009, size: 64, offset: 832)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3993, file: !830, line: 72, baseType: !70, size: 32, offset: 896)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3993, file: !830, line: 73, baseType: !70, size: 32, offset: 928)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3993, file: !830, line: 74, baseType: !851, size: 64, offset: 960)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3993, file: !830, line: 77, baseType: !77, size: 16, offset: 1024)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3993, file: !830, line: 78, baseType: !854, size: 8, offset: 1040)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3993, file: !830, line: 79, baseType: !856, size: 8, offset: 1048)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3993, file: !830, line: 81, baseType: !860, size: 64, offset: 1088)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3993, file: !830, line: 89, baseType: !863, size: 64, offset: 1152)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3993, file: !830, line: 91, baseType: !865, size: 64, offset: 1216)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3993, file: !830, line: 92, baseType: !868, size: 64, offset: 1280)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3993, file: !830, line: 93, baseType: !4009, size: 64, offset: 1344)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3993, file: !830, line: 94, baseType: !55, size: 64, offset: 1408)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3993, file: !830, line: 95, baseType: !57, size: 64, offset: 1472)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3993, file: !830, line: 96, baseType: !70, size: 32, offset: 1536)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3993, file: !830, line: 98, baseType: !875, size: 160, offset: 1568)
!4025 = !{!4026, !4027, !4029, !4030}
!4026 = !DILocalVariable(name: "stream", arg: 1, scope: !3988, file: !298, line: 56, type: !3991)
!4027 = !DILocalVariable(name: "some_pending", scope: !3988, file: !298, line: 58, type: !4028)
!4028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!4029 = !DILocalVariable(name: "prev_fail", scope: !3988, file: !298, line: 59, type: !4028)
!4030 = !DILocalVariable(name: "fclose_fail", scope: !3988, file: !298, line: 60, type: !4028)
!4031 = !DILocation(line: 0, scope: !3988)
!4032 = !DILocation(line: 58, column: 30, scope: !3988)
!4033 = !DILocalVariable(name: "__stream", arg: 1, scope: !4034, file: !4035, line: 135, type: !3991)
!4034 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4035, file: !4035, line: 135, type: !3989, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4036)
!4035 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4036 = !{!4033}
!4037 = !DILocation(line: 0, scope: !4034, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 59, column: 27, scope: !3988)
!4039 = !DILocation(line: 137, column: 10, scope: !4034, inlinedAt: !4038)
!4040 = !{!4041, !948, i64 0}
!4041 = !{!"_IO_FILE", !948, i64 0, !756, i64 8, !756, i64 16, !756, i64 24, !756, i64 32, !756, i64 40, !756, i64 48, !756, i64 56, !756, i64 64, !756, i64 72, !756, i64 80, !756, i64 88, !756, i64 96, !756, i64 104, !948, i64 112, !948, i64 116, !956, i64 120, !1307, i64 128, !757, i64 130, !757, i64 131, !756, i64 136, !956, i64 144, !756, i64 152, !756, i64 160, !756, i64 168, !756, i64 176, !956, i64 184, !948, i64 192, !757, i64 196}
!4042 = !DILocation(line: 59, column: 43, scope: !3988)
!4043 = !DILocation(line: 60, column: 29, scope: !3988)
!4044 = !DILocation(line: 60, column: 45, scope: !3988)
!4045 = !DILocation(line: 70, column: 17, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3988, file: !298, line: 70, column: 7)
!4047 = !DILocation(line: 58, column: 50, scope: !3988)
!4048 = !DILocation(line: 70, column: 33, scope: !4046)
!4049 = !DILocation(line: 70, column: 53, scope: !4046)
!4050 = !DILocation(line: 70, column: 59, scope: !4046)
!4051 = !DILocation(line: 70, column: 7, scope: !3988)
!4052 = !DILocation(line: 72, column: 11, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4046, file: !298, line: 71, column: 5)
!4054 = !DILocation(line: 73, column: 9, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4053, file: !298, line: 72, column: 11)
!4056 = !DILocation(line: 73, column: 15, scope: !4055)
!4057 = !DILocation(line: 78, column: 1, scope: !3988)
!4058 = distinct !DISubprogram(name: "hard_locale", scope: !300, file: !300, line: 27, type: !4059, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!119, !70}
!4061 = !{!4062, !4063}
!4062 = !DILocalVariable(name: "category", arg: 1, scope: !4058, file: !300, line: 27, type: !70)
!4063 = !DILocalVariable(name: "locale", scope: !4058, file: !300, line: 29, type: !4064)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2056, elements: !4065)
!4065 = !{!4066}
!4066 = !DISubrange(count: 257)
!4067 = !DILocation(line: 0, scope: !4058)
!4068 = !DILocation(line: 29, column: 3, scope: !4058)
!4069 = !DILocation(line: 29, column: 8, scope: !4058)
!4070 = !DILocation(line: 31, column: 7, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4058, file: !300, line: 31, column: 7)
!4072 = !DILocation(line: 31, column: 7, scope: !4058)
!4073 = !DILocation(line: 34, column: 12, scope: !4058)
!4074 = !DILocation(line: 34, column: 38, scope: !4058)
!4075 = !DILocation(line: 34, column: 41, scope: !4058)
!4076 = !DILocation(line: 34, column: 66, scope: !4058)
!4077 = !DILocation(line: 35, column: 1, scope: !4058)
!4078 = distinct !DISubprogram(name: "umaxtostr", scope: !4079, file: !4079, line: 36, type: !4080, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !301, retainedNodes: !4082)
!4079 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!68, !304, !68}
!4082 = !{!4083, !4084, !4085}
!4083 = !DILocalVariable(name: "i", arg: 1, scope: !4078, file: !4079, line: 36, type: !304)
!4084 = !DILocalVariable(name: "buf", arg: 2, scope: !4078, file: !4079, line: 36, type: !68)
!4085 = !DILocalVariable(name: "p", scope: !4078, file: !4079, line: 38, type: !68)
!4086 = !DILocation(line: 0, scope: !4078)
!4087 = !DILocation(line: 38, column: 17, scope: !4078)
!4088 = !DILocation(line: 39, column: 6, scope: !4078)
!4089 = !DILocation(line: 52, column: 24, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !4079, line: 50, column: 5)
!4091 = distinct !DILexicalBlock(scope: !4078, file: !4079, line: 41, column: 7)
!4092 = !DILocation(line: 52, column: 16, scope: !4090)
!4093 = !DILocation(line: 52, column: 10, scope: !4090)
!4094 = !DILocation(line: 52, column: 14, scope: !4090)
!4095 = !DILocation(line: 53, column: 17, scope: !4090)
!4096 = !DILocation(line: 53, column: 24, scope: !4090)
!4097 = !DILocation(line: 52, column: 9, scope: !4090)
!4098 = distinct !{!4098, !4099, !4100, !800}
!4099 = !DILocation(line: 51, column: 7, scope: !4090)
!4100 = !DILocation(line: 53, column: 28, scope: !4090)
!4101 = !DILocation(line: 56, column: 3, scope: !4078)
!4102 = distinct !DISubprogram(name: "locale_charset", scope: !308, file: !308, line: 831, type: !4103, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !307, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!98}
!4105 = !{!4106}
!4106 = !DILocalVariable(name: "codeset", scope: !4102, file: !308, line: 833, type: !98)
!4107 = !DILocation(line: 847, column: 13, scope: !4102)
!4108 = !DILocation(line: 0, scope: !4102)
!4109 = !DILocation(line: 911, column: 15, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4102, file: !308, line: 911, column: 7)
!4111 = !DILocation(line: 911, column: 7, scope: !4102)
!4112 = !DILocation(line: 1070, column: 13, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !308, line: 1070, column: 13)
!4114 = distinct !DILexicalBlock(scope: !4115, file: !308, line: 1060, column: 7)
!4115 = distinct !DILexicalBlock(scope: !4102, file: !308, line: 1019, column: 3)
!4116 = !DILocation(line: 1070, column: 24, scope: !4113)
!4117 = !DILocation(line: 1070, column: 13, scope: !4114)
!4118 = !DILocation(line: 1158, column: 3, scope: !4102)
!4119 = !DISubprogram(name: "nl_langinfo", scope: !311, file: !311, line: 661, type: !4120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!68, !70}
!4122 = !DILocation(line: 0, scope: !700)
!4123 = !DILocation(line: 68, column: 3, scope: !700)
!4124 = !DILocation(line: 81, column: 7, scope: !714)
!4125 = !DILocation(line: 81, column: 7, scope: !700)
!4126 = !DILocation(line: 84, column: 20, scope: !713)
!4127 = !DILocalVariable(name: "g", arg: 1, scope: !4128, file: !697, line: 43, type: !203)
!4128 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !697, file: !697, line: 43, type: !4129, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4131)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!203, !203, !57}
!4131 = !{!4127, !4132}
!4132 = !DILocalVariable(name: "num", arg: 2, scope: !4128, file: !697, line: 43, type: !57)
!4133 = !DILocation(line: 0, scope: !4128, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 86, column: 11, scope: !713)
!4135 = !DILocation(line: 51, column: 10, scope: !4128, inlinedAt: !4134)
!4136 = !DILocation(line: 87, column: 13, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !713, file: !697, line: 87, column: 11)
!4138 = !DILocation(line: 87, column: 11, scope: !713)
!4139 = !DILocation(line: 93, column: 31, scope: !712)
!4140 = !DILocation(line: 86, column: 9, scope: !713)
!4141 = !DILocation(line: 0, scope: !712)
!4142 = !DILocation(line: 96, column: 16, scope: !712)
!4143 = !DILocation(line: 100, column: 18, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !712, file: !697, line: 100, column: 15)
!4145 = !DILocation(line: 100, column: 22, scope: !4144)
!4146 = !DILocation(line: 101, column: 26, scope: !4144)
!4147 = !DILocation(line: 101, column: 13, scope: !4144)
!4148 = !DILocation(line: 103, column: 41, scope: !718)
!4149 = !DILocation(line: 0, scope: !4128, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 103, column: 20, scope: !718)
!4151 = !DILocation(line: 45, column: 7, scope: !4152, inlinedAt: !4150)
!4152 = distinct !DILexicalBlock(scope: !4128, file: !697, line: 45, column: 7)
!4153 = !DILocation(line: 45, column: 7, scope: !4128, inlinedAt: !4150)
!4154 = !DILocation(line: 47, column: 7, scope: !4155, inlinedAt: !4150)
!4155 = distinct !DILexicalBlock(scope: !4152, file: !697, line: 46, column: 5)
!4156 = !DILocation(line: 47, column: 13, scope: !4155, inlinedAt: !4150)
!4157 = !DILocation(line: 103, column: 15, scope: !712)
!4158 = !DILocation(line: 51, column: 26, scope: !4128, inlinedAt: !4150)
!4159 = !DILocation(line: 51, column: 10, scope: !4128, inlinedAt: !4150)
!4160 = !DILocation(line: 103, column: 56, scope: !718)
!4161 = !DILocation(line: 105, column: 33, scope: !717)
!4162 = !DILocation(line: 0, scope: !717)
!4163 = !DILocation(line: 106, column: 15, scope: !717)
!4164 = !DILocation(line: 107, column: 21, scope: !717)
!4165 = !DILocation(line: 112, column: 17, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !712, file: !697, line: 112, column: 15)
!4167 = !DILocation(line: 112, column: 15, scope: !712)
!4168 = !DILocation(line: 114, column: 23, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4166, file: !697, line: 113, column: 13)
!4170 = !DILocation(line: 117, column: 15, scope: !4169)
!4171 = !DILocation(line: 126, column: 21, scope: !700)
!4172 = !DILocation(line: 124, column: 16, scope: !700)
!4173 = !DILocation(line: 131, column: 20, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !700, file: !697, line: 131, column: 7)
!4175 = !DILocation(line: 131, column: 7, scope: !700)
!4176 = !DILocation(line: 133, column: 11, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !697, line: 133, column: 11)
!4178 = distinct !DILexicalBlock(scope: !4174, file: !697, line: 132, column: 5)
!4179 = !DILocation(line: 133, column: 17, scope: !4177)
!4180 = !DILocation(line: 133, column: 27, scope: !4177)
!4181 = !DILocation(line: 0, scope: !4128, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 133, column: 35, scope: !4177)
!4183 = !DILocation(line: 51, column: 10, scope: !4128, inlinedAt: !4182)
!4184 = !DILocation(line: 133, column: 33, scope: !4177)
!4185 = !DILocation(line: 133, column: 11, scope: !4178)
!4186 = !DILocation(line: 135, column: 19, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4177, file: !697, line: 134, column: 9)
!4188 = !DILocation(line: 136, column: 14, scope: !4187)
!4189 = !DILocation(line: 137, column: 22, scope: !4187)
!4190 = !DILocation(line: 137, column: 11, scope: !4187)
!4191 = !DILocation(line: 142, column: 20, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !700, file: !697, line: 142, column: 7)
!4193 = !DILocation(line: 142, column: 25, scope: !4192)
!4194 = !DILocation(line: 143, column: 17, scope: !4192)
!4195 = !DILocation(line: 143, column: 5, scope: !4192)
!4196 = !DILocation(line: 144, column: 31, scope: !700)
!4197 = !DILocation(line: 0, scope: !4128, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 144, column: 7, scope: !700)
!4199 = !DILocation(line: 51, column: 26, scope: !4128, inlinedAt: !4198)
!4200 = !DILocation(line: 51, column: 10, scope: !4128, inlinedAt: !4198)
!4201 = !DILocation(line: 145, column: 9, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !700, file: !697, line: 145, column: 7)
!4203 = !DILocation(line: 145, column: 7, scope: !700)
!4204 = !DILocation(line: 150, column: 42, scope: !700)
!4205 = !DILocation(line: 150, column: 35, scope: !700)
!4206 = !DILocation(line: 151, column: 35, scope: !700)
!4207 = !DILocation(line: 150, column: 11, scope: !700)
!4208 = !DILocation(line: 153, column: 10, scope: !721)
!4209 = !DILocation(line: 153, column: 7, scope: !700)
!4210 = !DILocation(line: 156, column: 25, scope: !720)
!4211 = !DILocation(line: 0, scope: !720)
!4212 = !DILocation(line: 157, column: 7, scope: !720)
!4213 = !DILocation(line: 158, column: 13, scope: !720)
!4214 = !DILocation(line: 162, column: 17, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !700, file: !697, line: 162, column: 7)
!4216 = !DILocation(line: 164, column: 10, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4215, file: !697, line: 163, column: 5)
!4218 = !DILocation(line: 165, column: 9, scope: !4217)
!4219 = !DILocation(line: 166, column: 5, scope: !4217)
!4220 = !DILocation(line: 167, column: 11, scope: !700)
!4221 = !DILocation(line: 185, column: 9, scope: !724)
!4222 = !DILocation(line: 185, column: 7, scope: !700)
!4223 = !DILocation(line: 187, column: 21, scope: !723)
!4224 = !DILocation(line: 0, scope: !723)
!4225 = !DILocation(line: 189, column: 29, scope: !723)
!4226 = !DILocation(line: 0, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !723, file: !697, line: 191, column: 7)
!4228 = !DILocation(line: 191, column: 31, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4227, file: !697, line: 191, column: 7)
!4230 = !DILocation(line: 191, column: 7, scope: !4227)
!4231 = !DILocation(line: 193, column: 15, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !697, line: 193, column: 15)
!4233 = distinct !DILexicalBlock(scope: !4229, file: !697, line: 192, column: 9)
!4234 = !DILocation(line: 193, column: 30, scope: !4232)
!4235 = !DILocation(line: 196, column: 14, scope: !4232)
!4236 = !DILocation(line: 196, column: 18, scope: !4232)
!4237 = !DILocation(line: 194, column: 15, scope: !4232)
!4238 = !DILocation(line: 194, column: 13, scope: !4232)
!4239 = !DILocation(line: 193, column: 21, scope: !4232)
!4240 = !DILocation(line: 201, column: 1, scope: !700)
!4241 = distinct !{!4241, !4230, !4242, !800}
!4242 = !DILocation(line: 197, column: 9, scope: !4227)
!4243 = !DISubprogram(name: "getgrouplist", scope: !80, file: !80, line: 186, type: !4244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!70, !98, !7, !1549, !102}
!4246 = distinct !DISubprogram(name: "setlocale_null_r", scope: !731, file: !731, line: 269, type: !4247, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !4249)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!70, !70, !68, !57}
!4249 = !{!4250, !4251, !4252}
!4250 = !DILocalVariable(name: "category", arg: 1, scope: !4246, file: !731, line: 269, type: !70)
!4251 = !DILocalVariable(name: "buf", arg: 2, scope: !4246, file: !731, line: 269, type: !68)
!4252 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4246, file: !731, line: 269, type: !57)
!4253 = !DILocation(line: 0, scope: !4246)
!4254 = !DILocalVariable(name: "category", arg: 1, scope: !4255, file: !731, line: 91, type: !70)
!4255 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !731, file: !731, line: 91, type: !4247, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !4256)
!4256 = !{!4254, !4257, !4258, !4259, !4260}
!4257 = !DILocalVariable(name: "buf", arg: 2, scope: !4255, file: !731, line: 91, type: !68)
!4258 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4255, file: !731, line: 91, type: !57)
!4259 = !DILocalVariable(name: "result", scope: !4255, file: !731, line: 140, type: !98)
!4260 = !DILocalVariable(name: "length", scope: !4261, file: !731, line: 154, type: !57)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !731, line: 153, column: 5)
!4262 = distinct !DILexicalBlock(scope: !4255, file: !731, line: 142, column: 7)
!4263 = !DILocation(line: 0, scope: !4255, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 274, column: 10, scope: !4246)
!4265 = !DILocalVariable(name: "category", arg: 1, scope: !4266, file: !731, line: 60, type: !70)
!4266 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !731, file: !731, line: 60, type: !4267, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!98, !70}
!4269 = !{!4265, !4270}
!4270 = !DILocalVariable(name: "result", scope: !4266, file: !731, line: 62, type: !98)
!4271 = !DILocation(line: 0, scope: !4266, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 140, column: 24, scope: !4255, inlinedAt: !4264)
!4273 = !DILocation(line: 62, column: 24, scope: !4266, inlinedAt: !4272)
!4274 = !DILocation(line: 142, column: 14, scope: !4262, inlinedAt: !4264)
!4275 = !DILocation(line: 142, column: 7, scope: !4255, inlinedAt: !4264)
!4276 = !DILocation(line: 145, column: 19, scope: !4277, inlinedAt: !4264)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !731, line: 145, column: 11)
!4278 = distinct !DILexicalBlock(scope: !4262, file: !731, line: 143, column: 5)
!4279 = !DILocation(line: 145, column: 11, scope: !4278, inlinedAt: !4264)
!4280 = !DILocation(line: 149, column: 16, scope: !4277, inlinedAt: !4264)
!4281 = !DILocation(line: 149, column: 9, scope: !4277, inlinedAt: !4264)
!4282 = !DILocation(line: 154, column: 23, scope: !4261, inlinedAt: !4264)
!4283 = !DILocation(line: 0, scope: !4261, inlinedAt: !4264)
!4284 = !DILocation(line: 155, column: 18, scope: !4285, inlinedAt: !4264)
!4285 = distinct !DILexicalBlock(scope: !4261, file: !731, line: 155, column: 11)
!4286 = !DILocation(line: 155, column: 11, scope: !4261, inlinedAt: !4264)
!4287 = !DILocation(line: 157, column: 39, scope: !4288, inlinedAt: !4264)
!4288 = distinct !DILexicalBlock(scope: !4285, file: !731, line: 156, column: 9)
!4289 = !DILocalVariable(name: "__dest", arg: 1, scope: !4290, file: !1912, line: 26, type: !3493)
!4290 = distinct !DISubprogram(name: "memcpy", scope: !1912, file: !1912, line: 26, type: !3491, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !4291)
!4291 = !{!4289, !4292, !4293}
!4292 = !DILocalVariable(name: "__src", arg: 2, scope: !4290, file: !1912, line: 26, type: !3494)
!4293 = !DILocalVariable(name: "__len", arg: 3, scope: !4290, file: !1912, line: 26, type: !57)
!4294 = !DILocation(line: 0, scope: !4290, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 157, column: 11, scope: !4288, inlinedAt: !4264)
!4296 = !DILocation(line: 29, column: 10, scope: !4290, inlinedAt: !4295)
!4297 = !DILocation(line: 158, column: 11, scope: !4288, inlinedAt: !4264)
!4298 = !DILocation(line: 162, column: 23, scope: !4299, inlinedAt: !4264)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !731, line: 162, column: 15)
!4300 = distinct !DILexicalBlock(scope: !4285, file: !731, line: 161, column: 9)
!4301 = !DILocation(line: 162, column: 15, scope: !4300, inlinedAt: !4264)
!4302 = !DILocation(line: 167, column: 44, scope: !4303, inlinedAt: !4264)
!4303 = distinct !DILexicalBlock(scope: !4299, file: !731, line: 163, column: 13)
!4304 = !DILocation(line: 0, scope: !4290, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 167, column: 15, scope: !4303, inlinedAt: !4264)
!4306 = !DILocation(line: 29, column: 10, scope: !4290, inlinedAt: !4305)
!4307 = !DILocation(line: 168, column: 15, scope: !4303, inlinedAt: !4264)
!4308 = !DILocation(line: 168, column: 32, scope: !4303, inlinedAt: !4264)
!4309 = !DILocation(line: 169, column: 13, scope: !4303, inlinedAt: !4264)
!4310 = !DILocation(line: 0, scope: !4262, inlinedAt: !4264)
!4311 = !DILocation(line: 274, column: 3, scope: !4246)
!4312 = distinct !DISubprogram(name: "setlocale_null", scope: !731, file: !731, line: 301, type: !4267, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !4313)
!4313 = !{!4314}
!4314 = !DILocalVariable(name: "category", arg: 1, scope: !4312, file: !731, line: 301, type: !70)
!4315 = !DILocation(line: 0, scope: !4312)
!4316 = !DILocation(line: 0, scope: !4266, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 304, column: 10, scope: !4312)
!4318 = !DILocation(line: 62, column: 24, scope: !4266, inlinedAt: !4317)
!4319 = !DILocation(line: 304, column: 3, scope: !4312)
!4320 = distinct !DISubprogram(name: "rpl_fclose", scope: !733, file: !733, line: 58, type: !4321, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !4357)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!70, !4323}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3134, line: 7, baseType: !4325)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4325, file: !830, line: 51, baseType: !70, size: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4325, file: !830, line: 54, baseType: !68, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4325, file: !830, line: 55, baseType: !68, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4325, file: !830, line: 56, baseType: !68, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4325, file: !830, line: 57, baseType: !68, size: 64, offset: 256)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4325, file: !830, line: 58, baseType: !68, size: 64, offset: 320)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4325, file: !830, line: 59, baseType: !68, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4325, file: !830, line: 60, baseType: !68, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4325, file: !830, line: 61, baseType: !68, size: 64, offset: 512)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4325, file: !830, line: 64, baseType: !68, size: 64, offset: 576)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4325, file: !830, line: 65, baseType: !68, size: 64, offset: 640)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4325, file: !830, line: 66, baseType: !68, size: 64, offset: 704)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4325, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4325, file: !830, line: 70, baseType: !4341, size: 64, offset: 832)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4325, file: !830, line: 72, baseType: !70, size: 32, offset: 896)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4325, file: !830, line: 73, baseType: !70, size: 32, offset: 928)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4325, file: !830, line: 74, baseType: !851, size: 64, offset: 960)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4325, file: !830, line: 77, baseType: !77, size: 16, offset: 1024)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4325, file: !830, line: 78, baseType: !854, size: 8, offset: 1040)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4325, file: !830, line: 79, baseType: !856, size: 8, offset: 1048)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4325, file: !830, line: 81, baseType: !860, size: 64, offset: 1088)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4325, file: !830, line: 89, baseType: !863, size: 64, offset: 1152)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4325, file: !830, line: 91, baseType: !865, size: 64, offset: 1216)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4325, file: !830, line: 92, baseType: !868, size: 64, offset: 1280)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4325, file: !830, line: 93, baseType: !4341, size: 64, offset: 1344)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4325, file: !830, line: 94, baseType: !55, size: 64, offset: 1408)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4325, file: !830, line: 95, baseType: !57, size: 64, offset: 1472)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4325, file: !830, line: 96, baseType: !70, size: 32, offset: 1536)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4325, file: !830, line: 98, baseType: !875, size: 160, offset: 1568)
!4357 = !{!4358, !4359, !4360, !4361}
!4358 = !DILocalVariable(name: "fp", arg: 1, scope: !4320, file: !733, line: 58, type: !4323)
!4359 = !DILocalVariable(name: "saved_errno", scope: !4320, file: !733, line: 60, type: !70)
!4360 = !DILocalVariable(name: "fd", scope: !4320, file: !733, line: 61, type: !70)
!4361 = !DILocalVariable(name: "result", scope: !4320, file: !733, line: 62, type: !70)
!4362 = !DILocation(line: 0, scope: !4320)
!4363 = !DILocation(line: 65, column: 8, scope: !4320)
!4364 = !DILocation(line: 66, column: 10, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4320, file: !733, line: 66, column: 7)
!4366 = !DILocation(line: 66, column: 7, scope: !4320)
!4367 = !DILocation(line: 67, column: 12, scope: !4365)
!4368 = !DILocation(line: 67, column: 5, scope: !4365)
!4369 = !DILocation(line: 72, column: 9, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4320, file: !733, line: 72, column: 7)
!4371 = !DILocation(line: 72, column: 23, scope: !4370)
!4372 = !DILocation(line: 72, column: 33, scope: !4370)
!4373 = !DILocation(line: 72, column: 26, scope: !4370)
!4374 = !DILocation(line: 72, column: 59, scope: !4370)
!4375 = !DILocation(line: 73, column: 7, scope: !4370)
!4376 = !DILocation(line: 73, column: 10, scope: !4370)
!4377 = !DILocation(line: 72, column: 7, scope: !4320)
!4378 = !DILocation(line: 100, column: 12, scope: !4320)
!4379 = !DILocation(line: 105, column: 7, scope: !4320)
!4380 = !DILocation(line: 74, column: 19, scope: !4370)
!4381 = !DILocation(line: 105, column: 19, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4320, file: !733, line: 105, column: 7)
!4383 = !DILocation(line: 107, column: 13, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4382, file: !733, line: 106, column: 5)
!4385 = !DILocation(line: 109, column: 5, scope: !4384)
!4386 = !DILocation(line: 112, column: 1, scope: !4320)
!4387 = !DISubprogram(name: "fileno", scope: !825, file: !825, line: 785, type: !4388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!70, !4341}
!4390 = !DISubprogram(name: "fclose", scope: !825, file: !825, line: 213, type: !4388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!4391 = !DISubprogram(name: "lseek", scope: !88, file: !88, line: 334, type: !4392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!90, !70, !90, !70}
!4394 = distinct !DISubprogram(name: "rpl_fflush", scope: !735, file: !735, line: 129, type: !4395, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4431)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!70, !4397}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3134, line: 7, baseType: !4399)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4399, file: !830, line: 51, baseType: !70, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4399, file: !830, line: 54, baseType: !68, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4399, file: !830, line: 55, baseType: !68, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4399, file: !830, line: 56, baseType: !68, size: 64, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4399, file: !830, line: 57, baseType: !68, size: 64, offset: 256)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4399, file: !830, line: 58, baseType: !68, size: 64, offset: 320)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4399, file: !830, line: 59, baseType: !68, size: 64, offset: 384)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4399, file: !830, line: 60, baseType: !68, size: 64, offset: 448)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4399, file: !830, line: 61, baseType: !68, size: 64, offset: 512)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4399, file: !830, line: 64, baseType: !68, size: 64, offset: 576)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4399, file: !830, line: 65, baseType: !68, size: 64, offset: 640)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4399, file: !830, line: 66, baseType: !68, size: 64, offset: 704)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4399, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4399, file: !830, line: 70, baseType: !4415, size: 64, offset: 832)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4399, file: !830, line: 72, baseType: !70, size: 32, offset: 896)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4399, file: !830, line: 73, baseType: !70, size: 32, offset: 928)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4399, file: !830, line: 74, baseType: !851, size: 64, offset: 960)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4399, file: !830, line: 77, baseType: !77, size: 16, offset: 1024)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4399, file: !830, line: 78, baseType: !854, size: 8, offset: 1040)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4399, file: !830, line: 79, baseType: !856, size: 8, offset: 1048)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4399, file: !830, line: 81, baseType: !860, size: 64, offset: 1088)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4399, file: !830, line: 89, baseType: !863, size: 64, offset: 1152)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4399, file: !830, line: 91, baseType: !865, size: 64, offset: 1216)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4399, file: !830, line: 92, baseType: !868, size: 64, offset: 1280)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4399, file: !830, line: 93, baseType: !4415, size: 64, offset: 1344)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4399, file: !830, line: 94, baseType: !55, size: 64, offset: 1408)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4399, file: !830, line: 95, baseType: !57, size: 64, offset: 1472)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4399, file: !830, line: 96, baseType: !70, size: 32, offset: 1536)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4399, file: !830, line: 98, baseType: !875, size: 160, offset: 1568)
!4431 = !{!4432}
!4432 = !DILocalVariable(name: "stream", arg: 1, scope: !4394, file: !735, line: 129, type: !4397)
!4433 = !DILocation(line: 0, scope: !4394)
!4434 = !DILocation(line: 150, column: 14, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4394, file: !735, line: 150, column: 7)
!4436 = !DILocation(line: 150, column: 22, scope: !4435)
!4437 = !DILocation(line: 150, column: 27, scope: !4435)
!4438 = !DILocation(line: 150, column: 7, scope: !4394)
!4439 = !DILocation(line: 151, column: 12, scope: !4435)
!4440 = !DILocation(line: 151, column: 5, scope: !4435)
!4441 = !DILocalVariable(name: "fp", arg: 1, scope: !4442, file: !735, line: 41, type: !4397)
!4442 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !735, file: !735, line: 41, type: !4443, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4445)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !4397}
!4445 = !{!4441}
!4446 = !DILocation(line: 0, scope: !4442, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 156, column: 3, scope: !4394)
!4448 = !DILocation(line: 43, column: 11, scope: !4449, inlinedAt: !4447)
!4449 = distinct !DILexicalBlock(scope: !4442, file: !735, line: 43, column: 7)
!4450 = !DILocation(line: 43, column: 18, scope: !4449, inlinedAt: !4447)
!4451 = !DILocation(line: 43, column: 7, scope: !4442, inlinedAt: !4447)
!4452 = !DILocation(line: 45, column: 5, scope: !4449, inlinedAt: !4447)
!4453 = !DILocation(line: 158, column: 10, scope: !4394)
!4454 = !DILocation(line: 158, column: 3, scope: !4394)
!4455 = !DILocation(line: 235, column: 1, scope: !4394)
!4456 = !DISubprogram(name: "fflush", scope: !825, file: !825, line: 218, type: !4457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!70, !4415}
!4459 = distinct !DISubprogram(name: "rpl_fseeko", scope: !737, file: !737, line: 28, type: !4460, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !4497)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!70, !4462, !4496, !70}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3134, line: 7, baseType: !4464)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !830, line: 49, size: 1728, elements: !4465)
!4465 = !{!4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4464, file: !830, line: 51, baseType: !70, size: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4464, file: !830, line: 54, baseType: !68, size: 64, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4464, file: !830, line: 55, baseType: !68, size: 64, offset: 128)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4464, file: !830, line: 56, baseType: !68, size: 64, offset: 192)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4464, file: !830, line: 57, baseType: !68, size: 64, offset: 256)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4464, file: !830, line: 58, baseType: !68, size: 64, offset: 320)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4464, file: !830, line: 59, baseType: !68, size: 64, offset: 384)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4464, file: !830, line: 60, baseType: !68, size: 64, offset: 448)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4464, file: !830, line: 61, baseType: !68, size: 64, offset: 512)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4464, file: !830, line: 64, baseType: !68, size: 64, offset: 576)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4464, file: !830, line: 65, baseType: !68, size: 64, offset: 640)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4464, file: !830, line: 66, baseType: !68, size: 64, offset: 704)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4464, file: !830, line: 68, baseType: !845, size: 64, offset: 768)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4464, file: !830, line: 70, baseType: !4480, size: 64, offset: 832)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4464, file: !830, line: 72, baseType: !70, size: 32, offset: 896)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4464, file: !830, line: 73, baseType: !70, size: 32, offset: 928)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4464, file: !830, line: 74, baseType: !851, size: 64, offset: 960)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4464, file: !830, line: 77, baseType: !77, size: 16, offset: 1024)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4464, file: !830, line: 78, baseType: !854, size: 8, offset: 1040)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4464, file: !830, line: 79, baseType: !856, size: 8, offset: 1048)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4464, file: !830, line: 81, baseType: !860, size: 64, offset: 1088)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4464, file: !830, line: 89, baseType: !863, size: 64, offset: 1152)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4464, file: !830, line: 91, baseType: !865, size: 64, offset: 1216)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4464, file: !830, line: 92, baseType: !868, size: 64, offset: 1280)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4464, file: !830, line: 93, baseType: !4480, size: 64, offset: 1344)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4464, file: !830, line: 94, baseType: !55, size: 64, offset: 1408)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4464, file: !830, line: 95, baseType: !57, size: 64, offset: 1472)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4464, file: !830, line: 96, baseType: !70, size: 32, offset: 1536)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4464, file: !830, line: 98, baseType: !875, size: 160, offset: 1568)
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !825, line: 63, baseType: !851)
!4497 = !{!4498, !4499, !4500, !4501}
!4498 = !DILocalVariable(name: "fp", arg: 1, scope: !4459, file: !737, line: 28, type: !4462)
!4499 = !DILocalVariable(name: "offset", arg: 2, scope: !4459, file: !737, line: 28, type: !4496)
!4500 = !DILocalVariable(name: "whence", arg: 3, scope: !4459, file: !737, line: 28, type: !70)
!4501 = !DILocalVariable(name: "pos", scope: !4502, file: !737, line: 117, type: !4496)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !737, line: 113, column: 5)
!4503 = distinct !DILexicalBlock(scope: !4459, file: !737, line: 52, column: 7)
!4504 = !DILocation(line: 0, scope: !4459)
!4505 = !DILocation(line: 52, column: 11, scope: !4503)
!4506 = !{!4041, !756, i64 16}
!4507 = !DILocation(line: 52, column: 31, scope: !4503)
!4508 = !{!4041, !756, i64 8}
!4509 = !DILocation(line: 52, column: 24, scope: !4503)
!4510 = !DILocation(line: 53, column: 7, scope: !4503)
!4511 = !DILocation(line: 53, column: 14, scope: !4503)
!4512 = !{!4041, !756, i64 40}
!4513 = !DILocation(line: 53, column: 35, scope: !4503)
!4514 = !{!4041, !756, i64 32}
!4515 = !DILocation(line: 53, column: 28, scope: !4503)
!4516 = !DILocation(line: 54, column: 7, scope: !4503)
!4517 = !DILocation(line: 54, column: 14, scope: !4503)
!4518 = !{!4041, !756, i64 72}
!4519 = !DILocation(line: 54, column: 28, scope: !4503)
!4520 = !DILocation(line: 52, column: 7, scope: !4459)
!4521 = !DILocation(line: 117, column: 26, scope: !4502)
!4522 = !DILocation(line: 117, column: 19, scope: !4502)
!4523 = !DILocation(line: 0, scope: !4502)
!4524 = !DILocation(line: 118, column: 15, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4502, file: !737, line: 118, column: 11)
!4526 = !DILocation(line: 118, column: 11, scope: !4502)
!4527 = !DILocation(line: 129, column: 11, scope: !4502)
!4528 = !DILocation(line: 129, column: 18, scope: !4502)
!4529 = !DILocation(line: 130, column: 11, scope: !4502)
!4530 = !DILocation(line: 130, column: 19, scope: !4502)
!4531 = !{!4041, !956, i64 144}
!4532 = !DILocation(line: 161, column: 7, scope: !4502)
!4533 = !DILocation(line: 163, column: 10, scope: !4459)
!4534 = !DILocation(line: 163, column: 3, scope: !4459)
!4535 = !DILocation(line: 164, column: 1, scope: !4459)
!4536 = !DISubprogram(name: "fseeko", scope: !825, file: !825, line: 712, type: !4537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!70, !4480, !90, !70}
