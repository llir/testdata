; ModuleID = 'coreutils-8.30/src/chroot.bc'
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
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
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
@.str.54 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !112
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !117
@.str.57 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.58 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.59 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !121
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !128
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !135
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !147
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !154
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !166
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !173
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !180
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !168
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !182
@.str.3.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.2.96 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.1.97 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.99 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.100 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.101 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.102 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.103 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.104 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.105 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.106 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.107 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.108 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.109 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.110 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.111 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.114 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.115 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.116 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.117 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.118 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.119 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !188
@.str.1.132 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.138 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.139 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.149 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.155 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !748 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !753, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i32 %0, metadata !752, metadata !DIExpression()), !dbg !775
  %3 = icmp eq i32 %0, 0, !dbg !776
  br i1 %3, label %9, label %4, !dbg !777

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !778, !tbaa !780
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !778
  %7 = load i8*, i8** @program_name, align 8, !dbg !778, !tbaa !780
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !778
  br label %69, !dbg !778

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !784
  %11 = load i8*, i8** @program_name, align 8, !dbg !784, !tbaa !780
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #11, !dbg !784
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !785
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !785, !tbaa !780
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !785
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !786
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786, !tbaa !780
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !786
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !787
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !787, !tbaa !780
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !787
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !788
  %23 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !788
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i8* %23) #11, !dbg !788
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !789
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !789, !tbaa !780
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !789
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !790
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !790, !tbaa !780
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !790
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !791
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !791, !tbaa !780
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !791
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !792
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #11, !dbg !792
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %34, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !771
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !793
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !760, metadata !DIExpression()) #11, !dbg !794
  br label %36, !dbg !795

; <label>:36:                                     ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !760, metadata !DIExpression()) #11, !dbg !794
  %39 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %37) #14, !dbg !795
  %40 = icmp eq i32 %39, 0, !dbg !795
  br i1 %40, label %46, label %41, !dbg !796

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !797
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !760, metadata !DIExpression()) #11, !dbg !794
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !798
  %44 = load i8*, i8** %43, align 8, !dbg !798, !tbaa !799
  %45 = icmp eq i8* %44, null, !dbg !801
  br i1 %45, label %46, label %36, !dbg !802, !llvm.loop !803

; <label>:46:                                     ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !760, metadata !DIExpression()) #11, !dbg !794
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !760, metadata !DIExpression()) #11, !dbg !794
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !806
  %49 = load i8*, i8** %48, align 8, !dbg !806, !tbaa !808
  %50 = icmp eq i8* %49, null, !dbg !809
  %51 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %49, !dbg !810
  call void @llvm.dbg.value(metadata i8* %51, metadata !759, metadata !DIExpression()) #11, !dbg !811
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !812
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0)) #11, !dbg !812
  %54 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !813
  call void @llvm.dbg.value(metadata i8* %54, metadata !767, metadata !DIExpression()) #11, !dbg !814
  %55 = icmp eq i8* %54, null, !dbg !815
  br i1 %55, label %62, label %56, !dbg !817

; <label>:56:                                     ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #14, !dbg !818
  %58 = icmp eq i32 %57, 0, !dbg !818
  br i1 %58, label %62, label %59, !dbg !819

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !820
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !820
  br label %62, !dbg !822

; <label>:62:                                     ; preds = %46, %56, %59
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !823
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !823
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !824
  %66 = icmp eq i8* %51, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), !dbg !824
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !824
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* %51, i8* %67) #11, !dbg !824
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #11, !dbg !825
  br label %69

; <label>:69:                                     ; preds = %62, %4
  tail call void @exit(i32 %0) #15, !dbg !826
  unreachable, !dbg !826
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !827 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !831, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata i8** %1, metadata !832, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata i8* null, metadata !834, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* null, metadata !835, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i8* null, metadata !836, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8 0, metadata !837, metadata !DIExpression()), !dbg !894
  %8 = bitcast i32* %3 to i8*, !dbg !895
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #11, !dbg !895
  call void @llvm.dbg.value(metadata i32 -1, metadata !838, metadata !DIExpression()), !dbg !896
  store i32 -1, i32* %3, align 4, !dbg !896, !tbaa !897
  %9 = bitcast i32* %4 to i8*, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #11, !dbg !899
  call void @llvm.dbg.value(metadata i32 -1, metadata !839, metadata !DIExpression()), !dbg !900
  store i32 -1, i32* %4, align 4, !dbg !900, !tbaa !897
  %10 = bitcast i32** %5 to i8*, !dbg !901
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !901
  call void @llvm.dbg.value(metadata i32* null, metadata !840, metadata !DIExpression()), !dbg !902
  store i32* null, i32** %5, align 8, !dbg !902, !tbaa !780
  %11 = bitcast i64* %6 to i8*, !dbg !903
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #11, !dbg !903
  call void @llvm.dbg.value(metadata i64 0, metadata !841, metadata !DIExpression()), !dbg !904
  store i64 0, i64* %6, align 8, !dbg !904, !tbaa !905
  %12 = load i8*, i8** %1, align 8, !dbg !907, !tbaa !780
  tail call void @set_program_name(i8* %12) #11, !dbg !908
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !909
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !910
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !911
  call void @llvm.dbg.value(metadata i32 125, metadata !912, metadata !DIExpression()), !dbg !915
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !917, !tbaa !897
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !919
  br label %17, !dbg !920

; <label>:17:                                     ; preds = %24, %2
  %18 = phi i8 [ 0, %2 ], [ 1, %24 ]
  %19 = phi i8* [ null, %2 ], [ %22, %24 ]
  %20 = phi i8* [ null, %2 ], [ %25, %24 ]
  br label %21, !dbg !921

; <label>:21:                                     ; preds = %17, %38
  %22 = phi i8* [ %19, %17 ], [ %39, %38 ]
  %23 = phi i8* [ %20, %17 ], [ %25, %38 ]
  br label %24, !dbg !921

; <label>:24:                                     ; preds = %36, %21
  %25 = phi i8* [ %23, %21 ], [ %28, %36 ], !dbg !891
  call void @llvm.dbg.value(metadata i8* %25, metadata !834, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %22, metadata !836, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8 %18, metadata !837, metadata !DIExpression()), !dbg !894
  %26 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_opts, i64 0, i64 0), i32* null) #11, !dbg !921
  call void @llvm.dbg.value(metadata i32 %26, metadata !833, metadata !DIExpression()), !dbg !922
  switch i32 %26, label %44 [
    i32 -1, label %45
    i32 257, label %27
    i32 256, label %38
    i32 258, label %17
    i32 -130, label %40
    i32 -131, label %41
  ], !dbg !920, !llvm.loop !923

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** @optarg, align 8, !dbg !925, !tbaa !780
  call void @llvm.dbg.value(metadata i8* %28, metadata !834, metadata !DIExpression()), !dbg !891
  %29 = tail call i64 @strlen(i8* %28) #14, !dbg !926
  call void @llvm.dbg.value(metadata i64 %29, metadata !842, metadata !DIExpression()), !dbg !927
  %30 = icmp eq i64 %29, 0, !dbg !928
  br i1 %30, label %36, label %31, !dbg !930

; <label>:31:                                     ; preds = %27
  %32 = add i64 %29, -1, !dbg !931
  %33 = getelementptr inbounds i8, i8* %28, i64 %32, !dbg !932
  %34 = load i8, i8* %33, align 1, !dbg !932, !tbaa !933
  %35 = icmp eq i8 %34, 58, !dbg !934
  br i1 %35, label %37, label %36, !dbg !935

; <label>:36:                                     ; preds = %31, %37, %27
  br label %24, !dbg !891, !llvm.loop !923

; <label>:37:                                     ; preds = %31
  store i8 0, i8* %33, align 1, !dbg !936, !tbaa !933
  br label %36, !dbg !937

; <label>:38:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %25, metadata !834, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %25, metadata !834, metadata !DIExpression()), !dbg !891
  %39 = load i8*, i8** @optarg, align 8, !dbg !938, !tbaa !780
  call void @llvm.dbg.value(metadata i8* %39, metadata !836, metadata !DIExpression()), !dbg !893
  br label %21, !dbg !939, !llvm.loop !923

; <label>:40:                                     ; preds = %24
  tail call void @usage(i32 0) #16, !dbg !940
  unreachable, !dbg !940

; <label>:41:                                     ; preds = %24
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !941, !tbaa !780
  %43 = load i8*, i8** @Version, align 8, !dbg !941, !tbaa !780
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* null) #11, !dbg !941
  tail call void @exit(i32 0) #15, !dbg !941
  unreachable, !dbg !941

; <label>:44:                                     ; preds = %24
  tail call void @usage(i32 125) #16, !dbg !942
  unreachable, !dbg !942

; <label>:45:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %25, metadata !834, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %25, metadata !834, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8 %18, metadata !837, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i8* %22, metadata !836, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8* %25, metadata !834, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8 %18, metadata !837, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i8* %22, metadata !836, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8* %25, metadata !834, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8 %18, metadata !837, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i8* %22, metadata !836, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8* %25, metadata !834, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8 %18, metadata !837, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i8* %22, metadata !836, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8* %25, metadata !834, metadata !DIExpression()), !dbg !891
  %46 = load i32, i32* @optind, align 4, !dbg !943, !tbaa !897
  %47 = icmp slt i32 %46, %0, !dbg !945
  br i1 %47, label %50, label %48, !dbg !946

; <label>:48:                                     ; preds = %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !947
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49) #11, !dbg !949
  tail call void @usage(i32 125) #16, !dbg !950
  unreachable, !dbg !950

; <label>:50:                                     ; preds = %45
  %51 = sext i32 %46 to i64, !dbg !951
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !951
  %53 = load i8*, i8** %52, align 8, !dbg !951, !tbaa !780
  call void @llvm.dbg.value(metadata i8* %53, metadata !846, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i8* %53, metadata !953, metadata !DIExpression()) #11, !dbg !960
  %54 = tail call i8* @canonicalize_file_name(i8* %53) #11, !dbg !962
  call void @llvm.dbg.value(metadata i8* %54, metadata !958, metadata !DIExpression()) #11, !dbg !963
  %55 = icmp eq i8* %54, null, !dbg !964
  br i1 %55, label %59, label %56, !dbg !965

; <label>:56:                                     ; preds = %50
  %57 = tail call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %54) #14, !dbg !966
  %58 = icmp eq i32 %57, 0, !dbg !966
  br label %59

; <label>:59:                                     ; preds = %50, %56
  %60 = phi i1 [ false, %50 ], [ %58, %56 ], !dbg !967
  tail call void @free(i8* %54) #11, !dbg !968
  %61 = icmp eq i8 %18, 0, !dbg !969
  %62 = or i1 %61, %60, !dbg !971
  br i1 %62, label %66, label %63, !dbg !971

; <label>:63:                                     ; preds = %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !972
  %65 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !974
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64, i8* %65) #11, !dbg !975
  tail call void @usage(i32 125) #16, !dbg !976
  unreachable, !dbg !976

; <label>:66:                                     ; preds = %59
  br i1 %60, label %110, label %67, !dbg !977

; <label>:67:                                     ; preds = %66
  %68 = icmp eq i8* %25, null, !dbg !978
  br i1 %68, label %71, label %69, !dbg !979

; <label>:69:                                     ; preds = %67
  call void @llvm.dbg.value(metadata i32* %3, metadata !838, metadata !DIExpression(DW_OP_deref)), !dbg !896
  call void @llvm.dbg.value(metadata i32* %4, metadata !839, metadata !DIExpression(DW_OP_deref)), !dbg !900
  %70 = call i8* @parse_user_spec(i8* nonnull %25, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #11, !dbg !980
  call void @llvm.dbg.value(metadata i8* %70, metadata !848, metadata !DIExpression()), !dbg !980
  br label %71, !dbg !981

; <label>:71:                                     ; preds = %67, %69
  %72 = load i32, i32* %3, align 4, !dbg !982, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %72, metadata !838, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %72, metadata !983, metadata !DIExpression()), !dbg !988
  %73 = icmp eq i32 %72, -1, !dbg !990
  br i1 %73, label %91, label %74, !dbg !991

; <label>:74:                                     ; preds = %71
  %75 = icmp eq i8* %22, null, !dbg !992
  %76 = load i32, i32* %4, align 4, !dbg !993
  %77 = icmp eq i32 %76, -1, !dbg !994
  %78 = or i1 %75, %77, !dbg !1001
  br i1 %78, label %79, label %94, !dbg !1001

; <label>:79:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i32 %72, metadata !838, metadata !DIExpression()), !dbg !896
  %80 = call %struct.passwd* @getpwuid(i32 %72) #11, !dbg !1002
  call void @llvm.dbg.value(metadata %struct.passwd* %80, metadata !853, metadata !DIExpression()), !dbg !1004
  %81 = icmp eq %struct.passwd* %80, null, !dbg !1005
  br i1 %81, label %91, label %82, !dbg !1006

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %4, align 4, !dbg !1007, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %83, metadata !839, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %83, metadata !999, metadata !DIExpression()), !dbg !1010
  %84 = icmp eq i32 %83, -1, !dbg !1012
  br i1 %84, label %85, label %88, !dbg !1013

; <label>:85:                                     ; preds = %82
  %86 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i64 0, i32 3, !dbg !1014
  %87 = load i32, i32* %86, align 4, !dbg !1014, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %87, metadata !839, metadata !DIExpression()), !dbg !900
  store i32 %87, i32* %4, align 4, !dbg !1017, !tbaa !897
  br label %88, !dbg !1018

; <label>:88:                                     ; preds = %85, %82
  %89 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i64 0, i32 0, !dbg !1019
  %90 = load i8*, i8** %89, align 8, !dbg !1019, !tbaa !1020
  call void @llvm.dbg.value(metadata i8* %90, metadata !835, metadata !DIExpression()), !dbg !892
  br label %91, !dbg !1021

; <label>:91:                                     ; preds = %88, %79, %71
  %92 = phi i8* [ null, %71 ], [ %90, %88 ], [ null, %79 ], !dbg !1022
  call void @llvm.dbg.value(metadata i8* %92, metadata !835, metadata !DIExpression()), !dbg !892
  %93 = icmp eq i8* %22, null, !dbg !1023
  br i1 %93, label %100, label %94, !dbg !1024

; <label>:94:                                     ; preds = %91, %74
  %95 = phi i8* [ %92, %91 ], [ null, %74 ]
  %96 = load i8, i8* %22, align 1, !dbg !1025, !tbaa !933
  %97 = icmp eq i8 %96, 0, !dbg !1025
  br i1 %97, label %110, label %98, !dbg !1026

; <label>:98:                                     ; preds = %94
  call void @llvm.dbg.value(metadata i32** %5, metadata !840, metadata !DIExpression(DW_OP_deref)), !dbg !902
  call void @llvm.dbg.value(metadata i64* %6, metadata !841, metadata !DIExpression(DW_OP_deref)), !dbg !904
  %99 = call fastcc i32 @parse_additional_groups(i8* nonnull %22, i32** nonnull %5, i64* nonnull %6, i1 zeroext false), !dbg !1027
  call void @llvm.dbg.value(metadata i32 %99, metadata !867, metadata !DIExpression()), !dbg !1027
  br label %110, !dbg !1028

; <label>:100:                                    ; preds = %91
  %101 = load i32, i32* %4, align 4, !dbg !1029, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %101, metadata !839, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %101, metadata !999, metadata !DIExpression()), !dbg !1030
  %102 = icmp ne i32 %101, -1, !dbg !1032
  %103 = icmp ne i8* %92, null, !dbg !1033
  %104 = and i1 %103, %102, !dbg !1034
  br i1 %104, label %105, label %110, !dbg !1034

; <label>:105:                                    ; preds = %100
  call void @llvm.dbg.value(metadata i32 %101, metadata !839, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32** %5, metadata !840, metadata !DIExpression(DW_OP_deref)), !dbg !902
  %106 = call i32 @xgetgroups(i8* nonnull %92, i32 %101, i32** nonnull %5) #11, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %106, metadata !870, metadata !DIExpression()), !dbg !1036
  %107 = icmp sgt i32 %106, 0, !dbg !1037
  br i1 %107, label %108, label %110, !dbg !1039

; <label>:108:                                    ; preds = %105
  %109 = sext i32 %106 to i64, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %109, metadata !841, metadata !DIExpression()), !dbg !904
  store i64 %109, i64* %6, align 8, !dbg !1041, !tbaa !905
  br label %110, !dbg !1042

; <label>:110:                                    ; preds = %94, %105, %108, %98, %100, %66
  %111 = phi i8* [ null, %66 ], [ %95, %98 ], [ %92, %100 ], [ %92, %108 ], [ %92, %105 ], [ %95, %94 ], !dbg !892
  call void @llvm.dbg.value(metadata i8* %111, metadata !835, metadata !DIExpression()), !dbg !892
  %112 = call i32 @chroot(i8* %53) #11, !dbg !1043
  %113 = icmp eq i32 %112, 0, !dbg !1045
  br i1 %113, label %119, label %114, !dbg !1046

; <label>:114:                                    ; preds = %110
  %115 = tail call i32* @__errno_location() #17, !dbg !1047
  %116 = load i32, i32* %115, align 4, !dbg !1047, !tbaa !897
  %117 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !1047
  %118 = call i8* @quotearg_style(i32 4, i8* %53) #11, !dbg !1047
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %116, i8* %117, i8* %118) #11, !dbg !1047
  unreachable, !dbg !1047

; <label>:119:                                    ; preds = %110
  br i1 %61, label %120, label %127, !dbg !1048

; <label>:120:                                    ; preds = %119
  %121 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !1050
  %122 = icmp eq i32 %121, 0, !dbg !1050
  br i1 %122, label %127, label %123, !dbg !1051

; <label>:123:                                    ; preds = %120
  %124 = tail call i32* @__errno_location() #17, !dbg !1052
  %125 = load i32, i32* %124, align 4, !dbg !1052, !tbaa !897
  %126 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !1052
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %125, i8* %126) #11, !dbg !1052
  unreachable, !dbg !1052

; <label>:127:                                    ; preds = %120, %119
  %128 = load i32, i32* @optind, align 4, !dbg !1053, !tbaa !897
  %129 = add nsw i32 %128, 1, !dbg !1054
  %130 = icmp eq i32 %129, %0, !dbg !1055
  br i1 %130, label %131, label %137, !dbg !1056

; <label>:131:                                    ; preds = %127
  %132 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %132, metadata !873, metadata !DIExpression()), !dbg !1058
  %133 = icmp eq i8* %132, null, !dbg !1059
  %134 = select i1 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %132, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %134, metadata !873, metadata !DIExpression()), !dbg !1058
  store i8* %134, i8** %1, align 8, !dbg !1062, !tbaa !780
  %135 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1063
  %136 = bitcast i8** %135 to <2 x i8*>*, !dbg !1064
  store <2 x i8*> <i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* null>, <2 x i8*>* %136, align 8, !dbg !1064, !tbaa !780
  br label %140, !dbg !1065

; <label>:137:                                    ; preds = %127
  %138 = sext i32 %129 to i64, !dbg !1066
  %139 = getelementptr inbounds i8*, i8** %1, i64 %138, !dbg !1066
  call void @llvm.dbg.value(metadata i8** %139, metadata !832, metadata !DIExpression()), !dbg !890
  br label %140

; <label>:140:                                    ; preds = %137, %131
  %141 = phi i8** [ %1, %131 ], [ %139, %137 ]
  call void @llvm.dbg.value(metadata i8** %141, metadata !832, metadata !DIExpression()), !dbg !890
  %142 = icmp eq i8* %25, null, !dbg !1068
  br i1 %142, label %155, label %143, !dbg !1069

; <label>:143:                                    ; preds = %140
  call void @llvm.dbg.value(metadata i32* %3, metadata !838, metadata !DIExpression(DW_OP_deref)), !dbg !896
  call void @llvm.dbg.value(metadata i32* %4, metadata !839, metadata !DIExpression(DW_OP_deref)), !dbg !900
  %144 = call i8* @parse_user_spec(i8* nonnull %25, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #11, !dbg !1070
  call void @llvm.dbg.value(metadata i8* %144, metadata !876, metadata !DIExpression()), !dbg !1071
  %145 = icmp eq i8* %144, null, !dbg !1072
  br i1 %145, label %155, label %146, !dbg !1074

; <label>:146:                                    ; preds = %143
  %147 = load i32, i32* %3, align 4, !dbg !1075, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %147, metadata !838, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %147, metadata !983, metadata !DIExpression()), !dbg !1076
  %148 = icmp eq i32 %147, -1, !dbg !1078
  br i1 %148, label %149, label %158, !dbg !1079

; <label>:149:                                    ; preds = %146
  %150 = load i32, i32* %4, align 4, !dbg !1080, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %150, metadata !839, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %150, metadata !999, metadata !DIExpression()), !dbg !1081
  %151 = icmp eq i32 %150, -1, !dbg !1083
  br i1 %151, label %152, label %185, !dbg !1084

; <label>:152:                                    ; preds = %149
  %153 = tail call i32* @__errno_location() #17, !dbg !1085
  %154 = load i32, i32* %153, align 4, !dbg !1085, !tbaa !897
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %144) #11, !dbg !1085
  unreachable, !dbg !1085

; <label>:155:                                    ; preds = %143, %140
  %156 = load i32, i32* %3, align 4, !dbg !1086, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %156, metadata !838, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %156, metadata !983, metadata !DIExpression()), !dbg !1087
  %157 = icmp eq i32 %156, -1, !dbg !1089
  br i1 %157, label %185, label %158, !dbg !1090

; <label>:158:                                    ; preds = %146, %155
  %159 = phi i32 [ %156, %155 ], [ %147, %146 ]
  %160 = icmp eq i8* %22, null, !dbg !1091
  %161 = load i32, i32* %4, align 4, !dbg !1092
  %162 = icmp eq i32 %161, -1, !dbg !1093
  %163 = or i1 %160, %162, !dbg !1095
  br i1 %163, label %167, label %164, !dbg !1095

; <label>:164:                                    ; preds = %158
  call void @llvm.dbg.value(metadata i8* %186, metadata !835, metadata !DIExpression()), !dbg !892
  %165 = load i32*, i32** %5, align 8, !dbg !1096, !tbaa !780
  call void @llvm.dbg.value(metadata i32* %187, metadata !840, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32* %187, metadata !882, metadata !DIExpression()), !dbg !1097
  %166 = bitcast i32** %7 to i8*, !dbg !1098
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %166) #11, !dbg !1098
  call void @llvm.dbg.value(metadata i32* null, metadata !883, metadata !DIExpression()), !dbg !1099
  store i32* null, i32** %7, align 8, !dbg !1099, !tbaa !780
  br label %190, !dbg !1100

; <label>:167:                                    ; preds = %158
  call void @llvm.dbg.value(metadata i32 %156, metadata !838, metadata !DIExpression()), !dbg !896
  %168 = call %struct.passwd* @getpwuid(i32 %159) #11, !dbg !1101
  call void @llvm.dbg.value(metadata %struct.passwd* %168, metadata !879, metadata !DIExpression()), !dbg !1103
  %169 = icmp eq %struct.passwd* %168, null, !dbg !1104
  %170 = load i32, i32* %4, align 4, !dbg !1105, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %170, metadata !839, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %170, metadata !999, metadata !DIExpression()), !dbg !1107
  %171 = icmp eq i32 %170, -1, !dbg !1109
  br i1 %169, label %179, label %172, !dbg !1110

; <label>:172:                                    ; preds = %167
  br i1 %171, label %173, label %176, !dbg !1111

; <label>:173:                                    ; preds = %172
  %174 = getelementptr inbounds %struct.passwd, %struct.passwd* %168, i64 0, i32 3, !dbg !1113
  %175 = load i32, i32* %174, align 4, !dbg !1113, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %175, metadata !839, metadata !DIExpression()), !dbg !900
  store i32 %175, i32* %4, align 4, !dbg !1115, !tbaa !897
  br label %176, !dbg !1116

; <label>:176:                                    ; preds = %173, %172
  %177 = getelementptr inbounds %struct.passwd, %struct.passwd* %168, i64 0, i32 0, !dbg !1117
  %178 = load i8*, i8** %177, align 8, !dbg !1117, !tbaa !1020
  call void @llvm.dbg.value(metadata i8* %178, metadata !835, metadata !DIExpression()), !dbg !892
  br label %185, !dbg !1118

; <label>:179:                                    ; preds = %167
  br i1 %171, label %180, label %185, !dbg !1119

; <label>:180:                                    ; preds = %179
  %181 = tail call i32* @__errno_location() #17, !dbg !1120
  %182 = load i32, i32* %181, align 4, !dbg !1120, !tbaa !897
  %183 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !1120
  %184 = load i32, i32* %3, align 4, !dbg !1120, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %184, metadata !838, metadata !DIExpression()), !dbg !896
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %182, i8* %183, i32 %184) #11, !dbg !1120
  unreachable, !dbg !1120

; <label>:185:                                    ; preds = %149, %176, %179, %155
  %186 = phi i8* [ %111, %155 ], [ %178, %176 ], [ %111, %179 ], [ %111, %149 ], !dbg !1022
  call void @llvm.dbg.value(metadata i8* %186, metadata !835, metadata !DIExpression()), !dbg !892
  %187 = load i32*, i32** %5, align 8, !dbg !1096, !tbaa !780
  call void @llvm.dbg.value(metadata i32* %187, metadata !840, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32* %187, metadata !882, metadata !DIExpression()), !dbg !1097
  %188 = bitcast i32** %7 to i8*, !dbg !1098
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %188) #11, !dbg !1098
  call void @llvm.dbg.value(metadata i32* null, metadata !883, metadata !DIExpression()), !dbg !1099
  store i32* null, i32** %7, align 8, !dbg !1099, !tbaa !780
  %189 = icmp eq i8* %22, null, !dbg !1122
  br i1 %189, label %205, label %190, !dbg !1100

; <label>:190:                                    ; preds = %185, %164
  %191 = phi i8* [ %166, %164 ], [ %188, %185 ]
  %192 = phi i32* [ %165, %164 ], [ %187, %185 ]
  %193 = load i8, i8* %22, align 1, !dbg !1123, !tbaa !933
  %194 = icmp eq i8 %193, 0, !dbg !1123
  br i1 %194, label %227, label %195, !dbg !1124

; <label>:195:                                    ; preds = %190
  %196 = load i64, i64* %6, align 8, !dbg !1125, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %196, metadata !841, metadata !DIExpression()), !dbg !904
  %197 = icmp eq i64 %196, 0, !dbg !1128
  call void @llvm.dbg.value(metadata i64* %6, metadata !841, metadata !DIExpression(DW_OP_deref)), !dbg !904
  call void @llvm.dbg.value(metadata i32** %7, metadata !883, metadata !DIExpression(DW_OP_deref)), !dbg !1099
  %198 = call fastcc i32 @parse_additional_groups(i8* nonnull %22, i32** nonnull %7, i64* nonnull %6, i1 zeroext %197), !dbg !1129
  %199 = icmp eq i32 %198, 0, !dbg !1130
  br i1 %199, label %203, label %200, !dbg !1131

; <label>:200:                                    ; preds = %195
  %201 = load i64, i64* %6, align 8, !dbg !1132, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %201, metadata !841, metadata !DIExpression()), !dbg !904
  %202 = icmp eq i64 %201, 0, !dbg !1132
  br i1 %202, label %272, label %227, !dbg !1135

; <label>:203:                                    ; preds = %195
  %204 = load i32*, i32** %7, align 8, !dbg !1136, !tbaa !780
  call void @llvm.dbg.value(metadata i32* %204, metadata !883, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32* %204, metadata !882, metadata !DIExpression()), !dbg !1097
  br label %227

; <label>:205:                                    ; preds = %185
  %206 = load i32, i32* %4, align 4, !dbg !1137, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %206, metadata !839, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %206, metadata !999, metadata !DIExpression()), !dbg !1138
  %207 = icmp ne i32 %206, -1, !dbg !1140
  %208 = icmp ne i8* %186, null, !dbg !1141
  %209 = and i1 %208, %207, !dbg !1142
  br i1 %209, label %210, label %223, !dbg !1142

; <label>:210:                                    ; preds = %205
  call void @llvm.dbg.value(metadata i32 %206, metadata !839, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32** %7, metadata !883, metadata !DIExpression(DW_OP_deref)), !dbg !1099
  %211 = call i32 @xgetgroups(i8* nonnull %186, i32 %206, i32** nonnull %7) #11, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %211, metadata !884, metadata !DIExpression()), !dbg !1144
  %212 = icmp slt i32 %211, 1, !dbg !1145
  br i1 %212, label %213, label %220, !dbg !1147

; <label>:213:                                    ; preds = %210
  %214 = load i64, i64* %6, align 8, !dbg !1148, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %214, metadata !841, metadata !DIExpression()), !dbg !904
  %215 = icmp eq i64 %214, 0, !dbg !1148
  br i1 %215, label %216, label %223, !dbg !1151

; <label>:216:                                    ; preds = %213
  %217 = tail call i32* @__errno_location() #17, !dbg !1152
  %218 = load i32, i32* %217, align 4, !dbg !1152, !tbaa !897
  %219 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !1152
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %218, i8* %219) #11, !dbg !1152
  unreachable, !dbg !1152

; <label>:220:                                    ; preds = %210
  %221 = sext i32 %211 to i64, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %221, metadata !841, metadata !DIExpression()), !dbg !904
  store i64 %221, i64* %6, align 8, !dbg !1155, !tbaa !905
  %222 = load i32*, i32** %7, align 8, !dbg !1156, !tbaa !780
  call void @llvm.dbg.value(metadata i32* %222, metadata !883, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32* %222, metadata !882, metadata !DIExpression()), !dbg !1097
  br label %223

; <label>:223:                                    ; preds = %220, %213, %205
  %224 = phi i32* [ %187, %205 ], [ %187, %213 ], [ %222, %220 ], !dbg !1022
  call void @llvm.dbg.value(metadata i32* %224, metadata !882, metadata !DIExpression()), !dbg !1097
  %225 = load i32, i32* %3, align 4, !dbg !1157, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %225, metadata !838, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %225, metadata !983, metadata !DIExpression()), !dbg !1159
  %226 = icmp eq i32 %225, -1, !dbg !1161
  br i1 %226, label %237, label %227, !dbg !1162

; <label>:227:                                    ; preds = %223, %190, %203, %200
  %228 = phi i32* [ %224, %223 ], [ %192, %190 ], [ %204, %203 ], [ %192, %200 ]
  %229 = phi i8* [ %188, %223 ], [ %191, %190 ], [ %191, %203 ], [ %191, %200 ]
  %230 = load i64, i64* %6, align 8, !dbg !1163, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %230, metadata !841, metadata !DIExpression()), !dbg !904
  %231 = call i32 @setgroups(i64 %230, i32* %228) #11, !dbg !1164
  %232 = icmp eq i32 %231, 0, !dbg !1165
  br i1 %232, label %237, label %233, !dbg !1166

; <label>:233:                                    ; preds = %227
  %234 = tail call i32* @__errno_location() #17, !dbg !1167
  %235 = load i32, i32* %234, align 4, !dbg !1167, !tbaa !897
  %236 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !1167
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %235, i8* %236) #11, !dbg !1167
  unreachable, !dbg !1167

; <label>:237:                                    ; preds = %223, %227
  %238 = phi i8* [ %229, %227 ], [ %188, %223 ]
  %239 = bitcast i32** %7 to i8**, !dbg !1168
  %240 = load i8*, i8** %239, align 8, !dbg !1168, !tbaa !780
  call void @llvm.dbg.value(metadata i32** %7, metadata !883, metadata !DIExpression(DW_OP_deref)), !dbg !1099
  call void @free(i8* %240) #11, !dbg !1169
  %241 = bitcast i32** %5 to i8**, !dbg !1170
  %242 = load i8*, i8** %241, align 8, !dbg !1170, !tbaa !780
  call void @llvm.dbg.value(metadata i32** %5, metadata !840, metadata !DIExpression(DW_OP_deref)), !dbg !902
  call void @free(i8* %242) #11, !dbg !1171
  %243 = load i32, i32* %4, align 4, !dbg !1172, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %243, metadata !839, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %243, metadata !999, metadata !DIExpression()), !dbg !1174
  %244 = icmp eq i32 %243, -1, !dbg !1176
  br i1 %244, label %252, label %245, !dbg !1177

; <label>:245:                                    ; preds = %237
  call void @llvm.dbg.value(metadata i32 %243, metadata !839, metadata !DIExpression()), !dbg !900
  %246 = call i32 @setgid(i32 %243) #11, !dbg !1178
  %247 = icmp eq i32 %246, 0, !dbg !1178
  br i1 %247, label %252, label %248, !dbg !1179

; <label>:248:                                    ; preds = %245
  %249 = tail call i32* @__errno_location() #17, !dbg !1180
  %250 = load i32, i32* %249, align 4, !dbg !1180, !tbaa !897
  %251 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !1180
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %250, i8* %251) #11, !dbg !1180
  unreachable, !dbg !1180

; <label>:252:                                    ; preds = %245, %237
  %253 = load i32, i32* %3, align 4, !dbg !1181, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %253, metadata !838, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %253, metadata !983, metadata !DIExpression()), !dbg !1183
  %254 = icmp eq i32 %253, -1, !dbg !1185
  br i1 %254, label %262, label %255, !dbg !1186

; <label>:255:                                    ; preds = %252
  call void @llvm.dbg.value(metadata i32 %253, metadata !838, metadata !DIExpression()), !dbg !896
  %256 = call i32 @setuid(i32 %253) #11, !dbg !1187
  %257 = icmp eq i32 %256, 0, !dbg !1187
  br i1 %257, label %262, label %258, !dbg !1188

; <label>:258:                                    ; preds = %255
  %259 = tail call i32* @__errno_location() #17, !dbg !1189
  %260 = load i32, i32* %259, align 4, !dbg !1189, !tbaa !897
  %261 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !1189
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %260, i8* %261) #11, !dbg !1189
  unreachable, !dbg !1189

; <label>:262:                                    ; preds = %255, %252
  %263 = load i8*, i8** %141, align 8, !dbg !1190, !tbaa !780
  %264 = call i32 @execvp(i8* %263, i8** %141) #11, !dbg !1191
  %265 = tail call i32* @__errno_location() #17, !dbg !1192
  %266 = load i32, i32* %265, align 4, !dbg !1192, !tbaa !897
  %267 = icmp eq i32 %266, 2, !dbg !1193
  %268 = select i1 %267, i32 127, i32 126, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %268, metadata !888, metadata !DIExpression()), !dbg !1194
  %269 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !1195
  %270 = load i8*, i8** %141, align 8, !dbg !1196, !tbaa !780
  %271 = call i8* @quote(i8* %270) #11, !dbg !1197
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %266, i8* %269, i8* %271) #11, !dbg !1198
  br label %272

; <label>:272:                                    ; preds = %200, %262
  %273 = phi i8* [ %238, %262 ], [ %191, %200 ]
  %274 = phi i32 [ %268, %262 ], [ 125, %200 ], !dbg !1199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %273) #11, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #11, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #11, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #11, !dbg !1200
  ret i32 %274, !dbg !1200
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @canonicalize_file_name(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_additional_groups(i8*, i32** nocapture, i64* nocapture, i1 zeroext) unnamed_addr #7 !dbg !1201 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1205, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i32** %1, metadata !1206, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i64* %2, metadata !1207, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i1 %3, metadata !1208, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i32* null, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 0, metadata !1210, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 0, metadata !1211, metadata !DIExpression()), !dbg !1226
  %6 = tail call noalias i8* @xstrdup(i8* %0) #11, !dbg !1227
  call void @llvm.dbg.value(metadata i8* %6, metadata !1212, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i32 0, metadata !1214, metadata !DIExpression()), !dbg !1229
  %7 = tail call i8* @strtok(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #11, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %7, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 0, metadata !1214, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32* null, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 0, metadata !1211, metadata !DIExpression()), !dbg !1226
  %8 = icmp eq i8* %7, null, !dbg !1232
  br i1 %8, label %95, label %9, !dbg !1232

; <label>:9:                                      ; preds = %4
  %10 = bitcast i64* %5 to i8*
  br label %11, !dbg !1232

; <label>:11:                                     ; preds = %9, %87
  %12 = phi i32 [ 0, %9 ], [ %92, %87 ]
  %13 = phi i8* [ %7, %9 ], [ %93, %87 ]
  %14 = phi i32* [ null, %9 ], [ %91, %87 ]
  %15 = phi i8* [ null, %9 ], [ %90, %87 ]
  %16 = phi i64 [ 0, %9 ], [ %89, %87 ]
  %17 = phi i64 [ 0, %9 ], [ %88, %87 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !1214, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %13, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32* %14, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %16, metadata !1211, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1233
  call void @llvm.dbg.value(metadata i64* %5, metadata !1219, metadata !DIExpression(DW_OP_deref)), !dbg !1234
  %18 = call i32 @xstrtoul(i8* nonnull %13, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !1235
  %19 = icmp eq i32 %18, 0, !dbg !1237
  %20 = load i64, i64* %5, align 8, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %20, metadata !1219, metadata !DIExpression()), !dbg !1234
  %21 = icmp ult i64 %20, 4294967296, !dbg !1239
  %22 = and i1 %19, %21, !dbg !1240
  br i1 %22, label %23, label %44, !dbg !1240

; <label>:23:                                     ; preds = %11
  %24 = tail call i16** @__ctype_b_loc() #17, !dbg !1241
  %25 = load i16*, i16** %24, align 8, !tbaa !780
  br label %26, !dbg !1241

; <label>:26:                                     ; preds = %26, %23
  %27 = phi i8* [ %34, %26 ], [ %13, %23 ], !dbg !1243
  call void @llvm.dbg.value(metadata i8* %27, metadata !1213, metadata !DIExpression()), !dbg !1231
  %28 = load i8, i8* %27, align 1, !dbg !1241, !tbaa !933
  %29 = zext i8 %28 to i64, !dbg !1241
  %30 = getelementptr inbounds i16, i16* %25, i64 %29, !dbg !1241
  %31 = load i16, i16* %30, align 2, !dbg !1241, !tbaa !1244
  %32 = and i16 %31, 8192, !dbg !1241
  %33 = icmp eq i16 %32, 0, !dbg !1246
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %34, metadata !1213, metadata !DIExpression()), !dbg !1231
  br i1 %33, label %35, label %26, !dbg !1246, !llvm.loop !1248

; <label>:35:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8* %27, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %27, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %27, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %27, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %27, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %27, metadata !1213, metadata !DIExpression()), !dbg !1231
  %36 = icmp eq i8 %28, 43, !dbg !1249
  br i1 %36, label %57, label %37, !dbg !1251

; <label>:37:                                     ; preds = %35
  %38 = call %struct.group* @getgrnam(i8* nonnull %27) #11, !dbg !1252
  call void @llvm.dbg.value(metadata %struct.group* %38, metadata !1215, metadata !DIExpression()), !dbg !1254
  %39 = icmp eq %struct.group* %38, null, !dbg !1255
  br i1 %39, label %57, label %40, !dbg !1257

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds %struct.group, %struct.group* %38, i64 0, i32 2, !dbg !1258
  %42 = load i32, i32* %41, align 8, !dbg !1258, !tbaa !1259
  %43 = zext i32 %42 to i64, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %43, metadata !1219, metadata !DIExpression()), !dbg !1234
  store i64 %43, i64* %5, align 8, !dbg !1262, !tbaa !905
  br label %57, !dbg !1263

; <label>:44:                                     ; preds = %11
  %45 = call %struct.group* @getgrnam(i8* nonnull %13) #11, !dbg !1264
  call void @llvm.dbg.value(metadata %struct.group* %45, metadata !1215, metadata !DIExpression()), !dbg !1254
  %46 = icmp eq %struct.group* %45, null, !dbg !1266
  br i1 %46, label %51, label %47, !dbg !1268

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.group, %struct.group* %45, i64 0, i32 2, !dbg !1269
  %49 = load i32, i32* %48, align 8, !dbg !1269, !tbaa !1259
  %50 = zext i32 %49 to i64, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %50, metadata !1219, metadata !DIExpression()), !dbg !1234
  store i64 %50, i64* %5, align 8, !dbg !1271, !tbaa !905
  br label %57, !dbg !1272

; <label>:51:                                     ; preds = %44
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1215, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8* undef, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 -1, metadata !1214, metadata !DIExpression()), !dbg !1229
  br i1 %3, label %52, label %86, !dbg !1273

; <label>:52:                                     ; preds = %51
  %53 = tail call i32* @__errno_location() #17, !dbg !1276
  %54 = load i32, i32* %53, align 4, !dbg !1276, !tbaa !897
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1279
  %56 = call i8* @quote(i8* nonnull %13) #11, !dbg !1280
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %54, i8* %55, i8* %56) #11, !dbg !1281
  br label %87, !dbg !1282

; <label>:57:                                     ; preds = %47, %37, %35, %40
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1215, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8* undef, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %17, metadata !1210, metadata !DIExpression()), !dbg !1225
  %58 = icmp eq i64 %16, %17, !dbg !1283
  br i1 %58, label %59, label %78, !dbg !1285

; <label>:59:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i8* %15, metadata !61, metadata !DIExpression()) #11, !dbg !1286
  call void @llvm.dbg.value(metadata i64 4, metadata !63, metadata !DIExpression()) #11, !dbg !1288
  call void @llvm.dbg.value(metadata i64 undef, metadata !64, metadata !DIExpression()) #11, !dbg !1289
  %60 = icmp eq i8* %15, null, !dbg !1290
  br i1 %60, label %61, label %66, !dbg !1292

; <label>:61:                                     ; preds = %59
  %62 = icmp eq i64 %16, 0, !dbg !1293
  br i1 %62, label %73, label %63, !dbg !1296

; <label>:63:                                     ; preds = %61
  call void @llvm.dbg.value(metadata i64 %17, metadata !64, metadata !DIExpression()) #11, !dbg !1289
  %64 = icmp ugt i64 %16, 2305843009213693951, !dbg !1297
  br i1 %64, label %65, label %73, !dbg !1299

; <label>:65:                                     ; preds = %63
  call void @xalloc_die() #15, !dbg !1300
  unreachable, !dbg !1300

; <label>:66:                                     ; preds = %59
  %67 = icmp ult i64 %16, 1537228672809129301, !dbg !1301
  br i1 %67, label %69, label %68, !dbg !1304

; <label>:68:                                     ; preds = %66
  call void @xalloc_die() #15, !dbg !1305
  unreachable, !dbg !1305

; <label>:69:                                     ; preds = %66
  %70 = lshr i64 %16, 1, !dbg !1306
  %71 = add i64 %16, 1, !dbg !1307
  %72 = add i64 %71, %70, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %72, metadata !64, metadata !DIExpression()) #11, !dbg !1289
  br label %73

; <label>:73:                                     ; preds = %61, %63, %69
  %74 = phi i64 [ %72, %69 ], [ %16, %63 ], [ 32, %61 ], !dbg !1309
  call void @llvm.dbg.value(metadata i64 %74, metadata !64, metadata !DIExpression()) #11, !dbg !1289
  %75 = shl i64 %74, 2, !dbg !1310
  %76 = call i8* @xrealloc(i8* %15, i64 %75) #11, !dbg !1311
  %77 = bitcast i8* %76 to i32*, !dbg !1312
  call void @llvm.dbg.value(metadata i32* %77, metadata !1209, metadata !DIExpression()), !dbg !1224
  br label %78, !dbg !1313

; <label>:78:                                     ; preds = %73, %57
  %79 = phi i64 [ %74, %73 ], [ %17, %57 ], !dbg !1314
  %80 = phi i8* [ %76, %73 ], [ %15, %57 ], !dbg !1314
  %81 = phi i32* [ %77, %73 ], [ %14, %57 ], !dbg !1314
  call void @llvm.dbg.value(metadata i32* %81, metadata !1209, metadata !DIExpression()), !dbg !1224
  %82 = load i64, i64* %5, align 8, !dbg !1315, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %82, metadata !1219, metadata !DIExpression()), !dbg !1234
  %83 = trunc i64 %82 to i32, !dbg !1315
  %84 = add i64 %16, 1, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %84, metadata !1211, metadata !DIExpression()), !dbg !1226
  %85 = getelementptr inbounds i32, i32* %81, i64 %16, !dbg !1317
  store i32 %83, i32* %85, align 4, !dbg !1318, !tbaa !897
  br label %87, !dbg !1319

; <label>:86:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i32* %14, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i32* %14, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i32* %14, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i32* %14, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i32* %14, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %16, metadata !1211, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %16, metadata !1211, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i32* %14, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i32 -1, metadata !1214, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32* undef, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 undef, metadata !1211, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1319
  call void @llvm.dbg.value(metadata i32 %98, metadata !1214, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32* undef, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 undef, metadata !1211, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i32 %104, metadata !1214, metadata !DIExpression()), !dbg !1229
  store i32* %14, i32** %1, align 8, !dbg !1320, !tbaa !780
  br label %111, !dbg !1321

; <label>:87:                                     ; preds = %52, %78
  %88 = phi i64 [ %79, %78 ], [ %17, %52 ]
  %89 = phi i64 [ %84, %78 ], [ %16, %52 ]
  %90 = phi i8* [ %80, %78 ], [ %15, %52 ]
  %91 = phi i32* [ %81, %78 ], [ %14, %52 ]
  %92 = phi i32 [ %12, %78 ], [ -1, %52 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !1214, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32* undef, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 undef, metadata !1211, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1319
  %93 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #11, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %92, metadata !1214, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %93, metadata !1213, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32* %91, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %89, metadata !1211, metadata !DIExpression()), !dbg !1226
  %94 = icmp eq i8* %93, null, !dbg !1232
  br i1 %94, label %95, label %11, !dbg !1232, !llvm.loop !1323

; <label>:95:                                     ; preds = %87, %4
  %96 = phi i64 [ 0, %4 ], [ %89, %87 ]
  %97 = phi i32* [ null, %4 ], [ %91, %87 ]
  %98 = phi i32 [ 0, %4 ], [ %92, %87 ], !dbg !1314
  call void @llvm.dbg.value(metadata i32 %98, metadata !1214, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32* undef, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 undef, metadata !1211, metadata !DIExpression()), !dbg !1226
  %99 = icmp ne i32 %98, 0, !dbg !1325
  %100 = icmp ne i64 %96, 0, !dbg !1327
  %101 = or i1 %100, %99, !dbg !1328
  %102 = xor i1 %3, true, !dbg !1328
  %103 = or i1 %101, %102, !dbg !1328
  %104 = select i1 %101, i32 %98, i32 -1, !dbg !1328
  br i1 %103, label %108, label %105, !dbg !1328

; <label>:105:                                    ; preds = %95
  %106 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1329
  %107 = call i8* @quote(i8* %0) #11, !dbg !1332
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %106, i8* %107) #11, !dbg !1333
  call void @llvm.dbg.value(metadata i32 %104, metadata !1214, metadata !DIExpression()), !dbg !1229
  store i32* %97, i32** %1, align 8, !dbg !1320, !tbaa !780
  br label %111, !dbg !1321

; <label>:108:                                    ; preds = %95
  call void @llvm.dbg.value(metadata i32 %104, metadata !1214, metadata !DIExpression()), !dbg !1229
  store i32* %97, i32** %1, align 8, !dbg !1320, !tbaa !780
  %109 = icmp eq i32 %104, 0, !dbg !1334
  br i1 %109, label %110, label %111, !dbg !1321

; <label>:110:                                    ; preds = %108
  store i64 %96, i64* %2, align 8, !dbg !1336, !tbaa !905
  br label %111, !dbg !1337

; <label>:111:                                    ; preds = %86, %105, %110, %108
  %112 = phi i32 [ -1, %105 ], [ 0, %110 ], [ %104, %108 ], [ -1, %86 ]
  call void @free(i8* %6) #11, !dbg !1338
  ret i32 %112, !dbg !1339
}

; Function Attrs: nounwind
declare i32 @chroot(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @setgroups(i64, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setgid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setuid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

declare %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1340 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1342, metadata !DIExpression()), !dbg !1343
  store i8* %0, i8** @file_name, align 8, !dbg !1344, !tbaa !780
  ret void, !dbg !1345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1346 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1350, metadata !DIExpression()), !dbg !1351
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1352, !tbaa !1353
  ret void, !dbg !1355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1356 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1363, !tbaa !780
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1364
  %3 = icmp eq i32 %2, 0, !dbg !1365
  br i1 %3, label %22, label %4, !dbg !1366

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1367, !tbaa !1353, !range !1368
  %6 = icmp eq i8 %5, 0, !dbg !1367
  br i1 %6, label %11, label %7, !dbg !1369

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1370
  %9 = load i32, i32* %8, align 4, !dbg !1370, !tbaa !897
  %10 = icmp eq i32 %9, 32, !dbg !1371
  br i1 %10, label %22, label %11, !dbg !1372

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i32 5) #11, !dbg !1373
  call void @llvm.dbg.value(metadata i8* %12, metadata !1360, metadata !DIExpression()), !dbg !1374
  %13 = load i8*, i8** @file_name, align 8, !dbg !1375, !tbaa !780
  %14 = icmp eq i8* %13, null, !dbg !1375
  %15 = tail call i32* @__errno_location() #17, !dbg !1377
  %16 = load i32, i32* %15, align 4, !dbg !1377, !tbaa !897
  br i1 %14, label %19, label %17, !dbg !1378

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1379
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.58, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1380
  br label %20, !dbg !1380

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.59, i64 0, i64 0), i8* %12) #11, !dbg !1381
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1382, !tbaa !897
  tail call void @_exit(i32 %21) #15, !dbg !1383
  unreachable, !dbg !1383

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1384, !tbaa !780
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1386
  %25 = icmp eq i32 %24, 0, !dbg !1387
  br i1 %25, label %28, label %26, !dbg !1388

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1389, !tbaa !897
  tail call void @_exit(i32 %27) #15, !dbg !1390
  unreachable, !dbg !1390

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1391
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1394, metadata !DIExpression()), !dbg !1397
  %2 = icmp eq i8* %0, null, !dbg !1398
  br i1 %2, label %3, label %6, !dbg !1400

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1401, !tbaa !780
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1403
  tail call void @abort() #15, !dbg !1404
  unreachable, !dbg !1404

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %7, metadata !1395, metadata !DIExpression()), !dbg !1406
  %8 = icmp eq i8* %7, null, !dbg !1407
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1408
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %10, metadata !1396, metadata !DIExpression()), !dbg !1410
  %11 = ptrtoint i8* %10 to i64, !dbg !1411
  %12 = ptrtoint i8* %0 to i64, !dbg !1411
  %13 = sub i64 %11, %12, !dbg !1411
  %14 = icmp sgt i64 %13, 6, !dbg !1413
  br i1 %14, label %15, label %24, !dbg !1414

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1415
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #14, !dbg !1416
  %18 = icmp eq i32 %17, 0, !dbg !1417
  br i1 %18, label %19, label %24, !dbg !1418

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1394, metadata !DIExpression()), !dbg !1397
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #14, !dbg !1419
  %21 = icmp eq i32 %20, 0, !dbg !1422
  br i1 %21, label %22, label %24, !dbg !1423

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1424
  call void @llvm.dbg.value(metadata i8* %23, metadata !1394, metadata !DIExpression()), !dbg !1397
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1426, !tbaa !780
  br label %24, !dbg !1427

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1394, metadata !DIExpression()), !dbg !1397
  store i8* %25, i8** @program_name, align 8, !dbg !1428, !tbaa !780
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1429, !tbaa !780
  ret void, !dbg !1430
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1431 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1436, metadata !DIExpression()), !dbg !1439
  %2 = tail call i32* @__errno_location() #17, !dbg !1440
  %3 = load i32, i32* %2, align 4, !dbg !1440, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %3, metadata !1437, metadata !DIExpression()), !dbg !1441
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1442
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1442
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1442
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1443
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1443
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1438, metadata !DIExpression()), !dbg !1444
  store i32 %3, i32* %2, align 4, !dbg !1445, !tbaa !897
  ret %struct.quoting_options* %8, !dbg !1446
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1447 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1453, metadata !DIExpression()), !dbg !1454
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1455
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1455
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1456
  %5 = load i32, i32* %4, align 8, !dbg !1456, !tbaa !1457
  ret i32 %5, !dbg !1459
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1460 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1464, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i32 %1, metadata !1465, metadata !DIExpression()), !dbg !1467
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1468
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1468
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1469
  store i32 %1, i32* %5, align 8, !dbg !1470, !tbaa !1457
  ret void, !dbg !1471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1472 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1476, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8 %1, metadata !1477, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 %2, metadata !1478, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %1, metadata !1479, metadata !DIExpression()), !dbg !1488
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1489
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1489
  %6 = lshr i8 %1, 5, !dbg !1490
  %7 = zext i8 %6 to i64, !dbg !1490
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1491
  call void @llvm.dbg.value(metadata i32* %8, metadata !1481, metadata !DIExpression()), !dbg !1492
  %9 = and i8 %1, 31, !dbg !1493
  %10 = zext i8 %9 to i32, !dbg !1493
  call void @llvm.dbg.value(metadata i32 %10, metadata !1483, metadata !DIExpression()), !dbg !1494
  %11 = load i32, i32* %8, align 4, !dbg !1495, !tbaa !897
  %12 = lshr i32 %11, %10, !dbg !1496
  %13 = and i32 %12, 1, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %13, metadata !1484, metadata !DIExpression()), !dbg !1498
  %14 = and i32 %2, 1, !dbg !1499
  %15 = xor i32 %13, %14, !dbg !1500
  %16 = shl i32 %15, %10, !dbg !1501
  %17 = xor i32 %16, %11, !dbg !1502
  store i32 %17, i32* %8, align 4, !dbg !1502, !tbaa !897
  ret i32 %13, !dbg !1503
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1504 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1508, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 %1, metadata !1509, metadata !DIExpression()), !dbg !1512
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1513
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1508, metadata !DIExpression()), !dbg !1511
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1516
  %6 = load i32, i32* %5, align 4, !dbg !1516, !tbaa !1517
  call void @llvm.dbg.value(metadata i32 %6, metadata !1510, metadata !DIExpression()), !dbg !1518
  store i32 %1, i32* %5, align 4, !dbg !1519, !tbaa !1517
  ret i32 %6, !dbg !1520
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1521 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1525, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8* %1, metadata !1526, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8* %2, metadata !1527, metadata !DIExpression()), !dbg !1530
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1531
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1525, metadata !DIExpression()), !dbg !1528
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1534
  store i32 10, i32* %6, align 8, !dbg !1535, !tbaa !1457
  %7 = icmp ne i8* %1, null, !dbg !1536
  %8 = icmp ne i8* %2, null, !dbg !1538
  %9 = and i1 %7, %8, !dbg !1539
  br i1 %9, label %11, label %10, !dbg !1539

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1540
  unreachable, !dbg !1540

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1541
  store i8* %1, i8** %12, align 8, !dbg !1542, !tbaa !1543
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1544
  store i8* %2, i8** %13, align 8, !dbg !1545, !tbaa !1546
  ret void, !dbg !1547
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1548 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1552, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i64 %1, metadata !1553, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i8* %2, metadata !1554, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 %3, metadata !1555, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1556, metadata !DIExpression()), !dbg !1564
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1565
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1565
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1557, metadata !DIExpression()), !dbg !1566
  %8 = tail call i32* @__errno_location() #17, !dbg !1567
  %9 = load i32, i32* %8, align 4, !dbg !1567, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %9, metadata !1558, metadata !DIExpression()), !dbg !1568
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1569
  %11 = load i32, i32* %10, align 8, !dbg !1569, !tbaa !1457
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1570
  %13 = load i32, i32* %12, align 4, !dbg !1570, !tbaa !1517
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1571
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1572
  %16 = load i8*, i8** %15, align 8, !dbg !1572, !tbaa !1543
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1573
  %18 = load i8*, i8** %17, align 8, !dbg !1573, !tbaa !1546
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1574
  call void @llvm.dbg.value(metadata i64 %19, metadata !1559, metadata !DIExpression()), !dbg !1575
  store i32 %9, i32* %8, align 4, !dbg !1576, !tbaa !897
  ret i64 %19, !dbg !1577
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1578 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1584, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %1, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %2, metadata !1586, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i64 %3, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i32 %4, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %5, metadata !1589, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32* %6, metadata !1590, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %7, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %8, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* null, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 0, metadata !1597, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1661
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1662
  %14 = icmp eq i64 %13, 1, !dbg !1663
  %15 = lshr i32 %5, 1, !dbg !1664
  %16 = trunc i32 %15 to i8, !dbg !1664
  %17 = and i8 %16, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i8 %17, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1667
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1668

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1658
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1659
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1660
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1661
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1669
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1665
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1666
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1667
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %39, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 %38, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %37, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %36, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i64 %35, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %34, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %33, metadata !1597, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %32, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %31, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %30, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %29, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %28, metadata !1588, metadata !DIExpression()), !dbg !1652
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
  ], !dbg !1671

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %36, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i32 5, metadata !1588, metadata !DIExpression()), !dbg !1652
  br label %93, !dbg !1672

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i32 5, metadata !1588, metadata !DIExpression()), !dbg !1652
  %43 = and i8 %36, 1, !dbg !1673
  %44 = icmp eq i8 %43, 0, !dbg !1673
  br i1 %44, label %45, label %93, !dbg !1672

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1675
  br i1 %46, label %93, label %47, !dbg !1678

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1675, !tbaa !933
  br label %93, !dbg !1675

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %28), !dbg !1679
  call void @llvm.dbg.value(metadata i8* %49, metadata !1591, metadata !DIExpression()), !dbg !1655
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %28), !dbg !1683
  call void @llvm.dbg.value(metadata i8* %50, metadata !1592, metadata !DIExpression()), !dbg !1656
  br label %51, !dbg !1684

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %52, metadata !1591, metadata !DIExpression()), !dbg !1655
  %54 = and i8 %36, 1, !dbg !1685
  %55 = icmp eq i8 %54, 0, !dbg !1685
  br i1 %55, label %56, label %71, !dbg !1687

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1657
  %57 = load i8, i8* %52, align 1, !dbg !1688, !tbaa !933
  %58 = icmp eq i8 %57, 0, !dbg !1691
  br i1 %58, label %71, label %59, !dbg !1691

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %62, metadata !1594, metadata !DIExpression()), !dbg !1657
  %63 = icmp ult i64 %62, %40, !dbg !1692
  br i1 %63, label %64, label %66, !dbg !1695

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1692
  store i8 %60, i8* %65, align 1, !dbg !1692, !tbaa !933
  br label %66, !dbg !1692

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1695
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %68, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %67, metadata !1594, metadata !DIExpression()), !dbg !1657
  %69 = load i8, i8* %68, align 1, !dbg !1688, !tbaa !933
  %70 = icmp eq i8 %69, 0, !dbg !1691
  br i1 %70, label %71, label %59, !dbg !1691, !llvm.loop !1697

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1657
  call void @llvm.dbg.value(metadata i64 %72, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %53, metadata !1596, metadata !DIExpression()), !dbg !1659
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %73, metadata !1597, metadata !DIExpression()), !dbg !1660
  br label %93, !dbg !1700

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1661
  br label %75, !dbg !1701

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %76, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1664
  br label %77, !dbg !1702

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1661
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8 %79, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %78, metadata !1598, metadata !DIExpression()), !dbg !1661
  %80 = and i8 %79, 1, !dbg !1703
  %81 = icmp eq i8 %80, 0, !dbg !1703
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1705
  br label %83, !dbg !1705

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1706
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1664
  call void @llvm.dbg.value(metadata i8 %85, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %84, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i32 2, metadata !1588, metadata !DIExpression()), !dbg !1652
  %86 = and i8 %85, 1, !dbg !1707
  %87 = icmp eq i8 %86, 0, !dbg !1707
  br i1 %87, label %88, label %93, !dbg !1709

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1710
  br i1 %89, label %93, label %90, !dbg !1713

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1710, !tbaa !933
  br label %93, !dbg !1710

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1664
  br label %93, !dbg !1714

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1715
  unreachable, !dbg !1715

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1657
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], !dbg !1669
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1669
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1669
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1716
  call void @llvm.dbg.value(metadata i8 %101, metadata !1600, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %99, metadata !1597, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %97, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %94, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1717
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
  br label %121, !dbg !1718

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1719
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1657
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1658
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1665
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1666
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1667
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %125, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %122, metadata !1593, metadata !DIExpression()), !dbg !1717
  %130 = icmp eq i64 %125, -1, !dbg !1720
  br i1 %130, label %131, label %135, !dbg !1721

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1722
  %133 = load i8, i8* %132, align 1, !dbg !1722, !tbaa !933
  %134 = icmp eq i8 %133, 0, !dbg !1723
  br i1 %134, label %617, label %137, !dbg !1724

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1725
  br i1 %136, label %617, label %137, !dbg !1724

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1728
  br i1 %107, label %138, label %153, !dbg !1729

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1731
  %140 = and i1 %108, %130, !dbg !1732
  br i1 %140, label %141, label %143, !dbg !1732

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %142, metadata !1587, metadata !DIExpression()), !dbg !1651
  br label %143, !dbg !1734

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1587, metadata !DIExpression()), !dbg !1651
  %145 = icmp ugt i64 %139, %144, !dbg !1735
  br i1 %145, label %153, label %146, !dbg !1736

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1737
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1738
  %149 = icmp ne i32 %148, 0, !dbg !1739
  %150 = or i1 %149, %110, !dbg !1740
  %151 = xor i1 %149, true, !dbg !1740
  %152 = zext i1 %151 to i8, !dbg !1740
  br i1 %150, label %153, label %661, !dbg !1740

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1741
  call void @llvm.dbg.value(metadata i8 %155, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i64 %154, metadata !1587, metadata !DIExpression()), !dbg !1651
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1742
  %157 = load i8, i8* %156, align 1, !dbg !1742, !tbaa !933
  call void @llvm.dbg.value(metadata i8 %157, metadata !1604, metadata !DIExpression()), !dbg !1743
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
  ], !dbg !1744

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1745

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1746

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1727
  %161 = and i8 %126, 1, !dbg !1750
  %162 = icmp eq i8 %161, 0, !dbg !1750
  %163 = and i1 %114, %162, !dbg !1750
  br i1 %163, label %164, label %180, !dbg !1750

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1752
  br i1 %165, label %166, label %168, !dbg !1756

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1752
  store i8 39, i8* %167, align 1, !dbg !1752, !tbaa !933
  br label %168, !dbg !1752

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %169, metadata !1594, metadata !DIExpression()), !dbg !1657
  %170 = icmp ult i64 %169, %129, !dbg !1757
  br i1 %170, label %171, label %173, !dbg !1760

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1757
  store i8 36, i8* %172, align 1, !dbg !1757, !tbaa !933
  br label %173, !dbg !1757

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %174, metadata !1594, metadata !DIExpression()), !dbg !1657
  %175 = icmp ult i64 %174, %129, !dbg !1761
  br i1 %175, label %176, label %178, !dbg !1764

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1761
  store i8 39, i8* %177, align 1, !dbg !1761, !tbaa !933
  br label %178, !dbg !1761

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %179, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1665
  br label %180, !dbg !1765

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1716
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1716
  call void @llvm.dbg.value(metadata i8 %182, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %181, metadata !1594, metadata !DIExpression()), !dbg !1657
  %183 = icmp ult i64 %181, %129, !dbg !1766
  br i1 %183, label %184, label %186, !dbg !1769

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1766
  store i8 92, i8* %185, align 1, !dbg !1766, !tbaa !933
  br label %186, !dbg !1766

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %187, metadata !1594, metadata !DIExpression()), !dbg !1657
  br i1 %104, label %188, label %478, !dbg !1770

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1772
  %190 = icmp ult i64 %189, %154, !dbg !1773
  br i1 %190, label %191, label %467, !dbg !1774

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1775
  %193 = load i8, i8* %192, align 1, !dbg !1775, !tbaa !933
  %194 = add i8 %193, -48, !dbg !1776
  %195 = icmp ult i8 %194, 10, !dbg !1776
  br i1 %195, label %196, label %467, !dbg !1776

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1777
  br i1 %197, label %198, label %200, !dbg !1781

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1777
  store i8 48, i8* %199, align 1, !dbg !1777, !tbaa !933
  br label %200, !dbg !1777

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %201, metadata !1594, metadata !DIExpression()), !dbg !1657
  %202 = icmp ult i64 %201, %129, !dbg !1782
  br i1 %202, label %203, label %205, !dbg !1785

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1782
  store i8 48, i8* %204, align 1, !dbg !1782, !tbaa !933
  br label %205, !dbg !1782

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %206, metadata !1594, metadata !DIExpression()), !dbg !1657
  br label %467, !dbg !1786

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1787

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1788

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1789

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1791

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1793
  %213 = icmp ult i64 %212, %154, !dbg !1794
  br i1 %213, label %214, label %467, !dbg !1795

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1796
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1797
  %217 = load i8, i8* %216, align 1, !dbg !1797, !tbaa !933
  %218 = icmp eq i8 %217, 63, !dbg !1798
  br i1 %218, label %219, label %467, !dbg !1799

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1800
  %221 = load i8, i8* %220, align 1, !dbg !1800, !tbaa !933
  %222 = sext i8 %221 to i32, !dbg !1800
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
  ], !dbg !1801

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1802

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1604, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %212, metadata !1593, metadata !DIExpression()), !dbg !1717
  %225 = icmp ult i64 %123, %129, !dbg !1804
  br i1 %225, label %226, label %228, !dbg !1807

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1804
  store i8 63, i8* %227, align 1, !dbg !1804, !tbaa !933
  br label %228, !dbg !1804

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %229, metadata !1594, metadata !DIExpression()), !dbg !1657
  %230 = icmp ult i64 %229, %129, !dbg !1808
  br i1 %230, label %231, label %233, !dbg !1811

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1808
  store i8 34, i8* %232, align 1, !dbg !1808, !tbaa !933
  br label %233, !dbg !1808

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %234, metadata !1594, metadata !DIExpression()), !dbg !1657
  %235 = icmp ult i64 %234, %129, !dbg !1812
  br i1 %235, label %236, label %238, !dbg !1815

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1812
  store i8 34, i8* %237, align 1, !dbg !1812, !tbaa !933
  br label %238, !dbg !1812

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %239, metadata !1594, metadata !DIExpression()), !dbg !1657
  %240 = icmp ult i64 %239, %129, !dbg !1816
  br i1 %240, label %241, label %243, !dbg !1819

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1816
  store i8 63, i8* %242, align 1, !dbg !1816, !tbaa !933
  br label %243, !dbg !1816

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %244, metadata !1594, metadata !DIExpression()), !dbg !1657
  br label %467, !dbg !1820

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1608, metadata !DIExpression()), !dbg !1821
  br label %255, !dbg !1822

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1608, metadata !DIExpression()), !dbg !1821
  br label %255, !dbg !1823

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1608, metadata !DIExpression()), !dbg !1821
  br label %253, !dbg !1824

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1608, metadata !DIExpression()), !dbg !1821
  br label %253, !dbg !1825

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1608, metadata !DIExpression()), !dbg !1821
  br label %255, !dbg !1826

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1608, metadata !DIExpression()), !dbg !1821
  br i1 %114, label %251, label %252, !dbg !1827

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1828

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1831

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1833
  call void @llvm.dbg.value(metadata i8 %254, metadata !1608, metadata !DIExpression()), !dbg !1821
  br i1 %113, label %255, label %661, !dbg !1834

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1833
  call void @llvm.dbg.value(metadata i8 %256, metadata !1608, metadata !DIExpression()), !dbg !1821
  br i1 %103, label %524, label %478, !dbg !1836

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1837
  br i1 %258, label %259, label %264, !dbg !1839

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1840, !tbaa !933
  %261 = icmp ne i8 %260, 0, !dbg !1841
  %262 = icmp ne i64 %122, 0, !dbg !1842
  %263 = or i1 %262, %261, !dbg !1844
  br i1 %263, label %467, label %270, !dbg !1844

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1845
  %266 = icmp ne i64 %122, 0, !dbg !1842
  %267 = or i1 %266, %265, !dbg !1839
  br i1 %267, label %467, label %270, !dbg !1839

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1842
  br i1 %269, label %270, label %467, !dbg !1846

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1728
  br label %271, !dbg !1847

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1833
  call void @llvm.dbg.value(metadata i8 %272, metadata !1611, metadata !DIExpression()), !dbg !1728
  br i1 %113, label %467, label %661, !dbg !1848

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1728
  br i1 %114, label %274, label %467, !dbg !1850

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1851

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1854
  %277 = icmp ne i64 %124, 0, !dbg !1856
  %278 = or i1 %277, %276, !dbg !1857
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1857
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %280, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %279, metadata !1595, metadata !DIExpression()), !dbg !1658
  %281 = icmp ult i64 %123, %280, !dbg !1858
  br i1 %281, label %282, label %284, !dbg !1861

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1858
  store i8 39, i8* %283, align 1, !dbg !1858, !tbaa !933
  br label %284, !dbg !1858

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %285, metadata !1594, metadata !DIExpression()), !dbg !1657
  %286 = icmp ult i64 %285, %280, !dbg !1862
  br i1 %286, label %287, label %289, !dbg !1865

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1862
  store i8 92, i8* %288, align 1, !dbg !1862, !tbaa !933
  br label %289, !dbg !1862

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %290, metadata !1594, metadata !DIExpression()), !dbg !1657
  %291 = icmp ult i64 %290, %280, !dbg !1866
  br i1 %291, label %292, label %294, !dbg !1869

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1866
  store i8 39, i8* %293, align 1, !dbg !1866, !tbaa !933
  br label %294, !dbg !1866

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %295, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1665
  br label %467, !dbg !1870

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1871

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1612, metadata !DIExpression()), !dbg !1872
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1873
  %299 = load i16*, i16** %298, align 8, !dbg !1873, !tbaa !780
  %300 = zext i8 %157 to i64, !dbg !1873
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1873
  %302 = load i16, i16* %301, align 2, !dbg !1873, !tbaa !1244
  %303 = lshr i16 %302, 14, !dbg !1875
  %304 = trunc i16 %303 to i8, !dbg !1875
  %305 = and i8 %304, 1, !dbg !1875
  call void @llvm.dbg.value(metadata i8 %305, metadata !1615, metadata !DIExpression()), !dbg !1876
  br label %359, !dbg !1877

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1878
  store i64 0, i64* %10, align 8, !dbg !1879
  call void @llvm.dbg.value(metadata i64 0, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1876
  %307 = icmp eq i64 %154, -1, !dbg !1880
  br i1 %307, label %308, label %310, !dbg !1882

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %309, metadata !1587, metadata !DIExpression()), !dbg !1651
  br label %310, !dbg !1884

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1885
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  br label %312, !dbg !1886

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1887
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1888
  call void @llvm.dbg.value(metadata i8 %314, metadata !1615, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1889
  %315 = add i64 %313, %122, !dbg !1890
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1891
  %317 = sub i64 %311, %315, !dbg !1892
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1616, metadata !DIExpression(DW_OP_deref)), !dbg !1893
  call void @llvm.dbg.value(metadata i32* %12, metadata !1634, metadata !DIExpression(DW_OP_deref)), !dbg !1894
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %318, metadata !1637, metadata !DIExpression()), !dbg !1896
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1897

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %313, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %313, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %313, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %313, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %313, metadata !1612, metadata !DIExpression()), !dbg !1872
  %320 = icmp ugt i64 %311, %315, !dbg !1898
  br i1 %320, label %321, label %344, !dbg !1900

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1612, metadata !DIExpression()), !dbg !1872
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1901
  %325 = load i8, i8* %324, align 1, !dbg !1901, !tbaa !933
  %326 = icmp eq i8 %325, 0, !dbg !1900
  br i1 %326, label %344, label %327, !dbg !1902

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %328, metadata !1612, metadata !DIExpression()), !dbg !1872
  %329 = add i64 %328, %122, !dbg !1904
  %330 = icmp ult i64 %329, %311, !dbg !1898
  br i1 %330, label %321, label %344, !dbg !1900, !llvm.loop !1905

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1906
  %333 = and i1 %116, %332, !dbg !1909
  call void @llvm.dbg.value(metadata i64 1, metadata !1638, metadata !DIExpression()), !dbg !1910
  br i1 %333, label %334, label %347, !dbg !1909

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1638, metadata !DIExpression()), !dbg !1910
  %336 = add i64 %335, %315, !dbg !1911
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1912
  %338 = load i8, i8* %337, align 1, !dbg !1912, !tbaa !933
  %339 = sext i8 %338 to i32, !dbg !1912
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1913

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %341, metadata !1638, metadata !DIExpression()), !dbg !1910
  %342 = icmp ult i64 %341, %318, !dbg !1906
  br i1 %342, label %334, label %347, !dbg !1915, !llvm.loop !1916

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 %314, metadata !1615, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 %314, metadata !1615, metadata !DIExpression()), !dbg !1876
  br label %344, !dbg !1918

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1615, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %352, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1918
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1919, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %348, metadata !1634, metadata !DIExpression()), !dbg !1894
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !1921
  %350 = icmp eq i32 %349, 0, !dbg !1921
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1922
  call void @llvm.dbg.value(metadata i8 %351, metadata !1615, metadata !DIExpression()), !dbg !1876
  %352 = add i64 %318, %313, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %352, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 %351, metadata !1615, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %352, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1918
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1616, metadata !DIExpression(DW_OP_deref)), !dbg !1893
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1924
  %354 = icmp eq i32 %353, 0, !dbg !1925
  br i1 %354, label %312, label %355, !dbg !1926, !llvm.loop !1927

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1929
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i32 2, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 2, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 2, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 2, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 2, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i32 %94, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %94, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %94, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %94, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 %94, metadata !1588, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 %100, metadata !1598, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %311, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %351, metadata !1615, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %352, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1918
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1929
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1930
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1931
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %362, metadata !1615, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %361, metadata !1612, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %360, metadata !1587, metadata !DIExpression()), !dbg !1651
  %363 = and i8 %362, 1, !dbg !1932
  %364 = icmp ne i8 %363, 0, !dbg !1932
  call void @llvm.dbg.value(metadata i8 %363, metadata !1611, metadata !DIExpression()), !dbg !1728
  %365 = icmp ult i64 %361, 2, !dbg !1933
  %366 = or i1 %364, %115, !dbg !1934
  %367 = and i1 %365, %366, !dbg !1935
  br i1 %367, label %467, label %368, !dbg !1935

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %369, metadata !1645, metadata !DIExpression()), !dbg !1937
  br label %370, !dbg !1938

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1939
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1943
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1665
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1939
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1945
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1727
  call void @llvm.dbg.value(metadata i8 %376, metadata !1610, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %375, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 %374, metadata !1604, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %373, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %372, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %371, metadata !1593, metadata !DIExpression()), !dbg !1717
  br i1 %366, label %423, label %377, !dbg !1949

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1950

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1727
  %379 = and i8 %373, 1, !dbg !1953
  %380 = icmp eq i8 %379, 0, !dbg !1953
  %381 = and i1 %114, %380, !dbg !1953
  br i1 %381, label %382, label %398, !dbg !1953

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1955
  br i1 %383, label %384, label %386, !dbg !1959

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1955
  store i8 39, i8* %385, align 1, !dbg !1955, !tbaa !933
  br label %386, !dbg !1955

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %387, metadata !1594, metadata !DIExpression()), !dbg !1657
  %388 = icmp ult i64 %387, %129, !dbg !1960
  br i1 %388, label %389, label %391, !dbg !1963

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1960
  store i8 36, i8* %390, align 1, !dbg !1960, !tbaa !933
  br label %391, !dbg !1960

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %392, metadata !1594, metadata !DIExpression()), !dbg !1657
  %393 = icmp ult i64 %392, %129, !dbg !1964
  br i1 %393, label %394, label %396, !dbg !1967

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1964
  store i8 39, i8* %395, align 1, !dbg !1964, !tbaa !933
  br label %396, !dbg !1964

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %397, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1665
  br label %398, !dbg !1968

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1716
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1716
  call void @llvm.dbg.value(metadata i8 %400, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %399, metadata !1594, metadata !DIExpression()), !dbg !1657
  %401 = icmp ult i64 %399, %129, !dbg !1969
  br i1 %401, label %402, label %404, !dbg !1972

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1969
  store i8 92, i8* %403, align 1, !dbg !1969, !tbaa !933
  br label %404, !dbg !1969

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %405, metadata !1594, metadata !DIExpression()), !dbg !1657
  %406 = icmp ult i64 %405, %129, !dbg !1973
  br i1 %406, label %407, label %411, !dbg !1976

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1973
  %409 = or i8 %408, 48, !dbg !1973
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1973
  store i8 %409, i8* %410, align 1, !dbg !1973, !tbaa !933
  br label %411, !dbg !1973

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %412, metadata !1594, metadata !DIExpression()), !dbg !1657
  %413 = icmp ult i64 %412, %129, !dbg !1977
  br i1 %413, label %414, label %419, !dbg !1980

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1977
  %416 = and i8 %415, 7, !dbg !1977
  %417 = or i8 %416, 48, !dbg !1977
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1977
  store i8 %417, i8* %418, align 1, !dbg !1977, !tbaa !933
  br label %419, !dbg !1977

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %420, metadata !1594, metadata !DIExpression()), !dbg !1657
  %421 = and i8 %374, 7, !dbg !1981
  %422 = or i8 %421, 48, !dbg !1982
  call void @llvm.dbg.value(metadata i8 %422, metadata !1604, metadata !DIExpression()), !dbg !1743
  br label %432, !dbg !1983

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1984
  %425 = icmp eq i8 %424, 0, !dbg !1984
  br i1 %425, label %432, label %426, !dbg !1985

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1986
  br i1 %427, label %428, label %430, !dbg !1989

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1986
  store i8 92, i8* %429, align 1, !dbg !1986, !tbaa !933
  br label %430, !dbg !1986

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %431, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1726
  br label %432, !dbg !1990

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1991
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1665
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1992
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1993
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1995
  call void @llvm.dbg.value(metadata i8 %437, metadata !1610, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %436, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 %435, metadata !1604, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %434, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %433, metadata !1594, metadata !DIExpression()), !dbg !1657
  %438 = add i64 %371, 1, !dbg !1996
  %439 = icmp ugt i64 %369, %438, !dbg !1998
  br i1 %439, label %440, label %562, !dbg !1999

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2000
  %442 = icmp ne i8 %441, 0, !dbg !2000
  %443 = and i8 %437, 1, !dbg !2000
  %444 = icmp eq i8 %443, 0, !dbg !2000
  %445 = and i1 %442, %444, !dbg !2000
  br i1 %445, label %446, label %457, !dbg !2000

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2003
  br i1 %447, label %448, label %450, !dbg !2007

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2003
  store i8 39, i8* %449, align 1, !dbg !2003, !tbaa !933
  br label %450, !dbg !2003

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %451, metadata !1594, metadata !DIExpression()), !dbg !1657
  %452 = icmp ult i64 %451, %129, !dbg !2008
  br i1 %452, label %453, label %455, !dbg !2011

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2008
  store i8 39, i8* %454, align 1, !dbg !2008, !tbaa !933
  br label %455, !dbg !2008

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %456, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1665
  br label %457, !dbg !2012

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2013
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1716
  call void @llvm.dbg.value(metadata i8 %459, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %458, metadata !1594, metadata !DIExpression()), !dbg !1657
  %460 = icmp ult i64 %458, %129, !dbg !2014
  br i1 %460, label %461, label %463, !dbg !2016

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2014
  store i8 %435, i8* %462, align 1, !dbg !2014, !tbaa !933
  br label %463, !dbg !2014

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %464, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %438, metadata !1593, metadata !DIExpression()), !dbg !1717
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2017
  %466 = load i8, i8* %465, align 1, !dbg !2017, !tbaa !933
  call void @llvm.dbg.value(metadata i8 %466, metadata !1604, metadata !DIExpression()), !dbg !1743
  br label %370, !dbg !2018, !llvm.loop !2019

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2022
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1716
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1658
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2023
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1716
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1716
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1741
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1741
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1741
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %476, metadata !1611, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 %475, metadata !1610, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %155, metadata !1609, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 %474, metadata !1604, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %473, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %472, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %471, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %470, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %469, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %468, metadata !1593, metadata !DIExpression()), !dbg !1717
  br i1 %105, label %489, label %478, !dbg !2024

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
  br i1 %112, label %490, label %512, !dbg !2026

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2027

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
  %501 = lshr i8 %494, 5, !dbg !2028
  %502 = zext i8 %501 to i64, !dbg !2028
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2029
  %504 = load i32, i32* %503, align 4, !dbg !2029, !tbaa !897
  %505 = and i8 %494, 31, !dbg !2030
  %506 = zext i8 %505 to i32, !dbg !2030
  %507 = shl i32 1, %506, !dbg !2031
  %508 = and i32 %504, %507, !dbg !2031
  %509 = icmp eq i32 %508, 0, !dbg !2031
  %510 = icmp eq i8 %155, 0, !dbg !2032
  %511 = and i1 %510, %509, !dbg !2033
  br i1 %511, label %562, label %524, !dbg !2033

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
  %523 = icmp eq i8 %155, 0, !dbg !2032
  br i1 %523, label %562, label %524, !dbg !2034

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2035
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1716
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1658
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2023
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1665
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1666
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2036
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1741
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %532, metadata !1611, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 %531, metadata !1604, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %530, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %529, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %528, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %527, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %526, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %525, metadata !1593, metadata !DIExpression()), !dbg !1717
  br i1 %110, label %534, label %661, !dbg !2039

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1727
  %535 = and i8 %529, 1, !dbg !2041
  %536 = icmp eq i8 %535, 0, !dbg !2041
  %537 = and i1 %114, %536, !dbg !2041
  br i1 %537, label %538, label %554, !dbg !2041

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2043
  br i1 %539, label %540, label %542, !dbg !2047

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2043
  store i8 39, i8* %541, align 1, !dbg !2043, !tbaa !933
  br label %542, !dbg !2043

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %543, metadata !1594, metadata !DIExpression()), !dbg !1657
  %544 = icmp ult i64 %543, %533, !dbg !2048
  br i1 %544, label %545, label %547, !dbg !2051

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2048
  store i8 36, i8* %546, align 1, !dbg !2048, !tbaa !933
  br label %547, !dbg !2048

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %548, metadata !1594, metadata !DIExpression()), !dbg !1657
  %549 = icmp ult i64 %548, %533, !dbg !2052
  br i1 %549, label %550, label %552, !dbg !2055

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2052
  store i8 39, i8* %551, align 1, !dbg !2052, !tbaa !933
  br label %552, !dbg !2052

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %553, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1665
  br label %554, !dbg !2056

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2013
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1716
  call void @llvm.dbg.value(metadata i8 %556, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %555, metadata !1594, metadata !DIExpression()), !dbg !1657
  %557 = icmp ult i64 %555, %533, !dbg !2057
  br i1 %557, label %558, label %560, !dbg !2060

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2057
  store i8 92, i8* %559, align 1, !dbg !2057, !tbaa !933
  br label %560, !dbg !2057

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %561, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %572, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %571, metadata !1611, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 %570, metadata !1610, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %569, metadata !1604, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %568, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %567, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %566, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %565, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %564, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %563, metadata !1593, metadata !DIExpression()), !dbg !1717
  br label %589, !dbg !2061

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2035
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1716
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1658
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2023
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1665
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1666
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2064
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1741
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1741
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %571, metadata !1611, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 %570, metadata !1610, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %569, metadata !1604, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %568, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %567, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %566, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %565, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %564, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %563, metadata !1593, metadata !DIExpression()), !dbg !1717
  %573 = and i8 %567, 1, !dbg !2061
  %574 = icmp ne i8 %573, 0, !dbg !2061
  %575 = and i8 %570, 1, !dbg !2061
  %576 = icmp eq i8 %575, 0, !dbg !2061
  %577 = and i1 %574, %576, !dbg !2061
  br i1 %577, label %578, label %589, !dbg !2061

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2065
  br i1 %579, label %580, label %582, !dbg !2069

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2065
  store i8 39, i8* %581, align 1, !dbg !2065, !tbaa !933
  br label %582, !dbg !2065

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %583, metadata !1594, metadata !DIExpression()), !dbg !1657
  %584 = icmp ult i64 %583, %572, !dbg !2070
  br i1 %584, label %585, label %587, !dbg !2073

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2070
  store i8 39, i8* %586, align 1, !dbg !2070, !tbaa !933
  br label %587, !dbg !2070

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %588, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1665
  br label %589, !dbg !2074

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2013
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1716
  call void @llvm.dbg.value(metadata i8 %598, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %597, metadata !1594, metadata !DIExpression()), !dbg !1657
  %599 = icmp ult i64 %597, %590, !dbg !2075
  br i1 %599, label %600, label %602, !dbg !2078

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2075
  store i8 %592, i8* %601, align 1, !dbg !2075, !tbaa !933
  br label %602, !dbg !2075

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %603, metadata !1594, metadata !DIExpression()), !dbg !1657
  %604 = and i8 %591, 1, !dbg !2079
  %605 = icmp eq i8 %604, 0, !dbg !2079
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2081
  call void @llvm.dbg.value(metadata i8 %606, metadata !1603, metadata !DIExpression()), !dbg !1667
  br label %607, !dbg !2082

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2035
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1716
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1658
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2023
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1665
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1716
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1667
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %614, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 %613, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %612, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %611, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %610, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %609, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %608, metadata !1593, metadata !DIExpression()), !dbg !1717
  %616 = add i64 %608, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %616, metadata !1593, metadata !DIExpression()), !dbg !1717
  br label %121, !dbg !2084, !llvm.loop !2085

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %618, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %618, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %125, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %125, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %126, metadata !1601, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %127, metadata !1602, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 %128, metadata !1603, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  %619 = icmp eq i64 %123, 0, !dbg !2087
  %620 = and i1 %114, %619, !dbg !2089
  %621 = xor i1 %620, true, !dbg !2089
  %622 = or i1 %110, %621, !dbg !2089
  br i1 %622, label %623, label %661, !dbg !2089

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2090
  %625 = xor i1 %624, true, !dbg !2090
  %626 = and i8 %127, 1, !dbg !2092
  %627 = icmp eq i8 %626, 0, !dbg !2092
  %628 = or i1 %627, %625, !dbg !2090
  br i1 %628, label %638, label %629, !dbg !2090

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2093
  %631 = icmp eq i8 %630, 0, !dbg !2093
  br i1 %631, label %634, label %632, !dbg !2096

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %618, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %618, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %618, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %618, metadata !1587, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %95, metadata !1591, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %96, metadata !1592, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %124, metadata !1595, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %125, metadata !1587, metadata !DIExpression()), !dbg !1651
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2097
  br label %671, !dbg !2098

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2099
  %636 = icmp ne i64 %124, 0, !dbg !2101
  %637 = and i1 %636, %635, !dbg !2102
  br i1 %637, label %27, label %638, !dbg !2102

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %129, metadata !1585, metadata !DIExpression()), !dbg !1649
  %639 = icmp ne i8* %98, null, !dbg !2103
  %640 = and i1 %639, %110, !dbg !2105
  br i1 %640, label %641, label %656, !dbg !2105

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %123, metadata !1594, metadata !DIExpression()), !dbg !1657
  %642 = load i8, i8* %98, align 1, !dbg !2106, !tbaa !933
  %643 = icmp eq i8 %642, 0, !dbg !2109
  br i1 %643, label %656, label %644, !dbg !2109

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %647, metadata !1594, metadata !DIExpression()), !dbg !1657
  %648 = icmp ult i64 %647, %129, !dbg !2110
  br i1 %648, label %649, label %651, !dbg !2113

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2110
  store i8 %645, i8* %650, align 1, !dbg !2110, !tbaa !933
  br label %651, !dbg !2110

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2113
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %653, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i64 %652, metadata !1594, metadata !DIExpression()), !dbg !1657
  %654 = load i8, i8* %653, align 1, !dbg !2106, !tbaa !933
  %655 = icmp eq i8 %654, 0, !dbg !2109
  br i1 %655, label %656, label %644, !dbg !2109, !llvm.loop !2115

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1657
  call void @llvm.dbg.value(metadata i64 %657, metadata !1594, metadata !DIExpression()), !dbg !1657
  %658 = icmp ult i64 %657, %129, !dbg !2117
  br i1 %658, label %659, label %671, !dbg !2119

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2120
  store i8 0, i8* %660, align 1, !dbg !2121, !tbaa !933
  br label %671, !dbg !2120

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1585, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %663, metadata !1587, metadata !DIExpression()), !dbg !1651
  %665 = icmp ne i32 %662, 2, !dbg !2122
  %666 = icmp eq i8 %102, 0, !dbg !2124
  %667 = or i1 %665, %666, !dbg !2125
  call void @llvm.dbg.value(metadata i32 4, metadata !1588, metadata !DIExpression()), !dbg !1652
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %668, metadata !1588, metadata !DIExpression()), !dbg !1652
  %669 = and i32 %5, -3, !dbg !2126
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2127
  br label %671, !dbg !2128

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2129
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2134, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %1, metadata !2135, metadata !DIExpression()), !dbg !2139
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2140
  call void @llvm.dbg.value(metadata i8* %3, metadata !2136, metadata !DIExpression()), !dbg !2141
  %4 = icmp eq i8* %3, %0, !dbg !2142
  br i1 %4, label %5, label %71, !dbg !2144

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %6, metadata !2137, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %6, metadata !2147, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8* null, metadata !2153, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 85, metadata !2154, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i8 84, metadata !2155, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8 70, metadata !2156, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 45, metadata !2157, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 56, metadata !2158, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 0, metadata !2159, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2161, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2175
  %7 = load i8, i8* %6, align 1, !dbg !2176, !tbaa !933
  %8 = and i8 %7, -33, !dbg !2176
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2176

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2178, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* null, metadata !2183, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 84, metadata !2184, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 70, metadata !2185, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 45, metadata !2186, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 56, metadata !2187, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2191, metadata !DIExpression()), !dbg !2204
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2205
  %11 = load i8, i8* %10, align 1, !dbg !2205, !tbaa !933
  %12 = and i8 %11, -33, !dbg !2205
  %13 = icmp eq i8 %12, 84, !dbg !2205
  br i1 %13, label %14, label %68, !dbg !2205

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2207, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8* null, metadata !2212, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8 70, metadata !2213, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 45, metadata !2214, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 56, metadata !2215, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i8 0, metadata !2217, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2231
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2232
  %16 = load i8, i8* %15, align 1, !dbg !2232, !tbaa !933
  %17 = and i8 %16, -33, !dbg !2232
  %18 = icmp eq i8 %17, 70, !dbg !2232
  br i1 %18, label %19, label %68, !dbg !2232

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2234, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* null, metadata !2239, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8 45, metadata !2240, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 56, metadata !2241, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2242, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8 0, metadata !2243, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 0, metadata !2244, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 0, metadata !2245, metadata !DIExpression()), !dbg !2256
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2257
  %21 = load i8, i8* %20, align 1, !dbg !2257, !tbaa !933
  %22 = icmp eq i8 %21, 45, !dbg !2257
  br i1 %22, label %23, label %68, !dbg !2259

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2260, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* null, metadata !2265, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 56, metadata !2266, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 0, metadata !2267, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8 0, metadata !2268, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2280
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2281
  %25 = load i8, i8* %24, align 1, !dbg !2281, !tbaa !933
  %26 = icmp eq i8 %25, 56, !dbg !2281
  br i1 %26, label %27, label %68, !dbg !2283

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2284, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* null, metadata !2289, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 0, metadata !2291, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 0, metadata !2293, metadata !DIExpression()), !dbg !2302
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2303
  %29 = load i8, i8* %28, align 1, !dbg !2303, !tbaa !933
  %30 = icmp eq i8 %29, 0, !dbg !2303
  br i1 %30, label %31, label %68, !dbg !2305

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2306, !tbaa !933
  %33 = icmp eq i8 %32, 96, !dbg !2307
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2306
  br label %71, !dbg !2308

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2178, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* null, metadata !2183, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i8 66, metadata !2184, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 49, metadata !2185, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 56, metadata !2186, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 48, metadata !2187, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i8 51, metadata !2188, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 48, metadata !2189, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 0, metadata !2191, metadata !DIExpression()), !dbg !2321
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2322
  %37 = load i8, i8* %36, align 1, !dbg !2322, !tbaa !933
  %38 = and i8 %37, -33, !dbg !2322
  %39 = icmp eq i8 %38, 66, !dbg !2322
  br i1 %39, label %40, label %68, !dbg !2322

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2207, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* null, metadata !2212, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 49, metadata !2213, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 56, metadata !2214, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 48, metadata !2215, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 51, metadata !2216, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 48, metadata !2217, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2332
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2333
  %42 = load i8, i8* %41, align 1, !dbg !2333, !tbaa !933
  %43 = icmp eq i8 %42, 49, !dbg !2333
  br i1 %43, label %44, label %68, !dbg !2334

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2234, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8* null, metadata !2239, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8 56, metadata !2240, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 48, metadata !2241, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8 51, metadata !2242, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 48, metadata !2243, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2244, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8 0, metadata !2245, metadata !DIExpression()), !dbg !2343
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2344
  %46 = load i8, i8* %45, align 1, !dbg !2344, !tbaa !933
  %47 = icmp eq i8 %46, 56, !dbg !2344
  br i1 %47, label %48, label %68, !dbg !2345

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2260, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* null, metadata !2265, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8 48, metadata !2266, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 51, metadata !2267, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8 48, metadata !2268, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2353
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2354
  %50 = load i8, i8* %49, align 1, !dbg !2354, !tbaa !933
  %51 = icmp eq i8 %50, 48, !dbg !2354
  br i1 %51, label %52, label %68, !dbg !2355

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2284, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* null, metadata !2289, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8 51, metadata !2290, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 48, metadata !2291, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 0, metadata !2293, metadata !DIExpression()), !dbg !2362
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2363
  %54 = load i8, i8* %53, align 1, !dbg !2363, !tbaa !933
  %55 = icmp eq i8 %54, 51, !dbg !2363
  br i1 %55, label %56, label %68, !dbg !2364

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2365, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8* null, metadata !2370, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 48, metadata !2371, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 0, metadata !2372, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2373, metadata !DIExpression()), !dbg !2381
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2382
  %58 = load i8, i8* %57, align 1, !dbg !2382, !tbaa !933
  %59 = icmp eq i8 %58, 48, !dbg !2382
  br i1 %59, label %60, label %68, !dbg !2384

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2385, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* null, metadata !2390, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 0, metadata !2391, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 0, metadata !2392, metadata !DIExpression()), !dbg !2399
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2400
  %62 = load i8, i8* %61, align 1, !dbg !2400, !tbaa !933
  %63 = icmp eq i8 %62, 0, !dbg !2400
  br i1 %63, label %64, label %68, !dbg !2402

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2403, !tbaa !933
  %66 = icmp eq i8 %65, 96, !dbg !2404
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2403
  br label %71, !dbg !2405

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2406
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2407
  br label %71, !dbg !2408

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2409
  ret i8* %72, !dbg !2410
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2415, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %1, metadata !2416, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2417, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* %0, metadata !2421, metadata !DIExpression()) #11, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %1, metadata !2426, metadata !DIExpression()) #11, !dbg !2436
  call void @llvm.dbg.value(metadata i64* null, metadata !2427, metadata !DIExpression()) #11, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2428, metadata !DIExpression()) #11, !dbg !2438
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2439
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2439
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2429, metadata !DIExpression()) #11, !dbg !2440
  %6 = tail call i32* @__errno_location() #17, !dbg !2441
  %7 = load i32, i32* %6, align 4, !dbg !2441, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %7, metadata !2430, metadata !DIExpression()) #11, !dbg !2442
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2443
  %9 = load i32, i32* %8, align 4, !dbg !2443, !tbaa !1517
  %10 = or i32 %9, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %10, metadata !2431, metadata !DIExpression()) #11, !dbg !2445
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2446
  %12 = load i32, i32* %11, align 8, !dbg !2446, !tbaa !1457
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2447
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2448
  %15 = load i8*, i8** %14, align 8, !dbg !2448, !tbaa !1543
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2449
  %17 = load i8*, i8** %16, align 8, !dbg !2449, !tbaa !1546
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2450
  %19 = add i64 %18, 1, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %19, metadata !2432, metadata !DIExpression()) #11, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %19, metadata !2453, metadata !DIExpression()) #11, !dbg !2458
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %20, metadata !2433, metadata !DIExpression()) #11, !dbg !2461
  %21 = load i32, i32* %11, align 8, !dbg !2462, !tbaa !1457
  %22 = load i8*, i8** %14, align 8, !dbg !2463, !tbaa !1543
  %23 = load i8*, i8** %16, align 8, !dbg !2464, !tbaa !1546
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2465
  store i32 %7, i32* %6, align 4, !dbg !2466, !tbaa !897
  ret i8* %20, !dbg !2467
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2422 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2421, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %1, metadata !2426, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64* %2, metadata !2427, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2428, metadata !DIExpression()), !dbg !2471
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2472
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2472
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2429, metadata !DIExpression()), !dbg !2473
  %7 = tail call i32* @__errno_location() #17, !dbg !2474
  %8 = load i32, i32* %7, align 4, !dbg !2474, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %8, metadata !2430, metadata !DIExpression()), !dbg !2475
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2476
  %10 = load i32, i32* %9, align 4, !dbg !2476, !tbaa !1517
  %11 = icmp ne i64* %2, null, !dbg !2477
  %12 = xor i1 %11, true, !dbg !2477
  %13 = zext i1 %12 to i32, !dbg !2477
  %14 = or i32 %10, %13, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %14, metadata !2431, metadata !DIExpression()), !dbg !2479
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2480
  %16 = load i32, i32* %15, align 8, !dbg !2480, !tbaa !1457
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2481
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2482
  %19 = load i8*, i8** %18, align 8, !dbg !2482, !tbaa !1543
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2483
  %21 = load i8*, i8** %20, align 8, !dbg !2483, !tbaa !1546
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2484
  %23 = add i64 %22, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %23, metadata !2432, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %23, metadata !2453, metadata !DIExpression()) #11, !dbg !2487
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2489
  call void @llvm.dbg.value(metadata i8* %24, metadata !2433, metadata !DIExpression()), !dbg !2490
  %25 = load i32, i32* %15, align 8, !dbg !2491, !tbaa !1457
  %26 = load i8*, i8** %18, align 8, !dbg !2492, !tbaa !1543
  %27 = load i8*, i8** %20, align 8, !dbg !2493, !tbaa !1546
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2494
  store i32 %8, i32* %7, align 4, !dbg !2495, !tbaa !897
  br i1 %11, label %29, label %30, !dbg !2496

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2497, !tbaa !905
  br label %30, !dbg !2499

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2501 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2505, !tbaa !780
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2503, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 1, metadata !2504, metadata !DIExpression()), !dbg !2507
  %2 = load i32, i32* @nslots, align 4, !dbg !2508, !tbaa !897
  %3 = icmp sgt i32 %2, 1, !dbg !2511
  br i1 %3, label %4, label %12, !dbg !2512

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2504, metadata !DIExpression()), !dbg !2507
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2513
  %7 = load i8*, i8** %6, align 8, !dbg !2513, !tbaa !2514
  tail call void @free(i8* %7) #11, !dbg !2516
  %8 = add nuw nsw i64 %5, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i32 undef, metadata !2504, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2507
  %9 = load i32, i32* @nslots, align 4, !dbg !2508, !tbaa !897
  %10 = sext i32 %9 to i64, !dbg !2511
  %11 = icmp slt i64 %8, %10, !dbg !2511
  br i1 %11, label %4, label %12, !dbg !2512, !llvm.loop !2518

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2520
  %14 = load i8*, i8** %13, align 8, !dbg !2520, !tbaa !2514
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2522
  br i1 %15, label %17, label %16, !dbg !2523

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2524
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2526, !tbaa !2527
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2528, !tbaa !2514
  br label %17, !dbg !2529

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2530
  br i1 %18, label %21, label %19, !dbg !2532

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2533
  tail call void @free(i8* %20) #11, !dbg !2535
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2536, !tbaa !780
  br label %21, !dbg !2537

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2538, !tbaa !897
  ret void, !dbg !2539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2540 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8* %1, metadata !2545, metadata !DIExpression()), !dbg !2547
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2548
  ret i8* %3, !dbg !2549
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2550 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %1, metadata !2555, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %2, metadata !2556, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2557, metadata !DIExpression()), !dbg !2572
  %5 = tail call i32* @__errno_location() #17, !dbg !2573
  %6 = load i32, i32* %5, align 4, !dbg !2573, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %6, metadata !2558, metadata !DIExpression()), !dbg !2574
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2575, !tbaa !780
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2559, metadata !DIExpression()), !dbg !2576
  %8 = icmp slt i32 %0, 0, !dbg !2577
  br i1 %8, label %9, label %10, !dbg !2579

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2580
  unreachable, !dbg !2580

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2581, !tbaa !897
  %12 = icmp sgt i32 %11, %0, !dbg !2582
  br i1 %12, label %34, label %13, !dbg !2583

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2584
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2563, metadata !DIExpression()), !dbg !2585
  %15 = icmp eq i32 %0, 2147483647, !dbg !2586
  br i1 %15, label %16, label %17, !dbg !2588

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2589
  unreachable, !dbg !2589

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2590
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2590
  %20 = add nsw i32 %0, 1, !dbg !2591
  %21 = sext i32 %20 to i64, !dbg !2592
  %22 = shl nsw i64 %21, 4, !dbg !2593
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2594
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2594
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2559, metadata !DIExpression()), !dbg !2576
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2595, !tbaa !780
  br i1 %14, label %25, label %26, !dbg !2596

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2597, !tbaa.struct !2599
  br label %26, !dbg !2600

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2601, !tbaa !897
  %28 = sext i32 %27 to i64, !dbg !2602
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2602
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2603
  %31 = sub nsw i32 %20, %27, !dbg !2604
  %32 = sext i32 %31 to i64, !dbg !2605
  %33 = shl nsw i64 %32, 4, !dbg !2606
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2603
  store i32 %20, i32* @nslots, align 4, !dbg !2607, !tbaa !897
  br label %34, !dbg !2608

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2609
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2559, metadata !DIExpression()), !dbg !2576
  %36 = sext i32 %0 to i64, !dbg !2610
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2611
  %38 = load i64, i64* %37, align 8, !dbg !2611, !tbaa !2527
  call void @llvm.dbg.value(metadata i64 %38, metadata !2564, metadata !DIExpression()), !dbg !2612
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2613
  %40 = load i8*, i8** %39, align 8, !dbg !2613, !tbaa !2514
  call void @llvm.dbg.value(metadata i8* %40, metadata !2566, metadata !DIExpression()), !dbg !2614
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2615
  %42 = load i32, i32* %41, align 4, !dbg !2615, !tbaa !1517
  %43 = or i32 %42, 1, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %43, metadata !2567, metadata !DIExpression()), !dbg !2617
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2618
  %45 = load i32, i32* %44, align 8, !dbg !2618, !tbaa !1457
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2619
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2620
  %48 = load i8*, i8** %47, align 8, !dbg !2620, !tbaa !1543
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2621
  %50 = load i8*, i8** %49, align 8, !dbg !2621, !tbaa !1546
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2622
  call void @llvm.dbg.value(metadata i64 %51, metadata !2568, metadata !DIExpression()), !dbg !2623
  %52 = icmp ugt i64 %38, %51, !dbg !2624
  br i1 %52, label %63, label %53, !dbg !2626

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %54, metadata !2564, metadata !DIExpression()), !dbg !2612
  store i64 %54, i64* %37, align 8, !dbg !2629, !tbaa !2527
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2630
  br i1 %55, label %57, label %56, !dbg !2632

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2633
  br label %57, !dbg !2633

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2453, metadata !DIExpression()) #11, !dbg !2634
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2636
  call void @llvm.dbg.value(metadata i8* %58, metadata !2566, metadata !DIExpression()), !dbg !2614
  store i8* %58, i8** %39, align 8, !dbg !2637, !tbaa !2514
  %59 = load i32, i32* %44, align 8, !dbg !2638, !tbaa !1457
  %60 = load i8*, i8** %47, align 8, !dbg !2639, !tbaa !1543
  %61 = load i8*, i8** %49, align 8, !dbg !2640, !tbaa !1546
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2641
  br label %63, !dbg !2642

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2643
  call void @llvm.dbg.value(metadata i8* %64, metadata !2566, metadata !DIExpression()), !dbg !2614
  store i32 %6, i32* %5, align 4, !dbg !2644, !tbaa !897
  ret i8* %64, !dbg !2645
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8* %1, metadata !2651, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i64 %2, metadata !2652, metadata !DIExpression()), !dbg !2655
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2656
  ret i8* %4, !dbg !2657
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2658 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2544, metadata !DIExpression()) #11, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %0, metadata !2545, metadata !DIExpression()) #11, !dbg !2666
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2667
  ret i8* %2, !dbg !2668
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2669 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 0, metadata !2650, metadata !DIExpression()) #11, !dbg !2677
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()) #11, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %1, metadata !2652, metadata !DIExpression()) #11, !dbg !2680
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2681
  ret i8* %3, !dbg !2682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2683 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %1, metadata !2688, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8* %2, metadata !2689, metadata !DIExpression()), !dbg !2693
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()) #11, !dbg !2702
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2704, !alias.scope !2705
  %6 = icmp eq i32 %1, 10, !dbg !2708
  br i1 %6, label %7, label %8, !dbg !2710

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2711, !noalias !2705
  unreachable, !dbg !2711

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2712
  store i32 %1, i32* %9, align 8, !dbg !2713, !tbaa !1457, !alias.scope !2705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2701, metadata !DIExpression(DW_OP_deref)), !dbg !2704
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2714
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2715
  ret i8* %10, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2717 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2721, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %1, metadata !2722, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %3, metadata !2724, metadata !DIExpression()), !dbg !2729
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2730
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression(DW_OP_deref)), !dbg !2731
  call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()) #11, !dbg !2732
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !2734, !alias.scope !2735
  %7 = icmp eq i32 %1, 10, !dbg !2738
  br i1 %7, label %8, label %9, !dbg !2739

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2740, !noalias !2735
  unreachable, !dbg !2740

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2741
  store i32 %1, i32* %10, align 8, !dbg !2742, !tbaa !1457, !alias.scope !2735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression(DW_OP_deref)), !dbg !2731
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2701, metadata !DIExpression(DW_OP_deref)), !dbg !2734
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2743
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2744
  ret i8* %11, !dbg !2745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2746 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2750, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %1, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2687, metadata !DIExpression()) #11, !dbg !2754
  call void @llvm.dbg.value(metadata i32 %0, metadata !2688, metadata !DIExpression()) #11, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %1, metadata !2689, metadata !DIExpression()) #11, !dbg !2757
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2758
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2690, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2759
  call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()) #11, !dbg !2760
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !2762, !alias.scope !2763
  %5 = icmp eq i32 %0, 10, !dbg !2766
  br i1 %5, label %6, label %7, !dbg !2767

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2768, !noalias !2763
  unreachable, !dbg !2768

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2769
  store i32 %0, i32* %8, align 8, !dbg !2770, !tbaa !1457, !alias.scope !2763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2690, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2759
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2701, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2762
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2771
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2772
  ret i8* %9, !dbg !2773
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2774 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8* %1, metadata !2779, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %2, metadata !2780, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2721, metadata !DIExpression()) #11, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()) #11, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %1, metadata !2723, metadata !DIExpression()) #11, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %2, metadata !2724, metadata !DIExpression()) #11, !dbg !2788
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2725, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2790
  call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()) #11, !dbg !2791
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2793, !alias.scope !2794
  %6 = icmp eq i32 %0, 10, !dbg !2797
  br i1 %6, label %7, label %8, !dbg !2798

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2799, !noalias !2794
  unreachable, !dbg !2799

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2800
  store i32 %0, i32* %9, align 8, !dbg !2801, !tbaa !1457, !alias.scope !2794
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2725, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2701, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2793
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !2802
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2803
  ret i8* %10, !dbg !2804
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2805 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 %1, metadata !2810, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 %2, metadata !2811, metadata !DIExpression()), !dbg !2815
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2816
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2817, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2812, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1476, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8 %2, metadata !1477, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 1, metadata !1478, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8 %2, metadata !1479, metadata !DIExpression()), !dbg !2824
  %6 = lshr i8 %2, 5, !dbg !2825
  %7 = zext i8 %6 to i64, !dbg !2825
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2826
  call void @llvm.dbg.value(metadata i32* %8, metadata !1481, metadata !DIExpression()), !dbg !2827
  %9 = and i8 %2, 31, !dbg !2828
  %10 = zext i8 %9 to i32, !dbg !2828
  call void @llvm.dbg.value(metadata i32 %10, metadata !1483, metadata !DIExpression()), !dbg !2829
  %11 = load i32, i32* %8, align 4, !dbg !2830, !tbaa !897
  %12 = lshr i32 %11, %10, !dbg !2831
  %13 = and i32 %12, 1, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %13, metadata !1484, metadata !DIExpression()), !dbg !2833
  %14 = xor i32 %13, 1, !dbg !2834
  %15 = shl i32 %14, %10, !dbg !2835
  %16 = xor i32 %15, %11, !dbg !2836
  store i32 %16, i32* %8, align 4, !dbg !2836, !tbaa !897
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2812, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2838
  ret i8* %17, !dbg !2839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2840 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 %1, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()) #11, !dbg !2848
  call void @llvm.dbg.value(metadata i64 -1, metadata !2810, metadata !DIExpression()) #11, !dbg !2850
  call void @llvm.dbg.value(metadata i8 %1, metadata !2811, metadata !DIExpression()) #11, !dbg !2851
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2852
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2852
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2853, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1476, metadata !DIExpression()) #11, !dbg !2855
  call void @llvm.dbg.value(metadata i8 %1, metadata !1477, metadata !DIExpression()) #11, !dbg !2857
  call void @llvm.dbg.value(metadata i32 1, metadata !1478, metadata !DIExpression()) #11, !dbg !2858
  call void @llvm.dbg.value(metadata i8 %1, metadata !1479, metadata !DIExpression()) #11, !dbg !2859
  %5 = lshr i8 %1, 5, !dbg !2860
  %6 = zext i8 %5 to i64, !dbg !2860
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2861
  call void @llvm.dbg.value(metadata i32* %7, metadata !1481, metadata !DIExpression()) #11, !dbg !2862
  %8 = and i8 %1, 31, !dbg !2863
  %9 = zext i8 %8 to i32, !dbg !2863
  call void @llvm.dbg.value(metadata i32 %9, metadata !1483, metadata !DIExpression()) #11, !dbg !2864
  %10 = load i32, i32* %7, align 4, !dbg !2865, !tbaa !897
  %11 = lshr i32 %10, %9, !dbg !2866
  %12 = and i32 %11, 1, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %12, metadata !1484, metadata !DIExpression()) #11, !dbg !2868
  %13 = xor i32 %12, 1, !dbg !2869
  %14 = shl i32 %13, %9, !dbg !2870
  %15 = xor i32 %14, %10, !dbg !2871
  store i32 %15, i32* %7, align 4, !dbg !2871, !tbaa !897
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2854
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2872
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2873
  ret i8* %16, !dbg !2874
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2875 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2877, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()) #11, !dbg !2879
  call void @llvm.dbg.value(metadata i8 58, metadata !2845, metadata !DIExpression()) #11, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()) #11, !dbg !2882
  call void @llvm.dbg.value(metadata i64 -1, metadata !2810, metadata !DIExpression()) #11, !dbg !2884
  call void @llvm.dbg.value(metadata i8 58, metadata !2811, metadata !DIExpression()) #11, !dbg !2885
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2886
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2887, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2812, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1476, metadata !DIExpression()) #11, !dbg !2889
  call void @llvm.dbg.value(metadata i8 58, metadata !1477, metadata !DIExpression()) #11, !dbg !2891
  call void @llvm.dbg.value(metadata i32 1, metadata !1478, metadata !DIExpression()) #11, !dbg !2892
  call void @llvm.dbg.value(metadata i8 58, metadata !1479, metadata !DIExpression()) #11, !dbg !2893
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2894
  call void @llvm.dbg.value(metadata i32* %4, metadata !1481, metadata !DIExpression()) #11, !dbg !2895
  call void @llvm.dbg.value(metadata i32 26, metadata !1483, metadata !DIExpression()) #11, !dbg !2896
  %5 = load i32, i32* %4, align 4, !dbg !2897, !tbaa !897
  %6 = or i32 %5, 67108864, !dbg !2898
  store i32 %6, i32* %4, align 4, !dbg !2898, !tbaa !897
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2812, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2888
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2899
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2900
  ret i8* %7, !dbg !2901
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2902 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()) #11, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %1, metadata !2810, metadata !DIExpression()) #11, !dbg !2910
  call void @llvm.dbg.value(metadata i8 58, metadata !2811, metadata !DIExpression()) #11, !dbg !2911
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2912
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2912
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2913, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2914
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1476, metadata !DIExpression()) #11, !dbg !2915
  call void @llvm.dbg.value(metadata i8 58, metadata !1477, metadata !DIExpression()) #11, !dbg !2917
  call void @llvm.dbg.value(metadata i32 1, metadata !1478, metadata !DIExpression()) #11, !dbg !2918
  call void @llvm.dbg.value(metadata i8 58, metadata !1479, metadata !DIExpression()) #11, !dbg !2919
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2920
  call void @llvm.dbg.value(metadata i32* %5, metadata !1481, metadata !DIExpression()) #11, !dbg !2921
  call void @llvm.dbg.value(metadata i32 26, metadata !1483, metadata !DIExpression()) #11, !dbg !2922
  %6 = load i32, i32* %5, align 4, !dbg !2923, !tbaa !897
  %7 = or i32 %6, 67108864, !dbg !2924
  store i32 %7, i32* %5, align 4, !dbg !2924, !tbaa !897
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2914
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2926
  ret i8* %8, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2928 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %0, metadata !2930, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %1, metadata !2931, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %2, metadata !2932, metadata !DIExpression()), !dbg !2938
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2939
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2939
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2940
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2940
  call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()) #11, !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2934
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2934, !alias.scope !2942
  %8 = icmp eq i32 %1, 10, !dbg !2945
  br i1 %8, label %9, label %10, !dbg !2946

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2947, !noalias !2942
  unreachable, !dbg !2947

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2701, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2934
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2940
  store i32 %1, i32* %11, align 8, !dbg !2940
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2940
  %13 = bitcast i32* %12 to i8*, !dbg !2940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2940
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2933, metadata !DIExpression(DW_OP_deref)), !dbg !2948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1476, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !1477, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 1, metadata !1478, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8 58, metadata !1479, metadata !DIExpression()), !dbg !2953
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2954
  call void @llvm.dbg.value(metadata i32* %14, metadata !1481, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 26, metadata !1483, metadata !DIExpression()), !dbg !2956
  %15 = load i32, i32* %14, align 4, !dbg !2957, !tbaa !897
  %16 = or i32 %15, 67108864, !dbg !2958
  store i32 %16, i32* %14, align 4, !dbg !2958, !tbaa !897
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2933, metadata !DIExpression(DW_OP_deref)), !dbg !2948
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2960
  ret i8* %17, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2962 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2966, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %1, metadata !2967, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %2, metadata !2968, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %3, metadata !2969, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()) #11, !dbg !2984
  call void @llvm.dbg.value(metadata i8* %1, metadata !2979, metadata !DIExpression()) #11, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()) #11, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %3, metadata !2981, metadata !DIExpression()) #11, !dbg !2988
  call void @llvm.dbg.value(metadata i64 -1, metadata !2982, metadata !DIExpression()) #11, !dbg !2989
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2990
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2990
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2991, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2983, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2992
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1525, metadata !DIExpression()) #11, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %1, metadata !1526, metadata !DIExpression()) #11, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %2, metadata !1527, metadata !DIExpression()) #11, !dbg !2996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1525, metadata !DIExpression()) #11, !dbg !2993
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2997
  store i32 10, i32* %7, align 8, !dbg !2998, !tbaa !1457
  %8 = icmp ne i8* %1, null, !dbg !2999
  %9 = icmp ne i8* %2, null, !dbg !3000
  %10 = and i1 %8, %9, !dbg !3001
  br i1 %10, label %12, label %11, !dbg !3001

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3002
  unreachable, !dbg !3002

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3003
  store i8* %1, i8** %13, align 8, !dbg !3004, !tbaa !1543
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3005
  store i8* %2, i8** %14, align 8, !dbg !3006, !tbaa !1546
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2983, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2992
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3007
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3008
  ret i8* %15, !dbg !3009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2975 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8* %1, metadata !2979, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %3, metadata !2981, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i64 %4, metadata !2982, metadata !DIExpression()), !dbg !3014
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3015
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3016, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2983, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1525, metadata !DIExpression()) #11, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %1, metadata !1526, metadata !DIExpression()) #11, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %2, metadata !1527, metadata !DIExpression()) #11, !dbg !3021
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1525, metadata !DIExpression()) #11, !dbg !3018
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3022
  store i32 10, i32* %8, align 8, !dbg !3023, !tbaa !1457
  %9 = icmp ne i8* %1, null, !dbg !3024
  %10 = icmp ne i8* %2, null, !dbg !3025
  %11 = and i1 %9, %10, !dbg !3026
  br i1 %11, label %13, label %12, !dbg !3026

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3027
  unreachable, !dbg !3027

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3028
  store i8* %1, i8** %14, align 8, !dbg !3029, !tbaa !1543
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3030
  store i8* %2, i8** %15, align 8, !dbg !3031, !tbaa !1546
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2983, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3032
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3033
  ret i8* %16, !dbg !3034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3035 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %1, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %2, metadata !3041, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 0, metadata !2966, metadata !DIExpression()) #11, !dbg !3045
  call void @llvm.dbg.value(metadata i8* %0, metadata !2967, metadata !DIExpression()) #11, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %1, metadata !2968, metadata !DIExpression()) #11, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %2, metadata !2969, metadata !DIExpression()) #11, !dbg !3049
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()) #11, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #11, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %1, metadata !2980, metadata !DIExpression()) #11, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %2, metadata !2981, metadata !DIExpression()) #11, !dbg !3054
  call void @llvm.dbg.value(metadata i64 -1, metadata !2982, metadata !DIExpression()) #11, !dbg !3055
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3056
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3056
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3057, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2983, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3058
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1525, metadata !DIExpression()) #11, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %0, metadata !1526, metadata !DIExpression()) #11, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %1, metadata !1527, metadata !DIExpression()) #11, !dbg !3062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1525, metadata !DIExpression()) #11, !dbg !3059
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3063
  store i32 10, i32* %6, align 8, !dbg !3064, !tbaa !1457
  %7 = icmp ne i8* %0, null, !dbg !3065
  %8 = icmp ne i8* %1, null, !dbg !3066
  %9 = and i1 %7, %8, !dbg !3067
  br i1 %9, label %11, label %10, !dbg !3067

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3068
  unreachable, !dbg !3068

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3069
  store i8* %0, i8** %12, align 8, !dbg !3070, !tbaa !1543
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3071
  store i8* %1, i8** %13, align 8, !dbg !3072, !tbaa !1546
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2983, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3058
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3073
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3074
  ret i8* %14, !dbg !3075
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3076 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3080, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %1, metadata !3081, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8* %2, metadata !3082, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 %3, metadata !3083, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()) #11, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #11, !dbg !3090
  call void @llvm.dbg.value(metadata i8* %1, metadata !2980, metadata !DIExpression()) #11, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %2, metadata !2981, metadata !DIExpression()) #11, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %3, metadata !2982, metadata !DIExpression()) #11, !dbg !3093
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3094
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3095, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2983, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1525, metadata !DIExpression()) #11, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %0, metadata !1526, metadata !DIExpression()) #11, !dbg !3099
  call void @llvm.dbg.value(metadata i8* %1, metadata !1527, metadata !DIExpression()) #11, !dbg !3100
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1525, metadata !DIExpression()) #11, !dbg !3097
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3101
  store i32 10, i32* %7, align 8, !dbg !3102, !tbaa !1457
  %8 = icmp ne i8* %0, null, !dbg !3103
  %9 = icmp ne i8* %1, null, !dbg !3104
  %10 = and i1 %8, %9, !dbg !3105
  br i1 %10, label %12, label %11, !dbg !3105

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3106
  unreachable, !dbg !3106

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3107
  store i8* %0, i8** %13, align 8, !dbg !3108, !tbaa !1543
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3109
  store i8* %1, i8** %14, align 8, !dbg !3110, !tbaa !1546
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2983, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3096
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3111
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3112
  ret i8* %15, !dbg !3113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %1, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %2, metadata !3120, metadata !DIExpression()), !dbg !3123
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3124
  ret i8* %4, !dbg !3125
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3126 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3130, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %1, metadata !3131, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()) #11, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #11, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()) #11, !dbg !3137
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3138
  ret i8* %3, !dbg !3139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3144, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8* %1, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()) #11, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %1, metadata !3119, metadata !DIExpression()) #11, !dbg !3150
  call void @llvm.dbg.value(metadata i64 -1, metadata !3120, metadata !DIExpression()) #11, !dbg !3151
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3152
  ret i8* %3, !dbg !3153
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3154 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 0, metadata !3144, metadata !DIExpression()) #11, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %0, metadata !3145, metadata !DIExpression()) #11, !dbg !3162
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()) #11, !dbg !3163
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()) #11, !dbg !3165
  call void @llvm.dbg.value(metadata i64 -1, metadata !3120, metadata !DIExpression()) #11, !dbg !3166
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3167
  ret i8* %2, !dbg !3168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @parse_user_spec(i8*, i32* nocapture, i32*, i8**, i8**) local_unnamed_addr #7 !dbg !3169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3173, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32* %1, metadata !3174, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32* %2, metadata !3175, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8** %3, metadata !3176, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8** %4, metadata !3177, metadata !DIExpression()), !dbg !3187
  %6 = icmp eq i32* %2, null, !dbg !3188
  br i1 %6, label %9, label %7, !dbg !3188

; <label>:7:                                      ; preds = %5
  %8 = tail call i8* @strchr(i8* %0, i32 58) #14, !dbg !3189
  br label %9, !dbg !3188

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !3188
  call void @llvm.dbg.value(metadata i8* %10, metadata !3178, metadata !DIExpression()), !dbg !3190
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !3191
  call void @llvm.dbg.value(metadata i8* %11, metadata !3179, metadata !DIExpression()), !dbg !3192
  %12 = icmp ne i32* %2, null, !dbg !3193
  %13 = icmp eq i8* %10, null, !dbg !3194
  %14 = and i1 %12, %13, !dbg !3195
  %15 = icmp ne i8* %11, null, !dbg !3196
  %16 = and i1 %14, %15, !dbg !3195
  br i1 %16, label %17, label %24, !dbg !3195

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @strchr(i8* %0, i32 46) #14, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %18, metadata !3180, metadata !DIExpression()), !dbg !3198
  %19 = icmp eq i8* %18, null, !dbg !3199
  br i1 %19, label %24, label %20, !dbg !3201

; <label>:20:                                     ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !3202
  %22 = icmp eq i8* %21, null, !dbg !3202
  %23 = select i1 %22, i8* null, i8* %11, !dbg !3203
  ret i8* %23, !dbg !3203

; <label>:24:                                     ; preds = %17, %9
  call void @llvm.dbg.value(metadata i8* %11, metadata !3179, metadata !DIExpression()), !dbg !3192
  ret i8* %11, !dbg !3204
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8*, i8*, i32* nocapture, i32*, i8**, i8**) unnamed_addr #7 !dbg !204 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %1, metadata !212, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32* %2, metadata !213, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32* %3, metadata !214, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8** %4, metadata !215, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8** %5, metadata !216, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i8* null, metadata !240, metadata !DIExpression()), !dbg !3211
  %10 = load i32, i32* %2, align 4, !dbg !3212, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %10, metadata !241, metadata !DIExpression()), !dbg !3213
  %11 = icmp ne i32* %3, null, !dbg !3214
  br i1 %11, label %12, label %14, !dbg !3214

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3215, !tbaa !897
  br label %14, !dbg !3214

; <label>:14:                                     ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3214
  call void @llvm.dbg.value(metadata i32 %15, metadata !242, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i8* null, metadata !217, metadata !DIExpression()), !dbg !3217
  %16 = icmp ne i8** %4, null, !dbg !3218
  br i1 %16, label %17, label %18, !dbg !3220

; <label>:17:                                     ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3221, !tbaa !780
  br label %18, !dbg !3222

; <label>:18:                                     ; preds = %17, %14
  %19 = icmp ne i8** %5, null, !dbg !3223
  br i1 %19, label %20, label %21, !dbg !3225

; <label>:20:                                     ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3226, !tbaa !780
  br label %21, !dbg !3227

; <label>:21:                                     ; preds = %20, %18
  call void @llvm.dbg.value(metadata i8* null, metadata !238, metadata !DIExpression()), !dbg !3228
  %22 = icmp eq i8* %1, null, !dbg !3229
  br i1 %22, label %23, label %28, !dbg !3230

; <label>:23:                                     ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3231, !tbaa !933
  %25 = icmp eq i8 %24, 0, !dbg !3231
  br i1 %25, label %137, label %26, !dbg !3234

; <label>:26:                                     ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #11, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %27, metadata !238, metadata !DIExpression()), !dbg !3228
  br label %43, !dbg !3236

; <label>:28:                                     ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3237
  %30 = ptrtoint i8* %0 to i64, !dbg !3237
  %31 = sub i64 %29, %30, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %31, metadata !243, metadata !DIExpression()), !dbg !3238
  %32 = icmp eq i64 %31, 0, !dbg !3239
  br i1 %32, label %37, label %33, !dbg !3241

; <label>:33:                                     ; preds = %28
  %34 = add i64 %31, 1, !dbg !3242
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #11, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %35, metadata !238, metadata !DIExpression()), !dbg !3228
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3245
  store i8 0, i8* %36, align 1, !dbg !3246, !tbaa !933
  br label %37, !dbg !3247

; <label>:37:                                     ; preds = %28, %33
  %38 = phi i8* [ %35, %33 ], [ null, %28 ], !dbg !3248
  call void @llvm.dbg.value(metadata i8* %38, metadata !238, metadata !DIExpression()), !dbg !3228
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3249
  %40 = load i8, i8* %39, align 1, !dbg !3250, !tbaa !933
  %41 = icmp eq i8 %40, 0, !dbg !3251
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3252
  br label %43, !dbg !3252

; <label>:43:                                     ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3252
  call void @llvm.dbg.value(metadata i8* %45, metadata !239, metadata !DIExpression()), !dbg !3253
  %46 = icmp eq i8* %44, null, !dbg !3254
  br i1 %46, label %97, label %47, !dbg !3255

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3256, !tbaa !933
  %49 = icmp eq i8 %48, 43, !dbg !3257
  br i1 %49, label %53, label %50, !dbg !3256

; <label>:50:                                     ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3258
  call void @llvm.dbg.value(metadata %struct.passwd* %51, metadata !218, metadata !DIExpression()), !dbg !3259
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3260
  br i1 %52, label %53, label %71, !dbg !3261

; <label>:53:                                     ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3262
  %55 = icmp eq i8* %45, null, !dbg !3263
  %56 = and i1 %54, %55, !dbg !3264
  br i1 %56, label %92, label %57, !dbg !3265

; <label>:57:                                     ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3266
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #11, !dbg !3266
  call void @llvm.dbg.value(metadata i64* %7, metadata !251, metadata !DIExpression(DW_OP_deref)), !dbg !3267
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.94, i64 0, i64 0)) #11, !dbg !3268
  %60 = icmp eq i32 %59, 0, !dbg !3270
  %61 = load i64, i64* %7, align 8, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %61, metadata !251, metadata !DIExpression()), !dbg !3267
  %62 = icmp ult i64 %61, 4294967296, !dbg !3272
  %63 = and i1 %60, %62, !dbg !3273
  br i1 %63, label %64, label %67, !dbg !3273

; <label>:64:                                     ; preds = %57
  %65 = trunc i64 %61 to i32, !dbg !3274
  %66 = icmp eq i32 %65, -1, !dbg !3275
  br i1 %66, label %67, label %68, !dbg !3276

; <label>:67:                                     ; preds = %64, %57
  br label %68

; <label>:68:                                     ; preds = %64, %67
  %69 = phi i32 [ %10, %67 ], [ %65, %64 ], !dbg !3277
  %70 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i64 0, i64 0), %67 ], [ null, %64 ], !dbg !3278
  call void @llvm.dbg.value(metadata i8* %70, metadata !217, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %69, metadata !241, metadata !DIExpression()), !dbg !3213
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #11, !dbg !3279
  br label %92

; <label>:71:                                     ; preds = %50
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3280
  %73 = load i32, i32* %72, align 8, !dbg !3280, !tbaa !3281
  call void @llvm.dbg.value(metadata i32 %73, metadata !241, metadata !DIExpression()), !dbg !3213
  %74 = icmp eq i8* %45, null, !dbg !3282
  %75 = icmp ne i8* %1, null, !dbg !3283
  %76 = and i1 %75, %74, !dbg !3284
  br i1 %76, label %77, label %92, !dbg !3284

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3285
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %78) #11, !dbg !3285
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !254, metadata !DIExpression()), !dbg !3286
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3287
  %80 = load i32, i32* %79, align 4, !dbg !3287, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %80, metadata !242, metadata !DIExpression()), !dbg !3216
  %81 = tail call %struct.group* @getgrgid(i32 %80) #11, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.group* %81, metadata !230, metadata !DIExpression()), !dbg !3289
  %82 = icmp eq %struct.group* %81, null, !dbg !3290
  br i1 %82, label %86, label %83, !dbg !3290

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.group, %struct.group* %81, i64 0, i32 0, !dbg !3291
  %85 = load i8*, i8** %84, align 8, !dbg !3291, !tbaa !3292
  br label %89, !dbg !3290

; <label>:86:                                     ; preds = %77
  %87 = zext i32 %80 to i64, !dbg !3293
  %88 = call i8* @umaxtostr(i64 %87, i8* nonnull %78) #11, !dbg !3294
  br label %89, !dbg !3290

; <label>:89:                                     ; preds = %86, %83
  %90 = phi i8* [ %85, %83 ], [ %88, %86 ], !dbg !3290
  %91 = call noalias i8* @xstrdup(i8* %90) #11, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %91, metadata !240, metadata !DIExpression()), !dbg !3211
  call void @endgrent() #11, !dbg !3296
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %78) #11, !dbg !3297
  br label %92, !dbg !3298

; <label>:92:                                     ; preds = %68, %53, %71, %89
  %93 = phi i8* [ %91, %89 ], [ null, %71 ], [ null, %53 ], [ null, %68 ], !dbg !3277
  %94 = phi i32 [ %73, %89 ], [ %73, %71 ], [ %10, %53 ], [ %69, %68 ], !dbg !3299
  %95 = phi i32 [ %80, %89 ], [ %15, %71 ], [ %15, %53 ], [ %15, %68 ], !dbg !3277
  %96 = phi i8* [ null, %89 ], [ null, %71 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.96, i64 0, i64 0), %53 ], [ %70, %68 ], !dbg !3277
  call void @llvm.dbg.value(metadata i8* %96, metadata !217, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %95, metadata !242, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %94, metadata !241, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %93, metadata !240, metadata !DIExpression()), !dbg !3211
  call void @endpwent() #11, !dbg !3300
  br label %97, !dbg !3301

; <label>:97:                                     ; preds = %43, %92
  %98 = phi i8* [ %93, %92 ], [ null, %43 ], !dbg !3211
  %99 = phi i32 [ %94, %92 ], [ %10, %43 ], !dbg !3213
  %100 = phi i32 [ %95, %92 ], [ %15, %43 ], !dbg !3216
  %101 = phi i8* [ %96, %92 ], [ null, %43 ], !dbg !3277
  call void @llvm.dbg.value(metadata i8* %101, metadata !217, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %100, metadata !242, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %99, metadata !241, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %98, metadata !240, metadata !DIExpression()), !dbg !3211
  %102 = icmp ne i8* %45, null, !dbg !3302
  %103 = icmp eq i8* %101, null, !dbg !3303
  %104 = and i1 %102, %103, !dbg !3304
  br i1 %104, label %105, label %132, !dbg !3304

; <label>:105:                                    ; preds = %97
  %106 = load i8, i8* %45, align 1, !dbg !3305, !tbaa !933
  %107 = icmp eq i8 %106, 43, !dbg !3306
  br i1 %107, label %111, label %108, !dbg !3305

; <label>:108:                                    ; preds = %105
  %109 = call %struct.group* @getgrnam(i8* nonnull %45) #11, !dbg !3307
  call void @llvm.dbg.value(metadata %struct.group* %109, metadata !230, metadata !DIExpression()), !dbg !3289
  %110 = icmp eq %struct.group* %109, null, !dbg !3308
  br i1 %110, label %111, label %125, !dbg !3309

; <label>:111:                                    ; preds = %105, %108
  %112 = bitcast i64* %9 to i8*, !dbg !3310
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3310
  call void @llvm.dbg.value(metadata i64* %9, metadata !261, metadata !DIExpression(DW_OP_deref)), !dbg !3311
  %113 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.94, i64 0, i64 0)) #11, !dbg !3312
  %114 = icmp eq i32 %113, 0, !dbg !3314
  %115 = load i64, i64* %9, align 8, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %115, metadata !261, metadata !DIExpression()), !dbg !3311
  %116 = icmp ult i64 %115, 4294967296, !dbg !3316
  %117 = and i1 %114, %116, !dbg !3317
  br i1 %117, label %118, label %121, !dbg !3317

; <label>:118:                                    ; preds = %111
  %119 = trunc i64 %115 to i32, !dbg !3318
  %120 = icmp eq i32 %119, -1, !dbg !3319
  br i1 %120, label %121, label %122, !dbg !3320

; <label>:121:                                    ; preds = %118, %111
  br label %122

; <label>:122:                                    ; preds = %118, %121
  %123 = phi i32 [ %100, %121 ], [ %119, %118 ], !dbg !3277
  %124 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.97, i64 0, i64 0), %121 ], [ null, %118 ], !dbg !3321
  call void @llvm.dbg.value(metadata i8* %124, metadata !217, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %123, metadata !242, metadata !DIExpression()), !dbg !3216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3322
  br label %128, !dbg !3323

; <label>:125:                                    ; preds = %108
  %126 = getelementptr inbounds %struct.group, %struct.group* %109, i64 0, i32 2, !dbg !3324
  %127 = load i32, i32* %126, align 8, !dbg !3324, !tbaa !1259
  call void @llvm.dbg.value(metadata i32 %127, metadata !242, metadata !DIExpression()), !dbg !3216
  br label %128

; <label>:128:                                    ; preds = %125, %122
  %129 = phi i32 [ %123, %122 ], [ %127, %125 ], !dbg !3325
  %130 = phi i8* [ %124, %122 ], [ null, %125 ], !dbg !3326
  call void @llvm.dbg.value(metadata i8* %130, metadata !217, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %129, metadata !242, metadata !DIExpression()), !dbg !3216
  call void @endgrent() #11, !dbg !3328
  %131 = call noalias i8* @xstrdup(i8* nonnull %45) #11, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %131, metadata !240, metadata !DIExpression()), !dbg !3211
  br label %132, !dbg !3330

; <label>:132:                                    ; preds = %128, %97
  %133 = phi i8* [ %131, %128 ], [ %98, %97 ], !dbg !3277
  %134 = phi i32 [ %129, %128 ], [ %100, %97 ], !dbg !3277
  %135 = phi i8* [ %130, %128 ], [ %101, %97 ], !dbg !3326
  call void @llvm.dbg.value(metadata i8* %135, metadata !217, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %134, metadata !242, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i8* %133, metadata !240, metadata !DIExpression()), !dbg !3211
  %136 = icmp eq i8* %135, null, !dbg !3331
  br i1 %136, label %137, label %148, !dbg !3333

; <label>:137:                                    ; preds = %23, %132
  %138 = phi i32 [ %134, %132 ], [ %15, %23 ]
  %139 = phi i8* [ %133, %132 ], [ null, %23 ]
  %140 = phi i8* [ %44, %132 ], [ null, %23 ]
  %141 = phi i32 [ %99, %132 ], [ %10, %23 ]
  store i32 %141, i32* %2, align 4, !dbg !3334, !tbaa !897
  br i1 %11, label %142, label %143, !dbg !3336

; <label>:142:                                    ; preds = %137
  store i32 %138, i32* %3, align 4, !dbg !3337, !tbaa !897
  br label %143, !dbg !3339

; <label>:143:                                    ; preds = %142, %137
  br i1 %16, label %144, label %145, !dbg !3340

; <label>:144:                                    ; preds = %143
  store i8* %140, i8** %4, align 8, !dbg !3341, !tbaa !780
  call void @llvm.dbg.value(metadata i8* null, metadata !238, metadata !DIExpression()), !dbg !3228
  br label %145, !dbg !3344

; <label>:145:                                    ; preds = %144, %143
  %146 = phi i8* [ null, %144 ], [ %140, %143 ], !dbg !3345
  call void @llvm.dbg.value(metadata i8* %146, metadata !238, metadata !DIExpression()), !dbg !3228
  br i1 %19, label %147, label %148, !dbg !3346

; <label>:147:                                    ; preds = %145
  store i8* %139, i8** %5, align 8, !dbg !3347, !tbaa !780
  call void @llvm.dbg.value(metadata i8* null, metadata !240, metadata !DIExpression()), !dbg !3211
  br label %148, !dbg !3350

; <label>:148:                                    ; preds = %145, %147, %132
  %149 = phi i1 [ true, %147 ], [ true, %145 ], [ false, %132 ]
  %150 = phi i8* [ null, %147 ], [ null, %145 ], [ %135, %132 ]
  %151 = phi i8* [ %146, %147 ], [ %146, %145 ], [ %44, %132 ], !dbg !3345
  %152 = phi i8* [ null, %147 ], [ %139, %145 ], [ %133, %132 ], !dbg !3351
  call void @llvm.dbg.value(metadata i8* %152, metadata !240, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %151, metadata !238, metadata !DIExpression()), !dbg !3228
  call void @free(i8* %151) #11, !dbg !3352
  call void @free(i8* %152) #11, !dbg !3353
  br i1 %149, label %155, label %153, !dbg !3354

; <label>:153:                                    ; preds = %148
  %154 = call i8* @dcgettext(i8* null, i8* nonnull %150, i32 5) #11, !dbg !3355
  br label %155, !dbg !3354

; <label>:155:                                    ; preds = %148, %153
  %156 = phi i8* [ %154, %153 ], [ null, %148 ], !dbg !3354
  ret i8* %156, !dbg !3356
}

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

declare void @endgrent() local_unnamed_addr #3

declare void @endpwent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3357 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3415, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i8* %1, metadata !3416, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i8* %2, metadata !3417, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i8* %3, metadata !3418, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8** %4, metadata !3419, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %5, metadata !3420, metadata !DIExpression()), !dbg !3426
  %7 = icmp eq i8* %1, null, !dbg !3427
  br i1 %7, label %10, label %8, !dbg !3429

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3430
  br label %12, !dbg !3430

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.99, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3431
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.100, i64 0, i64 0), i32 5) #11, !dbg !3432
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3432
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.101, i64 0, i64 0), i32 5) #11, !dbg !3433
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3433
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
  ], !dbg !3434

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3435
  unreachable, !dbg !3435

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.102, i64 0, i64 0), i32 5) #11, !dbg !3437
  %20 = load i8*, i8** %4, align 8, !dbg !3437, !tbaa !780
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3437
  br label %146, !dbg !3438

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.103, i64 0, i64 0), i32 5) #11, !dbg !3439
  %24 = load i8*, i8** %4, align 8, !dbg !3439, !tbaa !780
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3439
  %26 = load i8*, i8** %25, align 8, !dbg !3439, !tbaa !780
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3439
  br label %146, !dbg !3440

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.104, i64 0, i64 0), i32 5) #11, !dbg !3441
  %30 = load i8*, i8** %4, align 8, !dbg !3441, !tbaa !780
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3441
  %32 = load i8*, i8** %31, align 8, !dbg !3441, !tbaa !780
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3441
  %34 = load i8*, i8** %33, align 8, !dbg !3441, !tbaa !780
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3441
  br label %146, !dbg !3442

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.105, i64 0, i64 0), i32 5) #11, !dbg !3443
  %38 = load i8*, i8** %4, align 8, !dbg !3443, !tbaa !780
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3443
  %40 = load i8*, i8** %39, align 8, !dbg !3443, !tbaa !780
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3443
  %42 = load i8*, i8** %41, align 8, !dbg !3443, !tbaa !780
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3443
  %44 = load i8*, i8** %43, align 8, !dbg !3443, !tbaa !780
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3443
  br label %146, !dbg !3444

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.106, i64 0, i64 0), i32 5) #11, !dbg !3445
  %48 = load i8*, i8** %4, align 8, !dbg !3445, !tbaa !780
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3445
  %50 = load i8*, i8** %49, align 8, !dbg !3445, !tbaa !780
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3445
  %52 = load i8*, i8** %51, align 8, !dbg !3445, !tbaa !780
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3445
  %54 = load i8*, i8** %53, align 8, !dbg !3445, !tbaa !780
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3445
  %56 = load i8*, i8** %55, align 8, !dbg !3445, !tbaa !780
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3445
  br label %146, !dbg !3446

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.107, i64 0, i64 0), i32 5) #11, !dbg !3447
  %60 = load i8*, i8** %4, align 8, !dbg !3447, !tbaa !780
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3447
  %62 = load i8*, i8** %61, align 8, !dbg !3447, !tbaa !780
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3447
  %64 = load i8*, i8** %63, align 8, !dbg !3447, !tbaa !780
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3447
  %66 = load i8*, i8** %65, align 8, !dbg !3447, !tbaa !780
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3447
  %68 = load i8*, i8** %67, align 8, !dbg !3447, !tbaa !780
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3447
  %70 = load i8*, i8** %69, align 8, !dbg !3447, !tbaa !780
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3447
  br label %146, !dbg !3448

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.108, i64 0, i64 0), i32 5) #11, !dbg !3449
  %74 = load i8*, i8** %4, align 8, !dbg !3449, !tbaa !780
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3449
  %76 = load i8*, i8** %75, align 8, !dbg !3449, !tbaa !780
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3449
  %78 = load i8*, i8** %77, align 8, !dbg !3449, !tbaa !780
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3449
  %80 = load i8*, i8** %79, align 8, !dbg !3449, !tbaa !780
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3449
  %82 = load i8*, i8** %81, align 8, !dbg !3449, !tbaa !780
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3449
  %84 = load i8*, i8** %83, align 8, !dbg !3449, !tbaa !780
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3449
  %86 = load i8*, i8** %85, align 8, !dbg !3449, !tbaa !780
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3449
  br label %146, !dbg !3450

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.109, i64 0, i64 0), i32 5) #11, !dbg !3451
  %90 = load i8*, i8** %4, align 8, !dbg !3451, !tbaa !780
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3451
  %92 = load i8*, i8** %91, align 8, !dbg !3451, !tbaa !780
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3451
  %94 = load i8*, i8** %93, align 8, !dbg !3451, !tbaa !780
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3451
  %96 = load i8*, i8** %95, align 8, !dbg !3451, !tbaa !780
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3451
  %98 = load i8*, i8** %97, align 8, !dbg !3451, !tbaa !780
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3451
  %100 = load i8*, i8** %99, align 8, !dbg !3451, !tbaa !780
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3451
  %102 = load i8*, i8** %101, align 8, !dbg !3451, !tbaa !780
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3451
  %104 = load i8*, i8** %103, align 8, !dbg !3451, !tbaa !780
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3451
  br label %146, !dbg !3452

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.110, i64 0, i64 0), i32 5) #11, !dbg !3453
  %108 = load i8*, i8** %4, align 8, !dbg !3453, !tbaa !780
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3453
  %110 = load i8*, i8** %109, align 8, !dbg !3453, !tbaa !780
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3453
  %112 = load i8*, i8** %111, align 8, !dbg !3453, !tbaa !780
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3453
  %114 = load i8*, i8** %113, align 8, !dbg !3453, !tbaa !780
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3453
  %116 = load i8*, i8** %115, align 8, !dbg !3453, !tbaa !780
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3453
  %118 = load i8*, i8** %117, align 8, !dbg !3453, !tbaa !780
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3453
  %120 = load i8*, i8** %119, align 8, !dbg !3453, !tbaa !780
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3453
  %122 = load i8*, i8** %121, align 8, !dbg !3453, !tbaa !780
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3453
  %124 = load i8*, i8** %123, align 8, !dbg !3453, !tbaa !780
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3453
  br label %146, !dbg !3454

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.111, i64 0, i64 0), i32 5) #11, !dbg !3455
  %128 = load i8*, i8** %4, align 8, !dbg !3455, !tbaa !780
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3455
  %130 = load i8*, i8** %129, align 8, !dbg !3455, !tbaa !780
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3455
  %132 = load i8*, i8** %131, align 8, !dbg !3455, !tbaa !780
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3455
  %134 = load i8*, i8** %133, align 8, !dbg !3455, !tbaa !780
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3455
  %136 = load i8*, i8** %135, align 8, !dbg !3455, !tbaa !780
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3455
  %138 = load i8*, i8** %137, align 8, !dbg !3455, !tbaa !780
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3455
  %140 = load i8*, i8** %139, align 8, !dbg !3455, !tbaa !780
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3455
  %142 = load i8*, i8** %141, align 8, !dbg !3455, !tbaa !780
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3455
  %144 = load i8*, i8** %143, align 8, !dbg !3455, !tbaa !780
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3455
  br label %146, !dbg !3456

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3457
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3458 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3462, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8* %1, metadata !3463, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8* %2, metadata !3464, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8* %3, metadata !3465, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8** %4, metadata !3466, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 0, metadata !3467, metadata !DIExpression()), !dbg !3473
  br label %6, !dbg !3474

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3476
  call void @llvm.dbg.value(metadata i64 %7, metadata !3467, metadata !DIExpression()), !dbg !3473
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3478
  %9 = load i8*, i8** %8, align 8, !dbg !3478, !tbaa !780
  %10 = icmp eq i8* %9, null, !dbg !3479
  %11 = add i64 %7, 1, !dbg !3480
  call void @llvm.dbg.value(metadata i64 %11, metadata !3467, metadata !DIExpression()), !dbg !3473
  br i1 %10, label %12, label %6, !dbg !3479, !llvm.loop !3481

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %7, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %7, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %7, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %7, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %7, metadata !3467, metadata !DIExpression()), !dbg !3473
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3483
  ret void, !dbg !3484
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3485 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %1, metadata !3497, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8* %2, metadata !3498, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8* %3, metadata !3499, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3500, metadata !DIExpression()), !dbg !3508
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3509
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3509
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3502, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i64 0, metadata !3501, metadata !DIExpression()), !dbg !3511
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3501, metadata !DIExpression()), !dbg !3511
  %11 = load i32, i32* %8, align 8, !dbg !3512
  %12 = icmp ult i32 %11, 41, !dbg !3512
  br i1 %12, label %13, label %18, !dbg !3512

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3512
  %15 = sext i32 %11 to i64, !dbg !3512
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3512
  %17 = add i32 %11, 8, !dbg !3512
  store i32 %17, i32* %8, align 8, !dbg !3512
  br label %21, !dbg !3512

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3512
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3512
  store i8* %20, i8** %10, align 8, !dbg !3512
  br label %21, !dbg !3512

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3512
  %25 = load i8*, i8** %24, align 8, !dbg !3512
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3515
  store i8* %25, i8** %26, align 16, !dbg !3516, !tbaa !780
  %27 = icmp eq i8* %25, null, !dbg !3517
  br i1 %27, label %30, label %28, !dbg !3518

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 1, metadata !3501, metadata !DIExpression()), !dbg !3511
  %29 = icmp ult i32 %22, 41, !dbg !3512
  br i1 %29, label %35, label %32, !dbg !3512

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3519
  call void @llvm.dbg.value(metadata i64 %31, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 %31, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3520
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3521
  ret void, !dbg !3521

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3512
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3512
  store i8* %34, i8** %10, align 8, !dbg !3512
  br label %40, !dbg !3512

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3512
  %37 = sext i32 %22 to i64, !dbg !3512
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3512
  %39 = add i32 %22, 8, !dbg !3512
  store i32 %39, i32* %8, align 8, !dbg !3512
  br label %40, !dbg !3512

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3512
  %44 = load i8*, i8** %43, align 8, !dbg !3512
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3515
  store i8* %44, i8** %45, align 8, !dbg !3516, !tbaa !780
  %46 = icmp eq i8* %44, null, !dbg !3517
  br i1 %46, label %30, label %47, !dbg !3518

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 2, metadata !3501, metadata !DIExpression()), !dbg !3511
  %48 = icmp ult i32 %41, 41, !dbg !3512
  br i1 %48, label %52, label %49, !dbg !3512

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3512
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3512
  store i8* %51, i8** %10, align 8, !dbg !3512
  br label %57, !dbg !3512

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3512
  %54 = sext i32 %41 to i64, !dbg !3512
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3512
  %56 = add i32 %41, 8, !dbg !3512
  store i32 %56, i32* %8, align 8, !dbg !3512
  br label %57, !dbg !3512

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3512
  %61 = load i8*, i8** %60, align 8, !dbg !3512
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3515
  store i8* %61, i8** %62, align 16, !dbg !3516, !tbaa !780
  %63 = icmp eq i8* %61, null, !dbg !3517
  br i1 %63, label %30, label %64, !dbg !3518

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 3, metadata !3501, metadata !DIExpression()), !dbg !3511
  %65 = icmp ult i32 %58, 41, !dbg !3512
  br i1 %65, label %69, label %66, !dbg !3512

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3512
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3512
  store i8* %68, i8** %10, align 8, !dbg !3512
  br label %74, !dbg !3512

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3512
  %71 = sext i32 %58 to i64, !dbg !3512
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3512
  %73 = add i32 %58, 8, !dbg !3512
  store i32 %73, i32* %8, align 8, !dbg !3512
  br label %74, !dbg !3512

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3512
  %78 = load i8*, i8** %77, align 8, !dbg !3512
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3515
  store i8* %78, i8** %79, align 8, !dbg !3516, !tbaa !780
  %80 = icmp eq i8* %78, null, !dbg !3517
  br i1 %80, label %30, label %81, !dbg !3518

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 4, metadata !3501, metadata !DIExpression()), !dbg !3511
  %82 = icmp ult i32 %75, 41, !dbg !3512
  br i1 %82, label %86, label %83, !dbg !3512

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3512
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3512
  store i8* %85, i8** %10, align 8, !dbg !3512
  br label %91, !dbg !3512

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3512
  %88 = sext i32 %75 to i64, !dbg !3512
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3512
  %90 = add i32 %75, 8, !dbg !3512
  store i32 %90, i32* %8, align 8, !dbg !3512
  br label %91, !dbg !3512

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3512
  %95 = load i8*, i8** %94, align 8, !dbg !3512
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3515
  store i8* %95, i8** %96, align 16, !dbg !3516, !tbaa !780
  %97 = icmp eq i8* %95, null, !dbg !3517
  br i1 %97, label %30, label %98, !dbg !3518

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 5, metadata !3501, metadata !DIExpression()), !dbg !3511
  %99 = icmp ult i32 %92, 41, !dbg !3512
  br i1 %99, label %103, label %100, !dbg !3512

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3512
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3512
  store i8* %102, i8** %10, align 8, !dbg !3512
  br label %108, !dbg !3512

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3512
  %105 = sext i32 %92 to i64, !dbg !3512
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3512
  %107 = add i32 %92, 8, !dbg !3512
  store i32 %107, i32* %8, align 8, !dbg !3512
  br label %108, !dbg !3512

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3512
  %111 = load i8*, i8** %110, align 8, !dbg !3512
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3515
  store i8* %111, i8** %112, align 8, !dbg !3516, !tbaa !780
  %113 = icmp eq i8* %111, null, !dbg !3517
  br i1 %113, label %30, label %114, !dbg !3518

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 6, metadata !3501, metadata !DIExpression()), !dbg !3511
  %115 = load i8*, i8** %10, align 8, !dbg !3512
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3512
  store i8* %116, i8** %10, align 8, !dbg !3512
  %117 = bitcast i8* %115 to i8**, !dbg !3512
  %118 = load i8*, i8** %117, align 8, !dbg !3512
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3515
  store i8* %118, i8** %119, align 16, !dbg !3516, !tbaa !780
  %120 = icmp eq i8* %118, null, !dbg !3517
  br i1 %120, label %30, label %121, !dbg !3518

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 7, metadata !3501, metadata !DIExpression()), !dbg !3511
  %122 = load i8*, i8** %10, align 8, !dbg !3512
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3512
  store i8* %123, i8** %10, align 8, !dbg !3512
  %124 = bitcast i8* %122 to i8**, !dbg !3512
  %125 = load i8*, i8** %124, align 8, !dbg !3512
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3515
  store i8* %125, i8** %126, align 8, !dbg !3516, !tbaa !780
  %127 = icmp eq i8* %125, null, !dbg !3517
  br i1 %127, label %30, label %128, !dbg !3518

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 8, metadata !3501, metadata !DIExpression()), !dbg !3511
  %129 = load i8*, i8** %10, align 8, !dbg !3512
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3512
  store i8* %130, i8** %10, align 8, !dbg !3512
  %131 = bitcast i8* %129 to i8**, !dbg !3512
  %132 = load i8*, i8** %131, align 8, !dbg !3512
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3515
  store i8* %132, i8** %133, align 16, !dbg !3516, !tbaa !780
  %134 = icmp eq i8* %132, null, !dbg !3517
  br i1 %134, label %30, label %135, !dbg !3518

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 9, metadata !3501, metadata !DIExpression()), !dbg !3511
  %136 = load i8*, i8** %10, align 8, !dbg !3512
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3512
  store i8* %137, i8** %10, align 8, !dbg !3512
  %138 = bitcast i8* %136 to i8**, !dbg !3512
  %139 = load i8*, i8** %138, align 8, !dbg !3512
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3515
  store i8* %139, i8** %140, align 8, !dbg !3516, !tbaa !780
  %141 = icmp eq i8* %139, null, !dbg !3517
  %142 = select i1 %141, i64 9, i64 10, !dbg !3518
  br label %30, !dbg !3518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3522 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3526, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8* %1, metadata !3527, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8* %2, metadata !3528, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %3, metadata !3529, metadata !DIExpression()), !dbg !3540
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3541
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3541
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3530, metadata !DIExpression()), !dbg !3542
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3543
  call void @llvm.va_start(i8* nonnull %6), !dbg !3543
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3544
  call void @llvm.va_end(i8* nonnull %6), !dbg !3545
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3546
  ret void, !dbg !3546
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3547 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.114, i64 0, i64 0), i32 5) #11, !dbg !3548
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.115, i64 0, i64 0)) #11, !dbg !3548
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.116, i64 0, i64 0), i32 5) #11, !dbg !3549
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.117, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.118, i64 0, i64 0)) #11, !dbg !3549
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.119, i64 0, i64 0), i32 5) #11, !dbg !3550
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3550, !tbaa !780
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3550
  ret void, !dbg !3551
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3552 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3556, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 %1, metadata !3557, metadata !DIExpression()), !dbg !3559
  %3 = udiv i64 9223372036854775807, %1, !dbg !3560
  %4 = icmp ult i64 %3, %0, !dbg !3560
  br i1 %4, label %5, label %6, !dbg !3562

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3563
  unreachable, !dbg !3563

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %7, metadata !3565, metadata !DIExpression()) #11, !dbg !3572
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %8, metadata !3571, metadata !DIExpression()) #11, !dbg !3575
  %9 = icmp eq i8* %8, null, !dbg !3576
  %10 = icmp ne i64 %7, 0, !dbg !3578
  %11 = and i1 %10, %9, !dbg !3579
  br i1 %11, label %12, label %13, !dbg !3579

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3580
  unreachable, !dbg !3580

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3581
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3566 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3565, metadata !DIExpression()), !dbg !3582
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %2, metadata !3571, metadata !DIExpression()), !dbg !3584
  %3 = icmp eq i8* %2, null, !dbg !3585
  %4 = icmp ne i64 %0, 0, !dbg !3586
  %5 = and i1 %4, %3, !dbg !3587
  br i1 %5, label %6, label %7, !dbg !3587

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3588
  unreachable, !dbg !3588

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3589
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3590 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3595, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 %2, metadata !3596, metadata !DIExpression()), !dbg !3599
  %4 = udiv i64 9223372036854775807, %2, !dbg !3600
  %5 = icmp ult i64 %4, %1, !dbg !3600
  br i1 %5, label %6, label %7, !dbg !3602

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3603
  unreachable, !dbg !3603

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3604
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()) #11, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %8, metadata !3610, metadata !DIExpression()) #11, !dbg !3613
  %9 = icmp eq i64 %8, 0, !dbg !3614
  %10 = icmp ne i8* %0, null, !dbg !3616
  %11 = and i1 %10, %9, !dbg !3617
  br i1 %11, label %12, label %13, !dbg !3617

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3618
  br label %19, !dbg !3620

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %14, metadata !3605, metadata !DIExpression()) #11, !dbg !3611
  %15 = icmp eq i8* %14, null, !dbg !3622
  %16 = icmp ne i64 %8, 0, !dbg !3624
  %17 = and i1 %16, %15, !dbg !3625
  br i1 %17, label %18, label %19, !dbg !3625

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3626
  unreachable, !dbg !3626

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3627
  ret i8* %20, !dbg !3628
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3606 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %1, metadata !3610, metadata !DIExpression()), !dbg !3630
  %3 = icmp eq i64 %1, 0, !dbg !3631
  %4 = icmp ne i8* %0, null, !dbg !3632
  %5 = and i1 %4, %3, !dbg !3633
  br i1 %5, label %6, label %7, !dbg !3633

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3634
  br label %13, !dbg !3635

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %8, metadata !3605, metadata !DIExpression()), !dbg !3629
  %9 = icmp eq i8* %8, null, !dbg !3637
  %10 = icmp ne i64 %1, 0, !dbg !3638
  %11 = and i1 %10, %9, !dbg !3639
  br i1 %11, label %12, label %13, !dbg !3639

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3640
  unreachable, !dbg !3640

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3641
  ret i8* %14, !dbg !3642
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !282 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !284, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64* %1, metadata !285, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %2, metadata !286, metadata !DIExpression()), !dbg !3645
  %4 = load i64, i64* %1, align 8, !dbg !3646, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %4, metadata !287, metadata !DIExpression()), !dbg !3647
  %5 = icmp eq i8* %0, null, !dbg !3648
  br i1 %5, label %6, label %20, !dbg !3650

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3651
  br i1 %7, label %8, label %13, !dbg !3654

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3655
  call void @llvm.dbg.value(metadata i64 %9, metadata !287, metadata !DIExpression()), !dbg !3647
  %10 = icmp ugt i64 %2, 128, !dbg !3657
  %11 = zext i1 %10 to i64, !dbg !3657
  %12 = add nuw nsw i64 %9, %11, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %12, metadata !287, metadata !DIExpression()), !dbg !3647
  br label %13, !dbg !3659

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3660
  call void @llvm.dbg.value(metadata i64 %14, metadata !287, metadata !DIExpression()), !dbg !3647
  %15 = udiv i64 9223372036854775807, %2, !dbg !3661
  %16 = icmp ult i64 %15, %14, !dbg !3661
  br i1 %16, label %19, label %17, !dbg !3663

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !287, metadata !DIExpression()), !dbg !3647
  store i64 %14, i64* %1, align 8, !dbg !3664, !tbaa !905
  %18 = mul i64 %14, %2, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()) #11, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %28, metadata !3610, metadata !DIExpression()) #11, !dbg !3668
  br label %31, !dbg !3669

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3670
  unreachable, !dbg !3670

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3671
  %22 = icmp ugt i64 %21, %4, !dbg !3674
  br i1 %22, label %24, label %23, !dbg !3675

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3676
  unreachable, !dbg !3676

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3677
  %26 = add i64 %4, 1, !dbg !3678
  %27 = add i64 %26, %25, !dbg !3679
  call void @llvm.dbg.value(metadata i64 %27, metadata !287, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %27, metadata !287, metadata !DIExpression()), !dbg !3647
  store i64 %27, i64* %1, align 8, !dbg !3664, !tbaa !905
  %28 = mul i64 %27, %2, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()) #11, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %28, metadata !3610, metadata !DIExpression()) #11, !dbg !3668
  %29 = icmp eq i64 %28, 0, !dbg !3680
  br i1 %29, label %30, label %31, !dbg !3669

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3681
  br label %38, !dbg !3682

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %33, metadata !3605, metadata !DIExpression()) #11, !dbg !3666
  %34 = icmp eq i8* %33, null, !dbg !3684
  %35 = icmp ne i64 %32, 0, !dbg !3685
  %36 = and i1 %35, %34, !dbg !3686
  br i1 %36, label %37, label %38, !dbg !3686

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3687
  unreachable, !dbg !3687

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3688
  ret i8* %39, !dbg !3689
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3690 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3692, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %0, metadata !3565, metadata !DIExpression()) #11, !dbg !3694
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3696
  call void @llvm.dbg.value(metadata i8* %2, metadata !3571, metadata !DIExpression()) #11, !dbg !3697
  %3 = icmp eq i8* %2, null, !dbg !3698
  %4 = icmp ne i64 %0, 0, !dbg !3699
  %5 = and i1 %4, %3, !dbg !3700
  br i1 %5, label %6, label %7, !dbg !3700

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3701
  unreachable, !dbg !3701

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3703 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3707, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64* %1, metadata !3708, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i8* %0, metadata !284, metadata !DIExpression()) #11, !dbg !3711
  call void @llvm.dbg.value(metadata i64* %1, metadata !285, metadata !DIExpression()) #11, !dbg !3713
  call void @llvm.dbg.value(metadata i64 1, metadata !286, metadata !DIExpression()) #11, !dbg !3714
  %3 = load i64, i64* %1, align 8, !dbg !3715, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %3, metadata !287, metadata !DIExpression()) #11, !dbg !3716
  %4 = icmp eq i8* %0, null, !dbg !3717
  br i1 %4, label %5, label %12, !dbg !3718

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3719
  br i1 %6, label %9, label %7, !dbg !3720

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !287, metadata !DIExpression()) #11, !dbg !3716
  %8 = icmp slt i64 %3, 0, !dbg !3721
  br i1 %8, label %11, label %9, !dbg !3722

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !287, metadata !DIExpression()) #11, !dbg !3716
  store i64 %10, i64* %1, align 8, !dbg !3723, !tbaa !905
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()) #11, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %18, metadata !3610, metadata !DIExpression()) #11, !dbg !3726
  br label %21, !dbg !3727

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3728
  unreachable, !dbg !3728

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3729
  br i1 %13, label %15, label %14, !dbg !3730

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3731
  unreachable, !dbg !3731

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3732
  %17 = add i64 %3, 1, !dbg !3733
  %18 = add i64 %17, %16, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %18, metadata !287, metadata !DIExpression()) #11, !dbg !3716
  call void @llvm.dbg.value(metadata i64 %18, metadata !287, metadata !DIExpression()) #11, !dbg !3716
  store i64 %18, i64* %1, align 8, !dbg !3723, !tbaa !905
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()) #11, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %18, metadata !3610, metadata !DIExpression()) #11, !dbg !3726
  %19 = icmp eq i64 %18, 0, !dbg !3735
  br i1 %19, label %20, label %21, !dbg !3727

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3736
  br label %28, !dbg !3737

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %23, metadata !3605, metadata !DIExpression()) #11, !dbg !3724
  %24 = icmp eq i8* %23, null, !dbg !3739
  %25 = icmp ne i64 %22, 0, !dbg !3740
  %26 = and i1 %25, %24, !dbg !3741
  br i1 %26, label %27, label %28, !dbg !3741

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3742
  unreachable, !dbg !3742

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3743
  ret i8* %29, !dbg !3744
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3745 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3747, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %0, metadata !3565, metadata !DIExpression()) #11, !dbg !3749
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %2, metadata !3571, metadata !DIExpression()) #11, !dbg !3752
  %3 = icmp eq i8* %2, null, !dbg !3753
  %4 = icmp ne i64 %0, 0, !dbg !3754
  %5 = and i1 %4, %3, !dbg !3755
  br i1 %5, label %6, label %7, !dbg !3755

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3756
  unreachable, !dbg !3756

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3757
  ret i8* %2, !dbg !3758
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3759 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3761, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64 %1, metadata !3762, metadata !DIExpression()), !dbg !3765
  %3 = udiv i64 9223372036854775807, %1, !dbg !3766
  %4 = icmp ult i64 %3, %0, !dbg !3766
  br i1 %4, label %8, label %5, !dbg !3768

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %6, metadata !3763, metadata !DIExpression()), !dbg !3770
  %7 = icmp eq i8* %6, null, !dbg !3771
  br i1 %7, label %8, label %9, !dbg !3772

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3773
  unreachable, !dbg !3773

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3775 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3781, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %1, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()) #11, !dbg !3785
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3787
  call void @llvm.dbg.value(metadata i8* %3, metadata !3571, metadata !DIExpression()) #11, !dbg !3788
  %4 = icmp eq i8* %3, null, !dbg !3789
  %5 = icmp ne i64 %1, 0, !dbg !3790
  %6 = and i1 %5, %4, !dbg !3791
  br i1 %6, label %7, label %8, !dbg !3791

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3792
  unreachable, !dbg !3792

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3793
  ret i8* %3, !dbg !3794
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3795 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3797, metadata !DIExpression()), !dbg !3798
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3799
  %3 = add i64 %2, 1, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %0, metadata !3781, metadata !DIExpression()) #11, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %3, metadata !3782, metadata !DIExpression()) #11, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %3, metadata !3565, metadata !DIExpression()) #11, !dbg !3804
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3806
  call void @llvm.dbg.value(metadata i8* %4, metadata !3571, metadata !DIExpression()) #11, !dbg !3807
  %5 = icmp eq i8* %4, null, !dbg !3808
  %6 = icmp ne i64 %3, 0, !dbg !3809
  %7 = and i1 %6, %5, !dbg !3810
  br i1 %7, label %8, label %9, !dbg !3810

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3811
  unreachable, !dbg !3811

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !3812
  ret i8* %4, !dbg !3813
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3814 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3816, !tbaa !897
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.132, i64 0, i64 0), i32 5) #11, !dbg !3817
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* %2) #11, !dbg !3818
  tail call void @abort() #15, !dbg !3819
  unreachable, !dbg !3819
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xgetgroups(i8*, i32, i32**) local_unnamed_addr #7 !dbg !3820 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3823, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i32 %1, metadata !3824, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i32** %2, metadata !3825, metadata !DIExpression()), !dbg !3829
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #11, !dbg !3830
  call void @llvm.dbg.value(metadata i32 %4, metadata !3826, metadata !DIExpression()), !dbg !3831
  %5 = icmp eq i32 %4, -1, !dbg !3832
  br i1 %5, label %6, label %11, !dbg !3834

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !3835
  %8 = load i32, i32* %7, align 4, !dbg !3835, !tbaa !897
  %9 = icmp eq i32 %8, 12, !dbg !3836
  br i1 %9, label %10, label %11, !dbg !3837

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3838
  unreachable, !dbg !3838

; <label>:11:                                     ; preds = %6, %3
  ret i32 %4, !dbg !3839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !3840 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3847, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8** %1, metadata !3848, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i32 %2, metadata !3849, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64* %3, metadata !3850, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8* %4, metadata !3851, metadata !DIExpression()), !dbg !3869
  %7 = bitcast i8** %6 to i8*, !dbg !3870
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !3870
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()), !dbg !3871
  %8 = icmp ult i32 %2, 37, !dbg !3872
  br i1 %8, label %10, label %9, !dbg !3872

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.139, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #15, !dbg !3872
  unreachable, !dbg !3872

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3875
  call void @llvm.dbg.value(metadata i8** %25, metadata !3853, metadata !DIExpression()), !dbg !3876
  %12 = tail call i32* @__errno_location() #17, !dbg !3877
  store i32 0, i32* %12, align 4, !dbg !3878, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %0, metadata !3856, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i8* %0, metadata !3859, metadata !DIExpression(DW_OP_deref)), !dbg !3880
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !3881
  %14 = load i16*, i16** %13, align 8, !tbaa !780
  br label %15, !dbg !3882

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3883
  %17 = load i8, i8* %16, align 1, !dbg !3883, !tbaa !933
  call void @llvm.dbg.value(metadata i8 %17, metadata !3859, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8* %16, metadata !3856, metadata !DIExpression()), !dbg !3879
  %18 = zext i8 %17 to i64, !dbg !3881
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3881
  %20 = load i16, i16* %19, align 2, !dbg !3881, !tbaa !1244
  %21 = and i16 %20, 8192, !dbg !3881
  %22 = icmp eq i16 %21, 0, !dbg !3882
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %23, metadata !3856, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i8* %23, metadata !3859, metadata !DIExpression(DW_OP_deref)), !dbg !3880
  br i1 %22, label %24, label %15, !dbg !3882, !llvm.loop !3885

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3875
  %26 = icmp eq i8 %17, 45, !dbg !3887
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #11, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %28, metadata !3854, metadata !DIExpression()), !dbg !3890
  %29 = load i8*, i8** %25, align 8, !dbg !3891, !tbaa !780
  %30 = icmp eq i8* %29, %0, !dbg !3893
  br i1 %30, label %31, label %40, !dbg !3894

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3895
  br i1 %32, label %265, label %33, !dbg !3898

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3899, !tbaa !933
  %35 = icmp eq i8 %34, 0, !dbg !3899
  br i1 %35, label %265, label %36, !dbg !3900

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3899
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3901
  %39 = icmp eq i8* %38, null, !dbg !3901
  br i1 %39, label %265, label %47, !dbg !3902

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3903, !tbaa !897
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3905

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3855, metadata !DIExpression()), !dbg !3871
  br label %43, !dbg !3906

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3908
  call void @llvm.dbg.value(metadata i32 %44, metadata !3855, metadata !DIExpression()), !dbg !3871
  %45 = icmp eq i8* %4, null, !dbg !3909
  br i1 %45, label %46, label %47, !dbg !3911

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3854, metadata !DIExpression()), !dbg !3890
  store i64 %28, i64* %3, align 8, !dbg !3912, !tbaa !905
  br label %265, !dbg !3914

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3915, !tbaa !933
  %51 = sext i8 %50 to i32, !dbg !3915
  %52 = icmp eq i8 %50, 0, !dbg !3916
  br i1 %52, label %262, label %53, !dbg !3917

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3860, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 1, metadata !3863, metadata !DIExpression()), !dbg !3919
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !3920
  %55 = icmp eq i8* %54, null, !dbg !3920
  br i1 %55, label %56, label %58, !dbg !3922

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3854, metadata !DIExpression()), !dbg !3890
  store i64 %49, i64* %3, align 8, !dbg !3923, !tbaa !905
  %57 = or i32 %48, 2, !dbg !3925
  br label %265, !dbg !3926

; <label>:58:                                     ; preds = %53
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
  ], !dbg !3927

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3928
  %61 = icmp eq i8* %60, null, !dbg !3928
  br i1 %61, label %72, label %62, !dbg !3931

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3932
  %64 = load i8, i8* %63, align 1, !dbg !3932, !tbaa !933
  %65 = sext i8 %64 to i32, !dbg !3932
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3933

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3934
  %68 = load i8, i8* %67, align 1, !dbg !3934, !tbaa !933
  %69 = icmp eq i8 %68, 66, !dbg !3937
  %70 = select i1 %69, i64 3, i64 1, !dbg !3938
  br label %72, !dbg !3938

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3860, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 2, metadata !3863, metadata !DIExpression()), !dbg !3919
  br label %72, !dbg !3939

; <label>:72:                                     ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  switch i32 %51, label %251 [
    i32 98, label %75
    i32 66, label %80
    i32 99, label %253
    i32 69, label %85
    i32 71, label %111
    i32 103, label %111
    i32 107, label %125
    i32 75, label %125
    i32 77, label %131
    i32 109, label %131
    i32 80, label %141
    i32 84, label %163
    i32 116, label %163
    i32 119, label %181
    i32 89, label %187
    i32 90, label %221
  ], !dbg !3940

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !3941, metadata !DIExpression()), !dbg !3947
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3950
  %77 = shl i64 %49, 9, !dbg !3952
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3953
  %79 = zext i1 %76 to i32, !dbg !3953
  call void @llvm.dbg.value(metadata i32 %79, metadata !3864, metadata !DIExpression()), !dbg !3954
  br label %253, !dbg !3955

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !3941, metadata !DIExpression()), !dbg !3956
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3958
  %82 = shl i64 %49, 10, !dbg !3959
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3960
  %84 = zext i1 %81 to i32, !dbg !3960
  call void @llvm.dbg.value(metadata i32 %84, metadata !3864, metadata !DIExpression()), !dbg !3954
  br label %253, !dbg !3961

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !3962, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3972
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 6, metadata !3962, metadata !DIExpression()), !dbg !3970
  %87 = icmp ult i64 %86, %49, !dbg !3973
  %88 = mul i64 %49, %73, !dbg !3975
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3976
  call void @llvm.dbg.value(metadata i32 5, metadata !3962, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 5, metadata !3962, metadata !DIExpression()), !dbg !3970
  %90 = icmp ult i64 %86, %89, !dbg !3973
  %91 = mul i64 %89, %73, !dbg !3975
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3976
  %93 = or i1 %87, %90, !dbg !3977
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !3970
  %94 = icmp ult i64 %86, %92, !dbg !3973
  %95 = mul i64 %92, %73, !dbg !3975
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3976
  %97 = or i1 %93, %94, !dbg !3977
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !3970
  %98 = icmp ult i64 %86, %96, !dbg !3973
  %99 = mul i64 %96, %73, !dbg !3975
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3976
  %101 = or i1 %97, %98, !dbg !3977
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !3970
  %102 = icmp ult i64 %86, %100, !dbg !3973
  %103 = mul i64 %100, %73, !dbg !3975
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3976
  %105 = or i1 %101, %102, !dbg !3977
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !3970
  %106 = icmp ult i64 %86, %104, !dbg !3973
  %107 = mul i64 %104, %73, !dbg !3975
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3976
  %109 = or i1 %105, %106, !dbg !3977
  %110 = zext i1 %109 to i32, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %110, metadata !3969, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 0, metadata !3962, metadata !DIExpression()), !dbg !3970
  br label %253, !dbg !3978

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3981
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !3979
  %113 = icmp ult i64 %112, %49, !dbg !3982
  %114 = mul i64 %49, %73, !dbg !3984
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3985
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !3979
  %116 = icmp ult i64 %112, %115, !dbg !3982
  %117 = mul i64 %115, %73, !dbg !3984
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3985
  %119 = or i1 %113, %116, !dbg !3986
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !3979
  %120 = icmp ult i64 %112, %118, !dbg !3982
  %121 = mul i64 %118, %73, !dbg !3984
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3985
  %123 = or i1 %119, %120, !dbg !3986
  %124 = zext i1 %123 to i32, !dbg !3986
  call void @llvm.dbg.value(metadata i32 %124, metadata !3969, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32 0, metadata !3962, metadata !DIExpression()), !dbg !3979
  br label %253, !dbg !3978

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3989
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i32 undef, metadata !3962, metadata !DIExpression()), !dbg !3987
  %127 = icmp ult i64 %126, %49, !dbg !3990
  %128 = mul i64 %49, %73, !dbg !3992
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3993
  %130 = zext i1 %127 to i32, !dbg !3993
  call void @llvm.dbg.value(metadata i32 %130, metadata !3969, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i32 undef, metadata !3962, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3987
  br label %253, !dbg !3978

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3996
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !3994
  %133 = icmp ult i64 %132, %49, !dbg !3997
  %134 = mul i64 %49, %73, !dbg !3999
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4000
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !3994
  %136 = icmp ult i64 %132, %135, !dbg !3997
  %137 = mul i64 %135, %73, !dbg !3999
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4000
  %139 = or i1 %133, %136, !dbg !4001
  %140 = zext i1 %139 to i32, !dbg !4001
  call void @llvm.dbg.value(metadata i32 %140, metadata !3969, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i32 0, metadata !3962, metadata !DIExpression()), !dbg !3994
  br label %253, !dbg !3978

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !3962, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !4004
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i32 5, metadata !3962, metadata !DIExpression()), !dbg !4002
  %143 = icmp ult i64 %142, %49, !dbg !4005
  %144 = mul i64 %49, %73, !dbg !4007
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4008
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !4002
  %146 = icmp ult i64 %142, %145, !dbg !4005
  %147 = mul i64 %145, %73, !dbg !4007
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4008
  %149 = or i1 %143, %146, !dbg !4009
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !4002
  %150 = icmp ult i64 %142, %148, !dbg !4005
  %151 = mul i64 %148, %73, !dbg !4007
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4008
  %153 = or i1 %149, %150, !dbg !4009
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !4002
  %154 = icmp ult i64 %142, %152, !dbg !4005
  %155 = mul i64 %152, %73, !dbg !4007
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4008
  %157 = or i1 %153, %154, !dbg !4009
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !4002
  %158 = icmp ult i64 %142, %156, !dbg !4005
  %159 = mul i64 %156, %73, !dbg !4007
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4008
  %161 = or i1 %157, %158, !dbg !4009
  %162 = zext i1 %161 to i32, !dbg !4009
  call void @llvm.dbg.value(metadata i32 %162, metadata !3969, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i32 0, metadata !3962, metadata !DIExpression()), !dbg !4002
  br label %253, !dbg !3978

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !4012
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !4010
  %165 = icmp ult i64 %164, %49, !dbg !4013
  %166 = mul i64 %49, %73, !dbg !4015
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4016
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !4010
  %168 = icmp ult i64 %164, %167, !dbg !4013
  %169 = mul i64 %167, %73, !dbg !4015
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4016
  %171 = or i1 %165, %168, !dbg !4017
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !4010
  %172 = icmp ult i64 %164, %170, !dbg !4013
  %173 = mul i64 %170, %73, !dbg !4015
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4016
  %175 = or i1 %171, %172, !dbg !4017
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !4010
  %176 = icmp ult i64 %164, %174, !dbg !4013
  %177 = mul i64 %174, %73, !dbg !4015
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4016
  %179 = or i1 %175, %176, !dbg !4017
  %180 = zext i1 %179 to i32, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %180, metadata !3969, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i32 0, metadata !3962, metadata !DIExpression()), !dbg !4010
  br label %253, !dbg !3978

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3941, metadata !DIExpression()), !dbg !4018
  %182 = icmp slt i64 %49, 0, !dbg !4020
  %183 = shl i64 %49, 1, !dbg !4021
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4022
  %185 = lshr i64 %49, 63, !dbg !4022
  %186 = trunc i64 %185 to i32, !dbg !4022
  call void @llvm.dbg.value(metadata i32 %186, metadata !3864, metadata !DIExpression()), !dbg !3954
  br label %253, !dbg !4023

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !3962, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !4026
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i32 8, metadata !3962, metadata !DIExpression()), !dbg !4024
  %189 = icmp ult i64 %188, %49, !dbg !4027
  %190 = mul i64 %49, %73, !dbg !4029
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4030
  call void @llvm.dbg.value(metadata i32 7, metadata !3962, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 7, metadata !3962, metadata !DIExpression()), !dbg !4024
  %192 = icmp ult i64 %188, %191, !dbg !4027
  %193 = mul i64 %191, %73, !dbg !4029
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4030
  %195 = or i1 %189, %192, !dbg !4031
  call void @llvm.dbg.value(metadata i32 6, metadata !3962, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 6, metadata !3962, metadata !DIExpression()), !dbg !4024
  %196 = icmp ult i64 %188, %194, !dbg !4027
  %197 = mul i64 %194, %73, !dbg !4029
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4030
  %199 = or i1 %195, %196, !dbg !4031
  call void @llvm.dbg.value(metadata i32 5, metadata !3962, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 5, metadata !3962, metadata !DIExpression()), !dbg !4024
  %200 = icmp ult i64 %188, %198, !dbg !4027
  %201 = mul i64 %198, %73, !dbg !4029
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4030
  %203 = or i1 %199, %200, !dbg !4031
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !4024
  %204 = icmp ult i64 %188, %202, !dbg !4027
  %205 = mul i64 %202, %73, !dbg !4029
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4030
  %207 = or i1 %203, %204, !dbg !4031
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !4024
  %208 = icmp ult i64 %188, %206, !dbg !4027
  %209 = mul i64 %206, %73, !dbg !4029
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4030
  %211 = or i1 %207, %208, !dbg !4031
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !4024
  %212 = icmp ult i64 %188, %210, !dbg !4027
  %213 = mul i64 %210, %73, !dbg !4029
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4030
  %215 = or i1 %211, %212, !dbg !4031
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !4024
  %216 = icmp ult i64 %188, %214, !dbg !4027
  %217 = mul i64 %214, %73, !dbg !4029
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4030
  %219 = or i1 %215, %216, !dbg !4031
  %220 = zext i1 %219 to i32, !dbg !4031
  call void @llvm.dbg.value(metadata i32 %220, metadata !3969, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i32 0, metadata !3962, metadata !DIExpression()), !dbg !4024
  br label %253, !dbg !3978

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !3962, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !4034
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 7, metadata !3962, metadata !DIExpression()), !dbg !4032
  %223 = icmp ult i64 %222, %49, !dbg !4035
  %224 = mul i64 %49, %73, !dbg !4037
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4038
  call void @llvm.dbg.value(metadata i32 6, metadata !3962, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 6, metadata !3962, metadata !DIExpression()), !dbg !4032
  %226 = icmp ult i64 %222, %225, !dbg !4035
  %227 = mul i64 %225, %73, !dbg !4037
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4038
  %229 = or i1 %223, %226, !dbg !4039
  call void @llvm.dbg.value(metadata i32 5, metadata !3962, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 5, metadata !3962, metadata !DIExpression()), !dbg !4032
  %230 = icmp ult i64 %222, %228, !dbg !4035
  %231 = mul i64 %228, %73, !dbg !4037
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4038
  %233 = or i1 %229, %230, !dbg !4039
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 4, metadata !3962, metadata !DIExpression()), !dbg !4032
  %234 = icmp ult i64 %222, %232, !dbg !4035
  %235 = mul i64 %232, %73, !dbg !4037
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4038
  %237 = or i1 %233, %234, !dbg !4039
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 3, metadata !3962, metadata !DIExpression()), !dbg !4032
  %238 = icmp ult i64 %222, %236, !dbg !4035
  %239 = mul i64 %236, %73, !dbg !4037
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4038
  %241 = or i1 %237, %238, !dbg !4039
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 2, metadata !3962, metadata !DIExpression()), !dbg !4032
  %242 = icmp ult i64 %222, %240, !dbg !4035
  %243 = mul i64 %240, %73, !dbg !4037
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4038
  %245 = or i1 %241, %242, !dbg !4039
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 1, metadata !3962, metadata !DIExpression()), !dbg !4032
  %246 = icmp ult i64 %222, %244, !dbg !4035
  %247 = mul i64 %244, %73, !dbg !4037
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4038
  %249 = or i1 %245, %246, !dbg !4039
  %250 = zext i1 %249 to i32, !dbg !4039
  call void @llvm.dbg.value(metadata i32 %250, metadata !3969, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 0, metadata !3962, metadata !DIExpression()), !dbg !4032
  br label %253, !dbg !3978

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3854, metadata !DIExpression()), !dbg !3890
  store i64 %49, i64* %3, align 8, !dbg !4040, !tbaa !905
  %252 = or i32 %48, 2, !dbg !4041
  br label %265, !dbg !4042

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !4043
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !4044
  call void @llvm.dbg.value(metadata i32 %255, metadata !3864, metadata !DIExpression()), !dbg !3954
  %256 = or i32 %255, %48, !dbg !3978
  call void @llvm.dbg.value(metadata i32 %256, metadata !3855, metadata !DIExpression()), !dbg !3871
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4045
  store i8* %257, i8** %25, align 8, !dbg !4045, !tbaa !780
  %258 = load i8, i8* %257, align 1, !dbg !4046, !tbaa !933
  %259 = icmp eq i8 %258, 0, !dbg !4046
  %260 = or i32 %256, 2, !dbg !4048
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4049
  call void @llvm.dbg.value(metadata i32 %261, metadata !3855, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i32 %261, metadata !3855, metadata !DIExpression()), !dbg !3871
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !4050
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !3871
  call void @llvm.dbg.value(metadata i32 %264, metadata !3855, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i64 %263, metadata !3854, metadata !DIExpression()), !dbg !3890
  store i64 %263, i64* %3, align 8, !dbg !4051, !tbaa !905
  br label %265, !dbg !4052

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !4053
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4054
  ret i32 %266, !dbg !4054
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4055 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4058, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 %1, metadata !4059, metadata !DIExpression()), !dbg !4065
  %3 = icmp eq i64 %0, 0, !dbg !4066
  %4 = icmp eq i64 %1, 0, !dbg !4067
  %5 = or i1 %3, %4, !dbg !4068
  br i1 %5, label %12, label %6, !dbg !4068

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4069
  call void @llvm.dbg.value(metadata i64 %7, metadata !4061, metadata !DIExpression()), !dbg !4070
  %8 = udiv i64 %7, %1, !dbg !4071
  %9 = icmp eq i64 %8, %0, !dbg !4073
  br i1 %9, label %12, label %10, !dbg !4074

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4075
  store i32 12, i32* %11, align 4, !dbg !4077, !tbaa !897
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4058, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 %13, metadata !4059, metadata !DIExpression()), !dbg !4065
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4078
  call void @llvm.dbg.value(metadata i8* %15, metadata !4060, metadata !DIExpression()), !dbg !4079
  br label %16, !dbg !4080

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4081
  ret i8* %17, !dbg !4082
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4083 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4100, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8* %1, metadata !4101, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %2, metadata !4102, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4103, metadata !DIExpression()), !dbg !4112
  %6 = bitcast i32* %5 to i8*, !dbg !4113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4113
  %7 = icmp eq i32* %0, null, !dbg !4114
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4116
  call void @llvm.dbg.value(metadata i32* %8, metadata !4100, metadata !DIExpression()), !dbg !4109
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4117
  call void @llvm.dbg.value(metadata i64 %9, metadata !4104, metadata !DIExpression()), !dbg !4118
  %10 = icmp ugt i64 %9, -3, !dbg !4119
  %11 = icmp ne i64 %2, 0, !dbg !4120
  %12 = and i1 %11, %10, !dbg !4121
  br i1 %12, label %13, label %18, !dbg !4121

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4122
  br i1 %14, label %18, label %15, !dbg !4123

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4124, !tbaa !933
  call void @llvm.dbg.value(metadata i8 %16, metadata !4106, metadata !DIExpression()), !dbg !4125
  %17 = zext i8 %16 to i32, !dbg !4126
  store i32 %17, i32* %8, align 4, !dbg !4127, !tbaa !897
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4129
  ret i64 %19, !dbg !4129
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4130 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4169, metadata !DIExpression()), !dbg !4174
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4175
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4176, metadata !DIExpression()), !dbg !4180
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4182
  %4 = load i32, i32* %3, align 8, !dbg !4182, !tbaa !4183
  %5 = and i32 %4, 32, !dbg !4182
  %6 = icmp eq i32 %5, 0, !dbg !4185
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4186
  %8 = icmp ne i32 %7, 0, !dbg !4187
  br i1 %6, label %9, label %19, !dbg !4188

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4190
  %11 = xor i1 %8, true, !dbg !4191
  %12 = or i1 %10, %11, !dbg !4191
  %13 = sext i1 %8 to i32, !dbg !4191
  br i1 %12, label %22, label %14, !dbg !4191

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4192
  %16 = load i32, i32* %15, align 4, !dbg !4192, !tbaa !897
  %17 = icmp ne i32 %16, 9, !dbg !4193
  %18 = sext i1 %17 to i32, !dbg !4194
  br label %22, !dbg !4194

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4195

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4197
  store i32 0, i32* %21, align 4, !dbg !4199, !tbaa !897
  br label %22, !dbg !4197

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4200
  ret i32 %23, !dbg !4201
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4207, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8 1, metadata !4208, metadata !DIExpression()), !dbg !4211
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4212
  call void @llvm.dbg.value(metadata i8* %2, metadata !4209, metadata !DIExpression()), !dbg !4213
  %3 = icmp eq i8* %2, null, !dbg !4214
  br i1 %3, label %11, label %4, !dbg !4216

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0)) #14, !dbg !4217
  %6 = icmp eq i32 %5, 0, !dbg !4222
  br i1 %6, label %10, label %7, !dbg !4223

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.149, i64 0, i64 0)) #14, !dbg !4224
  %9 = icmp eq i32 %8, 0, !dbg !4225
  br i1 %9, label %10, label %11, !dbg !4226

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4208, metadata !DIExpression()), !dbg !4211
  br label %11, !dbg !4227

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4228
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @umaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !4229 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4234, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i8* %1, metadata !4235, metadata !DIExpression()), !dbg !4238
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !4239
  call void @llvm.dbg.value(metadata i8* %3, metadata !4236, metadata !DIExpression()), !dbg !4240
  store i8 0, i8* %3, align 1, !dbg !4241, !tbaa !933
  br label %4, !dbg !4242

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !4243
  call void @llvm.dbg.value(metadata i8* %6, metadata !4236, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %5, metadata !4234, metadata !DIExpression()), !dbg !4237
  %7 = urem i64 %5, 10, !dbg !4246
  %8 = trunc i64 %7 to i8, !dbg !4247
  %9 = or i8 %8, 48, !dbg !4247
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !4248
  call void @llvm.dbg.value(metadata i8* %10, metadata !4236, metadata !DIExpression()), !dbg !4240
  store i8 %9, i8* %10, align 1, !dbg !4249, !tbaa !933
  %11 = udiv i64 %5, 10, !dbg !4250
  call void @llvm.dbg.value(metadata i64 %11, metadata !4234, metadata !DIExpression()), !dbg !4237
  %12 = icmp ugt i64 %5, 9, !dbg !4251
  br i1 %12, label %4, label %13, !dbg !4252, !llvm.loop !4253

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !4236, metadata !DIExpression()), !dbg !4240
  ret i8* %10, !dbg !4256
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4257 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4263
  call void @llvm.dbg.value(metadata i8* %1, metadata !4262, metadata !DIExpression()), !dbg !4264
  %2 = icmp eq i8* %1, null, !dbg !4265
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %1, !dbg !4267
  call void @llvm.dbg.value(metadata i8* %3, metadata !4262, metadata !DIExpression()), !dbg !4264
  %4 = load i8, i8* %3, align 1, !dbg !4268, !tbaa !933
  %5 = icmp eq i8 %4, 0, !dbg !4272
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i8* %3, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %6, metadata !4262, metadata !DIExpression()), !dbg !4264
  ret i8* %6, !dbg !4274
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mgetgroups(i8*, i32, i32** nocapture) local_unnamed_addr #7 !dbg !706 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !711, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i32 %1, metadata !712, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32** %2, metadata !713, metadata !DIExpression()), !dbg !4277
  %5 = bitcast i32* %4 to i8*, !dbg !4278
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #11, !dbg !4278
  %6 = icmp eq i8* %0, null, !dbg !4279
  br i1 %6, label %43, label %7, !dbg !4280

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !714, metadata !DIExpression()), !dbg !4281
  store i32 10, i32* %4, align 4, !dbg !4282, !tbaa !897
  call void @llvm.dbg.value(metadata i32* null, metadata !4283, metadata !DIExpression()) #11, !dbg !4289
  call void @llvm.dbg.value(metadata i64 10, metadata !4288, metadata !DIExpression()) #11, !dbg !4291
  %8 = tail call i8* @malloc(i64 40), !dbg !4292
  call void @llvm.dbg.value(metadata i8* %8, metadata !716, metadata !DIExpression()), !dbg !4293
  %9 = icmp eq i8* %8, null, !dbg !4294
  br i1 %9, label %146, label %10, !dbg !4296

; <label>:10:                                     ; preds = %7, %38
  %11 = phi i32 [ %39, %38 ], [ 10, %7 ], !dbg !4297
  %12 = phi i8* [ %29, %38 ], [ %8, %7 ], !dbg !4298
  %13 = bitcast i8* %12 to i32*, !dbg !4298
  call void @llvm.dbg.value(metadata i32* %13, metadata !716, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 %11, metadata !714, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i32 %11, metadata !721, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32* %4, metadata !714, metadata !DIExpression(DW_OP_deref)), !dbg !4281
  %14 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %13, i32* nonnull %4) #11, !dbg !4300
  call void @llvm.dbg.value(metadata i32 %14, metadata !715, metadata !DIExpression()), !dbg !4301
  %15 = icmp slt i32 %14, 0, !dbg !4302
  %16 = load i32, i32* %4, align 4, !dbg !4304, !tbaa !897
  %17 = icmp eq i32 %11, %16, !dbg !4305
  %18 = and i1 %15, %17, !dbg !4306
  call void @llvm.dbg.value(metadata i32 %16, metadata !714, metadata !DIExpression()), !dbg !4281
  br i1 %18, label %19, label %21, !dbg !4306

; <label>:19:                                     ; preds = %10
  %20 = shl nsw i32 %11, 1, !dbg !4307
  call void @llvm.dbg.value(metadata i32 %20, metadata !714, metadata !DIExpression()), !dbg !4281
  store i32 %20, i32* %4, align 4, !dbg !4307, !tbaa !897
  br label %21, !dbg !4308

; <label>:21:                                     ; preds = %10, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !4309
  call void @llvm.dbg.value(metadata i32 %22, metadata !714, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i32* %13, metadata !4283, metadata !DIExpression()) #11, !dbg !4310
  %23 = icmp slt i32 %22, 0, !dbg !4312
  br i1 %23, label %24, label %26, !dbg !4314

; <label>:24:                                     ; preds = %21
  %25 = tail call i32* @__errno_location() #17, !dbg !4315
  store i32 12, i32* %25, align 4, !dbg !4317, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %29, metadata !717, metadata !DIExpression()), !dbg !4318
  br label %33, !dbg !4319

; <label>:26:                                     ; preds = %21
  %27 = sext i32 %22 to i64, !dbg !4309
  call void @llvm.dbg.value(metadata i64 %27, metadata !4288, metadata !DIExpression()) #11, !dbg !4320
  %28 = shl nsw i64 %27, 2, !dbg !4321
  %29 = call i8* @realloc(i8* nonnull %12, i64 %28) #11, !dbg !4322
  %30 = icmp eq i8* %29, null, !dbg !4323
  br i1 %30, label %31, label %36, !dbg !4319

; <label>:31:                                     ; preds = %26
  %32 = tail call i32* @__errno_location() #17, !dbg !4324
  br label %33, !dbg !4324

; <label>:33:                                     ; preds = %31, %24
  %34 = phi i32* [ %32, %31 ], [ %25, %24 ], !dbg !4324
  %35 = load i32, i32* %34, align 4, !dbg !4324, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %35, metadata !722, metadata !DIExpression()), !dbg !4325
  call void @free(i8* nonnull %12) #11, !dbg !4326
  store i32 %35, i32* %34, align 4, !dbg !4327, !tbaa !897
  br label %146

; <label>:36:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8* %29, metadata !717, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i8* %29, metadata !716, metadata !DIExpression()), !dbg !4293
  %37 = icmp sgt i32 %14, -1, !dbg !4328
  br i1 %37, label %40, label %38, !dbg !4330

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %4, align 4, !dbg !4297, !tbaa !897
  br label %10, !dbg !4330

; <label>:40:                                     ; preds = %36
  %41 = bitcast i32** %2 to i8**, !dbg !4331
  store i8* %29, i8** %41, align 8, !dbg !4331, !tbaa !780
  %42 = load i32, i32* %4, align 4, !dbg !4333, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %42, metadata !714, metadata !DIExpression()), !dbg !4281
  br label %146, !dbg !4334

; <label>:43:                                     ; preds = %3
  %44 = tail call i32 @getgroups(i32 0, i32* null) #11, !dbg !4335
  call void @llvm.dbg.value(metadata i32 %44, metadata !714, metadata !DIExpression()), !dbg !4281
  store i32 %44, i32* %4, align 4, !dbg !4336, !tbaa !897
  %45 = icmp slt i32 %44, 0, !dbg !4337
  br i1 %45, label %46, label %58, !dbg !4339

; <label>:46:                                     ; preds = %43
  %47 = tail call i32* @__errno_location() #17, !dbg !4340
  %48 = load i32, i32* %47, align 4, !dbg !4340, !tbaa !897
  %49 = icmp eq i32 %48, 38, !dbg !4343
  br i1 %49, label %50, label %146, !dbg !4344

; <label>:50:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i32* null, metadata !4283, metadata !DIExpression()) #11, !dbg !4345
  call void @llvm.dbg.value(metadata i64 1, metadata !4288, metadata !DIExpression()) #11, !dbg !4347
  %51 = tail call i8* @malloc(i64 4), !dbg !4348
  %52 = icmp eq i8* %51, null, !dbg !4349
  br i1 %52, label %146, label %53, !dbg !4350

; <label>:53:                                     ; preds = %50
  %54 = bitcast i8* %51 to i32*, !dbg !4348
  call void @llvm.dbg.value(metadata i32* %54, metadata !716, metadata !DIExpression()), !dbg !4293
  %55 = bitcast i32** %2 to i8**, !dbg !4351
  store i8* %51, i8** %55, align 8, !dbg !4351, !tbaa !780
  store i32 %1, i32* %54, align 4, !dbg !4353, !tbaa !897
  %56 = icmp ne i32 %1, -1, !dbg !4354
  %57 = zext i1 %56 to i32, !dbg !4354
  br label %146, !dbg !4355

; <label>:58:                                     ; preds = %43
  %59 = icmp eq i32 %44, 0, !dbg !4356
  %60 = icmp ne i32 %1, -1, !dbg !4358
  %61 = or i1 %60, %59, !dbg !4359
  br i1 %61, label %62, label %67, !dbg !4359

; <label>:62:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 %44, metadata !714, metadata !DIExpression()), !dbg !4281
  %63 = add nsw i32 %44, 1, !dbg !4360
  call void @llvm.dbg.value(metadata i32 %63, metadata !714, metadata !DIExpression()), !dbg !4281
  store i32 %63, i32* %4, align 4, !dbg !4360, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %63, metadata !714, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i32* null, metadata !4283, metadata !DIExpression()) #11, !dbg !4361
  %64 = icmp slt i32 %44, -1, !dbg !4363
  br i1 %64, label %65, label %67, !dbg !4364

; <label>:65:                                     ; preds = %62
  %66 = tail call i32* @__errno_location() #17, !dbg !4365
  store i32 12, i32* %66, align 4, !dbg !4366, !tbaa !897
  call void @llvm.dbg.value(metadata i32* %72, metadata !716, metadata !DIExpression()), !dbg !4293
  br label %146, !dbg !4367

; <label>:67:                                     ; preds = %58, %62
  %68 = phi i32 [ %63, %62 ], [ %44, %58 ]
  %69 = sext i32 %68 to i64, !dbg !4368
  call void @llvm.dbg.value(metadata i64 %69, metadata !4288, metadata !DIExpression()) #11, !dbg !4369
  %70 = shl nsw i64 %69, 2, !dbg !4370
  %71 = tail call i8* @malloc(i64 %70), !dbg !4371
  %72 = bitcast i8* %71 to i32*, !dbg !4371
  call void @llvm.dbg.value(metadata i32* %72, metadata !716, metadata !DIExpression()), !dbg !4293
  %73 = icmp eq i8* %71, null, !dbg !4372
  br i1 %73, label %146, label %74, !dbg !4367

; <label>:74:                                     ; preds = %67
  call void @llvm.dbg.value(metadata i32 %63, metadata !714, metadata !DIExpression()), !dbg !4281
  %75 = zext i1 %60 to i32, !dbg !4374
  %76 = sub nsw i32 %68, %75, !dbg !4375
  %77 = zext i1 %60 to i64, !dbg !4376
  %78 = getelementptr inbounds i32, i32* %72, i64 %77, !dbg !4376
  %79 = tail call i32 @getgroups(i32 %76, i32* nonnull %78) #11, !dbg !4377
  call void @llvm.dbg.value(metadata i32 %79, metadata !715, metadata !DIExpression()), !dbg !4301
  %80 = icmp slt i32 %79, 0, !dbg !4378
  br i1 %80, label %81, label %84, !dbg !4379

; <label>:81:                                     ; preds = %74
  %82 = tail call i32* @__errno_location() #17, !dbg !4380
  %83 = load i32, i32* %82, align 4, !dbg !4380, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %83, metadata !725, metadata !DIExpression()), !dbg !4381
  tail call void @free(i8* nonnull %71) #11, !dbg !4382
  store i32 %83, i32* %82, align 4, !dbg !4383, !tbaa !897
  br label %146

; <label>:84:                                     ; preds = %74
  br i1 %60, label %85, label %87, !dbg !4384

; <label>:85:                                     ; preds = %84
  store i32 %1, i32* %72, align 4, !dbg !4386, !tbaa !897
  %86 = add nsw i32 %79, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %86, metadata !715, metadata !DIExpression()), !dbg !4301
  br label %87, !dbg !4389

; <label>:87:                                     ; preds = %84, %85
  %88 = phi i32 [ %86, %85 ], [ %79, %84 ], !dbg !4390
  call void @llvm.dbg.value(metadata i32 %88, metadata !715, metadata !DIExpression()), !dbg !4301
  %89 = bitcast i32** %2 to i8**, !dbg !4391
  store i8* %71, i8** %89, align 8, !dbg !4391, !tbaa !780
  %90 = icmp sgt i32 %88, 1, !dbg !4392
  br i1 %90, label %91, label %146, !dbg !4393

; <label>:91:                                     ; preds = %87
  %92 = load i32, i32* %72, align 4, !dbg !4394, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %92, metadata !728, metadata !DIExpression()), !dbg !4395
  %93 = sext i32 %88 to i64, !dbg !4396
  %94 = getelementptr inbounds i32, i32* %72, i64 %93, !dbg !4396
  call void @llvm.dbg.value(metadata i32* %94, metadata !732, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i32* %72, metadata !731, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4398
  %95 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !4399
  %96 = bitcast i8* %95 to i32*, !dbg !4399
  call void @llvm.dbg.value(metadata i32* %96, metadata !731, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %88, metadata !715, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32* %72, metadata !716, metadata !DIExpression()), !dbg !4293
  %97 = icmp ugt i32* %94, %96, !dbg !4402
  br i1 %97, label %98, label %146, !dbg !4403

; <label>:98:                                     ; preds = %91
  %99 = shl nsw i64 %93, 2, !dbg !4404
  %100 = add nsw i64 %99, -5, !dbg !4404
  %101 = and i64 %100, 4, !dbg !4404
  %102 = icmp eq i64 %101, 0, !dbg !4404
  br i1 %102, label %103, label %117, !dbg !4404

; <label>:103:                                    ; preds = %98
  call void @llvm.dbg.value(metadata i32 %88, metadata !715, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32* %72, metadata !716, metadata !DIExpression()), !dbg !4293
  %104 = load i32, i32* %96, align 4, !dbg !4404, !tbaa !897
  %105 = icmp eq i32 %104, %92, !dbg !4407
  br i1 %105, label %109, label %106, !dbg !4408

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !4409
  %108 = bitcast i8* %107 to i32*, !dbg !4409
  call void @llvm.dbg.value(metadata i32* %108, metadata !716, metadata !DIExpression()), !dbg !4293
  store i32 %104, i32* %108, align 4, !dbg !4410, !tbaa !897
  br label %111

; <label>:109:                                    ; preds = %103
  %110 = add nsw i32 %88, -1, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %110, metadata !715, metadata !DIExpression()), !dbg !4301
  br label %111, !dbg !4412

; <label>:111:                                    ; preds = %109, %106
  %112 = phi i32 [ %92, %109 ], [ %104, %106 ]
  %113 = phi i32* [ %72, %109 ], [ %108, %106 ], !dbg !4413
  %114 = phi i32 [ %110, %109 ], [ %88, %106 ], !dbg !4414
  call void @llvm.dbg.value(metadata i32* %96, metadata !731, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4398
  %115 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !4399
  %116 = bitcast i8* %115 to i32*, !dbg !4399
  call void @llvm.dbg.value(metadata i32* %116, metadata !731, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %114, metadata !715, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32* %113, metadata !716, metadata !DIExpression()), !dbg !4293
  br label %117, !dbg !4403

; <label>:117:                                    ; preds = %111, %98
  %118 = phi i32 [ %92, %98 ], [ %112, %111 ]
  %119 = phi i32* [ %96, %98 ], [ %116, %111 ]
  %120 = phi i32 [ %88, %98 ], [ %114, %111 ]
  %121 = phi i32* [ %72, %98 ], [ %113, %111 ]
  %122 = phi i32 [ undef, %98 ], [ %114, %111 ]
  %123 = icmp eq i64 %100, 3, !dbg !4404
  br i1 %123, label %146, label %124, !dbg !4404

; <label>:124:                                    ; preds = %117, %152
  %125 = phi i32 [ %153, %152 ], [ %118, %117 ]
  %126 = phi i32* [ %156, %152 ], [ %119, %117 ]
  %127 = phi i32 [ %155, %152 ], [ %120, %117 ]
  %128 = phi i32* [ %154, %152 ], [ %121, %117 ]
  call void @llvm.dbg.value(metadata i32 %127, metadata !715, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32* %128, metadata !716, metadata !DIExpression()), !dbg !4293
  %129 = load i32, i32* %126, align 4, !dbg !4404, !tbaa !897
  %130 = icmp eq i32 %129, %92, !dbg !4415
  %131 = icmp eq i32 %129, %125, !dbg !4407
  %132 = or i1 %130, %131, !dbg !4408
  br i1 %132, label %133, label %135, !dbg !4408

; <label>:133:                                    ; preds = %124
  %134 = add nsw i32 %127, -1, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %134, metadata !715, metadata !DIExpression()), !dbg !4301
  br label %137, !dbg !4412

; <label>:135:                                    ; preds = %124
  %136 = getelementptr inbounds i32, i32* %128, i64 1, !dbg !4409
  call void @llvm.dbg.value(metadata i32* %136, metadata !716, metadata !DIExpression()), !dbg !4293
  store i32 %129, i32* %136, align 4, !dbg !4410, !tbaa !897
  br label %137

; <label>:137:                                    ; preds = %133, %135
  %138 = phi i32 [ %125, %133 ], [ %129, %135 ]
  %139 = phi i32* [ %128, %133 ], [ %136, %135 ], !dbg !4413
  %140 = phi i32 [ %134, %133 ], [ %127, %135 ], !dbg !4414
  call void @llvm.dbg.value(metadata i32* %126, metadata !731, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4398
  %141 = getelementptr inbounds i32, i32* %126, i64 1, !dbg !4399
  call void @llvm.dbg.value(metadata i32* %141, metadata !731, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %140, metadata !715, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32* %139, metadata !716, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 %140, metadata !715, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32* %139, metadata !716, metadata !DIExpression()), !dbg !4293
  %142 = load i32, i32* %141, align 4, !dbg !4404, !tbaa !897
  %143 = icmp eq i32 %142, %92, !dbg !4415
  %144 = icmp eq i32 %142, %138, !dbg !4407
  %145 = or i1 %143, %144, !dbg !4408
  br i1 %145, label %150, label %148, !dbg !4408

; <label>:146:                                    ; preds = %117, %152, %91, %40, %33, %65, %87, %67, %46, %50, %7, %81, %53
  %147 = phi i32 [ %57, %53 ], [ -1, %81 ], [ -1, %7 ], [ -1, %50 ], [ -1, %46 ], [ -1, %67 ], [ %88, %87 ], [ -1, %65 ], [ %42, %40 ], [ -1, %33 ], [ %88, %91 ], [ %122, %117 ], [ %155, %152 ], !dbg !4390
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #11, !dbg !4416
  ret i32 %147, !dbg !4416

; <label>:148:                                    ; preds = %137
  %149 = getelementptr inbounds i32, i32* %139, i64 1, !dbg !4409
  call void @llvm.dbg.value(metadata i32* %149, metadata !716, metadata !DIExpression()), !dbg !4293
  store i32 %142, i32* %149, align 4, !dbg !4410, !tbaa !897
  br label %152

; <label>:150:                                    ; preds = %137
  %151 = add nsw i32 %140, -1, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %151, metadata !715, metadata !DIExpression()), !dbg !4301
  br label %152, !dbg !4412

; <label>:152:                                    ; preds = %150, %148
  %153 = phi i32 [ %138, %150 ], [ %142, %148 ]
  %154 = phi i32* [ %139, %150 ], [ %149, %148 ], !dbg !4413
  %155 = phi i32 [ %151, %150 ], [ %140, %148 ], !dbg !4414
  call void @llvm.dbg.value(metadata i32* %141, metadata !731, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4398
  %156 = getelementptr inbounds i32, i32* %126, i64 2, !dbg !4399
  call void @llvm.dbg.value(metadata i32* %156, metadata !731, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %155, metadata !715, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32* %154, metadata !716, metadata !DIExpression()), !dbg !4293
  %157 = icmp ult i32* %156, %94, !dbg !4402
  br i1 %157, label %124, label %146, !dbg !4403, !llvm.loop !4417
}

declare i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4419 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4458, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i32 0, metadata !4459, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i32 0, metadata !4461, metadata !DIExpression()), !dbg !4464
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4465
  call void @llvm.dbg.value(metadata i32 %2, metadata !4460, metadata !DIExpression()), !dbg !4466
  %3 = icmp slt i32 %2, 0, !dbg !4467
  br i1 %3, label %4, label %6, !dbg !4469

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4470
  br label %24, !dbg !4471

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4472
  %8 = icmp eq i32 %7, 0, !dbg !4472
  br i1 %8, label %13, label %9, !dbg !4474

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4475
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4476
  %12 = icmp eq i64 %11, -1, !dbg !4477
  br i1 %12, label %16, label %13, !dbg !4478

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4479
  %15 = icmp eq i32 %14, 0, !dbg !4479
  br i1 %15, label %16, label %18, !dbg !4480

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4459, metadata !DIExpression()), !dbg !4463
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4481
  call void @llvm.dbg.value(metadata i32 %21, metadata !4461, metadata !DIExpression()), !dbg !4464
  br label %24, !dbg !4482

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4483
  %20 = load i32, i32* %19, align 4, !dbg !4483, !tbaa !897
  call void @llvm.dbg.value(metadata i32 %20, metadata !4459, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i32 %20, metadata !4459, metadata !DIExpression()), !dbg !4463
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4481
  call void @llvm.dbg.value(metadata i32 %21, metadata !4461, metadata !DIExpression()), !dbg !4464
  %22 = icmp eq i32 %20, 0, !dbg !4484
  br i1 %22, label %24, label %23, !dbg !4482

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4486, !tbaa !897
  call void @llvm.dbg.value(metadata i32 -1, metadata !4461, metadata !DIExpression()), !dbg !4464
  br label %24, !dbg !4488

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4489
  ret i32 %25, !dbg !4490
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4491 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4530, metadata !DIExpression()), !dbg !4531
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4532
  br i1 %2, label %6, label %3, !dbg !4534

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4535
  %5 = icmp eq i32 %4, 0, !dbg !4535
  br i1 %5, label %6, label %8, !dbg !4536

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4537
  br label %17, !dbg !4538

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4539, metadata !DIExpression()) #11, !dbg !4544
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4546
  %10 = load i32, i32* %9, align 8, !dbg !4546, !tbaa !4183
  %11 = and i32 %10, 256, !dbg !4548
  %12 = icmp eq i32 %11, 0, !dbg !4548
  br i1 %12, label %15, label %13, !dbg !4549

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4550
  br label %15, !dbg !4550

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4551
  br label %17, !dbg !4552

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4553
  ret i32 %18, !dbg !4554
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4555 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4595, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %1, metadata !4596, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i32 %2, metadata !4597, metadata !DIExpression()), !dbg !4603
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4604
  %5 = load i8*, i8** %4, align 8, !dbg !4604, !tbaa !4605
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4606
  %7 = load i8*, i8** %6, align 8, !dbg !4606, !tbaa !4607
  %8 = icmp eq i8* %5, %7, !dbg !4608
  br i1 %8, label %9, label %28, !dbg !4609

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4610
  %11 = load i8*, i8** %10, align 8, !dbg !4610, !tbaa !4611
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4612
  %13 = load i8*, i8** %12, align 8, !dbg !4612, !tbaa !4613
  %14 = icmp eq i8* %11, %13, !dbg !4614
  br i1 %14, label %15, label %28, !dbg !4615

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4616
  %17 = load i8*, i8** %16, align 8, !dbg !4616, !tbaa !4617
  %18 = icmp eq i8* %17, null, !dbg !4618
  br i1 %18, label %19, label %28, !dbg !4619

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4620
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4621
  call void @llvm.dbg.value(metadata i64 %21, metadata !4598, metadata !DIExpression()), !dbg !4622
  %22 = icmp eq i64 %21, -1, !dbg !4623
  br i1 %22, label %30, label %23, !dbg !4625

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4626
  %25 = load i32, i32* %24, align 8, !dbg !4627, !tbaa !4183
  %26 = and i32 %25, -17, !dbg !4627
  store i32 %26, i32* %24, align 8, !dbg !4627, !tbaa !4183
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4628
  store i64 %21, i64* %27, align 8, !dbg !4629, !tbaa !4630
  br label %30, !dbg !4631

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4632
  br label %30, !dbg !4633

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4634
  ret i32 %31, !dbg !4635
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !108, !114, !123, !130, !137, !197, !270, !190, !278, !289, !291, !293, !297, !299, !302, !304, !306, !312, !701, !736, !738, !740}
!llvm.ident = !{!742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742}
!llvm.module.flags = !{!743, !744, !745, !746, !747}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_opts", scope: !2, file: !3, line: 57, type: !92, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !67, globals: !91)
!3 = !DIFile(filename: "src/chroot.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20, !27, !35, !50}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 87, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!24 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!25 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!26 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !28, line: 26, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 46, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!51 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!52 = distinct !DISubprogram(name: "x2nrealloc", scope: !51, file: !51, line: 174, type: !53, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !60)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !55, !56, !57}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 62, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!72 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !74, line: 144, baseType: !7)
!74 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !72, line: 64, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !74, line: 145, baseType: !7)
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !80, line: 42, size: 256, elements: !81)
!80 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !79, file: !80, line: 44, baseType: !68, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !79, file: !80, line: 45, baseType: !68, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !79, file: !80, line: 46, baseType: !76, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !79, file: !80, line: 47, baseType: !86, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !88, line: 267, baseType: !89)
!88 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !74, line: 204, baseType: !90)
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !{!0}
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1536, elements: !104)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !95, line: 50, size: 256, elements: !96)
!95 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !111)
!109 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!110 = !{}
!111 = !{!106}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "file_name", scope: !114, file: !119, line: 46, type: !98, isLocal: true, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !116)
!115 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!116 = !{!112, !117}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !114, file: !119, line: 56, type: !120, isLocal: true, isDefinition: true)
!119 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!120 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "exit_failure", scope: !123, file: !126, line: 24, type: !127, isLocal: false, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !125)
!124 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!125 = !{!121}
!126 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "program_name", scope: !130, file: !134, line: 33, type: !98, isLocal: false, isDefinition: true)
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !132, globals: !133)
!131 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!132 = !{!55, !68}
!133 = !{!128}
!134 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !137, file: !149, line: 85, type: !184, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !139, retainedTypes: !145, globals: !146)
!138 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!139 = !{!5, !140, !35}
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!144 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!145 = !{!70, !77, !57, !68}
!146 = !{!135, !147, !154, !166, !168, !173, !180, !182}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !137, file: !149, line: 101, type: !150, isLocal: false, isDefinition: true)
!149 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 320, elements: !152)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!152 = !{!153}
!153 = !DISubrange(count: 10)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !137, file: !149, line: 1052, type: !156, isLocal: false, isDefinition: true)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !149, line: 65, size: 448, elements: !157)
!157 = !{!158, !159, !160, !164, !165}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !156, file: !149, line: 68, baseType: !5, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !149, line: 71, baseType: !70, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !156, file: !149, line: 75, baseType: !161, size: 256, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !156, file: !149, line: 78, baseType: !98, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !156, file: !149, line: 81, baseType: !98, size: 64, offset: 384)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !137, file: !149, line: 116, type: !156, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "slot0", scope: !137, file: !149, line: 842, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2048, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 256)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "slotvec", scope: !137, file: !149, line: 845, type: !175, isLocal: true, isDefinition: true)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !149, line: 834, size: 128, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !176, file: !149, line: 836, baseType: !57, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !176, file: !149, line: 837, baseType: !68, size: 64, offset: 64)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "nslots", scope: !137, file: !149, line: 843, type: !70, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "slotvec0", scope: !137, file: !149, line: 844, type: !176, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 704, elements: !186)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!186 = !{!187}
!187 = !DISubrange(count: 11)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !190, file: !193, line: 26, type: !194, isLocal: false, isDefinition: true)
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !192)
!191 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!192 = !{!188}
!193 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 376, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 47)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !199, retainedTypes: !200, globals: !201)
!198 = !DIFile(filename: "./lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!199 = !{!27}
!200 = !{!55, !71, !75}
!201 = !{!202, !266, !268}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !204, file: !205, line: 106, type: !98, isLocal: true, isDefinition: true)
!204 = distinct !DISubprogram(name: "parse_with_separator", scope: !205, file: !205, line: 102, type: !206, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !210)
!205 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!206 = !DISubroutineType(types: !207)
!207 = !{!98, !98, !98, !208, !209, !86, !86}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !230, !238, !239, !240, !241, !242, !243, !246, !251, !254, !261}
!211 = !DILocalVariable(name: "spec", arg: 1, scope: !204, file: !205, line: 102, type: !98)
!212 = !DILocalVariable(name: "separator", arg: 2, scope: !204, file: !205, line: 102, type: !98)
!213 = !DILocalVariable(name: "uid", arg: 3, scope: !204, file: !205, line: 103, type: !208)
!214 = !DILocalVariable(name: "gid", arg: 4, scope: !204, file: !205, line: 103, type: !209)
!215 = !DILocalVariable(name: "username", arg: 5, scope: !204, file: !205, line: 104, type: !86)
!216 = !DILocalVariable(name: "groupname", arg: 6, scope: !204, file: !205, line: 104, type: !86)
!217 = !DILocalVariable(name: "error_msg", scope: !204, file: !205, line: 110, type: !98)
!218 = !DILocalVariable(name: "pwd", scope: !204, file: !205, line: 111, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !221, line: 49, size: 384, elements: !222)
!221 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!222 = !{!223, !224, !225, !226, !227, !228, !229}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !220, file: !221, line: 51, baseType: !68, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !220, file: !221, line: 52, baseType: !68, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !220, file: !221, line: 54, baseType: !73, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !220, file: !221, line: 55, baseType: !76, size: 32, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !220, file: !221, line: 56, baseType: !68, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !220, file: !221, line: 57, baseType: !68, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !220, file: !221, line: 58, baseType: !68, size: 64, offset: 320)
!230 = !DILocalVariable(name: "grp", scope: !204, file: !205, line: 112, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !80, line: 42, size: 256, elements: !233)
!233 = !{!234, !235, !236, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !232, file: !80, line: 44, baseType: !68, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !232, file: !80, line: 45, baseType: !68, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !232, file: !80, line: 46, baseType: !76, size: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !232, file: !80, line: 47, baseType: !86, size: 64, offset: 192)
!238 = !DILocalVariable(name: "u", scope: !204, file: !205, line: 113, type: !68)
!239 = !DILocalVariable(name: "g", scope: !204, file: !205, line: 114, type: !98)
!240 = !DILocalVariable(name: "gname", scope: !204, file: !205, line: 115, type: !68)
!241 = !DILocalVariable(name: "unum", scope: !204, file: !205, line: 116, type: !71)
!242 = !DILocalVariable(name: "gnum", scope: !204, file: !205, line: 117, type: !75)
!243 = !DILocalVariable(name: "ulen", scope: !244, file: !205, line: 137, type: !57)
!244 = distinct !DILexicalBlock(scope: !245, file: !205, line: 136, column: 5)
!245 = distinct !DILexicalBlock(scope: !204, file: !205, line: 130, column: 7)
!246 = !DILocalVariable(name: "use_login_group", scope: !247, file: !205, line: 164, type: !120)
!247 = distinct !DILexicalBlock(scope: !248, file: !205, line: 163, column: 9)
!248 = distinct !DILexicalBlock(scope: !249, file: !205, line: 162, column: 11)
!249 = distinct !DILexicalBlock(scope: !250, file: !205, line: 159, column: 5)
!250 = distinct !DILexicalBlock(scope: !204, file: !205, line: 158, column: 7)
!251 = !DILocalVariable(name: "tmp", scope: !252, file: !205, line: 173, type: !59)
!252 = distinct !DILexicalBlock(scope: !253, file: !205, line: 172, column: 13)
!253 = distinct !DILexicalBlock(scope: !247, file: !205, line: 165, column: 15)
!254 = !DILocalVariable(name: "buf", scope: !255, file: !205, line: 188, type: !258)
!255 = distinct !DILexicalBlock(scope: !256, file: !205, line: 185, column: 13)
!256 = distinct !DILexicalBlock(scope: !257, file: !205, line: 184, column: 15)
!257 = distinct !DILexicalBlock(scope: !248, file: !205, line: 182, column: 9)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 168, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 21)
!261 = !DILocalVariable(name: "tmp", scope: !262, file: !205, line: 205, type: !59)
!262 = distinct !DILexicalBlock(scope: !263, file: !205, line: 204, column: 9)
!263 = distinct !DILexicalBlock(scope: !264, file: !205, line: 203, column: 11)
!264 = distinct !DILexicalBlock(scope: !265, file: !205, line: 199, column: 5)
!265 = distinct !DILexicalBlock(scope: !204, file: !205, line: 198, column: 7)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !204, file: !205, line: 107, type: !98, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !204, file: !205, line: 108, type: !98, isLocal: true, isDefinition: true)
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !272, retainedTypes: !277)
!271 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!272 = !{!273}
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 41, baseType: !7, size: 32, elements: !275)
!274 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!275 = !{!276}
!276 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!277 = !{!55}
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !280, retainedTypes: !288)
!279 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!280 = !{!281}
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !282, file: !51, line: 186, baseType: !7, size: 32, elements: !65)
!282 = distinct !DISubprogram(name: "x2nrealloc", scope: !51, file: !51, line: 174, type: !53, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !283)
!283 = !{!284, !285, !286, !287}
!284 = !DILocalVariable(name: "p", arg: 1, scope: !282, file: !51, line: 174, type: !55)
!285 = !DILocalVariable(name: "pn", arg: 2, scope: !282, file: !51, line: 174, type: !56)
!286 = !DILocalVariable(name: "s", arg: 3, scope: !282, file: !51, line: 174, type: !57)
!287 = !DILocalVariable(name: "n", scope: !282, file: !51, line: 176, type: !57)
!288 = !{!57, !68, !55}
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110)
!290 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110)
!292 = !DIFile(filename: "./lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, retainedTypes: !296)
!294 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!295 = !{!27, !35}
!296 = !{!70, !77}
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !277)
!298 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !301)
!300 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!301 = !{!57}
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110)
!303 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110)
!305 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !308)
!307 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !310, line: 102, baseType: !311)
!310 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !74, line: 72, baseType: !59)
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !314, retainedTypes: !277)
!313 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!314 = !{!315}
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !316, line: 41, baseType: !7, size: 32, elements: !317)
!316 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!318 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!319 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!320 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!321 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!322 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!323 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!324 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!325 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!326 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!327 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!328 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!329 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!330 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!331 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!332 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!333 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!334 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!335 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!336 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!337 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!338 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!339 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!340 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!341 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!342 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!343 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!344 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!345 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!346 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!347 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!348 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!349 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!350 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!351 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!352 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!353 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!354 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!355 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!356 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!357 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!358 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!359 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!360 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!361 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!362 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!363 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!364 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!365 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!366 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!367 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!426 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!429 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!430 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!431 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!432 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!433 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!434 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!435 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!436 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!437 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!438 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!439 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!440 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!513 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!586 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!587 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!588 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!589 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!590 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!591 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!592 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!593 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!594 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!595 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!596 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!597 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!598 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!599 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!600 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!602 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!603 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!604 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!605 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!606 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!607 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!633 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!634 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!635 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!636 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!637 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!642 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!643 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!644 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!645 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !703, retainedTypes: !735)
!702 = !DIFile(filename: "./lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!703 = !{!704}
!704 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !706, file: !705, line: 83, baseType: !7, size: 32, elements: !733)
!705 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!706 = distinct !DISubprogram(name: "mgetgroups", scope: !705, file: !705, line: 66, type: !707, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !701, retainedNodes: !710)
!707 = !DISubroutineType(types: !708)
!708 = !{!70, !98, !75, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !721, !722, !725, !728, !731, !732}
!711 = !DILocalVariable(name: "username", arg: 1, scope: !706, file: !705, line: 66, type: !98)
!712 = !DILocalVariable(name: "gid", arg: 2, scope: !706, file: !705, line: 66, type: !75)
!713 = !DILocalVariable(name: "groups", arg: 3, scope: !706, file: !705, line: 66, type: !709)
!714 = !DILocalVariable(name: "max_n_groups", scope: !706, file: !705, line: 68, type: !70)
!715 = !DILocalVariable(name: "ng", scope: !706, file: !705, line: 69, type: !70)
!716 = !DILocalVariable(name: "g", scope: !706, file: !705, line: 70, type: !209)
!717 = !DILocalVariable(name: "h", scope: !718, file: !705, line: 92, type: !209)
!718 = distinct !DILexicalBlock(scope: !719, file: !705, line: 91, column: 9)
!719 = distinct !DILexicalBlock(scope: !720, file: !705, line: 82, column: 5)
!720 = distinct !DILexicalBlock(scope: !706, file: !705, line: 81, column: 7)
!721 = !DILocalVariable(name: "last_n_groups", scope: !718, file: !705, line: 93, type: !70)
!722 = !DILocalVariable(name: "saved_errno", scope: !723, file: !705, line: 105, type: !70)
!723 = distinct !DILexicalBlock(scope: !724, file: !705, line: 104, column: 13)
!724 = distinct !DILexicalBlock(scope: !718, file: !705, line: 103, column: 15)
!725 = !DILocalVariable(name: "saved_errno", scope: !726, file: !705, line: 156, type: !70)
!726 = distinct !DILexicalBlock(scope: !727, file: !705, line: 154, column: 5)
!727 = distinct !DILexicalBlock(scope: !706, file: !705, line: 153, column: 7)
!728 = !DILocalVariable(name: "first", scope: !729, file: !705, line: 187, type: !75)
!729 = distinct !DILexicalBlock(scope: !730, file: !705, line: 186, column: 5)
!730 = distinct !DILexicalBlock(scope: !706, file: !705, line: 185, column: 7)
!731 = !DILocalVariable(name: "next", scope: !729, file: !705, line: 188, type: !209)
!732 = !DILocalVariable(name: "groups_end", scope: !729, file: !705, line: 189, type: !209)
!733 = !{!734}
!734 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!735 = !{!55, !75, !57}
!736 = distinct !DICompileUnit(language: DW_LANG_C99, file: !737, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110)
!737 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!738 = distinct !DICompileUnit(language: DW_LANG_C99, file: !739, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !277)
!739 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!740 = distinct !DICompileUnit(language: DW_LANG_C99, file: !741, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !277)
!741 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!742 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!743 = !{i32 2, !"Dwarf Version", i32 4}
!744 = !{i32 2, !"Debug Info Version", i32 3}
!745 = !{i32 1, !"wchar_size", i32 4}
!746 = !{i32 7, !"PIC Level", i32 2}
!747 = !{i32 7, !"PIE Level", i32 2}
!748 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 180, type: !749, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !70}
!751 = !{!752}
!752 = !DILocalVariable(name: "status", arg: 1, scope: !748, file: !3, line: 180, type: !70)
!753 = !DILocalVariable(name: "infomap", scope: !754, file: !21, line: 632, type: !768)
!754 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !21, file: !21, line: 630, type: !755, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !98}
!757 = !{!758, !753, !759, !760, !767}
!758 = !DILocalVariable(name: "program", arg: 1, scope: !754, file: !21, line: 630, type: !98)
!759 = !DILocalVariable(name: "node", scope: !754, file: !21, line: 642, type: !98)
!760 = !DILocalVariable(name: "map_prog", scope: !754, file: !21, line: 643, type: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !754, file: !21, line: 632, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !763, file: !21, line: 632, baseType: !98, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !763, file: !21, line: 632, baseType: !98, size: 64, offset: 64)
!767 = !DILocalVariable(name: "lc_messages", scope: !754, file: !21, line: 655, type: !98)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 896, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 7)
!771 = !DILocation(line: 632, column: 67, scope: !754, inlinedAt: !772)
!772 = distinct !DILocation(line: 212, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 185, column: 5)
!774 = distinct !DILexicalBlock(scope: !748, file: !3, line: 182, column: 7)
!775 = !DILocation(line: 180, column: 12, scope: !748)
!776 = !DILocation(line: 182, column: 14, scope: !774)
!777 = !DILocation(line: 182, column: 7, scope: !748)
!778 = !DILocation(line: 183, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !774, file: !3, line: 183, column: 5)
!780 = !{!781, !781, i64 0}
!781 = !{!"any pointer", !782, i64 0}
!782 = !{!"omnipotent char", !783, i64 0}
!783 = !{!"Simple C/C++ TBAA"}
!784 = !DILocation(line: 186, column: 7, scope: !773)
!785 = !DILocation(line: 191, column: 7, scope: !773)
!786 = !DILocation(line: 196, column: 7, scope: !773)
!787 = !DILocation(line: 199, column: 7, scope: !773)
!788 = !DILocation(line: 202, column: 7, scope: !773)
!789 = !DILocation(line: 206, column: 7, scope: !773)
!790 = !DILocation(line: 207, column: 7, scope: !773)
!791 = !DILocation(line: 208, column: 7, scope: !773)
!792 = !DILocation(line: 632, column: 3, scope: !754, inlinedAt: !772)
!793 = !DILocation(line: 643, column: 36, scope: !754, inlinedAt: !772)
!794 = !DILocation(line: 643, column: 25, scope: !754, inlinedAt: !772)
!795 = !DILocation(line: 645, column: 33, scope: !754, inlinedAt: !772)
!796 = !DILocation(line: 645, column: 3, scope: !754, inlinedAt: !772)
!797 = !DILocation(line: 646, column: 13, scope: !754, inlinedAt: !772)
!798 = !DILocation(line: 645, column: 20, scope: !754, inlinedAt: !772)
!799 = !{!800, !781, i64 0}
!800 = !{!"infomap", !781, i64 0, !781, i64 8}
!801 = !DILocation(line: 645, column: 10, scope: !754, inlinedAt: !772)
!802 = !DILocation(line: 645, column: 28, scope: !754, inlinedAt: !772)
!803 = distinct !{!803, !804, !805}
!804 = !DILocation(line: 645, column: 3, scope: !754)
!805 = !DILocation(line: 646, column: 13, scope: !754)
!806 = !DILocation(line: 648, column: 17, scope: !807, inlinedAt: !772)
!807 = distinct !DILexicalBlock(scope: !754, file: !21, line: 648, column: 7)
!808 = !{!800, !781, i64 8}
!809 = !DILocation(line: 648, column: 7, scope: !807, inlinedAt: !772)
!810 = !DILocation(line: 648, column: 7, scope: !754, inlinedAt: !772)
!811 = !DILocation(line: 642, column: 15, scope: !754, inlinedAt: !772)
!812 = !DILocation(line: 651, column: 3, scope: !754, inlinedAt: !772)
!813 = !DILocation(line: 655, column: 29, scope: !754, inlinedAt: !772)
!814 = !DILocation(line: 655, column: 15, scope: !754, inlinedAt: !772)
!815 = !DILocation(line: 656, column: 7, scope: !816, inlinedAt: !772)
!816 = distinct !DILexicalBlock(scope: !754, file: !21, line: 656, column: 7)
!817 = !DILocation(line: 656, column: 19, scope: !816, inlinedAt: !772)
!818 = !DILocation(line: 656, column: 22, scope: !816, inlinedAt: !772)
!819 = !DILocation(line: 656, column: 7, scope: !754, inlinedAt: !772)
!820 = !DILocation(line: 662, column: 7, scope: !821, inlinedAt: !772)
!821 = distinct !DILexicalBlock(scope: !816, file: !21, line: 657, column: 5)
!822 = !DILocation(line: 664, column: 5, scope: !821, inlinedAt: !772)
!823 = !DILocation(line: 665, column: 3, scope: !754, inlinedAt: !772)
!824 = !DILocation(line: 667, column: 3, scope: !754, inlinedAt: !772)
!825 = !DILocation(line: 669, column: 1, scope: !754, inlinedAt: !772)
!826 = !DILocation(line: 214, column: 3, scope: !748)
!827 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 218, type: !828, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{!70, !70, !86}
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !846, !847, !848, !853, !867, !870, !873, !876, !879, !882, !883, !884, !888}
!831 = !DILocalVariable(name: "argc", arg: 1, scope: !827, file: !3, line: 218, type: !70)
!832 = !DILocalVariable(name: "argv", arg: 2, scope: !827, file: !3, line: 218, type: !86)
!833 = !DILocalVariable(name: "c", scope: !827, file: !3, line: 220, type: !70)
!834 = !DILocalVariable(name: "userspec", scope: !827, file: !3, line: 223, type: !68)
!835 = !DILocalVariable(name: "username", scope: !827, file: !3, line: 224, type: !98)
!836 = !DILocalVariable(name: "groups", scope: !827, file: !3, line: 225, type: !98)
!837 = !DILocalVariable(name: "skip_chdir", scope: !827, file: !3, line: 226, type: !120)
!838 = !DILocalVariable(name: "uid", scope: !827, file: !3, line: 229, type: !71)
!839 = !DILocalVariable(name: "gid", scope: !827, file: !3, line: 230, type: !75)
!840 = !DILocalVariable(name: "out_gids", scope: !827, file: !3, line: 231, type: !209)
!841 = !DILocalVariable(name: "n_gids", scope: !827, file: !3, line: 232, type: !57)
!842 = !DILocalVariable(name: "userlen", scope: !843, file: !3, line: 253, type: !57)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 248, column: 11)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 246, column: 9)
!845 = distinct !DILexicalBlock(scope: !827, file: !3, line: 244, column: 5)
!846 = !DILocalVariable(name: "newroot", scope: !827, file: !3, line: 282, type: !98)
!847 = !DILocalVariable(name: "is_oldroot", scope: !827, file: !3, line: 283, type: !120)
!848 = !DILocalVariable(name: "__x", scope: !849, file: !3, line: 301, type: !98)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 301, column: 9)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 300, column: 11)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 293, column: 5)
!852 = distinct !DILexicalBlock(scope: !827, file: !3, line: 292, column: 7)
!853 = !DILocalVariable(name: "pwd", scope: !854, file: !3, line: 307, type: !856)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 306, column: 9)
!855 = distinct !DILexicalBlock(scope: !851, file: !3, line: 305, column: 11)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !221, line: 49, size: 384, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !858, file: !221, line: 51, baseType: !68, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !858, file: !221, line: 52, baseType: !68, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !858, file: !221, line: 54, baseType: !73, size: 32, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !858, file: !221, line: 55, baseType: !76, size: 32, offset: 160)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !858, file: !221, line: 56, baseType: !68, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !858, file: !221, line: 57, baseType: !68, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !858, file: !221, line: 58, baseType: !68, size: 64, offset: 320)
!867 = !DILocalVariable(name: "__x", scope: !868, file: !3, line: 317, type: !70)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 317, column: 9)
!869 = distinct !DILexicalBlock(scope: !851, file: !3, line: 316, column: 11)
!870 = !DILocalVariable(name: "ngroups", scope: !871, file: !3, line: 322, type: !70)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 321, column: 9)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 320, column: 16)
!873 = !DILocalVariable(name: "shell", scope: !874, file: !3, line: 339, type: !68)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 337, column: 5)
!875 = distinct !DILexicalBlock(scope: !827, file: !3, line: 336, column: 7)
!876 = !DILocalVariable(name: "err", scope: !877, file: !3, line: 356, type: !98)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 355, column: 5)
!878 = distinct !DILexicalBlock(scope: !827, file: !3, line: 354, column: 7)
!879 = !DILocalVariable(name: "pwd", scope: !880, file: !3, line: 366, type: !856)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 365, column: 5)
!881 = distinct !DILexicalBlock(scope: !827, file: !3, line: 364, column: 7)
!882 = !DILocalVariable(name: "gids", scope: !827, file: !3, line: 380, type: !209)
!883 = !DILocalVariable(name: "in_gids", scope: !827, file: !3, line: 381, type: !209)
!884 = !DILocalVariable(name: "ngroups", scope: !885, file: !3, line: 396, type: !70)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 395, column: 5)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 394, column: 12)
!887 = distinct !DILexicalBlock(scope: !827, file: !3, line: 382, column: 7)
!888 = !DILocalVariable(name: "exit_status", scope: !827, file: !3, line: 427, type: !70)
!889 = !DILocation(line: 218, column: 11, scope: !827)
!890 = !DILocation(line: 218, column: 24, scope: !827)
!891 = !DILocation(line: 223, column: 9, scope: !827)
!892 = !DILocation(line: 224, column: 15, scope: !827)
!893 = !DILocation(line: 225, column: 15, scope: !827)
!894 = !DILocation(line: 226, column: 8, scope: !827)
!895 = !DILocation(line: 229, column: 3, scope: !827)
!896 = !DILocation(line: 229, column: 9, scope: !827)
!897 = !{!898, !898, i64 0}
!898 = !{!"int", !782, i64 0}
!899 = !DILocation(line: 230, column: 3, scope: !827)
!900 = !DILocation(line: 230, column: 9, scope: !827)
!901 = !DILocation(line: 231, column: 3, scope: !827)
!902 = !DILocation(line: 231, column: 16, scope: !827)
!903 = !DILocation(line: 232, column: 3, scope: !827)
!904 = !DILocation(line: 232, column: 10, scope: !827)
!905 = !{!906, !906, i64 0}
!906 = !{!"long", !782, i64 0}
!907 = !DILocation(line: 235, column: 21, scope: !827)
!908 = !DILocation(line: 235, column: 3, scope: !827)
!909 = !DILocation(line: 236, column: 3, scope: !827)
!910 = !DILocation(line: 237, column: 3, scope: !827)
!911 = !DILocation(line: 238, column: 3, scope: !827)
!912 = !DILocalVariable(name: "status", arg: 1, scope: !913, file: !21, line: 99, type: !70)
!913 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !21, file: !21, line: 99, type: !749, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !914)
!914 = !{!912}
!915 = !DILocation(line: 99, column: 30, scope: !913, inlinedAt: !916)
!916 = distinct !DILocation(line: 240, column: 3, scope: !827)
!917 = !DILocation(line: 102, column: 18, scope: !918, inlinedAt: !916)
!918 = distinct !DILexicalBlock(scope: !913, file: !21, line: 101, column: 7)
!919 = !DILocation(line: 241, column: 3, scope: !827)
!920 = !DILocation(line: 243, column: 3, scope: !827)
!921 = !DILocation(line: 243, column: 15, scope: !827)
!922 = !DILocation(line: 220, column: 7, scope: !827)
!923 = distinct !{!923, !920, !924}
!924 = !DILocation(line: 274, column: 5, scope: !827)
!925 = !DILocation(line: 249, column: 24, scope: !843)
!926 = !DILocation(line: 253, column: 30, scope: !843)
!927 = !DILocation(line: 253, column: 20, scope: !843)
!928 = !DILocation(line: 254, column: 17, scope: !929)
!929 = distinct !DILexicalBlock(scope: !843, file: !3, line: 254, column: 17)
!930 = !DILocation(line: 254, column: 25, scope: !929)
!931 = !DILocation(line: 254, column: 45, scope: !929)
!932 = !DILocation(line: 254, column: 28, scope: !929)
!933 = !{!782, !782, i64 0}
!934 = !DILocation(line: 254, column: 50, scope: !929)
!935 = !DILocation(line: 254, column: 17, scope: !843)
!936 = !DILocation(line: 255, column: 37, scope: !929)
!937 = !DILocation(line: 255, column: 15, scope: !929)
!938 = !DILocation(line: 260, column: 20, scope: !844)
!939 = !DILocation(line: 261, column: 11, scope: !844)
!940 = !DILocation(line: 267, column: 9, scope: !844)
!941 = !DILocation(line: 269, column: 9, scope: !844)
!942 = !DILocation(line: 272, column: 11, scope: !844)
!943 = !DILocation(line: 276, column: 15, scope: !944)
!944 = distinct !DILexicalBlock(scope: !827, file: !3, line: 276, column: 7)
!945 = !DILocation(line: 276, column: 12, scope: !944)
!946 = !DILocation(line: 276, column: 7, scope: !827)
!947 = !DILocation(line: 278, column: 20, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 277, column: 5)
!949 = !DILocation(line: 278, column: 7, scope: !948)
!950 = !DILocation(line: 279, column: 7, scope: !948)
!951 = !DILocation(line: 282, column: 25, scope: !827)
!952 = !DILocation(line: 282, column: 15, scope: !827)
!953 = !DILocalVariable(name: "dir", arg: 1, scope: !954, file: !3, line: 171, type: !98)
!954 = distinct !DISubprogram(name: "is_root", scope: !3, file: !3, line: 171, type: !955, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !957)
!955 = !DISubroutineType(types: !956)
!956 = !{!120, !98}
!957 = !{!953, !958, !959}
!958 = !DILocalVariable(name: "resolved", scope: !954, file: !3, line: 173, type: !68)
!959 = !DILocalVariable(name: "is_res_root", scope: !954, file: !3, line: 174, type: !120)
!960 = !DILocation(line: 171, column: 22, scope: !954, inlinedAt: !961)
!961 = distinct !DILocation(line: 283, column: 21, scope: !827)
!962 = !DILocation(line: 173, column: 20, scope: !954, inlinedAt: !961)
!963 = !DILocation(line: 173, column: 9, scope: !954, inlinedAt: !961)
!964 = !DILocation(line: 174, column: 22, scope: !954, inlinedAt: !961)
!965 = !DILocation(line: 174, column: 31, scope: !954, inlinedAt: !961)
!966 = !DILocation(line: 174, column: 34, scope: !954, inlinedAt: !961)
!967 = !DILocation(line: 0, scope: !954, inlinedAt: !961)
!968 = !DILocation(line: 175, column: 3, scope: !954, inlinedAt: !961)
!969 = !DILocation(line: 285, column: 23, scope: !970)
!970 = distinct !DILexicalBlock(scope: !827, file: !3, line: 285, column: 7)
!971 = !DILocation(line: 285, column: 20, scope: !970)
!972 = !DILocation(line: 287, column: 20, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !3, line: 286, column: 5)
!974 = !DILocation(line: 288, column: 14, scope: !973)
!975 = !DILocation(line: 287, column: 7, scope: !973)
!976 = !DILocation(line: 289, column: 7, scope: !973)
!977 = !DILocation(line: 292, column: 7, scope: !827)
!978 = !DILocation(line: 300, column: 11, scope: !850)
!979 = !DILocation(line: 300, column: 11, scope: !851)
!980 = !DILocation(line: 301, column: 9, scope: !849)
!981 = !DILocation(line: 301, column: 9, scope: !850)
!982 = !DILocation(line: 305, column: 11, scope: !855)
!983 = !DILocalVariable(name: "uid", arg: 1, scope: !984, file: !3, line: 45, type: !71)
!984 = distinct !DISubprogram(name: "uid_unset", scope: !3, file: !3, line: 45, type: !985, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!120, !71}
!987 = !{!983}
!988 = !DILocation(line: 45, column: 37, scope: !984, inlinedAt: !989)
!989 = distinct !DILocation(line: 305, column: 11, scope: !855)
!990 = !DILocation(line: 45, column: 55, scope: !984, inlinedAt: !989)
!991 = !DILocation(line: 305, column: 25, scope: !855)
!992 = !DILocation(line: 305, column: 31, scope: !855)
!993 = !DILocation(line: 305, column: 52, scope: !855)
!994 = !DILocation(line: 46, column: 55, scope: !995, inlinedAt: !1000)
!995 = distinct !DISubprogram(name: "gid_unset", scope: !3, file: !3, line: 46, type: !996, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!120, !75}
!998 = !{!999}
!999 = !DILocalVariable(name: "gid", arg: 1, scope: !995, file: !3, line: 46, type: !75)
!1000 = distinct !DILocation(line: 305, column: 41, scope: !855)
!1001 = !DILocation(line: 305, column: 38, scope: !855)
!1002 = !DILocation(line: 308, column: 22, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !854, file: !3, line: 308, column: 15)
!1004 = !DILocation(line: 307, column: 32, scope: !854)
!1005 = !DILocation(line: 308, column: 20, scope: !1003)
!1006 = !DILocation(line: 308, column: 15, scope: !854)
!1007 = !DILocation(line: 310, column: 30, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 310, column: 19)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 309, column: 13)
!1010 = !DILocation(line: 46, column: 37, scope: !995, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 310, column: 19, scope: !1008)
!1012 = !DILocation(line: 46, column: 55, scope: !995, inlinedAt: !1011)
!1013 = !DILocation(line: 310, column: 19, scope: !1009)
!1014 = !DILocation(line: 311, column: 28, scope: !1008)
!1015 = !{!1016, !898, i64 20}
!1016 = !{!"passwd", !781, i64 0, !781, i64 8, !898, i64 16, !898, i64 20, !781, i64 24, !781, i64 32, !781, i64 40}
!1017 = !DILocation(line: 311, column: 21, scope: !1008)
!1018 = !DILocation(line: 311, column: 17, scope: !1008)
!1019 = !DILocation(line: 312, column: 31, scope: !1009)
!1020 = !{!1016, !781, i64 0}
!1021 = !DILocation(line: 313, column: 13, scope: !1009)
!1022 = !DILocation(line: 0, scope: !827)
!1023 = !DILocation(line: 316, column: 11, scope: !869)
!1024 = !DILocation(line: 316, column: 18, scope: !869)
!1025 = !DILocation(line: 316, column: 21, scope: !869)
!1026 = !DILocation(line: 316, column: 11, scope: !851)
!1027 = !DILocation(line: 317, column: 9, scope: !868)
!1028 = !DILocation(line: 317, column: 9, scope: !869)
!1029 = !DILocation(line: 320, column: 28, scope: !872)
!1030 = !DILocation(line: 46, column: 37, scope: !995, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 320, column: 28, scope: !872)
!1032 = !DILocation(line: 46, column: 55, scope: !995, inlinedAt: !1031)
!1033 = !DILocation(line: 320, column: 45, scope: !872)
!1034 = !DILocation(line: 320, column: 42, scope: !872)
!1035 = !DILocation(line: 322, column: 25, scope: !871)
!1036 = !DILocation(line: 322, column: 15, scope: !871)
!1037 = !DILocation(line: 323, column: 17, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !871, file: !3, line: 323, column: 15)
!1039 = !DILocation(line: 323, column: 15, scope: !871)
!1040 = !DILocation(line: 324, column: 22, scope: !1038)
!1041 = !DILocation(line: 324, column: 20, scope: !1038)
!1042 = !DILocation(line: 324, column: 13, scope: !1038)
!1043 = !DILocation(line: 329, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !827, file: !3, line: 329, column: 7)
!1045 = !DILocation(line: 329, column: 24, scope: !1044)
!1046 = !DILocation(line: 329, column: 7, scope: !827)
!1047 = !DILocation(line: 330, column: 5, scope: !1044)
!1048 = !DILocation(line: 333, column: 20, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !827, file: !3, line: 333, column: 7)
!1050 = !DILocation(line: 333, column: 23, scope: !1049)
!1051 = !DILocation(line: 333, column: 7, scope: !827)
!1052 = !DILocation(line: 334, column: 5, scope: !1049)
!1053 = !DILocation(line: 336, column: 15, scope: !875)
!1054 = !DILocation(line: 336, column: 22, scope: !875)
!1055 = !DILocation(line: 336, column: 12, scope: !875)
!1056 = !DILocation(line: 336, column: 7, scope: !827)
!1057 = !DILocation(line: 339, column: 21, scope: !874)
!1058 = !DILocation(line: 339, column: 13, scope: !874)
!1059 = !DILocation(line: 340, column: 17, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !874, file: !3, line: 340, column: 11)
!1061 = !DILocation(line: 340, column: 11, scope: !874)
!1062 = !DILocation(line: 342, column: 15, scope: !874)
!1063 = !DILocation(line: 343, column: 7, scope: !874)
!1064 = !DILocation(line: 343, column: 15, scope: !874)
!1065 = !DILocation(line: 345, column: 5, scope: !874)
!1066 = !DILocation(line: 349, column: 12, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !875, file: !3, line: 347, column: 5)
!1068 = !DILocation(line: 354, column: 7, scope: !878)
!1069 = !DILocation(line: 354, column: 7, scope: !827)
!1070 = !DILocation(line: 356, column: 25, scope: !877)
!1071 = !DILocation(line: 356, column: 19, scope: !877)
!1072 = !DILocation(line: 358, column: 11, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !877, file: !3, line: 358, column: 11)
!1074 = !DILocation(line: 358, column: 15, scope: !1073)
!1075 = !DILocation(line: 358, column: 29, scope: !1073)
!1076 = !DILocation(line: 45, column: 37, scope: !984, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 358, column: 18, scope: !1073)
!1078 = !DILocation(line: 45, column: 55, scope: !984, inlinedAt: !1077)
!1079 = !DILocation(line: 358, column: 34, scope: !1073)
!1080 = !DILocation(line: 358, column: 48, scope: !1073)
!1081 = !DILocation(line: 46, column: 37, scope: !995, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 358, column: 37, scope: !1073)
!1083 = !DILocation(line: 46, column: 55, scope: !995, inlinedAt: !1082)
!1084 = !DILocation(line: 358, column: 11, scope: !877)
!1085 = !DILocation(line: 359, column: 9, scope: !1073)
!1086 = !DILocation(line: 364, column: 7, scope: !881)
!1087 = !DILocation(line: 45, column: 37, scope: !984, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 364, column: 7, scope: !881)
!1089 = !DILocation(line: 45, column: 55, scope: !984, inlinedAt: !1088)
!1090 = !DILocation(line: 364, column: 21, scope: !881)
!1091 = !DILocation(line: 364, column: 27, scope: !881)
!1092 = !DILocation(line: 364, column: 48, scope: !881)
!1093 = !DILocation(line: 46, column: 55, scope: !995, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 364, column: 37, scope: !881)
!1095 = !DILocation(line: 364, column: 34, scope: !881)
!1096 = !DILocation(line: 380, column: 23, scope: !827)
!1097 = !DILocation(line: 380, column: 16, scope: !827)
!1098 = !DILocation(line: 381, column: 3, scope: !827)
!1099 = !DILocation(line: 381, column: 16, scope: !827)
!1100 = !DILocation(line: 382, column: 14, scope: !887)
!1101 = !DILocation(line: 367, column: 18, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !880, file: !3, line: 367, column: 11)
!1103 = !DILocation(line: 366, column: 28, scope: !880)
!1104 = !DILocation(line: 367, column: 16, scope: !1102)
!1105 = !DILocation(line: 0, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 373, column: 16)
!1107 = !DILocation(line: 46, column: 37, scope: !995, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 0, scope: !1106)
!1109 = !DILocation(line: 46, column: 55, scope: !995, inlinedAt: !1108)
!1110 = !DILocation(line: 367, column: 11, scope: !880)
!1111 = !DILocation(line: 369, column: 15, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 368, column: 9)
!1113 = !DILocation(line: 370, column: 24, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 369, column: 15)
!1115 = !DILocation(line: 370, column: 17, scope: !1114)
!1116 = !DILocation(line: 370, column: 13, scope: !1114)
!1117 = !DILocation(line: 371, column: 27, scope: !1112)
!1118 = !DILocation(line: 372, column: 9, scope: !1112)
!1119 = !DILocation(line: 373, column: 16, scope: !1102)
!1120 = !DILocation(line: 375, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 374, column: 9)
!1122 = !DILocation(line: 382, column: 7, scope: !887)
!1123 = !DILocation(line: 382, column: 17, scope: !887)
!1124 = !DILocation(line: 382, column: 7, scope: !827)
!1125 = !DILocation(line: 384, column: 64, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 384, column: 11)
!1127 = distinct !DILexicalBlock(scope: !887, file: !3, line: 383, column: 5)
!1128 = !DILocation(line: 384, column: 63, scope: !1126)
!1129 = !DILocation(line: 384, column: 11, scope: !1126)
!1130 = !DILocation(line: 384, column: 72, scope: !1126)
!1131 = !DILocation(line: 384, column: 11, scope: !1127)
!1132 = !DILocation(line: 386, column: 17, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 386, column: 15)
!1134 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 385, column: 9)
!1135 = !DILocation(line: 386, column: 15, scope: !1134)
!1136 = !DILocation(line: 391, column: 16, scope: !1126)
!1137 = !DILocation(line: 394, column: 24, scope: !886)
!1138 = !DILocation(line: 46, column: 37, scope: !995, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 394, column: 24, scope: !886)
!1140 = !DILocation(line: 46, column: 55, scope: !995, inlinedAt: !1139)
!1141 = !DILocation(line: 394, column: 41, scope: !886)
!1142 = !DILocation(line: 394, column: 38, scope: !886)
!1143 = !DILocation(line: 396, column: 21, scope: !885)
!1144 = !DILocation(line: 396, column: 11, scope: !885)
!1145 = !DILocation(line: 397, column: 19, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !885, file: !3, line: 397, column: 11)
!1147 = !DILocation(line: 397, column: 11, scope: !885)
!1148 = !DILocation(line: 399, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 399, column: 15)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 398, column: 9)
!1151 = !DILocation(line: 399, column: 15, scope: !1150)
!1152 = !DILocation(line: 400, column: 13, scope: !1149)
!1153 = !DILocation(line: 406, column: 20, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 405, column: 9)
!1155 = !DILocation(line: 406, column: 18, scope: !1154)
!1156 = !DILocation(line: 407, column: 18, scope: !1154)
!1157 = !DILocation(line: 412, column: 8, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !827, file: !3, line: 412, column: 7)
!1159 = !DILocation(line: 45, column: 37, scope: !984, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 412, column: 8, scope: !1158)
!1161 = !DILocation(line: 45, column: 55, scope: !984, inlinedAt: !1160)
!1162 = !DILocation(line: 412, column: 22, scope: !1158)
!1163 = !DILocation(line: 412, column: 47, scope: !1158)
!1164 = !DILocation(line: 412, column: 36, scope: !1158)
!1165 = !DILocation(line: 412, column: 61, scope: !1158)
!1166 = !DILocation(line: 412, column: 7, scope: !827)
!1167 = !DILocation(line: 413, column: 5, scope: !1158)
!1168 = !DILocation(line: 415, column: 9, scope: !827)
!1169 = !DILocation(line: 415, column: 3, scope: !827)
!1170 = !DILocation(line: 416, column: 9, scope: !827)
!1171 = !DILocation(line: 416, column: 3, scope: !827)
!1172 = !DILocation(line: 418, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !827, file: !3, line: 418, column: 7)
!1174 = !DILocation(line: 46, column: 37, scope: !995, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 418, column: 7, scope: !1173)
!1176 = !DILocation(line: 46, column: 55, scope: !995, inlinedAt: !1175)
!1177 = !DILocation(line: 418, column: 21, scope: !1173)
!1178 = !DILocation(line: 418, column: 24, scope: !1173)
!1179 = !DILocation(line: 418, column: 7, scope: !827)
!1180 = !DILocation(line: 419, column: 5, scope: !1173)
!1181 = !DILocation(line: 421, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !827, file: !3, line: 421, column: 7)
!1183 = !DILocation(line: 45, column: 37, scope: !984, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 421, column: 7, scope: !1182)
!1185 = !DILocation(line: 45, column: 55, scope: !984, inlinedAt: !1184)
!1186 = !DILocation(line: 421, column: 21, scope: !1182)
!1187 = !DILocation(line: 421, column: 24, scope: !1182)
!1188 = !DILocation(line: 421, column: 7, scope: !827)
!1189 = !DILocation(line: 422, column: 5, scope: !1182)
!1190 = !DILocation(line: 425, column: 11, scope: !827)
!1191 = !DILocation(line: 425, column: 3, scope: !827)
!1192 = !DILocation(line: 427, column: 21, scope: !827)
!1193 = !DILocation(line: 427, column: 27, scope: !827)
!1194 = !DILocation(line: 427, column: 7, scope: !827)
!1195 = !DILocation(line: 428, column: 20, scope: !827)
!1196 = !DILocation(line: 428, column: 58, scope: !827)
!1197 = !DILocation(line: 428, column: 51, scope: !827)
!1198 = !DILocation(line: 428, column: 3, scope: !827)
!1199 = !DILocation(line: 0, scope: !1133)
!1200 = !DILocation(line: 430, column: 1, scope: !827)
!1201 = distinct !DISubprogram(name: "parse_additional_groups", scope: !3, file: !3, line: 96, type: !1202, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1204)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!70, !98, !709, !56, !120}
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1219}
!1205 = !DILocalVariable(name: "groups", arg: 1, scope: !1201, file: !3, line: 96, type: !98)
!1206 = !DILocalVariable(name: "pgids", arg: 2, scope: !1201, file: !3, line: 96, type: !709)
!1207 = !DILocalVariable(name: "pn_gids", arg: 3, scope: !1201, file: !3, line: 97, type: !56)
!1208 = !DILocalVariable(name: "show_errors", arg: 4, scope: !1201, file: !3, line: 97, type: !120)
!1209 = !DILocalVariable(name: "gids", scope: !1201, file: !3, line: 99, type: !209)
!1210 = !DILocalVariable(name: "n_gids_allocated", scope: !1201, file: !3, line: 100, type: !57)
!1211 = !DILocalVariable(name: "n_gids", scope: !1201, file: !3, line: 101, type: !57)
!1212 = !DILocalVariable(name: "buffer", scope: !1201, file: !3, line: 102, type: !68)
!1213 = !DILocalVariable(name: "tmp", scope: !1201, file: !3, line: 103, type: !98)
!1214 = !DILocalVariable(name: "ret", scope: !1201, file: !3, line: 104, type: !70)
!1215 = !DILocalVariable(name: "g", scope: !1216, file: !3, line: 108, type: !78)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 107, column: 5)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 106, column: 3)
!1218 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 106, column: 3)
!1219 = !DILocalVariable(name: "value", scope: !1216, file: !3, line: 109, type: !59)
!1220 = !DILocation(line: 96, column: 38, scope: !1201)
!1221 = !DILocation(line: 96, column: 60, scope: !1201)
!1222 = !DILocation(line: 97, column: 34, scope: !1201)
!1223 = !DILocation(line: 97, column: 48, scope: !1201)
!1224 = !DILocation(line: 99, column: 16, scope: !1201)
!1225 = !DILocation(line: 100, column: 10, scope: !1201)
!1226 = !DILocation(line: 101, column: 10, scope: !1201)
!1227 = !DILocation(line: 102, column: 18, scope: !1201)
!1228 = !DILocation(line: 102, column: 9, scope: !1201)
!1229 = !DILocation(line: 104, column: 7, scope: !1201)
!1230 = !DILocation(line: 106, column: 14, scope: !1218)
!1231 = !DILocation(line: 103, column: 15, scope: !1201)
!1232 = !DILocation(line: 106, column: 3, scope: !1218)
!1233 = !DILocation(line: 109, column: 7, scope: !1216)
!1234 = !DILocation(line: 109, column: 25, scope: !1216)
!1235 = !DILocation(line: 111, column: 11, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 111, column: 11)
!1237 = !DILocation(line: 111, column: 48, scope: !1236)
!1238 = !DILocation(line: 111, column: 65, scope: !1236)
!1239 = !DILocation(line: 111, column: 71, scope: !1236)
!1240 = !DILocation(line: 111, column: 62, scope: !1236)
!1241 = !DILocation(line: 113, column: 18, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 112, column: 9)
!1243 = !DILocation(line: 0, scope: !1242)
!1244 = !{!1245, !1245, i64 0}
!1245 = !{!"short", !782, i64 0}
!1246 = !DILocation(line: 113, column: 11, scope: !1242)
!1247 = !DILocation(line: 114, column: 16, scope: !1242)
!1248 = distinct !{!1248, !1246, !1247}
!1249 = !DILocation(line: 115, column: 20, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 115, column: 15)
!1251 = !DILocation(line: 115, column: 15, scope: !1242)
!1252 = !DILocation(line: 118, column: 19, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 116, column: 13)
!1254 = !DILocation(line: 108, column: 21, scope: !1216)
!1255 = !DILocation(line: 119, column: 21, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 119, column: 19)
!1257 = !DILocation(line: 119, column: 19, scope: !1253)
!1258 = !DILocation(line: 120, column: 28, scope: !1256)
!1259 = !{!1260, !898, i64 16}
!1260 = !{!"group", !781, i64 0, !781, i64 8, !898, i64 16, !781, i64 24}
!1261 = !DILocation(line: 120, column: 25, scope: !1256)
!1262 = !DILocation(line: 120, column: 23, scope: !1256)
!1263 = !DILocation(line: 120, column: 17, scope: !1256)
!1264 = !DILocation(line: 127, column: 15, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 126, column: 9)
!1266 = !DILocation(line: 128, column: 17, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 128, column: 15)
!1268 = !DILocation(line: 128, column: 15, scope: !1265)
!1269 = !DILocation(line: 129, column: 24, scope: !1267)
!1270 = !DILocation(line: 129, column: 21, scope: !1267)
!1271 = !DILocation(line: 129, column: 19, scope: !1267)
!1272 = !DILocation(line: 129, column: 13, scope: !1267)
!1273 = !DILocation(line: 136, column: 15, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 133, column: 9)
!1275 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 132, column: 11)
!1276 = !DILocation(line: 138, column: 25, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 137, column: 13)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 136, column: 15)
!1279 = !DILocation(line: 138, column: 32, scope: !1277)
!1280 = !DILocation(line: 138, column: 55, scope: !1277)
!1281 = !DILocation(line: 138, column: 15, scope: !1277)
!1282 = !DILocation(line: 139, column: 15, scope: !1277)
!1283 = !DILocation(line: 145, column: 18, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 145, column: 11)
!1285 = !DILocation(line: 145, column: 11, scope: !1216)
!1286 = !DILocation(line: 174, column: 19, scope: !52, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 146, column: 16, scope: !1284)
!1288 = !DILocation(line: 174, column: 41, scope: !52, inlinedAt: !1287)
!1289 = !DILocation(line: 176, column: 10, scope: !52, inlinedAt: !1287)
!1290 = !DILocation(line: 178, column: 9, scope: !1291, inlinedAt: !1287)
!1291 = distinct !DILexicalBlock(scope: !52, file: !51, line: 178, column: 7)
!1292 = !DILocation(line: 178, column: 7, scope: !52, inlinedAt: !1287)
!1293 = !DILocation(line: 180, column: 13, scope: !1294, inlinedAt: !1287)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !51, line: 180, column: 11)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !51, line: 179, column: 5)
!1296 = !DILocation(line: 180, column: 11, scope: !1295, inlinedAt: !1287)
!1297 = !DILocation(line: 191, column: 11, scope: !1298, inlinedAt: !1287)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !51, line: 191, column: 11)
!1299 = !DILocation(line: 191, column: 11, scope: !1295, inlinedAt: !1287)
!1300 = !DILocation(line: 192, column: 9, scope: !1298, inlinedAt: !1287)
!1301 = !DILocation(line: 201, column: 11, scope: !1302, inlinedAt: !1287)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !51, line: 200, column: 11)
!1303 = distinct !DILexicalBlock(scope: !1291, file: !51, line: 195, column: 5)
!1304 = !DILocation(line: 200, column: 11, scope: !1303, inlinedAt: !1287)
!1305 = !DILocation(line: 202, column: 9, scope: !1302, inlinedAt: !1287)
!1306 = !DILocation(line: 203, column: 14, scope: !1303, inlinedAt: !1287)
!1307 = !DILocation(line: 203, column: 18, scope: !1303, inlinedAt: !1287)
!1308 = !DILocation(line: 203, column: 9, scope: !1303, inlinedAt: !1287)
!1309 = !DILocation(line: 0, scope: !52, inlinedAt: !1287)
!1310 = !DILocation(line: 207, column: 25, scope: !52, inlinedAt: !1287)
!1311 = !DILocation(line: 207, column: 10, scope: !52, inlinedAt: !1287)
!1312 = !DILocation(line: 146, column: 16, scope: !1284)
!1313 = !DILocation(line: 146, column: 9, scope: !1284)
!1314 = !DILocation(line: 0, scope: !1201)
!1315 = !DILocation(line: 147, column: 24, scope: !1216)
!1316 = !DILocation(line: 147, column: 18, scope: !1216)
!1317 = !DILocation(line: 147, column: 7, scope: !1216)
!1318 = !DILocation(line: 147, column: 22, scope: !1216)
!1319 = !DILocation(line: 148, column: 5, scope: !1217)
!1320 = !DILocation(line: 157, column: 10, scope: !1201)
!1321 = !DILocation(line: 159, column: 7, scope: !1201)
!1322 = !DILocation(line: 106, column: 47, scope: !1217)
!1323 = distinct !{!1323, !1232, !1324}
!1324 = !DILocation(line: 148, column: 5, scope: !1218)
!1325 = !DILocation(line: 150, column: 11, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 150, column: 7)
!1327 = !DILocation(line: 150, column: 26, scope: !1326)
!1328 = !DILocation(line: 150, column: 16, scope: !1326)
!1329 = !DILocation(line: 153, column: 22, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 152, column: 11)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 151, column: 5)
!1332 = !DILocation(line: 153, column: 50, scope: !1330)
!1333 = !DILocation(line: 153, column: 9, scope: !1330)
!1334 = !DILocation(line: 159, column: 11, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 159, column: 7)
!1336 = !DILocation(line: 160, column: 14, scope: !1335)
!1337 = !DILocation(line: 160, column: 5, scope: !1335)
!1338 = !DILocation(line: 162, column: 3, scope: !1201)
!1339 = !DILocation(line: 163, column: 3, scope: !1201)
!1340 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !119, file: !119, line: 51, type: !755, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !114, retainedNodes: !1341)
!1341 = !{!1342}
!1342 = !DILocalVariable(name: "file", arg: 1, scope: !1340, file: !119, line: 51, type: !98)
!1343 = !DILocation(line: 51, column: 41, scope: !1340)
!1344 = !DILocation(line: 53, column: 13, scope: !1340)
!1345 = !DILocation(line: 54, column: 1, scope: !1340)
!1346 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !119, file: !119, line: 88, type: !1347, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !114, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !120}
!1349 = !{!1350}
!1350 = !DILocalVariable(name: "ignore", arg: 1, scope: !1346, file: !119, line: 88, type: !120)
!1351 = !DILocation(line: 88, column: 37, scope: !1346)
!1352 = !DILocation(line: 90, column: 16, scope: !1346)
!1353 = !{!1354, !1354, i64 0}
!1354 = !{!"_Bool", !782, i64 0}
!1355 = !DILocation(line: 91, column: 1, scope: !1346)
!1356 = distinct !DISubprogram(name: "close_stdout", scope: !119, file: !119, line: 117, type: !1357, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !114, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null}
!1359 = !{!1360}
!1360 = !DILocalVariable(name: "write_error", scope: !1361, file: !119, line: 122, type: !98)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !119, line: 121, column: 5)
!1362 = distinct !DILexicalBlock(scope: !1356, file: !119, line: 119, column: 7)
!1363 = !DILocation(line: 119, column: 21, scope: !1362)
!1364 = !DILocation(line: 119, column: 7, scope: !1362)
!1365 = !DILocation(line: 119, column: 29, scope: !1362)
!1366 = !DILocation(line: 120, column: 7, scope: !1362)
!1367 = !DILocation(line: 120, column: 12, scope: !1362)
!1368 = !{i8 0, i8 2}
!1369 = !DILocation(line: 120, column: 25, scope: !1362)
!1370 = !DILocation(line: 120, column: 28, scope: !1362)
!1371 = !DILocation(line: 120, column: 34, scope: !1362)
!1372 = !DILocation(line: 119, column: 7, scope: !1356)
!1373 = !DILocation(line: 122, column: 33, scope: !1361)
!1374 = !DILocation(line: 122, column: 19, scope: !1361)
!1375 = !DILocation(line: 123, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1361, file: !119, line: 123, column: 11)
!1377 = !DILocation(line: 0, scope: !1376)
!1378 = !DILocation(line: 123, column: 11, scope: !1361)
!1379 = !DILocation(line: 124, column: 36, scope: !1376)
!1380 = !DILocation(line: 124, column: 9, scope: !1376)
!1381 = !DILocation(line: 127, column: 9, scope: !1376)
!1382 = !DILocation(line: 129, column: 14, scope: !1361)
!1383 = !DILocation(line: 129, column: 7, scope: !1361)
!1384 = !DILocation(line: 134, column: 42, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1356, file: !119, line: 134, column: 7)
!1386 = !DILocation(line: 134, column: 28, scope: !1385)
!1387 = !DILocation(line: 134, column: 50, scope: !1385)
!1388 = !DILocation(line: 134, column: 7, scope: !1356)
!1389 = !DILocation(line: 135, column: 12, scope: !1385)
!1390 = !DILocation(line: 135, column: 5, scope: !1385)
!1391 = !DILocation(line: 136, column: 1, scope: !1356)
!1392 = distinct !DISubprogram(name: "set_program_name", scope: !134, file: !134, line: 39, type: !755, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !130, retainedNodes: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DILocalVariable(name: "argv0", arg: 1, scope: !1392, file: !134, line: 39, type: !98)
!1395 = !DILocalVariable(name: "slash", scope: !1392, file: !134, line: 46, type: !98)
!1396 = !DILocalVariable(name: "base", scope: !1392, file: !134, line: 47, type: !98)
!1397 = !DILocation(line: 39, column: 31, scope: !1392)
!1398 = !DILocation(line: 51, column: 13, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1392, file: !134, line: 51, column: 7)
!1400 = !DILocation(line: 51, column: 7, scope: !1392)
!1401 = !DILocation(line: 55, column: 14, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !134, line: 52, column: 5)
!1403 = !DILocation(line: 54, column: 7, scope: !1402)
!1404 = !DILocation(line: 56, column: 7, scope: !1402)
!1405 = !DILocation(line: 59, column: 11, scope: !1392)
!1406 = !DILocation(line: 46, column: 15, scope: !1392)
!1407 = !DILocation(line: 60, column: 17, scope: !1392)
!1408 = !DILocation(line: 60, column: 33, scope: !1392)
!1409 = !DILocation(line: 60, column: 11, scope: !1392)
!1410 = !DILocation(line: 47, column: 15, scope: !1392)
!1411 = !DILocation(line: 61, column: 12, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1392, file: !134, line: 61, column: 7)
!1413 = !DILocation(line: 61, column: 20, scope: !1412)
!1414 = !DILocation(line: 61, column: 25, scope: !1412)
!1415 = !DILocation(line: 61, column: 42, scope: !1412)
!1416 = !DILocation(line: 61, column: 28, scope: !1412)
!1417 = !DILocation(line: 61, column: 61, scope: !1412)
!1418 = !DILocation(line: 61, column: 7, scope: !1392)
!1419 = !DILocation(line: 64, column: 11, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !134, line: 64, column: 11)
!1421 = distinct !DILexicalBlock(scope: !1412, file: !134, line: 62, column: 5)
!1422 = !DILocation(line: 64, column: 36, scope: !1420)
!1423 = !DILocation(line: 64, column: 11, scope: !1421)
!1424 = !DILocation(line: 66, column: 24, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !134, line: 65, column: 9)
!1426 = !DILocation(line: 70, column: 41, scope: !1425)
!1427 = !DILocation(line: 72, column: 9, scope: !1425)
!1428 = !DILocation(line: 84, column: 16, scope: !1392)
!1429 = !DILocation(line: 90, column: 27, scope: !1392)
!1430 = !DILocation(line: 92, column: 1, scope: !1392)
!1431 = distinct !DISubprogram(name: "clone_quoting_options", scope: !149, file: !149, line: 122, type: !1432, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !1435)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1434, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1435 = !{!1436, !1437, !1438}
!1436 = !DILocalVariable(name: "o", arg: 1, scope: !1431, file: !149, line: 122, type: !1434)
!1437 = !DILocalVariable(name: "e", scope: !1431, file: !149, line: 124, type: !70)
!1438 = !DILocalVariable(name: "p", scope: !1431, file: !149, line: 125, type: !1434)
!1439 = !DILocation(line: 122, column: 48, scope: !1431)
!1440 = !DILocation(line: 124, column: 11, scope: !1431)
!1441 = !DILocation(line: 124, column: 7, scope: !1431)
!1442 = !DILocation(line: 125, column: 40, scope: !1431)
!1443 = !DILocation(line: 125, column: 31, scope: !1431)
!1444 = !DILocation(line: 125, column: 27, scope: !1431)
!1445 = !DILocation(line: 127, column: 9, scope: !1431)
!1446 = !DILocation(line: 128, column: 3, scope: !1431)
!1447 = distinct !DISubprogram(name: "get_quoting_style", scope: !149, file: !149, line: 133, type: !1448, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !1452)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!5, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1452 = !{!1453}
!1453 = !DILocalVariable(name: "o", arg: 1, scope: !1447, file: !149, line: 133, type: !1450)
!1454 = !DILocation(line: 133, column: 50, scope: !1447)
!1455 = !DILocation(line: 135, column: 11, scope: !1447)
!1456 = !DILocation(line: 135, column: 46, scope: !1447)
!1457 = !{!1458, !782, i64 0}
!1458 = !{!"quoting_options", !782, i64 0, !898, i64 4, !782, i64 8, !781, i64 40, !781, i64 48}
!1459 = !DILocation(line: 135, column: 3, scope: !1447)
!1460 = distinct !DISubprogram(name: "set_quoting_style", scope: !149, file: !149, line: 141, type: !1461, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !1434, !5}
!1463 = !{!1464, !1465}
!1464 = !DILocalVariable(name: "o", arg: 1, scope: !1460, file: !149, line: 141, type: !1434)
!1465 = !DILocalVariable(name: "s", arg: 2, scope: !1460, file: !149, line: 141, type: !5)
!1466 = !DILocation(line: 141, column: 44, scope: !1460)
!1467 = !DILocation(line: 141, column: 66, scope: !1460)
!1468 = !DILocation(line: 143, column: 4, scope: !1460)
!1469 = !DILocation(line: 143, column: 39, scope: !1460)
!1470 = !DILocation(line: 143, column: 45, scope: !1460)
!1471 = !DILocation(line: 144, column: 1, scope: !1460)
!1472 = distinct !DISubprogram(name: "set_char_quoting", scope: !149, file: !149, line: 152, type: !1473, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!70, !1434, !69, !70}
!1475 = !{!1476, !1477, !1478, !1479, !1481, !1483, !1484}
!1476 = !DILocalVariable(name: "o", arg: 1, scope: !1472, file: !149, line: 152, type: !1434)
!1477 = !DILocalVariable(name: "c", arg: 2, scope: !1472, file: !149, line: 152, type: !69)
!1478 = !DILocalVariable(name: "i", arg: 3, scope: !1472, file: !149, line: 152, type: !70)
!1479 = !DILocalVariable(name: "uc", scope: !1472, file: !149, line: 154, type: !1480)
!1480 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1481 = !DILocalVariable(name: "p", scope: !1472, file: !149, line: 155, type: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1483 = !DILocalVariable(name: "shift", scope: !1472, file: !149, line: 157, type: !70)
!1484 = !DILocalVariable(name: "r", scope: !1472, file: !149, line: 158, type: !70)
!1485 = !DILocation(line: 152, column: 43, scope: !1472)
!1486 = !DILocation(line: 152, column: 51, scope: !1472)
!1487 = !DILocation(line: 152, column: 58, scope: !1472)
!1488 = !DILocation(line: 154, column: 17, scope: !1472)
!1489 = !DILocation(line: 156, column: 6, scope: !1472)
!1490 = !DILocation(line: 156, column: 62, scope: !1472)
!1491 = !DILocation(line: 156, column: 57, scope: !1472)
!1492 = !DILocation(line: 155, column: 17, scope: !1472)
!1493 = !DILocation(line: 157, column: 15, scope: !1472)
!1494 = !DILocation(line: 157, column: 7, scope: !1472)
!1495 = !DILocation(line: 158, column: 12, scope: !1472)
!1496 = !DILocation(line: 158, column: 15, scope: !1472)
!1497 = !DILocation(line: 158, column: 25, scope: !1472)
!1498 = !DILocation(line: 158, column: 7, scope: !1472)
!1499 = !DILocation(line: 159, column: 13, scope: !1472)
!1500 = !DILocation(line: 159, column: 18, scope: !1472)
!1501 = !DILocation(line: 159, column: 23, scope: !1472)
!1502 = !DILocation(line: 159, column: 6, scope: !1472)
!1503 = !DILocation(line: 160, column: 3, scope: !1472)
!1504 = distinct !DISubprogram(name: "set_quoting_flags", scope: !149, file: !149, line: 168, type: !1505, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!70, !1434, !70}
!1507 = !{!1508, !1509, !1510}
!1508 = !DILocalVariable(name: "o", arg: 1, scope: !1504, file: !149, line: 168, type: !1434)
!1509 = !DILocalVariable(name: "i", arg: 2, scope: !1504, file: !149, line: 168, type: !70)
!1510 = !DILocalVariable(name: "r", scope: !1504, file: !149, line: 170, type: !70)
!1511 = !DILocation(line: 168, column: 44, scope: !1504)
!1512 = !DILocation(line: 168, column: 51, scope: !1504)
!1513 = !DILocation(line: 171, column: 8, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1504, file: !149, line: 171, column: 7)
!1515 = !DILocation(line: 171, column: 7, scope: !1504)
!1516 = !DILocation(line: 173, column: 10, scope: !1504)
!1517 = !{!1458, !898, i64 4}
!1518 = !DILocation(line: 170, column: 7, scope: !1504)
!1519 = !DILocation(line: 174, column: 12, scope: !1504)
!1520 = !DILocation(line: 175, column: 3, scope: !1504)
!1521 = distinct !DISubprogram(name: "set_custom_quoting", scope: !149, file: !149, line: 179, type: !1522, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1434, !98, !98}
!1524 = !{!1525, !1526, !1527}
!1525 = !DILocalVariable(name: "o", arg: 1, scope: !1521, file: !149, line: 179, type: !1434)
!1526 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1521, file: !149, line: 180, type: !98)
!1527 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1521, file: !149, line: 180, type: !98)
!1528 = !DILocation(line: 179, column: 45, scope: !1521)
!1529 = !DILocation(line: 180, column: 33, scope: !1521)
!1530 = !DILocation(line: 180, column: 57, scope: !1521)
!1531 = !DILocation(line: 182, column: 8, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1521, file: !149, line: 182, column: 7)
!1533 = !DILocation(line: 182, column: 7, scope: !1521)
!1534 = !DILocation(line: 184, column: 6, scope: !1521)
!1535 = !DILocation(line: 184, column: 12, scope: !1521)
!1536 = !DILocation(line: 185, column: 8, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1521, file: !149, line: 185, column: 7)
!1538 = !DILocation(line: 185, column: 23, scope: !1537)
!1539 = !DILocation(line: 185, column: 19, scope: !1537)
!1540 = !DILocation(line: 186, column: 5, scope: !1537)
!1541 = !DILocation(line: 187, column: 6, scope: !1521)
!1542 = !DILocation(line: 187, column: 17, scope: !1521)
!1543 = !{!1458, !781, i64 40}
!1544 = !DILocation(line: 188, column: 6, scope: !1521)
!1545 = !DILocation(line: 188, column: 18, scope: !1521)
!1546 = !{!1458, !781, i64 48}
!1547 = !DILocation(line: 189, column: 1, scope: !1521)
!1548 = distinct !DISubprogram(name: "quotearg_buffer", scope: !149, file: !149, line: 784, type: !1549, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !1551)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!57, !68, !57, !98, !57, !1450}
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1552 = !DILocalVariable(name: "buffer", arg: 1, scope: !1548, file: !149, line: 784, type: !68)
!1553 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1548, file: !149, line: 784, type: !57)
!1554 = !DILocalVariable(name: "arg", arg: 3, scope: !1548, file: !149, line: 785, type: !98)
!1555 = !DILocalVariable(name: "argsize", arg: 4, scope: !1548, file: !149, line: 785, type: !57)
!1556 = !DILocalVariable(name: "o", arg: 5, scope: !1548, file: !149, line: 786, type: !1450)
!1557 = !DILocalVariable(name: "p", scope: !1548, file: !149, line: 788, type: !1450)
!1558 = !DILocalVariable(name: "e", scope: !1548, file: !149, line: 789, type: !70)
!1559 = !DILocalVariable(name: "r", scope: !1548, file: !149, line: 790, type: !57)
!1560 = !DILocation(line: 784, column: 24, scope: !1548)
!1561 = !DILocation(line: 784, column: 39, scope: !1548)
!1562 = !DILocation(line: 785, column: 30, scope: !1548)
!1563 = !DILocation(line: 785, column: 42, scope: !1548)
!1564 = !DILocation(line: 786, column: 48, scope: !1548)
!1565 = !DILocation(line: 788, column: 37, scope: !1548)
!1566 = !DILocation(line: 788, column: 33, scope: !1548)
!1567 = !DILocation(line: 789, column: 11, scope: !1548)
!1568 = !DILocation(line: 789, column: 7, scope: !1548)
!1569 = !DILocation(line: 791, column: 43, scope: !1548)
!1570 = !DILocation(line: 791, column: 53, scope: !1548)
!1571 = !DILocation(line: 791, column: 60, scope: !1548)
!1572 = !DILocation(line: 792, column: 43, scope: !1548)
!1573 = !DILocation(line: 792, column: 58, scope: !1548)
!1574 = !DILocation(line: 790, column: 14, scope: !1548)
!1575 = !DILocation(line: 790, column: 10, scope: !1548)
!1576 = !DILocation(line: 793, column: 9, scope: !1548)
!1577 = !DILocation(line: 794, column: 3, scope: !1548)
!1578 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !149, file: !149, line: 256, type: !1579, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !1583)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!57, !68, !57, !98, !57, !5, !70, !1581, !98, !98}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1608, !1609, !1610, !1611, !1612, !1615, !1616, !1634, !1637, !1638, !1645}
!1584 = !DILocalVariable(name: "buffer", arg: 1, scope: !1578, file: !149, line: 256, type: !68)
!1585 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1578, file: !149, line: 256, type: !57)
!1586 = !DILocalVariable(name: "arg", arg: 3, scope: !1578, file: !149, line: 257, type: !98)
!1587 = !DILocalVariable(name: "argsize", arg: 4, scope: !1578, file: !149, line: 257, type: !57)
!1588 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1578, file: !149, line: 258, type: !5)
!1589 = !DILocalVariable(name: "flags", arg: 6, scope: !1578, file: !149, line: 258, type: !70)
!1590 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1578, file: !149, line: 259, type: !1581)
!1591 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1578, file: !149, line: 260, type: !98)
!1592 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1578, file: !149, line: 261, type: !98)
!1593 = !DILocalVariable(name: "i", scope: !1578, file: !149, line: 263, type: !57)
!1594 = !DILocalVariable(name: "len", scope: !1578, file: !149, line: 264, type: !57)
!1595 = !DILocalVariable(name: "orig_buffersize", scope: !1578, file: !149, line: 265, type: !57)
!1596 = !DILocalVariable(name: "quote_string", scope: !1578, file: !149, line: 266, type: !98)
!1597 = !DILocalVariable(name: "quote_string_len", scope: !1578, file: !149, line: 267, type: !57)
!1598 = !DILocalVariable(name: "backslash_escapes", scope: !1578, file: !149, line: 268, type: !120)
!1599 = !DILocalVariable(name: "unibyte_locale", scope: !1578, file: !149, line: 269, type: !120)
!1600 = !DILocalVariable(name: "elide_outer_quotes", scope: !1578, file: !149, line: 270, type: !120)
!1601 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1578, file: !149, line: 271, type: !120)
!1602 = !DILocalVariable(name: "encountered_single_quote", scope: !1578, file: !149, line: 272, type: !120)
!1603 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1578, file: !149, line: 273, type: !120)
!1604 = !DILocalVariable(name: "c", scope: !1605, file: !149, line: 402, type: !1480)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !149, line: 401, column: 5)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !149, line: 400, column: 3)
!1607 = distinct !DILexicalBlock(scope: !1578, file: !149, line: 400, column: 3)
!1608 = !DILocalVariable(name: "esc", scope: !1605, file: !149, line: 403, type: !1480)
!1609 = !DILocalVariable(name: "is_right_quote", scope: !1605, file: !149, line: 404, type: !120)
!1610 = !DILocalVariable(name: "escaping", scope: !1605, file: !149, line: 405, type: !120)
!1611 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1605, file: !149, line: 406, type: !120)
!1612 = !DILocalVariable(name: "m", scope: !1613, file: !149, line: 610, type: !57)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 608, column: 11)
!1614 = distinct !DILexicalBlock(scope: !1605, file: !149, line: 426, column: 9)
!1615 = !DILocalVariable(name: "printable", scope: !1613, file: !149, line: 612, type: !120)
!1616 = !DILocalVariable(name: "mbstate", scope: !1617, file: !149, line: 621, type: !1619)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !149, line: 620, column: 15)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !149, line: 614, column: 17)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1620, line: 6, baseType: !1621)
!1620 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1622, line: 21, baseType: !1623)
!1622 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1622, line: 13, size: 64, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1623, file: !1622, line: 15, baseType: !70, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1623, file: !1622, line: 20, baseType: !1627, size: 32, offset: 32)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !1622, line: 16, size: 32, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1627, file: !1622, line: 18, baseType: !7, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1627, file: !1622, line: 19, baseType: !1631, size: 32)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 32, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 4)
!1634 = !DILocalVariable(name: "w", scope: !1635, file: !149, line: 631, type: !1636)
!1635 = distinct !DILexicalBlock(scope: !1617, file: !149, line: 630, column: 19)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !58, line: 90, baseType: !70)
!1637 = !DILocalVariable(name: "bytes", scope: !1635, file: !149, line: 632, type: !57)
!1638 = !DILocalVariable(name: "j", scope: !1639, file: !149, line: 657, type: !57)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !149, line: 656, column: 27)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !149, line: 654, column: 29)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !149, line: 649, column: 23)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !149, line: 641, column: 30)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !149, line: 636, column: 30)
!1644 = distinct !DILexicalBlock(scope: !1635, file: !149, line: 634, column: 25)
!1645 = !DILocalVariable(name: "ilim", scope: !1646, file: !149, line: 684, type: !57)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !149, line: 681, column: 15)
!1647 = distinct !DILexicalBlock(scope: !1613, file: !149, line: 680, column: 17)
!1648 = !DILocation(line: 256, column: 33, scope: !1578)
!1649 = !DILocation(line: 256, column: 48, scope: !1578)
!1650 = !DILocation(line: 257, column: 39, scope: !1578)
!1651 = !DILocation(line: 257, column: 51, scope: !1578)
!1652 = !DILocation(line: 258, column: 46, scope: !1578)
!1653 = !DILocation(line: 258, column: 65, scope: !1578)
!1654 = !DILocation(line: 259, column: 47, scope: !1578)
!1655 = !DILocation(line: 260, column: 39, scope: !1578)
!1656 = !DILocation(line: 261, column: 39, scope: !1578)
!1657 = !DILocation(line: 264, column: 10, scope: !1578)
!1658 = !DILocation(line: 265, column: 10, scope: !1578)
!1659 = !DILocation(line: 266, column: 15, scope: !1578)
!1660 = !DILocation(line: 267, column: 10, scope: !1578)
!1661 = !DILocation(line: 268, column: 8, scope: !1578)
!1662 = !DILocation(line: 269, column: 25, scope: !1578)
!1663 = !DILocation(line: 269, column: 36, scope: !1578)
!1664 = !DILocation(line: 270, column: 8, scope: !1578)
!1665 = !DILocation(line: 271, column: 8, scope: !1578)
!1666 = !DILocation(line: 272, column: 8, scope: !1578)
!1667 = !DILocation(line: 273, column: 8, scope: !1578)
!1668 = !DILocation(line: 273, column: 3, scope: !1578)
!1669 = !DILocation(line: 0, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1578, file: !149, line: 317, column: 5)
!1671 = !DILocation(line: 316, column: 3, scope: !1578)
!1672 = !DILocation(line: 323, column: 11, scope: !1670)
!1673 = !DILocation(line: 323, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !149, line: 323, column: 11)
!1675 = !DILocation(line: 324, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !149, line: 324, column: 9)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !149, line: 324, column: 9)
!1678 = !DILocation(line: 324, column: 9, scope: !1677)
!1679 = !DILocation(line: 362, column: 26, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !149, line: 340, column: 11)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !149, line: 339, column: 13)
!1682 = distinct !DILexicalBlock(scope: !1670, file: !149, line: 338, column: 7)
!1683 = !DILocation(line: 363, column: 27, scope: !1680)
!1684 = !DILocation(line: 364, column: 11, scope: !1680)
!1685 = !DILocation(line: 365, column: 14, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !149, line: 365, column: 13)
!1687 = !DILocation(line: 365, column: 13, scope: !1682)
!1688 = !DILocation(line: 366, column: 43, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !149, line: 366, column: 11)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !149, line: 366, column: 11)
!1691 = !DILocation(line: 366, column: 11, scope: !1690)
!1692 = !DILocation(line: 367, column: 13, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !149, line: 367, column: 13)
!1694 = distinct !DILexicalBlock(scope: !1689, file: !149, line: 367, column: 13)
!1695 = !DILocation(line: 367, column: 13, scope: !1694)
!1696 = !DILocation(line: 366, column: 70, scope: !1689)
!1697 = distinct !{!1697, !1691, !1698}
!1698 = !DILocation(line: 367, column: 13, scope: !1690)
!1699 = !DILocation(line: 370, column: 28, scope: !1682)
!1700 = !DILocation(line: 372, column: 7, scope: !1670)
!1701 = !DILocation(line: 376, column: 7, scope: !1670)
!1702 = !DILocation(line: 379, column: 7, scope: !1670)
!1703 = !DILocation(line: 381, column: 12, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1670, file: !149, line: 381, column: 11)
!1705 = !DILocation(line: 381, column: 11, scope: !1670)
!1706 = !DILocation(line: 0, scope: !1704)
!1707 = !DILocation(line: 386, column: 12, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1670, file: !149, line: 386, column: 11)
!1709 = !DILocation(line: 386, column: 11, scope: !1670)
!1710 = !DILocation(line: 387, column: 9, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !149, line: 387, column: 9)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !149, line: 387, column: 9)
!1713 = !DILocation(line: 387, column: 9, scope: !1712)
!1714 = !DILocation(line: 394, column: 7, scope: !1670)
!1715 = !DILocation(line: 397, column: 7, scope: !1670)
!1716 = !DILocation(line: 0, scope: !1578)
!1717 = !DILocation(line: 263, column: 10, scope: !1578)
!1718 = !DILocation(line: 400, column: 8, scope: !1607)
!1719 = !DILocation(line: 0, scope: !1606)
!1720 = !DILocation(line: 400, column: 27, scope: !1606)
!1721 = !DILocation(line: 400, column: 19, scope: !1606)
!1722 = !DILocation(line: 400, column: 41, scope: !1606)
!1723 = !DILocation(line: 400, column: 48, scope: !1606)
!1724 = !DILocation(line: 400, column: 3, scope: !1607)
!1725 = !DILocation(line: 400, column: 60, scope: !1606)
!1726 = !DILocation(line: 404, column: 12, scope: !1605)
!1727 = !DILocation(line: 405, column: 12, scope: !1605)
!1728 = !DILocation(line: 406, column: 12, scope: !1605)
!1729 = !DILocation(line: 409, column: 11, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1605, file: !149, line: 408, column: 11)
!1731 = !DILocation(line: 411, column: 17, scope: !1730)
!1732 = !DILocation(line: 412, column: 39, scope: !1730)
!1733 = !DILocation(line: 416, column: 32, scope: !1730)
!1734 = !DILocation(line: 412, column: 19, scope: !1730)
!1735 = !DILocation(line: 412, column: 15, scope: !1730)
!1736 = !DILocation(line: 417, column: 11, scope: !1730)
!1737 = !DILocation(line: 417, column: 26, scope: !1730)
!1738 = !DILocation(line: 417, column: 14, scope: !1730)
!1739 = !DILocation(line: 417, column: 63, scope: !1730)
!1740 = !DILocation(line: 408, column: 11, scope: !1605)
!1741 = !DILocation(line: 0, scope: !1605)
!1742 = !DILocation(line: 424, column: 11, scope: !1605)
!1743 = !DILocation(line: 402, column: 21, scope: !1605)
!1744 = !DILocation(line: 425, column: 7, scope: !1605)
!1745 = !DILocation(line: 428, column: 15, scope: !1614)
!1746 = !DILocation(line: 430, column: 15, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !149, line: 430, column: 15)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !149, line: 429, column: 13)
!1749 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 428, column: 15)
!1750 = !DILocation(line: 430, column: 15, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !149, line: 430, column: 15)
!1752 = !DILocation(line: 430, column: 15, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !149, line: 430, column: 15)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !149, line: 430, column: 15)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !149, line: 430, column: 15)
!1756 = !DILocation(line: 430, column: 15, scope: !1754)
!1757 = !DILocation(line: 430, column: 15, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !149, line: 430, column: 15)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !149, line: 430, column: 15)
!1760 = !DILocation(line: 430, column: 15, scope: !1759)
!1761 = !DILocation(line: 430, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !149, line: 430, column: 15)
!1763 = distinct !DILexicalBlock(scope: !1755, file: !149, line: 430, column: 15)
!1764 = !DILocation(line: 430, column: 15, scope: !1763)
!1765 = !DILocation(line: 430, column: 15, scope: !1755)
!1766 = !DILocation(line: 430, column: 15, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !149, line: 430, column: 15)
!1768 = distinct !DILexicalBlock(scope: !1747, file: !149, line: 430, column: 15)
!1769 = !DILocation(line: 430, column: 15, scope: !1768)
!1770 = !DILocation(line: 438, column: 19, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1748, file: !149, line: 437, column: 19)
!1772 = !DILocation(line: 438, column: 24, scope: !1771)
!1773 = !DILocation(line: 438, column: 28, scope: !1771)
!1774 = !DILocation(line: 438, column: 38, scope: !1771)
!1775 = !DILocation(line: 438, column: 48, scope: !1771)
!1776 = !DILocation(line: 438, column: 59, scope: !1771)
!1777 = !DILocation(line: 440, column: 19, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !149, line: 440, column: 19)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !149, line: 440, column: 19)
!1780 = distinct !DILexicalBlock(scope: !1771, file: !149, line: 439, column: 17)
!1781 = !DILocation(line: 440, column: 19, scope: !1779)
!1782 = !DILocation(line: 441, column: 19, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !149, line: 441, column: 19)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !149, line: 441, column: 19)
!1785 = !DILocation(line: 441, column: 19, scope: !1784)
!1786 = !DILocation(line: 442, column: 17, scope: !1780)
!1787 = !DILocation(line: 449, column: 20, scope: !1749)
!1788 = !DILocation(line: 454, column: 11, scope: !1614)
!1789 = !DILocation(line: 457, column: 19, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 455, column: 13)
!1791 = !DILocation(line: 463, column: 19, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1790, file: !149, line: 462, column: 19)
!1793 = !DILocation(line: 463, column: 24, scope: !1792)
!1794 = !DILocation(line: 463, column: 28, scope: !1792)
!1795 = !DILocation(line: 463, column: 38, scope: !1792)
!1796 = !DILocation(line: 463, column: 47, scope: !1792)
!1797 = !DILocation(line: 463, column: 41, scope: !1792)
!1798 = !DILocation(line: 463, column: 52, scope: !1792)
!1799 = !DILocation(line: 462, column: 19, scope: !1790)
!1800 = !DILocation(line: 464, column: 25, scope: !1792)
!1801 = !DILocation(line: 464, column: 17, scope: !1792)
!1802 = !DILocation(line: 471, column: 25, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1792, file: !149, line: 465, column: 19)
!1804 = !DILocation(line: 475, column: 21, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !149, line: 475, column: 21)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !149, line: 475, column: 21)
!1807 = !DILocation(line: 475, column: 21, scope: !1806)
!1808 = !DILocation(line: 476, column: 21, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !149, line: 476, column: 21)
!1810 = distinct !DILexicalBlock(scope: !1803, file: !149, line: 476, column: 21)
!1811 = !DILocation(line: 476, column: 21, scope: !1810)
!1812 = !DILocation(line: 477, column: 21, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !149, line: 477, column: 21)
!1814 = distinct !DILexicalBlock(scope: !1803, file: !149, line: 477, column: 21)
!1815 = !DILocation(line: 477, column: 21, scope: !1814)
!1816 = !DILocation(line: 478, column: 21, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !149, line: 478, column: 21)
!1818 = distinct !DILexicalBlock(scope: !1803, file: !149, line: 478, column: 21)
!1819 = !DILocation(line: 478, column: 21, scope: !1818)
!1820 = !DILocation(line: 479, column: 21, scope: !1803)
!1821 = !DILocation(line: 403, column: 21, scope: !1605)
!1822 = !DILocation(line: 492, column: 31, scope: !1614)
!1823 = !DILocation(line: 493, column: 31, scope: !1614)
!1824 = !DILocation(line: 495, column: 31, scope: !1614)
!1825 = !DILocation(line: 496, column: 31, scope: !1614)
!1826 = !DILocation(line: 497, column: 31, scope: !1614)
!1827 = !DILocation(line: 500, column: 15, scope: !1614)
!1828 = !DILocation(line: 502, column: 19, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !149, line: 501, column: 13)
!1830 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 500, column: 15)
!1831 = !DILocation(line: 509, column: 33, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 509, column: 15)
!1833 = !DILocation(line: 0, scope: !1614)
!1834 = !DILocation(line: 514, column: 15, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 513, column: 15)
!1836 = !DILocation(line: 518, column: 15, scope: !1614)
!1837 = !DILocation(line: 526, column: 26, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 526, column: 15)
!1839 = !DILocation(line: 526, column: 15, scope: !1614)
!1840 = !DILocation(line: 526, column: 40, scope: !1838)
!1841 = !DILocation(line: 526, column: 47, scope: !1838)
!1842 = !DILocation(line: 530, column: 17, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 530, column: 15)
!1844 = !DILocation(line: 526, column: 18, scope: !1838)
!1845 = !DILocation(line: 526, column: 65, scope: !1838)
!1846 = !DILocation(line: 530, column: 15, scope: !1614)
!1847 = !DILocation(line: 535, column: 11, scope: !1614)
!1848 = !DILocation(line: 549, column: 15, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 548, column: 15)
!1850 = !DILocation(line: 556, column: 15, scope: !1614)
!1851 = !DILocation(line: 558, column: 19, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !149, line: 557, column: 13)
!1853 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 556, column: 15)
!1854 = !DILocation(line: 561, column: 19, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !149, line: 561, column: 19)
!1856 = !DILocation(line: 561, column: 35, scope: !1855)
!1857 = !DILocation(line: 561, column: 30, scope: !1855)
!1858 = !DILocation(line: 570, column: 15, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !149, line: 570, column: 15)
!1860 = distinct !DILexicalBlock(scope: !1852, file: !149, line: 570, column: 15)
!1861 = !DILocation(line: 570, column: 15, scope: !1860)
!1862 = !DILocation(line: 571, column: 15, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !149, line: 571, column: 15)
!1864 = distinct !DILexicalBlock(scope: !1852, file: !149, line: 571, column: 15)
!1865 = !DILocation(line: 571, column: 15, scope: !1864)
!1866 = !DILocation(line: 572, column: 15, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !149, line: 572, column: 15)
!1868 = distinct !DILexicalBlock(scope: !1852, file: !149, line: 572, column: 15)
!1869 = !DILocation(line: 572, column: 15, scope: !1868)
!1870 = !DILocation(line: 574, column: 13, scope: !1852)
!1871 = !DILocation(line: 614, column: 17, scope: !1613)
!1872 = !DILocation(line: 610, column: 20, scope: !1613)
!1873 = !DILocation(line: 617, column: 29, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1618, file: !149, line: 615, column: 15)
!1875 = !DILocation(line: 617, column: 27, scope: !1874)
!1876 = !DILocation(line: 612, column: 18, scope: !1613)
!1877 = !DILocation(line: 618, column: 15, scope: !1874)
!1878 = !DILocation(line: 621, column: 17, scope: !1617)
!1879 = !DILocation(line: 622, column: 17, scope: !1617)
!1880 = !DILocation(line: 626, column: 29, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1617, file: !149, line: 626, column: 21)
!1882 = !DILocation(line: 626, column: 21, scope: !1617)
!1883 = !DILocation(line: 627, column: 29, scope: !1881)
!1884 = !DILocation(line: 627, column: 19, scope: !1881)
!1885 = !DILocation(line: 0, scope: !1730)
!1886 = !DILocation(line: 629, column: 17, scope: !1617)
!1887 = !DILocation(line: 624, column: 19, scope: !1617)
!1888 = !DILocation(line: 625, column: 27, scope: !1617)
!1889 = !DILocation(line: 631, column: 21, scope: !1635)
!1890 = !DILocation(line: 632, column: 56, scope: !1635)
!1891 = !DILocation(line: 632, column: 50, scope: !1635)
!1892 = !DILocation(line: 633, column: 53, scope: !1635)
!1893 = !DILocation(line: 621, column: 27, scope: !1617)
!1894 = !DILocation(line: 631, column: 29, scope: !1635)
!1895 = !DILocation(line: 632, column: 36, scope: !1635)
!1896 = !DILocation(line: 632, column: 28, scope: !1635)
!1897 = !DILocation(line: 634, column: 25, scope: !1635)
!1898 = !DILocation(line: 644, column: 38, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1642, file: !149, line: 642, column: 23)
!1900 = !DILocation(line: 644, column: 48, scope: !1899)
!1901 = !DILocation(line: 644, column: 51, scope: !1899)
!1902 = !DILocation(line: 644, column: 25, scope: !1899)
!1903 = !DILocation(line: 645, column: 28, scope: !1899)
!1904 = !DILocation(line: 644, column: 34, scope: !1899)
!1905 = distinct !{!1905, !1902, !1903}
!1906 = !DILocation(line: 658, column: 43, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !149, line: 658, column: 29)
!1908 = distinct !DILexicalBlock(scope: !1639, file: !149, line: 658, column: 29)
!1909 = !DILocation(line: 655, column: 29, scope: !1640)
!1910 = !DILocation(line: 657, column: 36, scope: !1639)
!1911 = !DILocation(line: 659, column: 49, scope: !1907)
!1912 = !DILocation(line: 659, column: 39, scope: !1907)
!1913 = !DILocation(line: 659, column: 31, scope: !1907)
!1914 = !DILocation(line: 658, column: 53, scope: !1907)
!1915 = !DILocation(line: 658, column: 29, scope: !1908)
!1916 = distinct !{!1916, !1915, !1917}
!1917 = !DILocation(line: 667, column: 33, scope: !1908)
!1918 = !DILocation(line: 674, column: 19, scope: !1617)
!1919 = !DILocation(line: 670, column: 41, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1641, file: !149, line: 670, column: 29)
!1921 = !DILocation(line: 670, column: 31, scope: !1920)
!1922 = !DILocation(line: 670, column: 29, scope: !1641)
!1923 = !DILocation(line: 672, column: 27, scope: !1641)
!1924 = !DILocation(line: 675, column: 26, scope: !1617)
!1925 = !DILocation(line: 675, column: 24, scope: !1617)
!1926 = !DILocation(line: 674, column: 19, scope: !1635)
!1927 = distinct !{!1927, !1886, !1928}
!1928 = !DILocation(line: 675, column: 44, scope: !1617)
!1929 = !DILocation(line: 676, column: 15, scope: !1618)
!1930 = !DILocation(line: 0, scope: !1881)
!1931 = !DILocation(line: 0, scope: !1617)
!1932 = !DILocation(line: 678, column: 40, scope: !1613)
!1933 = !DILocation(line: 680, column: 19, scope: !1647)
!1934 = !DILocation(line: 680, column: 45, scope: !1647)
!1935 = !DILocation(line: 680, column: 23, scope: !1647)
!1936 = !DILocation(line: 684, column: 33, scope: !1646)
!1937 = !DILocation(line: 684, column: 24, scope: !1646)
!1938 = !DILocation(line: 686, column: 17, scope: !1646)
!1939 = !DILocation(line: 0, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !149, line: 687, column: 19)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !149, line: 686, column: 17)
!1942 = distinct !DILexicalBlock(scope: !1646, file: !149, line: 686, column: 17)
!1943 = !DILocation(line: 0, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !149, line: 703, column: 21)
!1945 = !DILocation(line: 0, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !149, line: 696, column: 23)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !149, line: 695, column: 30)
!1948 = distinct !DILexicalBlock(scope: !1940, file: !149, line: 688, column: 25)
!1949 = !DILocation(line: 688, column: 43, scope: !1948)
!1950 = !DILocation(line: 690, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !149, line: 690, column: 25)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !149, line: 689, column: 23)
!1953 = !DILocation(line: 690, column: 25, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !149, line: 690, column: 25)
!1955 = !DILocation(line: 690, column: 25, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !149, line: 690, column: 25)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !149, line: 690, column: 25)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !149, line: 690, column: 25)
!1959 = !DILocation(line: 690, column: 25, scope: !1957)
!1960 = !DILocation(line: 690, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !149, line: 690, column: 25)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !149, line: 690, column: 25)
!1963 = !DILocation(line: 690, column: 25, scope: !1962)
!1964 = !DILocation(line: 690, column: 25, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !149, line: 690, column: 25)
!1966 = distinct !DILexicalBlock(scope: !1958, file: !149, line: 690, column: 25)
!1967 = !DILocation(line: 690, column: 25, scope: !1966)
!1968 = !DILocation(line: 690, column: 25, scope: !1958)
!1969 = !DILocation(line: 690, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !149, line: 690, column: 25)
!1971 = distinct !DILexicalBlock(scope: !1951, file: !149, line: 690, column: 25)
!1972 = !DILocation(line: 690, column: 25, scope: !1971)
!1973 = !DILocation(line: 691, column: 25, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !149, line: 691, column: 25)
!1975 = distinct !DILexicalBlock(scope: !1952, file: !149, line: 691, column: 25)
!1976 = !DILocation(line: 691, column: 25, scope: !1975)
!1977 = !DILocation(line: 692, column: 25, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !149, line: 692, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1952, file: !149, line: 692, column: 25)
!1980 = !DILocation(line: 692, column: 25, scope: !1979)
!1981 = !DILocation(line: 693, column: 38, scope: !1952)
!1982 = !DILocation(line: 693, column: 33, scope: !1952)
!1983 = !DILocation(line: 694, column: 23, scope: !1952)
!1984 = !DILocation(line: 695, column: 30, scope: !1947)
!1985 = !DILocation(line: 695, column: 30, scope: !1948)
!1986 = !DILocation(line: 697, column: 25, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !149, line: 697, column: 25)
!1988 = distinct !DILexicalBlock(scope: !1946, file: !149, line: 697, column: 25)
!1989 = !DILocation(line: 697, column: 25, scope: !1988)
!1990 = !DILocation(line: 699, column: 23, scope: !1946)
!1991 = !DILocation(line: 0, scope: !1979)
!1992 = !DILocation(line: 0, scope: !1952)
!1993 = !DILocation(line: 0, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1730, file: !149, line: 418, column: 9)
!1995 = !DILocation(line: 0, scope: !1951)
!1996 = !DILocation(line: 700, column: 35, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1940, file: !149, line: 700, column: 25)
!1998 = !DILocation(line: 700, column: 30, scope: !1997)
!1999 = !DILocation(line: 700, column: 25, scope: !1940)
!2000 = !DILocation(line: 702, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !149, line: 702, column: 21)
!2002 = distinct !DILexicalBlock(scope: !1940, file: !149, line: 702, column: 21)
!2003 = !DILocation(line: 702, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !149, line: 702, column: 21)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !149, line: 702, column: 21)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !149, line: 702, column: 21)
!2007 = !DILocation(line: 702, column: 21, scope: !2005)
!2008 = !DILocation(line: 702, column: 21, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !149, line: 702, column: 21)
!2010 = distinct !DILexicalBlock(scope: !2006, file: !149, line: 702, column: 21)
!2011 = !DILocation(line: 702, column: 21, scope: !2010)
!2012 = !DILocation(line: 702, column: 21, scope: !2006)
!2013 = !DILocation(line: 0, scope: !1988)
!2014 = !DILocation(line: 703, column: 21, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1944, file: !149, line: 703, column: 21)
!2016 = !DILocation(line: 703, column: 21, scope: !1944)
!2017 = !DILocation(line: 704, column: 25, scope: !1940)
!2018 = !DILocation(line: 686, column: 17, scope: !1941)
!2019 = distinct !{!2019, !2020, !2021}
!2020 = !DILocation(line: 686, column: 17, scope: !1942)
!2021 = !DILocation(line: 705, column: 19, scope: !1942)
!2022 = !DILocation(line: 0, scope: !1607)
!2023 = !DILocation(line: 416, column: 30, scope: !1730)
!2024 = !DILocation(line: 712, column: 34, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1605, file: !149, line: 712, column: 11)
!2026 = !DILocation(line: 714, column: 14, scope: !2025)
!2027 = !DILocation(line: 715, column: 14, scope: !2025)
!2028 = !DILocation(line: 715, column: 35, scope: !2025)
!2029 = !DILocation(line: 715, column: 17, scope: !2025)
!2030 = !DILocation(line: 715, column: 47, scope: !2025)
!2031 = !DILocation(line: 715, column: 65, scope: !2025)
!2032 = !DILocation(line: 716, column: 15, scope: !2025)
!2033 = !DILocation(line: 716, column: 11, scope: !2025)
!2034 = !DILocation(line: 712, column: 11, scope: !1605)
!2035 = !DILocation(line: 400, column: 10, scope: !1607)
!2036 = !DILocation(line: 0, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !149, line: 519, column: 13)
!2038 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 518, column: 15)
!2039 = !DILocation(line: 720, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1605, file: !149, line: 720, column: 7)
!2041 = !DILocation(line: 720, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2040, file: !149, line: 720, column: 7)
!2043 = !DILocation(line: 720, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !149, line: 720, column: 7)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !149, line: 720, column: 7)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !149, line: 720, column: 7)
!2047 = !DILocation(line: 720, column: 7, scope: !2045)
!2048 = !DILocation(line: 720, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !149, line: 720, column: 7)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !149, line: 720, column: 7)
!2051 = !DILocation(line: 720, column: 7, scope: !2050)
!2052 = !DILocation(line: 720, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !149, line: 720, column: 7)
!2054 = distinct !DILexicalBlock(scope: !2046, file: !149, line: 720, column: 7)
!2055 = !DILocation(line: 720, column: 7, scope: !2054)
!2056 = !DILocation(line: 720, column: 7, scope: !2046)
!2057 = !DILocation(line: 720, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !149, line: 720, column: 7)
!2059 = distinct !DILexicalBlock(scope: !2040, file: !149, line: 720, column: 7)
!2060 = !DILocation(line: 720, column: 7, scope: !2059)
!2061 = !DILocation(line: 723, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !149, line: 723, column: 7)
!2063 = distinct !DILexicalBlock(scope: !1605, file: !149, line: 723, column: 7)
!2064 = !DILocation(line: 424, column: 9, scope: !1605)
!2065 = !DILocation(line: 723, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !149, line: 723, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !149, line: 723, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !149, line: 723, column: 7)
!2069 = !DILocation(line: 723, column: 7, scope: !2067)
!2070 = !DILocation(line: 723, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !149, line: 723, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !149, line: 723, column: 7)
!2073 = !DILocation(line: 723, column: 7, scope: !2072)
!2074 = !DILocation(line: 723, column: 7, scope: !2068)
!2075 = !DILocation(line: 724, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !149, line: 724, column: 7)
!2077 = distinct !DILexicalBlock(scope: !1605, file: !149, line: 724, column: 7)
!2078 = !DILocation(line: 724, column: 7, scope: !2077)
!2079 = !DILocation(line: 726, column: 13, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1605, file: !149, line: 726, column: 11)
!2081 = !DILocation(line: 726, column: 11, scope: !1605)
!2082 = !DILocation(line: 728, column: 5, scope: !1606)
!2083 = !DILocation(line: 400, column: 75, scope: !1606)
!2084 = !DILocation(line: 400, column: 3, scope: !1606)
!2085 = distinct !{!2085, !1724, !2086}
!2086 = !DILocation(line: 728, column: 5, scope: !1607)
!2087 = !DILocation(line: 730, column: 11, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1578, file: !149, line: 730, column: 7)
!2089 = !DILocation(line: 730, column: 16, scope: !2088)
!2090 = !DILocation(line: 738, column: 51, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1578, file: !149, line: 738, column: 7)
!2092 = !DILocation(line: 739, column: 10, scope: !2091)
!2093 = !DILocation(line: 741, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !149, line: 741, column: 11)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !149, line: 740, column: 5)
!2096 = !DILocation(line: 741, column: 11, scope: !2095)
!2097 = !DILocation(line: 742, column: 16, scope: !2094)
!2098 = !DILocation(line: 742, column: 9, scope: !2094)
!2099 = !DILocation(line: 746, column: 18, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2094, file: !149, line: 746, column: 16)
!2101 = !DILocation(line: 746, column: 32, scope: !2100)
!2102 = !DILocation(line: 746, column: 29, scope: !2100)
!2103 = !DILocation(line: 755, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1578, file: !149, line: 755, column: 7)
!2105 = !DILocation(line: 755, column: 20, scope: !2104)
!2106 = !DILocation(line: 756, column: 12, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !149, line: 756, column: 5)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !149, line: 756, column: 5)
!2109 = !DILocation(line: 756, column: 5, scope: !2108)
!2110 = !DILocation(line: 757, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !149, line: 757, column: 7)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !149, line: 757, column: 7)
!2113 = !DILocation(line: 757, column: 7, scope: !2112)
!2114 = !DILocation(line: 756, column: 39, scope: !2107)
!2115 = distinct !{!2115, !2109, !2116}
!2116 = !DILocation(line: 757, column: 7, scope: !2108)
!2117 = !DILocation(line: 759, column: 11, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1578, file: !149, line: 759, column: 7)
!2119 = !DILocation(line: 759, column: 7, scope: !1578)
!2120 = !DILocation(line: 760, column: 5, scope: !2118)
!2121 = !DILocation(line: 760, column: 17, scope: !2118)
!2122 = !DILocation(line: 766, column: 21, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1578, file: !149, line: 766, column: 7)
!2124 = !DILocation(line: 766, column: 54, scope: !2123)
!2125 = !DILocation(line: 766, column: 51, scope: !2123)
!2126 = !DILocation(line: 770, column: 42, scope: !1578)
!2127 = !DILocation(line: 768, column: 10, scope: !1578)
!2128 = !DILocation(line: 768, column: 3, scope: !1578)
!2129 = !DILocation(line: 772, column: 1, scope: !1578)
!2130 = distinct !DISubprogram(name: "gettext_quote", scope: !149, file: !149, line: 207, type: !2131, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!98, !98, !5}
!2133 = !{!2134, !2135, !2136, !2137}
!2134 = !DILocalVariable(name: "msgid", arg: 1, scope: !2130, file: !149, line: 207, type: !98)
!2135 = !DILocalVariable(name: "s", arg: 2, scope: !2130, file: !149, line: 207, type: !5)
!2136 = !DILocalVariable(name: "translation", scope: !2130, file: !149, line: 209, type: !98)
!2137 = !DILocalVariable(name: "locale_code", scope: !2130, file: !149, line: 210, type: !98)
!2138 = !DILocation(line: 207, column: 28, scope: !2130)
!2139 = !DILocation(line: 207, column: 54, scope: !2130)
!2140 = !DILocation(line: 209, column: 29, scope: !2130)
!2141 = !DILocation(line: 209, column: 15, scope: !2130)
!2142 = !DILocation(line: 212, column: 19, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2130, file: !149, line: 212, column: 7)
!2144 = !DILocation(line: 212, column: 7, scope: !2130)
!2145 = !DILocation(line: 233, column: 17, scope: !2130)
!2146 = !DILocation(line: 210, column: 15, scope: !2130)
!2147 = !DILocalVariable(name: "s1", arg: 1, scope: !2148, file: !2149, line: 160, type: !98)
!2148 = distinct !DISubprogram(name: "strcaseeq0", scope: !2149, file: !2149, line: 160, type: !2150, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2152)
!2149 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!70, !98, !98, !69, !69, !69, !69, !69, !69, !69, !69, !69}
!2152 = !{!2147, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162}
!2153 = !DILocalVariable(name: "s2", arg: 2, scope: !2148, file: !2149, line: 160, type: !98)
!2154 = !DILocalVariable(name: "s20", arg: 3, scope: !2148, file: !2149, line: 160, type: !69)
!2155 = !DILocalVariable(name: "s21", arg: 4, scope: !2148, file: !2149, line: 160, type: !69)
!2156 = !DILocalVariable(name: "s22", arg: 5, scope: !2148, file: !2149, line: 160, type: !69)
!2157 = !DILocalVariable(name: "s23", arg: 6, scope: !2148, file: !2149, line: 160, type: !69)
!2158 = !DILocalVariable(name: "s24", arg: 7, scope: !2148, file: !2149, line: 160, type: !69)
!2159 = !DILocalVariable(name: "s25", arg: 8, scope: !2148, file: !2149, line: 160, type: !69)
!2160 = !DILocalVariable(name: "s26", arg: 9, scope: !2148, file: !2149, line: 160, type: !69)
!2161 = !DILocalVariable(name: "s27", arg: 10, scope: !2148, file: !2149, line: 160, type: !69)
!2162 = !DILocalVariable(name: "s28", arg: 11, scope: !2148, file: !2149, line: 160, type: !69)
!2163 = !DILocation(line: 160, column: 25, scope: !2148, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 234, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2130, file: !149, line: 234, column: 7)
!2166 = !DILocation(line: 160, column: 41, scope: !2148, inlinedAt: !2164)
!2167 = !DILocation(line: 160, column: 50, scope: !2148, inlinedAt: !2164)
!2168 = !DILocation(line: 160, column: 60, scope: !2148, inlinedAt: !2164)
!2169 = !DILocation(line: 160, column: 70, scope: !2148, inlinedAt: !2164)
!2170 = !DILocation(line: 160, column: 80, scope: !2148, inlinedAt: !2164)
!2171 = !DILocation(line: 160, column: 90, scope: !2148, inlinedAt: !2164)
!2172 = !DILocation(line: 160, column: 100, scope: !2148, inlinedAt: !2164)
!2173 = !DILocation(line: 160, column: 110, scope: !2148, inlinedAt: !2164)
!2174 = !DILocation(line: 160, column: 120, scope: !2148, inlinedAt: !2164)
!2175 = !DILocation(line: 160, column: 130, scope: !2148, inlinedAt: !2164)
!2176 = !DILocation(line: 162, column: 7, scope: !2177, inlinedAt: !2164)
!2177 = distinct !DILexicalBlock(scope: !2148, file: !2149, line: 162, column: 7)
!2178 = !DILocalVariable(name: "s1", arg: 1, scope: !2179, file: !2149, line: 146, type: !98)
!2179 = distinct !DISubprogram(name: "strcaseeq1", scope: !2149, file: !2149, line: 146, type: !2180, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!70, !98, !98, !69, !69, !69, !69, !69, !69, !69, !69}
!2182 = !{!2178, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2183 = !DILocalVariable(name: "s2", arg: 2, scope: !2179, file: !2149, line: 146, type: !98)
!2184 = !DILocalVariable(name: "s21", arg: 3, scope: !2179, file: !2149, line: 146, type: !69)
!2185 = !DILocalVariable(name: "s22", arg: 4, scope: !2179, file: !2149, line: 146, type: !69)
!2186 = !DILocalVariable(name: "s23", arg: 5, scope: !2179, file: !2149, line: 146, type: !69)
!2187 = !DILocalVariable(name: "s24", arg: 6, scope: !2179, file: !2149, line: 146, type: !69)
!2188 = !DILocalVariable(name: "s25", arg: 7, scope: !2179, file: !2149, line: 146, type: !69)
!2189 = !DILocalVariable(name: "s26", arg: 8, scope: !2179, file: !2149, line: 146, type: !69)
!2190 = !DILocalVariable(name: "s27", arg: 9, scope: !2179, file: !2149, line: 146, type: !69)
!2191 = !DILocalVariable(name: "s28", arg: 10, scope: !2179, file: !2149, line: 146, type: !69)
!2192 = !DILocation(line: 146, column: 25, scope: !2179, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 167, column: 16, scope: !2194, inlinedAt: !2164)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !2149, line: 164, column: 11)
!2195 = distinct !DILexicalBlock(scope: !2177, file: !2149, line: 163, column: 5)
!2196 = !DILocation(line: 146, column: 41, scope: !2179, inlinedAt: !2193)
!2197 = !DILocation(line: 146, column: 50, scope: !2179, inlinedAt: !2193)
!2198 = !DILocation(line: 146, column: 60, scope: !2179, inlinedAt: !2193)
!2199 = !DILocation(line: 146, column: 70, scope: !2179, inlinedAt: !2193)
!2200 = !DILocation(line: 146, column: 80, scope: !2179, inlinedAt: !2193)
!2201 = !DILocation(line: 146, column: 90, scope: !2179, inlinedAt: !2193)
!2202 = !DILocation(line: 146, column: 100, scope: !2179, inlinedAt: !2193)
!2203 = !DILocation(line: 146, column: 110, scope: !2179, inlinedAt: !2193)
!2204 = !DILocation(line: 146, column: 120, scope: !2179, inlinedAt: !2193)
!2205 = !DILocation(line: 148, column: 7, scope: !2206, inlinedAt: !2193)
!2206 = distinct !DILexicalBlock(scope: !2179, file: !2149, line: 148, column: 7)
!2207 = !DILocalVariable(name: "s1", arg: 1, scope: !2208, file: !2149, line: 132, type: !98)
!2208 = distinct !DISubprogram(name: "strcaseeq2", scope: !2149, file: !2149, line: 132, type: !2209, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!70, !98, !98, !69, !69, !69, !69, !69, !69, !69}
!2211 = !{!2207, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2212 = !DILocalVariable(name: "s2", arg: 2, scope: !2208, file: !2149, line: 132, type: !98)
!2213 = !DILocalVariable(name: "s22", arg: 3, scope: !2208, file: !2149, line: 132, type: !69)
!2214 = !DILocalVariable(name: "s23", arg: 4, scope: !2208, file: !2149, line: 132, type: !69)
!2215 = !DILocalVariable(name: "s24", arg: 5, scope: !2208, file: !2149, line: 132, type: !69)
!2216 = !DILocalVariable(name: "s25", arg: 6, scope: !2208, file: !2149, line: 132, type: !69)
!2217 = !DILocalVariable(name: "s26", arg: 7, scope: !2208, file: !2149, line: 132, type: !69)
!2218 = !DILocalVariable(name: "s27", arg: 8, scope: !2208, file: !2149, line: 132, type: !69)
!2219 = !DILocalVariable(name: "s28", arg: 9, scope: !2208, file: !2149, line: 132, type: !69)
!2220 = !DILocation(line: 132, column: 25, scope: !2208, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 153, column: 16, scope: !2222, inlinedAt: !2193)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !2149, line: 150, column: 11)
!2223 = distinct !DILexicalBlock(scope: !2206, file: !2149, line: 149, column: 5)
!2224 = !DILocation(line: 132, column: 41, scope: !2208, inlinedAt: !2221)
!2225 = !DILocation(line: 132, column: 50, scope: !2208, inlinedAt: !2221)
!2226 = !DILocation(line: 132, column: 60, scope: !2208, inlinedAt: !2221)
!2227 = !DILocation(line: 132, column: 70, scope: !2208, inlinedAt: !2221)
!2228 = !DILocation(line: 132, column: 80, scope: !2208, inlinedAt: !2221)
!2229 = !DILocation(line: 132, column: 90, scope: !2208, inlinedAt: !2221)
!2230 = !DILocation(line: 132, column: 100, scope: !2208, inlinedAt: !2221)
!2231 = !DILocation(line: 132, column: 110, scope: !2208, inlinedAt: !2221)
!2232 = !DILocation(line: 134, column: 7, scope: !2233, inlinedAt: !2221)
!2233 = distinct !DILexicalBlock(scope: !2208, file: !2149, line: 134, column: 7)
!2234 = !DILocalVariable(name: "s1", arg: 1, scope: !2235, file: !2149, line: 118, type: !98)
!2235 = distinct !DISubprogram(name: "strcaseeq3", scope: !2149, file: !2149, line: 118, type: !2236, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!70, !98, !98, !69, !69, !69, !69, !69, !69}
!2238 = !{!2234, !2239, !2240, !2241, !2242, !2243, !2244, !2245}
!2239 = !DILocalVariable(name: "s2", arg: 2, scope: !2235, file: !2149, line: 118, type: !98)
!2240 = !DILocalVariable(name: "s23", arg: 3, scope: !2235, file: !2149, line: 118, type: !69)
!2241 = !DILocalVariable(name: "s24", arg: 4, scope: !2235, file: !2149, line: 118, type: !69)
!2242 = !DILocalVariable(name: "s25", arg: 5, scope: !2235, file: !2149, line: 118, type: !69)
!2243 = !DILocalVariable(name: "s26", arg: 6, scope: !2235, file: !2149, line: 118, type: !69)
!2244 = !DILocalVariable(name: "s27", arg: 7, scope: !2235, file: !2149, line: 118, type: !69)
!2245 = !DILocalVariable(name: "s28", arg: 8, scope: !2235, file: !2149, line: 118, type: !69)
!2246 = !DILocation(line: 118, column: 25, scope: !2235, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 139, column: 16, scope: !2248, inlinedAt: !2221)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !2149, line: 136, column: 11)
!2249 = distinct !DILexicalBlock(scope: !2233, file: !2149, line: 135, column: 5)
!2250 = !DILocation(line: 118, column: 41, scope: !2235, inlinedAt: !2247)
!2251 = !DILocation(line: 118, column: 50, scope: !2235, inlinedAt: !2247)
!2252 = !DILocation(line: 118, column: 60, scope: !2235, inlinedAt: !2247)
!2253 = !DILocation(line: 118, column: 70, scope: !2235, inlinedAt: !2247)
!2254 = !DILocation(line: 118, column: 80, scope: !2235, inlinedAt: !2247)
!2255 = !DILocation(line: 118, column: 90, scope: !2235, inlinedAt: !2247)
!2256 = !DILocation(line: 118, column: 100, scope: !2235, inlinedAt: !2247)
!2257 = !DILocation(line: 120, column: 7, scope: !2258, inlinedAt: !2247)
!2258 = distinct !DILexicalBlock(scope: !2235, file: !2149, line: 120, column: 7)
!2259 = !DILocation(line: 120, column: 7, scope: !2235, inlinedAt: !2247)
!2260 = !DILocalVariable(name: "s1", arg: 1, scope: !2261, file: !2149, line: 104, type: !98)
!2261 = distinct !DISubprogram(name: "strcaseeq4", scope: !2149, file: !2149, line: 104, type: !2262, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!70, !98, !98, !69, !69, !69, !69, !69}
!2264 = !{!2260, !2265, !2266, !2267, !2268, !2269, !2270}
!2265 = !DILocalVariable(name: "s2", arg: 2, scope: !2261, file: !2149, line: 104, type: !98)
!2266 = !DILocalVariable(name: "s24", arg: 3, scope: !2261, file: !2149, line: 104, type: !69)
!2267 = !DILocalVariable(name: "s25", arg: 4, scope: !2261, file: !2149, line: 104, type: !69)
!2268 = !DILocalVariable(name: "s26", arg: 5, scope: !2261, file: !2149, line: 104, type: !69)
!2269 = !DILocalVariable(name: "s27", arg: 6, scope: !2261, file: !2149, line: 104, type: !69)
!2270 = !DILocalVariable(name: "s28", arg: 7, scope: !2261, file: !2149, line: 104, type: !69)
!2271 = !DILocation(line: 104, column: 25, scope: !2261, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 125, column: 16, scope: !2273, inlinedAt: !2247)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !2149, line: 122, column: 11)
!2274 = distinct !DILexicalBlock(scope: !2258, file: !2149, line: 121, column: 5)
!2275 = !DILocation(line: 104, column: 41, scope: !2261, inlinedAt: !2272)
!2276 = !DILocation(line: 104, column: 50, scope: !2261, inlinedAt: !2272)
!2277 = !DILocation(line: 104, column: 60, scope: !2261, inlinedAt: !2272)
!2278 = !DILocation(line: 104, column: 70, scope: !2261, inlinedAt: !2272)
!2279 = !DILocation(line: 104, column: 80, scope: !2261, inlinedAt: !2272)
!2280 = !DILocation(line: 104, column: 90, scope: !2261, inlinedAt: !2272)
!2281 = !DILocation(line: 106, column: 7, scope: !2282, inlinedAt: !2272)
!2282 = distinct !DILexicalBlock(scope: !2261, file: !2149, line: 106, column: 7)
!2283 = !DILocation(line: 106, column: 7, scope: !2261, inlinedAt: !2272)
!2284 = !DILocalVariable(name: "s1", arg: 1, scope: !2285, file: !2149, line: 90, type: !98)
!2285 = distinct !DISubprogram(name: "strcaseeq5", scope: !2149, file: !2149, line: 90, type: !2286, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!70, !98, !98, !69, !69, !69, !69}
!2288 = !{!2284, !2289, !2290, !2291, !2292, !2293}
!2289 = !DILocalVariable(name: "s2", arg: 2, scope: !2285, file: !2149, line: 90, type: !98)
!2290 = !DILocalVariable(name: "s25", arg: 3, scope: !2285, file: !2149, line: 90, type: !69)
!2291 = !DILocalVariable(name: "s26", arg: 4, scope: !2285, file: !2149, line: 90, type: !69)
!2292 = !DILocalVariable(name: "s27", arg: 5, scope: !2285, file: !2149, line: 90, type: !69)
!2293 = !DILocalVariable(name: "s28", arg: 6, scope: !2285, file: !2149, line: 90, type: !69)
!2294 = !DILocation(line: 90, column: 25, scope: !2285, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 111, column: 16, scope: !2296, inlinedAt: !2272)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !2149, line: 108, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2282, file: !2149, line: 107, column: 5)
!2298 = !DILocation(line: 90, column: 41, scope: !2285, inlinedAt: !2295)
!2299 = !DILocation(line: 90, column: 50, scope: !2285, inlinedAt: !2295)
!2300 = !DILocation(line: 90, column: 60, scope: !2285, inlinedAt: !2295)
!2301 = !DILocation(line: 90, column: 70, scope: !2285, inlinedAt: !2295)
!2302 = !DILocation(line: 90, column: 80, scope: !2285, inlinedAt: !2295)
!2303 = !DILocation(line: 92, column: 7, scope: !2304, inlinedAt: !2295)
!2304 = distinct !DILexicalBlock(scope: !2285, file: !2149, line: 92, column: 7)
!2305 = !DILocation(line: 92, column: 7, scope: !2285, inlinedAt: !2295)
!2306 = !DILocation(line: 235, column: 12, scope: !2165)
!2307 = !DILocation(line: 235, column: 21, scope: !2165)
!2308 = !DILocation(line: 235, column: 5, scope: !2165)
!2309 = !DILocation(line: 146, column: 25, scope: !2179, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 167, column: 16, scope: !2194, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 236, column: 7, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2130, file: !149, line: 236, column: 7)
!2313 = !DILocation(line: 146, column: 41, scope: !2179, inlinedAt: !2310)
!2314 = !DILocation(line: 146, column: 50, scope: !2179, inlinedAt: !2310)
!2315 = !DILocation(line: 146, column: 60, scope: !2179, inlinedAt: !2310)
!2316 = !DILocation(line: 146, column: 70, scope: !2179, inlinedAt: !2310)
!2317 = !DILocation(line: 146, column: 80, scope: !2179, inlinedAt: !2310)
!2318 = !DILocation(line: 146, column: 90, scope: !2179, inlinedAt: !2310)
!2319 = !DILocation(line: 146, column: 100, scope: !2179, inlinedAt: !2310)
!2320 = !DILocation(line: 146, column: 110, scope: !2179, inlinedAt: !2310)
!2321 = !DILocation(line: 146, column: 120, scope: !2179, inlinedAt: !2310)
!2322 = !DILocation(line: 148, column: 7, scope: !2206, inlinedAt: !2310)
!2323 = !DILocation(line: 132, column: 25, scope: !2208, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 153, column: 16, scope: !2222, inlinedAt: !2310)
!2325 = !DILocation(line: 132, column: 41, scope: !2208, inlinedAt: !2324)
!2326 = !DILocation(line: 132, column: 50, scope: !2208, inlinedAt: !2324)
!2327 = !DILocation(line: 132, column: 60, scope: !2208, inlinedAt: !2324)
!2328 = !DILocation(line: 132, column: 70, scope: !2208, inlinedAt: !2324)
!2329 = !DILocation(line: 132, column: 80, scope: !2208, inlinedAt: !2324)
!2330 = !DILocation(line: 132, column: 90, scope: !2208, inlinedAt: !2324)
!2331 = !DILocation(line: 132, column: 100, scope: !2208, inlinedAt: !2324)
!2332 = !DILocation(line: 132, column: 110, scope: !2208, inlinedAt: !2324)
!2333 = !DILocation(line: 134, column: 7, scope: !2233, inlinedAt: !2324)
!2334 = !DILocation(line: 134, column: 7, scope: !2208, inlinedAt: !2324)
!2335 = !DILocation(line: 118, column: 25, scope: !2235, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 139, column: 16, scope: !2248, inlinedAt: !2324)
!2337 = !DILocation(line: 118, column: 41, scope: !2235, inlinedAt: !2336)
!2338 = !DILocation(line: 118, column: 50, scope: !2235, inlinedAt: !2336)
!2339 = !DILocation(line: 118, column: 60, scope: !2235, inlinedAt: !2336)
!2340 = !DILocation(line: 118, column: 70, scope: !2235, inlinedAt: !2336)
!2341 = !DILocation(line: 118, column: 80, scope: !2235, inlinedAt: !2336)
!2342 = !DILocation(line: 118, column: 90, scope: !2235, inlinedAt: !2336)
!2343 = !DILocation(line: 118, column: 100, scope: !2235, inlinedAt: !2336)
!2344 = !DILocation(line: 120, column: 7, scope: !2258, inlinedAt: !2336)
!2345 = !DILocation(line: 120, column: 7, scope: !2235, inlinedAt: !2336)
!2346 = !DILocation(line: 104, column: 25, scope: !2261, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 125, column: 16, scope: !2273, inlinedAt: !2336)
!2348 = !DILocation(line: 104, column: 41, scope: !2261, inlinedAt: !2347)
!2349 = !DILocation(line: 104, column: 50, scope: !2261, inlinedAt: !2347)
!2350 = !DILocation(line: 104, column: 60, scope: !2261, inlinedAt: !2347)
!2351 = !DILocation(line: 104, column: 70, scope: !2261, inlinedAt: !2347)
!2352 = !DILocation(line: 104, column: 80, scope: !2261, inlinedAt: !2347)
!2353 = !DILocation(line: 104, column: 90, scope: !2261, inlinedAt: !2347)
!2354 = !DILocation(line: 106, column: 7, scope: !2282, inlinedAt: !2347)
!2355 = !DILocation(line: 106, column: 7, scope: !2261, inlinedAt: !2347)
!2356 = !DILocation(line: 90, column: 25, scope: !2285, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 111, column: 16, scope: !2296, inlinedAt: !2347)
!2358 = !DILocation(line: 90, column: 41, scope: !2285, inlinedAt: !2357)
!2359 = !DILocation(line: 90, column: 50, scope: !2285, inlinedAt: !2357)
!2360 = !DILocation(line: 90, column: 60, scope: !2285, inlinedAt: !2357)
!2361 = !DILocation(line: 90, column: 70, scope: !2285, inlinedAt: !2357)
!2362 = !DILocation(line: 90, column: 80, scope: !2285, inlinedAt: !2357)
!2363 = !DILocation(line: 92, column: 7, scope: !2304, inlinedAt: !2357)
!2364 = !DILocation(line: 92, column: 7, scope: !2285, inlinedAt: !2357)
!2365 = !DILocalVariable(name: "s1", arg: 1, scope: !2366, file: !2149, line: 76, type: !98)
!2366 = distinct !DISubprogram(name: "strcaseeq6", scope: !2149, file: !2149, line: 76, type: !2367, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!70, !98, !98, !69, !69, !69}
!2369 = !{!2365, !2370, !2371, !2372, !2373}
!2370 = !DILocalVariable(name: "s2", arg: 2, scope: !2366, file: !2149, line: 76, type: !98)
!2371 = !DILocalVariable(name: "s26", arg: 3, scope: !2366, file: !2149, line: 76, type: !69)
!2372 = !DILocalVariable(name: "s27", arg: 4, scope: !2366, file: !2149, line: 76, type: !69)
!2373 = !DILocalVariable(name: "s28", arg: 5, scope: !2366, file: !2149, line: 76, type: !69)
!2374 = !DILocation(line: 76, column: 25, scope: !2366, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 97, column: 16, scope: !2376, inlinedAt: !2357)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !2149, line: 94, column: 11)
!2377 = distinct !DILexicalBlock(scope: !2304, file: !2149, line: 93, column: 5)
!2378 = !DILocation(line: 76, column: 41, scope: !2366, inlinedAt: !2375)
!2379 = !DILocation(line: 76, column: 50, scope: !2366, inlinedAt: !2375)
!2380 = !DILocation(line: 76, column: 60, scope: !2366, inlinedAt: !2375)
!2381 = !DILocation(line: 76, column: 70, scope: !2366, inlinedAt: !2375)
!2382 = !DILocation(line: 78, column: 7, scope: !2383, inlinedAt: !2375)
!2383 = distinct !DILexicalBlock(scope: !2366, file: !2149, line: 78, column: 7)
!2384 = !DILocation(line: 78, column: 7, scope: !2366, inlinedAt: !2375)
!2385 = !DILocalVariable(name: "s1", arg: 1, scope: !2386, file: !2149, line: 62, type: !98)
!2386 = distinct !DISubprogram(name: "strcaseeq7", scope: !2149, file: !2149, line: 62, type: !2387, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!70, !98, !98, !69, !69}
!2389 = !{!2385, !2390, !2391, !2392}
!2390 = !DILocalVariable(name: "s2", arg: 2, scope: !2386, file: !2149, line: 62, type: !98)
!2391 = !DILocalVariable(name: "s27", arg: 3, scope: !2386, file: !2149, line: 62, type: !69)
!2392 = !DILocalVariable(name: "s28", arg: 4, scope: !2386, file: !2149, line: 62, type: !69)
!2393 = !DILocation(line: 62, column: 25, scope: !2386, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 83, column: 16, scope: !2395, inlinedAt: !2375)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !2149, line: 80, column: 11)
!2396 = distinct !DILexicalBlock(scope: !2383, file: !2149, line: 79, column: 5)
!2397 = !DILocation(line: 62, column: 41, scope: !2386, inlinedAt: !2394)
!2398 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2394)
!2399 = !DILocation(line: 62, column: 60, scope: !2386, inlinedAt: !2394)
!2400 = !DILocation(line: 64, column: 7, scope: !2401, inlinedAt: !2394)
!2401 = distinct !DILexicalBlock(scope: !2386, file: !2149, line: 64, column: 7)
!2402 = !DILocation(line: 236, column: 7, scope: !2130)
!2403 = !DILocation(line: 237, column: 12, scope: !2312)
!2404 = !DILocation(line: 237, column: 21, scope: !2312)
!2405 = !DILocation(line: 237, column: 5, scope: !2312)
!2406 = !DILocation(line: 239, column: 13, scope: !2130)
!2407 = !DILocation(line: 239, column: 11, scope: !2130)
!2408 = !DILocation(line: 239, column: 3, scope: !2130)
!2409 = !DILocation(line: 0, scope: !2130)
!2410 = !DILocation(line: 240, column: 1, scope: !2130)
!2411 = distinct !DISubprogram(name: "quotearg_alloc", scope: !149, file: !149, line: 799, type: !2412, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!68, !98, !57, !1450}
!2414 = !{!2415, !2416, !2417}
!2415 = !DILocalVariable(name: "arg", arg: 1, scope: !2411, file: !149, line: 799, type: !98)
!2416 = !DILocalVariable(name: "argsize", arg: 2, scope: !2411, file: !149, line: 799, type: !57)
!2417 = !DILocalVariable(name: "o", arg: 3, scope: !2411, file: !149, line: 800, type: !1450)
!2418 = !DILocation(line: 799, column: 29, scope: !2411)
!2419 = !DILocation(line: 799, column: 41, scope: !2411)
!2420 = !DILocation(line: 800, column: 47, scope: !2411)
!2421 = !DILocalVariable(name: "arg", arg: 1, scope: !2422, file: !149, line: 812, type: !98)
!2422 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !149, file: !149, line: 812, type: !2423, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!68, !98, !57, !56, !1450}
!2425 = !{!2421, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2426 = !DILocalVariable(name: "argsize", arg: 2, scope: !2422, file: !149, line: 812, type: !57)
!2427 = !DILocalVariable(name: "size", arg: 3, scope: !2422, file: !149, line: 812, type: !56)
!2428 = !DILocalVariable(name: "o", arg: 4, scope: !2422, file: !149, line: 813, type: !1450)
!2429 = !DILocalVariable(name: "p", scope: !2422, file: !149, line: 815, type: !1450)
!2430 = !DILocalVariable(name: "e", scope: !2422, file: !149, line: 816, type: !70)
!2431 = !DILocalVariable(name: "flags", scope: !2422, file: !149, line: 818, type: !70)
!2432 = !DILocalVariable(name: "bufsize", scope: !2422, file: !149, line: 819, type: !57)
!2433 = !DILocalVariable(name: "buf", scope: !2422, file: !149, line: 823, type: !68)
!2434 = !DILocation(line: 812, column: 33, scope: !2422, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 802, column: 10, scope: !2411)
!2436 = !DILocation(line: 812, column: 45, scope: !2422, inlinedAt: !2435)
!2437 = !DILocation(line: 812, column: 62, scope: !2422, inlinedAt: !2435)
!2438 = !DILocation(line: 813, column: 51, scope: !2422, inlinedAt: !2435)
!2439 = !DILocation(line: 815, column: 37, scope: !2422, inlinedAt: !2435)
!2440 = !DILocation(line: 815, column: 33, scope: !2422, inlinedAt: !2435)
!2441 = !DILocation(line: 816, column: 11, scope: !2422, inlinedAt: !2435)
!2442 = !DILocation(line: 816, column: 7, scope: !2422, inlinedAt: !2435)
!2443 = !DILocation(line: 818, column: 18, scope: !2422, inlinedAt: !2435)
!2444 = !DILocation(line: 818, column: 24, scope: !2422, inlinedAt: !2435)
!2445 = !DILocation(line: 818, column: 7, scope: !2422, inlinedAt: !2435)
!2446 = !DILocation(line: 819, column: 69, scope: !2422, inlinedAt: !2435)
!2447 = !DILocation(line: 820, column: 53, scope: !2422, inlinedAt: !2435)
!2448 = !DILocation(line: 821, column: 49, scope: !2422, inlinedAt: !2435)
!2449 = !DILocation(line: 822, column: 49, scope: !2422, inlinedAt: !2435)
!2450 = !DILocation(line: 819, column: 20, scope: !2422, inlinedAt: !2435)
!2451 = !DILocation(line: 822, column: 62, scope: !2422, inlinedAt: !2435)
!2452 = !DILocation(line: 819, column: 10, scope: !2422, inlinedAt: !2435)
!2453 = !DILocalVariable(name: "n", arg: 1, scope: !2454, file: !51, line: 216, type: !57)
!2454 = distinct !DISubprogram(name: "xcharalloc", scope: !51, file: !51, line: 216, type: !2455, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!68, !57}
!2457 = !{!2453}
!2458 = !DILocation(line: 216, column: 20, scope: !2454, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 823, column: 15, scope: !2422, inlinedAt: !2435)
!2460 = !DILocation(line: 218, column: 10, scope: !2454, inlinedAt: !2459)
!2461 = !DILocation(line: 823, column: 9, scope: !2422, inlinedAt: !2435)
!2462 = !DILocation(line: 824, column: 60, scope: !2422, inlinedAt: !2435)
!2463 = !DILocation(line: 826, column: 32, scope: !2422, inlinedAt: !2435)
!2464 = !DILocation(line: 826, column: 47, scope: !2422, inlinedAt: !2435)
!2465 = !DILocation(line: 824, column: 3, scope: !2422, inlinedAt: !2435)
!2466 = !DILocation(line: 827, column: 9, scope: !2422, inlinedAt: !2435)
!2467 = !DILocation(line: 802, column: 3, scope: !2411)
!2468 = !DILocation(line: 812, column: 33, scope: !2422)
!2469 = !DILocation(line: 812, column: 45, scope: !2422)
!2470 = !DILocation(line: 812, column: 62, scope: !2422)
!2471 = !DILocation(line: 813, column: 51, scope: !2422)
!2472 = !DILocation(line: 815, column: 37, scope: !2422)
!2473 = !DILocation(line: 815, column: 33, scope: !2422)
!2474 = !DILocation(line: 816, column: 11, scope: !2422)
!2475 = !DILocation(line: 816, column: 7, scope: !2422)
!2476 = !DILocation(line: 818, column: 18, scope: !2422)
!2477 = !DILocation(line: 818, column: 27, scope: !2422)
!2478 = !DILocation(line: 818, column: 24, scope: !2422)
!2479 = !DILocation(line: 818, column: 7, scope: !2422)
!2480 = !DILocation(line: 819, column: 69, scope: !2422)
!2481 = !DILocation(line: 820, column: 53, scope: !2422)
!2482 = !DILocation(line: 821, column: 49, scope: !2422)
!2483 = !DILocation(line: 822, column: 49, scope: !2422)
!2484 = !DILocation(line: 819, column: 20, scope: !2422)
!2485 = !DILocation(line: 822, column: 62, scope: !2422)
!2486 = !DILocation(line: 819, column: 10, scope: !2422)
!2487 = !DILocation(line: 216, column: 20, scope: !2454, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 823, column: 15, scope: !2422)
!2489 = !DILocation(line: 218, column: 10, scope: !2454, inlinedAt: !2488)
!2490 = !DILocation(line: 823, column: 9, scope: !2422)
!2491 = !DILocation(line: 824, column: 60, scope: !2422)
!2492 = !DILocation(line: 826, column: 32, scope: !2422)
!2493 = !DILocation(line: 826, column: 47, scope: !2422)
!2494 = !DILocation(line: 824, column: 3, scope: !2422)
!2495 = !DILocation(line: 827, column: 9, scope: !2422)
!2496 = !DILocation(line: 828, column: 7, scope: !2422)
!2497 = !DILocation(line: 829, column: 11, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2422, file: !149, line: 828, column: 7)
!2499 = !DILocation(line: 829, column: 5, scope: !2498)
!2500 = !DILocation(line: 830, column: 3, scope: !2422)
!2501 = distinct !DISubprogram(name: "quotearg_free", scope: !149, file: !149, line: 848, type: !1357, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2502)
!2502 = !{!2503, !2504}
!2503 = !DILocalVariable(name: "sv", scope: !2501, file: !149, line: 850, type: !175)
!2504 = !DILocalVariable(name: "i", scope: !2501, file: !149, line: 851, type: !70)
!2505 = !DILocation(line: 850, column: 24, scope: !2501)
!2506 = !DILocation(line: 850, column: 19, scope: !2501)
!2507 = !DILocation(line: 851, column: 7, scope: !2501)
!2508 = !DILocation(line: 852, column: 19, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !149, line: 852, column: 3)
!2510 = distinct !DILexicalBlock(scope: !2501, file: !149, line: 852, column: 3)
!2511 = !DILocation(line: 852, column: 17, scope: !2509)
!2512 = !DILocation(line: 852, column: 3, scope: !2510)
!2513 = !DILocation(line: 853, column: 17, scope: !2509)
!2514 = !{!2515, !781, i64 8}
!2515 = !{!"slotvec", !906, i64 0, !781, i64 8}
!2516 = !DILocation(line: 853, column: 5, scope: !2509)
!2517 = !DILocation(line: 852, column: 28, scope: !2509)
!2518 = distinct !{!2518, !2512, !2519}
!2519 = !DILocation(line: 853, column: 20, scope: !2510)
!2520 = !DILocation(line: 854, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2501, file: !149, line: 854, column: 7)
!2522 = !DILocation(line: 854, column: 17, scope: !2521)
!2523 = !DILocation(line: 854, column: 7, scope: !2501)
!2524 = !DILocation(line: 856, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !149, line: 855, column: 5)
!2526 = !DILocation(line: 857, column: 21, scope: !2525)
!2527 = !{!2515, !906, i64 0}
!2528 = !DILocation(line: 858, column: 20, scope: !2525)
!2529 = !DILocation(line: 859, column: 5, scope: !2525)
!2530 = !DILocation(line: 860, column: 10, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2501, file: !149, line: 860, column: 7)
!2532 = !DILocation(line: 860, column: 7, scope: !2501)
!2533 = !DILocation(line: 862, column: 13, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !149, line: 861, column: 5)
!2535 = !DILocation(line: 862, column: 7, scope: !2534)
!2536 = !DILocation(line: 863, column: 15, scope: !2534)
!2537 = !DILocation(line: 864, column: 5, scope: !2534)
!2538 = !DILocation(line: 865, column: 10, scope: !2501)
!2539 = !DILocation(line: 866, column: 1, scope: !2501)
!2540 = distinct !DISubprogram(name: "quotearg_n", scope: !149, file: !149, line: 931, type: !2541, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!68, !70, !98}
!2543 = !{!2544, !2545}
!2544 = !DILocalVariable(name: "n", arg: 1, scope: !2540, file: !149, line: 931, type: !70)
!2545 = !DILocalVariable(name: "arg", arg: 2, scope: !2540, file: !149, line: 931, type: !98)
!2546 = !DILocation(line: 931, column: 17, scope: !2540)
!2547 = !DILocation(line: 931, column: 32, scope: !2540)
!2548 = !DILocation(line: 933, column: 10, scope: !2540)
!2549 = !DILocation(line: 933, column: 3, scope: !2540)
!2550 = distinct !DISubprogram(name: "quotearg_n_options", scope: !149, file: !149, line: 877, type: !2551, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!68, !70, !98, !57, !1450}
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2563, !2564, !2566, !2567, !2568}
!2554 = !DILocalVariable(name: "n", arg: 1, scope: !2550, file: !149, line: 877, type: !70)
!2555 = !DILocalVariable(name: "arg", arg: 2, scope: !2550, file: !149, line: 877, type: !98)
!2556 = !DILocalVariable(name: "argsize", arg: 3, scope: !2550, file: !149, line: 877, type: !57)
!2557 = !DILocalVariable(name: "options", arg: 4, scope: !2550, file: !149, line: 878, type: !1450)
!2558 = !DILocalVariable(name: "e", scope: !2550, file: !149, line: 880, type: !70)
!2559 = !DILocalVariable(name: "sv", scope: !2550, file: !149, line: 882, type: !175)
!2560 = !DILocalVariable(name: "preallocated", scope: !2561, file: !149, line: 889, type: !120)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !149, line: 888, column: 5)
!2562 = distinct !DILexicalBlock(scope: !2550, file: !149, line: 887, column: 7)
!2563 = !DILocalVariable(name: "nmax", scope: !2561, file: !149, line: 890, type: !70)
!2564 = !DILocalVariable(name: "size", scope: !2565, file: !149, line: 903, type: !57)
!2565 = distinct !DILexicalBlock(scope: !2550, file: !149, line: 902, column: 3)
!2566 = !DILocalVariable(name: "val", scope: !2565, file: !149, line: 904, type: !68)
!2567 = !DILocalVariable(name: "flags", scope: !2565, file: !149, line: 906, type: !70)
!2568 = !DILocalVariable(name: "qsize", scope: !2565, file: !149, line: 907, type: !57)
!2569 = !DILocation(line: 877, column: 25, scope: !2550)
!2570 = !DILocation(line: 877, column: 40, scope: !2550)
!2571 = !DILocation(line: 877, column: 52, scope: !2550)
!2572 = !DILocation(line: 878, column: 51, scope: !2550)
!2573 = !DILocation(line: 880, column: 11, scope: !2550)
!2574 = !DILocation(line: 880, column: 7, scope: !2550)
!2575 = !DILocation(line: 882, column: 24, scope: !2550)
!2576 = !DILocation(line: 882, column: 19, scope: !2550)
!2577 = !DILocation(line: 884, column: 9, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2550, file: !149, line: 884, column: 7)
!2579 = !DILocation(line: 884, column: 7, scope: !2550)
!2580 = !DILocation(line: 885, column: 5, scope: !2578)
!2581 = !DILocation(line: 887, column: 7, scope: !2562)
!2582 = !DILocation(line: 887, column: 14, scope: !2562)
!2583 = !DILocation(line: 887, column: 7, scope: !2550)
!2584 = !DILocation(line: 889, column: 31, scope: !2561)
!2585 = !DILocation(line: 890, column: 11, scope: !2561)
!2586 = !DILocation(line: 892, column: 16, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2561, file: !149, line: 892, column: 11)
!2588 = !DILocation(line: 892, column: 11, scope: !2561)
!2589 = !DILocation(line: 893, column: 9, scope: !2587)
!2590 = !DILocation(line: 895, column: 32, scope: !2561)
!2591 = !DILocation(line: 895, column: 61, scope: !2561)
!2592 = !DILocation(line: 895, column: 58, scope: !2561)
!2593 = !DILocation(line: 895, column: 66, scope: !2561)
!2594 = !DILocation(line: 895, column: 22, scope: !2561)
!2595 = !DILocation(line: 895, column: 15, scope: !2561)
!2596 = !DILocation(line: 896, column: 11, scope: !2561)
!2597 = !DILocation(line: 897, column: 15, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2561, file: !149, line: 896, column: 11)
!2599 = !{i64 0, i64 8, !905, i64 8, i64 8, !780}
!2600 = !DILocation(line: 897, column: 9, scope: !2598)
!2601 = !DILocation(line: 898, column: 20, scope: !2561)
!2602 = !DILocation(line: 898, column: 18, scope: !2561)
!2603 = !DILocation(line: 898, column: 7, scope: !2561)
!2604 = !DILocation(line: 898, column: 38, scope: !2561)
!2605 = !DILocation(line: 898, column: 31, scope: !2561)
!2606 = !DILocation(line: 898, column: 48, scope: !2561)
!2607 = !DILocation(line: 899, column: 14, scope: !2561)
!2608 = !DILocation(line: 900, column: 5, scope: !2561)
!2609 = !DILocation(line: 0, scope: !2550)
!2610 = !DILocation(line: 903, column: 19, scope: !2565)
!2611 = !DILocation(line: 903, column: 25, scope: !2565)
!2612 = !DILocation(line: 903, column: 12, scope: !2565)
!2613 = !DILocation(line: 904, column: 23, scope: !2565)
!2614 = !DILocation(line: 904, column: 11, scope: !2565)
!2615 = !DILocation(line: 906, column: 26, scope: !2565)
!2616 = !DILocation(line: 906, column: 32, scope: !2565)
!2617 = !DILocation(line: 906, column: 9, scope: !2565)
!2618 = !DILocation(line: 908, column: 55, scope: !2565)
!2619 = !DILocation(line: 909, column: 46, scope: !2565)
!2620 = !DILocation(line: 910, column: 55, scope: !2565)
!2621 = !DILocation(line: 911, column: 55, scope: !2565)
!2622 = !DILocation(line: 907, column: 20, scope: !2565)
!2623 = !DILocation(line: 907, column: 12, scope: !2565)
!2624 = !DILocation(line: 913, column: 14, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2565, file: !149, line: 913, column: 9)
!2626 = !DILocation(line: 913, column: 9, scope: !2565)
!2627 = !DILocation(line: 915, column: 35, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2625, file: !149, line: 914, column: 7)
!2629 = !DILocation(line: 915, column: 20, scope: !2628)
!2630 = !DILocation(line: 916, column: 17, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !149, line: 916, column: 13)
!2632 = !DILocation(line: 916, column: 13, scope: !2628)
!2633 = !DILocation(line: 917, column: 11, scope: !2631)
!2634 = !DILocation(line: 216, column: 20, scope: !2454, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 918, column: 27, scope: !2628)
!2636 = !DILocation(line: 218, column: 10, scope: !2454, inlinedAt: !2635)
!2637 = !DILocation(line: 918, column: 19, scope: !2628)
!2638 = !DILocation(line: 919, column: 69, scope: !2628)
!2639 = !DILocation(line: 921, column: 44, scope: !2628)
!2640 = !DILocation(line: 922, column: 44, scope: !2628)
!2641 = !DILocation(line: 919, column: 9, scope: !2628)
!2642 = !DILocation(line: 923, column: 7, scope: !2628)
!2643 = !DILocation(line: 0, scope: !2565)
!2644 = !DILocation(line: 925, column: 11, scope: !2565)
!2645 = !DILocation(line: 926, column: 5, scope: !2565)
!2646 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !149, file: !149, line: 937, type: !2647, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!68, !70, !98, !57}
!2649 = !{!2650, !2651, !2652}
!2650 = !DILocalVariable(name: "n", arg: 1, scope: !2646, file: !149, line: 937, type: !70)
!2651 = !DILocalVariable(name: "arg", arg: 2, scope: !2646, file: !149, line: 937, type: !98)
!2652 = !DILocalVariable(name: "argsize", arg: 3, scope: !2646, file: !149, line: 937, type: !57)
!2653 = !DILocation(line: 937, column: 21, scope: !2646)
!2654 = !DILocation(line: 937, column: 36, scope: !2646)
!2655 = !DILocation(line: 937, column: 48, scope: !2646)
!2656 = !DILocation(line: 939, column: 10, scope: !2646)
!2657 = !DILocation(line: 939, column: 3, scope: !2646)
!2658 = distinct !DISubprogram(name: "quotearg", scope: !149, file: !149, line: 943, type: !2659, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!68, !98}
!2661 = !{!2662}
!2662 = !DILocalVariable(name: "arg", arg: 1, scope: !2658, file: !149, line: 943, type: !98)
!2663 = !DILocation(line: 943, column: 23, scope: !2658)
!2664 = !DILocation(line: 931, column: 17, scope: !2540, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 945, column: 10, scope: !2658)
!2666 = !DILocation(line: 931, column: 32, scope: !2540, inlinedAt: !2665)
!2667 = !DILocation(line: 933, column: 10, scope: !2540, inlinedAt: !2665)
!2668 = !DILocation(line: 945, column: 3, scope: !2658)
!2669 = distinct !DISubprogram(name: "quotearg_mem", scope: !149, file: !149, line: 949, type: !2670, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!68, !98, !57}
!2672 = !{!2673, !2674}
!2673 = !DILocalVariable(name: "arg", arg: 1, scope: !2669, file: !149, line: 949, type: !98)
!2674 = !DILocalVariable(name: "argsize", arg: 2, scope: !2669, file: !149, line: 949, type: !57)
!2675 = !DILocation(line: 949, column: 27, scope: !2669)
!2676 = !DILocation(line: 949, column: 39, scope: !2669)
!2677 = !DILocation(line: 937, column: 21, scope: !2646, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 951, column: 10, scope: !2669)
!2679 = !DILocation(line: 937, column: 36, scope: !2646, inlinedAt: !2678)
!2680 = !DILocation(line: 937, column: 48, scope: !2646, inlinedAt: !2678)
!2681 = !DILocation(line: 939, column: 10, scope: !2646, inlinedAt: !2678)
!2682 = !DILocation(line: 951, column: 3, scope: !2669)
!2683 = distinct !DISubprogram(name: "quotearg_n_style", scope: !149, file: !149, line: 955, type: !2684, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!68, !70, !5, !98}
!2686 = !{!2687, !2688, !2689, !2690}
!2687 = !DILocalVariable(name: "n", arg: 1, scope: !2683, file: !149, line: 955, type: !70)
!2688 = !DILocalVariable(name: "s", arg: 2, scope: !2683, file: !149, line: 955, type: !5)
!2689 = !DILocalVariable(name: "arg", arg: 3, scope: !2683, file: !149, line: 955, type: !98)
!2690 = !DILocalVariable(name: "o", scope: !2683, file: !149, line: 957, type: !1451)
!2691 = !DILocation(line: 955, column: 23, scope: !2683)
!2692 = !DILocation(line: 955, column: 45, scope: !2683)
!2693 = !DILocation(line: 955, column: 60, scope: !2683)
!2694 = !DILocation(line: 957, column: 3, scope: !2683)
!2695 = !DILocation(line: 957, column: 32, scope: !2683)
!2696 = !DILocalVariable(name: "style", arg: 1, scope: !2697, file: !149, line: 193, type: !5)
!2697 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !149, file: !149, line: 193, type: !2698, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!156, !5}
!2700 = !{!2696, !2701}
!2701 = !DILocalVariable(name: "o", scope: !2697, file: !149, line: 195, type: !156)
!2702 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 957, column: 36, scope: !2683)
!2704 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2703)
!2705 = !{!2706}
!2706 = distinct !{!2706, !2707, !"quoting_options_from_style: argument 0"}
!2707 = distinct !{!2707, !"quoting_options_from_style"}
!2708 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2703)
!2709 = distinct !DILexicalBlock(scope: !2697, file: !149, line: 196, column: 7)
!2710 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2703)
!2711 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2703)
!2712 = !DILocation(line: 198, column: 5, scope: !2697, inlinedAt: !2703)
!2713 = !DILocation(line: 198, column: 11, scope: !2697, inlinedAt: !2703)
!2714 = !DILocation(line: 958, column: 10, scope: !2683)
!2715 = !DILocation(line: 959, column: 1, scope: !2683)
!2716 = !DILocation(line: 958, column: 3, scope: !2683)
!2717 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !149, file: !149, line: 962, type: !2718, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!68, !70, !5, !98, !57}
!2720 = !{!2721, !2722, !2723, !2724, !2725}
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !149, line: 962, type: !70)
!2722 = !DILocalVariable(name: "s", arg: 2, scope: !2717, file: !149, line: 962, type: !5)
!2723 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !149, line: 963, type: !98)
!2724 = !DILocalVariable(name: "argsize", arg: 4, scope: !2717, file: !149, line: 963, type: !57)
!2725 = !DILocalVariable(name: "o", scope: !2717, file: !149, line: 965, type: !1451)
!2726 = !DILocation(line: 962, column: 27, scope: !2717)
!2727 = !DILocation(line: 962, column: 49, scope: !2717)
!2728 = !DILocation(line: 963, column: 35, scope: !2717)
!2729 = !DILocation(line: 963, column: 47, scope: !2717)
!2730 = !DILocation(line: 965, column: 3, scope: !2717)
!2731 = !DILocation(line: 965, column: 32, scope: !2717)
!2732 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 965, column: 36, scope: !2717)
!2734 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2733)
!2735 = !{!2736}
!2736 = distinct !{!2736, !2737, !"quoting_options_from_style: argument 0"}
!2737 = distinct !{!2737, !"quoting_options_from_style"}
!2738 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2733)
!2739 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2733)
!2740 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2733)
!2741 = !DILocation(line: 198, column: 5, scope: !2697, inlinedAt: !2733)
!2742 = !DILocation(line: 198, column: 11, scope: !2697, inlinedAt: !2733)
!2743 = !DILocation(line: 966, column: 10, scope: !2717)
!2744 = !DILocation(line: 967, column: 1, scope: !2717)
!2745 = !DILocation(line: 966, column: 3, scope: !2717)
!2746 = distinct !DISubprogram(name: "quotearg_style", scope: !149, file: !149, line: 970, type: !2747, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!68, !5, !98}
!2749 = !{!2750, !2751}
!2750 = !DILocalVariable(name: "s", arg: 1, scope: !2746, file: !149, line: 970, type: !5)
!2751 = !DILocalVariable(name: "arg", arg: 2, scope: !2746, file: !149, line: 970, type: !98)
!2752 = !DILocation(line: 970, column: 36, scope: !2746)
!2753 = !DILocation(line: 970, column: 51, scope: !2746)
!2754 = !DILocation(line: 955, column: 23, scope: !2683, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 972, column: 10, scope: !2746)
!2756 = !DILocation(line: 955, column: 45, scope: !2683, inlinedAt: !2755)
!2757 = !DILocation(line: 955, column: 60, scope: !2683, inlinedAt: !2755)
!2758 = !DILocation(line: 957, column: 3, scope: !2683, inlinedAt: !2755)
!2759 = !DILocation(line: 957, column: 32, scope: !2683, inlinedAt: !2755)
!2760 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 957, column: 36, scope: !2683, inlinedAt: !2755)
!2762 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2761)
!2763 = !{!2764}
!2764 = distinct !{!2764, !2765, !"quoting_options_from_style: argument 0"}
!2765 = distinct !{!2765, !"quoting_options_from_style"}
!2766 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2761)
!2767 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2761)
!2768 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2761)
!2769 = !DILocation(line: 198, column: 5, scope: !2697, inlinedAt: !2761)
!2770 = !DILocation(line: 198, column: 11, scope: !2697, inlinedAt: !2761)
!2771 = !DILocation(line: 958, column: 10, scope: !2683, inlinedAt: !2755)
!2772 = !DILocation(line: 959, column: 1, scope: !2683, inlinedAt: !2755)
!2773 = !DILocation(line: 972, column: 3, scope: !2746)
!2774 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !149, file: !149, line: 976, type: !2775, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!68, !5, !98, !57}
!2777 = !{!2778, !2779, !2780}
!2778 = !DILocalVariable(name: "s", arg: 1, scope: !2774, file: !149, line: 976, type: !5)
!2779 = !DILocalVariable(name: "arg", arg: 2, scope: !2774, file: !149, line: 976, type: !98)
!2780 = !DILocalVariable(name: "argsize", arg: 3, scope: !2774, file: !149, line: 976, type: !57)
!2781 = !DILocation(line: 976, column: 40, scope: !2774)
!2782 = !DILocation(line: 976, column: 55, scope: !2774)
!2783 = !DILocation(line: 976, column: 67, scope: !2774)
!2784 = !DILocation(line: 962, column: 27, scope: !2717, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 978, column: 10, scope: !2774)
!2786 = !DILocation(line: 962, column: 49, scope: !2717, inlinedAt: !2785)
!2787 = !DILocation(line: 963, column: 35, scope: !2717, inlinedAt: !2785)
!2788 = !DILocation(line: 963, column: 47, scope: !2717, inlinedAt: !2785)
!2789 = !DILocation(line: 965, column: 3, scope: !2717, inlinedAt: !2785)
!2790 = !DILocation(line: 965, column: 32, scope: !2717, inlinedAt: !2785)
!2791 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 965, column: 36, scope: !2717, inlinedAt: !2785)
!2793 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2792)
!2794 = !{!2795}
!2795 = distinct !{!2795, !2796, !"quoting_options_from_style: argument 0"}
!2796 = distinct !{!2796, !"quoting_options_from_style"}
!2797 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2792)
!2798 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2792)
!2799 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2792)
!2800 = !DILocation(line: 198, column: 5, scope: !2697, inlinedAt: !2792)
!2801 = !DILocation(line: 198, column: 11, scope: !2697, inlinedAt: !2792)
!2802 = !DILocation(line: 966, column: 10, scope: !2717, inlinedAt: !2785)
!2803 = !DILocation(line: 967, column: 1, scope: !2717, inlinedAt: !2785)
!2804 = !DILocation(line: 978, column: 3, scope: !2774)
!2805 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !149, file: !149, line: 982, type: !2806, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!68, !98, !57, !69}
!2808 = !{!2809, !2810, !2811, !2812}
!2809 = !DILocalVariable(name: "arg", arg: 1, scope: !2805, file: !149, line: 982, type: !98)
!2810 = !DILocalVariable(name: "argsize", arg: 2, scope: !2805, file: !149, line: 982, type: !57)
!2811 = !DILocalVariable(name: "ch", arg: 3, scope: !2805, file: !149, line: 982, type: !69)
!2812 = !DILocalVariable(name: "options", scope: !2805, file: !149, line: 984, type: !156)
!2813 = !DILocation(line: 982, column: 32, scope: !2805)
!2814 = !DILocation(line: 982, column: 44, scope: !2805)
!2815 = !DILocation(line: 982, column: 58, scope: !2805)
!2816 = !DILocation(line: 984, column: 3, scope: !2805)
!2817 = !DILocation(line: 985, column: 13, scope: !2805)
!2818 = !{i64 0, i64 4, !933, i64 4, i64 4, !897, i64 8, i64 32, !933, i64 40, i64 8, !780, i64 48, i64 8, !780}
!2819 = !DILocation(line: 984, column: 26, scope: !2805)
!2820 = !DILocation(line: 152, column: 43, scope: !1472, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 986, column: 3, scope: !2805)
!2822 = !DILocation(line: 152, column: 51, scope: !1472, inlinedAt: !2821)
!2823 = !DILocation(line: 152, column: 58, scope: !1472, inlinedAt: !2821)
!2824 = !DILocation(line: 154, column: 17, scope: !1472, inlinedAt: !2821)
!2825 = !DILocation(line: 156, column: 62, scope: !1472, inlinedAt: !2821)
!2826 = !DILocation(line: 156, column: 57, scope: !1472, inlinedAt: !2821)
!2827 = !DILocation(line: 155, column: 17, scope: !1472, inlinedAt: !2821)
!2828 = !DILocation(line: 157, column: 15, scope: !1472, inlinedAt: !2821)
!2829 = !DILocation(line: 157, column: 7, scope: !1472, inlinedAt: !2821)
!2830 = !DILocation(line: 158, column: 12, scope: !1472, inlinedAt: !2821)
!2831 = !DILocation(line: 158, column: 15, scope: !1472, inlinedAt: !2821)
!2832 = !DILocation(line: 158, column: 25, scope: !1472, inlinedAt: !2821)
!2833 = !DILocation(line: 158, column: 7, scope: !1472, inlinedAt: !2821)
!2834 = !DILocation(line: 159, column: 18, scope: !1472, inlinedAt: !2821)
!2835 = !DILocation(line: 159, column: 23, scope: !1472, inlinedAt: !2821)
!2836 = !DILocation(line: 159, column: 6, scope: !1472, inlinedAt: !2821)
!2837 = !DILocation(line: 987, column: 10, scope: !2805)
!2838 = !DILocation(line: 988, column: 1, scope: !2805)
!2839 = !DILocation(line: 987, column: 3, scope: !2805)
!2840 = distinct !DISubprogram(name: "quotearg_char", scope: !149, file: !149, line: 991, type: !2841, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!68, !98, !69}
!2843 = !{!2844, !2845}
!2844 = !DILocalVariable(name: "arg", arg: 1, scope: !2840, file: !149, line: 991, type: !98)
!2845 = !DILocalVariable(name: "ch", arg: 2, scope: !2840, file: !149, line: 991, type: !69)
!2846 = !DILocation(line: 991, column: 28, scope: !2840)
!2847 = !DILocation(line: 991, column: 38, scope: !2840)
!2848 = !DILocation(line: 982, column: 32, scope: !2805, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 993, column: 10, scope: !2840)
!2850 = !DILocation(line: 982, column: 44, scope: !2805, inlinedAt: !2849)
!2851 = !DILocation(line: 982, column: 58, scope: !2805, inlinedAt: !2849)
!2852 = !DILocation(line: 984, column: 3, scope: !2805, inlinedAt: !2849)
!2853 = !DILocation(line: 985, column: 13, scope: !2805, inlinedAt: !2849)
!2854 = !DILocation(line: 984, column: 26, scope: !2805, inlinedAt: !2849)
!2855 = !DILocation(line: 152, column: 43, scope: !1472, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 986, column: 3, scope: !2805, inlinedAt: !2849)
!2857 = !DILocation(line: 152, column: 51, scope: !1472, inlinedAt: !2856)
!2858 = !DILocation(line: 152, column: 58, scope: !1472, inlinedAt: !2856)
!2859 = !DILocation(line: 154, column: 17, scope: !1472, inlinedAt: !2856)
!2860 = !DILocation(line: 156, column: 62, scope: !1472, inlinedAt: !2856)
!2861 = !DILocation(line: 156, column: 57, scope: !1472, inlinedAt: !2856)
!2862 = !DILocation(line: 155, column: 17, scope: !1472, inlinedAt: !2856)
!2863 = !DILocation(line: 157, column: 15, scope: !1472, inlinedAt: !2856)
!2864 = !DILocation(line: 157, column: 7, scope: !1472, inlinedAt: !2856)
!2865 = !DILocation(line: 158, column: 12, scope: !1472, inlinedAt: !2856)
!2866 = !DILocation(line: 158, column: 15, scope: !1472, inlinedAt: !2856)
!2867 = !DILocation(line: 158, column: 25, scope: !1472, inlinedAt: !2856)
!2868 = !DILocation(line: 158, column: 7, scope: !1472, inlinedAt: !2856)
!2869 = !DILocation(line: 159, column: 18, scope: !1472, inlinedAt: !2856)
!2870 = !DILocation(line: 159, column: 23, scope: !1472, inlinedAt: !2856)
!2871 = !DILocation(line: 159, column: 6, scope: !1472, inlinedAt: !2856)
!2872 = !DILocation(line: 987, column: 10, scope: !2805, inlinedAt: !2849)
!2873 = !DILocation(line: 988, column: 1, scope: !2805, inlinedAt: !2849)
!2874 = !DILocation(line: 993, column: 3, scope: !2840)
!2875 = distinct !DISubprogram(name: "quotearg_colon", scope: !149, file: !149, line: 997, type: !2659, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2876)
!2876 = !{!2877}
!2877 = !DILocalVariable(name: "arg", arg: 1, scope: !2875, file: !149, line: 997, type: !98)
!2878 = !DILocation(line: 997, column: 29, scope: !2875)
!2879 = !DILocation(line: 991, column: 28, scope: !2840, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 999, column: 10, scope: !2875)
!2881 = !DILocation(line: 991, column: 38, scope: !2840, inlinedAt: !2880)
!2882 = !DILocation(line: 982, column: 32, scope: !2805, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 993, column: 10, scope: !2840, inlinedAt: !2880)
!2884 = !DILocation(line: 982, column: 44, scope: !2805, inlinedAt: !2883)
!2885 = !DILocation(line: 982, column: 58, scope: !2805, inlinedAt: !2883)
!2886 = !DILocation(line: 984, column: 3, scope: !2805, inlinedAt: !2883)
!2887 = !DILocation(line: 985, column: 13, scope: !2805, inlinedAt: !2883)
!2888 = !DILocation(line: 984, column: 26, scope: !2805, inlinedAt: !2883)
!2889 = !DILocation(line: 152, column: 43, scope: !1472, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 986, column: 3, scope: !2805, inlinedAt: !2883)
!2891 = !DILocation(line: 152, column: 51, scope: !1472, inlinedAt: !2890)
!2892 = !DILocation(line: 152, column: 58, scope: !1472, inlinedAt: !2890)
!2893 = !DILocation(line: 154, column: 17, scope: !1472, inlinedAt: !2890)
!2894 = !DILocation(line: 156, column: 57, scope: !1472, inlinedAt: !2890)
!2895 = !DILocation(line: 155, column: 17, scope: !1472, inlinedAt: !2890)
!2896 = !DILocation(line: 157, column: 7, scope: !1472, inlinedAt: !2890)
!2897 = !DILocation(line: 158, column: 12, scope: !1472, inlinedAt: !2890)
!2898 = !DILocation(line: 159, column: 6, scope: !1472, inlinedAt: !2890)
!2899 = !DILocation(line: 987, column: 10, scope: !2805, inlinedAt: !2883)
!2900 = !DILocation(line: 988, column: 1, scope: !2805, inlinedAt: !2883)
!2901 = !DILocation(line: 999, column: 3, scope: !2875)
!2902 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !149, file: !149, line: 1003, type: !2670, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2903)
!2903 = !{!2904, !2905}
!2904 = !DILocalVariable(name: "arg", arg: 1, scope: !2902, file: !149, line: 1003, type: !98)
!2905 = !DILocalVariable(name: "argsize", arg: 2, scope: !2902, file: !149, line: 1003, type: !57)
!2906 = !DILocation(line: 1003, column: 33, scope: !2902)
!2907 = !DILocation(line: 1003, column: 45, scope: !2902)
!2908 = !DILocation(line: 982, column: 32, scope: !2805, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 1005, column: 10, scope: !2902)
!2910 = !DILocation(line: 982, column: 44, scope: !2805, inlinedAt: !2909)
!2911 = !DILocation(line: 982, column: 58, scope: !2805, inlinedAt: !2909)
!2912 = !DILocation(line: 984, column: 3, scope: !2805, inlinedAt: !2909)
!2913 = !DILocation(line: 985, column: 13, scope: !2805, inlinedAt: !2909)
!2914 = !DILocation(line: 984, column: 26, scope: !2805, inlinedAt: !2909)
!2915 = !DILocation(line: 152, column: 43, scope: !1472, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 986, column: 3, scope: !2805, inlinedAt: !2909)
!2917 = !DILocation(line: 152, column: 51, scope: !1472, inlinedAt: !2916)
!2918 = !DILocation(line: 152, column: 58, scope: !1472, inlinedAt: !2916)
!2919 = !DILocation(line: 154, column: 17, scope: !1472, inlinedAt: !2916)
!2920 = !DILocation(line: 156, column: 57, scope: !1472, inlinedAt: !2916)
!2921 = !DILocation(line: 155, column: 17, scope: !1472, inlinedAt: !2916)
!2922 = !DILocation(line: 157, column: 7, scope: !1472, inlinedAt: !2916)
!2923 = !DILocation(line: 158, column: 12, scope: !1472, inlinedAt: !2916)
!2924 = !DILocation(line: 159, column: 6, scope: !1472, inlinedAt: !2916)
!2925 = !DILocation(line: 987, column: 10, scope: !2805, inlinedAt: !2909)
!2926 = !DILocation(line: 988, column: 1, scope: !2805, inlinedAt: !2909)
!2927 = !DILocation(line: 1005, column: 3, scope: !2902)
!2928 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !149, file: !149, line: 1009, type: !2684, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2929)
!2929 = !{!2930, !2931, !2932, !2933}
!2930 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !149, line: 1009, type: !70)
!2931 = !DILocalVariable(name: "s", arg: 2, scope: !2928, file: !149, line: 1009, type: !5)
!2932 = !DILocalVariable(name: "arg", arg: 3, scope: !2928, file: !149, line: 1009, type: !98)
!2933 = !DILocalVariable(name: "options", scope: !2928, file: !149, line: 1011, type: !156)
!2934 = !DILocation(line: 195, column: 26, scope: !2697, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 1012, column: 13, scope: !2928)
!2936 = !DILocation(line: 1009, column: 29, scope: !2928)
!2937 = !DILocation(line: 1009, column: 51, scope: !2928)
!2938 = !DILocation(line: 1009, column: 66, scope: !2928)
!2939 = !DILocation(line: 1011, column: 3, scope: !2928)
!2940 = !DILocation(line: 1012, column: 13, scope: !2928)
!2941 = !DILocation(line: 193, column: 48, scope: !2697, inlinedAt: !2935)
!2942 = !{!2943}
!2943 = distinct !{!2943, !2944, !"quoting_options_from_style: argument 0"}
!2944 = distinct !{!2944, !"quoting_options_from_style"}
!2945 = !DILocation(line: 196, column: 13, scope: !2709, inlinedAt: !2935)
!2946 = !DILocation(line: 196, column: 7, scope: !2697, inlinedAt: !2935)
!2947 = !DILocation(line: 197, column: 5, scope: !2709, inlinedAt: !2935)
!2948 = !DILocation(line: 1011, column: 26, scope: !2928)
!2949 = !DILocation(line: 152, column: 43, scope: !1472, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1013, column: 3, scope: !2928)
!2951 = !DILocation(line: 152, column: 51, scope: !1472, inlinedAt: !2950)
!2952 = !DILocation(line: 152, column: 58, scope: !1472, inlinedAt: !2950)
!2953 = !DILocation(line: 154, column: 17, scope: !1472, inlinedAt: !2950)
!2954 = !DILocation(line: 156, column: 57, scope: !1472, inlinedAt: !2950)
!2955 = !DILocation(line: 155, column: 17, scope: !1472, inlinedAt: !2950)
!2956 = !DILocation(line: 157, column: 7, scope: !1472, inlinedAt: !2950)
!2957 = !DILocation(line: 158, column: 12, scope: !1472, inlinedAt: !2950)
!2958 = !DILocation(line: 159, column: 6, scope: !1472, inlinedAt: !2950)
!2959 = !DILocation(line: 1014, column: 10, scope: !2928)
!2960 = !DILocation(line: 1015, column: 1, scope: !2928)
!2961 = !DILocation(line: 1014, column: 3, scope: !2928)
!2962 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !149, file: !149, line: 1018, type: !2963, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!68, !70, !98, !98, !98}
!2965 = !{!2966, !2967, !2968, !2969}
!2966 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !149, line: 1018, type: !70)
!2967 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2962, file: !149, line: 1018, type: !98)
!2968 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2962, file: !149, line: 1019, type: !98)
!2969 = !DILocalVariable(name: "arg", arg: 4, scope: !2962, file: !149, line: 1019, type: !98)
!2970 = !DILocation(line: 1018, column: 24, scope: !2962)
!2971 = !DILocation(line: 1018, column: 39, scope: !2962)
!2972 = !DILocation(line: 1019, column: 32, scope: !2962)
!2973 = !DILocation(line: 1019, column: 57, scope: !2962)
!2974 = !DILocalVariable(name: "n", arg: 1, scope: !2975, file: !149, line: 1026, type: !70)
!2975 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !149, file: !149, line: 1026, type: !2976, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!68, !70, !98, !98, !98, !57}
!2978 = !{!2974, !2979, !2980, !2981, !2982, !2983}
!2979 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2975, file: !149, line: 1026, type: !98)
!2980 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2975, file: !149, line: 1027, type: !98)
!2981 = !DILocalVariable(name: "arg", arg: 4, scope: !2975, file: !149, line: 1028, type: !98)
!2982 = !DILocalVariable(name: "argsize", arg: 5, scope: !2975, file: !149, line: 1028, type: !57)
!2983 = !DILocalVariable(name: "o", scope: !2975, file: !149, line: 1030, type: !156)
!2984 = !DILocation(line: 1026, column: 28, scope: !2975, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 1021, column: 10, scope: !2962)
!2986 = !DILocation(line: 1026, column: 43, scope: !2975, inlinedAt: !2985)
!2987 = !DILocation(line: 1027, column: 36, scope: !2975, inlinedAt: !2985)
!2988 = !DILocation(line: 1028, column: 36, scope: !2975, inlinedAt: !2985)
!2989 = !DILocation(line: 1028, column: 48, scope: !2975, inlinedAt: !2985)
!2990 = !DILocation(line: 1030, column: 3, scope: !2975, inlinedAt: !2985)
!2991 = !DILocation(line: 1030, column: 30, scope: !2975, inlinedAt: !2985)
!2992 = !DILocation(line: 1030, column: 26, scope: !2975, inlinedAt: !2985)
!2993 = !DILocation(line: 179, column: 45, scope: !1521, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1031, column: 3, scope: !2975, inlinedAt: !2985)
!2995 = !DILocation(line: 180, column: 33, scope: !1521, inlinedAt: !2994)
!2996 = !DILocation(line: 180, column: 57, scope: !1521, inlinedAt: !2994)
!2997 = !DILocation(line: 184, column: 6, scope: !1521, inlinedAt: !2994)
!2998 = !DILocation(line: 184, column: 12, scope: !1521, inlinedAt: !2994)
!2999 = !DILocation(line: 185, column: 8, scope: !1537, inlinedAt: !2994)
!3000 = !DILocation(line: 185, column: 23, scope: !1537, inlinedAt: !2994)
!3001 = !DILocation(line: 185, column: 19, scope: !1537, inlinedAt: !2994)
!3002 = !DILocation(line: 186, column: 5, scope: !1537, inlinedAt: !2994)
!3003 = !DILocation(line: 187, column: 6, scope: !1521, inlinedAt: !2994)
!3004 = !DILocation(line: 187, column: 17, scope: !1521, inlinedAt: !2994)
!3005 = !DILocation(line: 188, column: 6, scope: !1521, inlinedAt: !2994)
!3006 = !DILocation(line: 188, column: 18, scope: !1521, inlinedAt: !2994)
!3007 = !DILocation(line: 1032, column: 10, scope: !2975, inlinedAt: !2985)
!3008 = !DILocation(line: 1033, column: 1, scope: !2975, inlinedAt: !2985)
!3009 = !DILocation(line: 1021, column: 3, scope: !2962)
!3010 = !DILocation(line: 1026, column: 28, scope: !2975)
!3011 = !DILocation(line: 1026, column: 43, scope: !2975)
!3012 = !DILocation(line: 1027, column: 36, scope: !2975)
!3013 = !DILocation(line: 1028, column: 36, scope: !2975)
!3014 = !DILocation(line: 1028, column: 48, scope: !2975)
!3015 = !DILocation(line: 1030, column: 3, scope: !2975)
!3016 = !DILocation(line: 1030, column: 30, scope: !2975)
!3017 = !DILocation(line: 1030, column: 26, scope: !2975)
!3018 = !DILocation(line: 179, column: 45, scope: !1521, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 1031, column: 3, scope: !2975)
!3020 = !DILocation(line: 180, column: 33, scope: !1521, inlinedAt: !3019)
!3021 = !DILocation(line: 180, column: 57, scope: !1521, inlinedAt: !3019)
!3022 = !DILocation(line: 184, column: 6, scope: !1521, inlinedAt: !3019)
!3023 = !DILocation(line: 184, column: 12, scope: !1521, inlinedAt: !3019)
!3024 = !DILocation(line: 185, column: 8, scope: !1537, inlinedAt: !3019)
!3025 = !DILocation(line: 185, column: 23, scope: !1537, inlinedAt: !3019)
!3026 = !DILocation(line: 185, column: 19, scope: !1537, inlinedAt: !3019)
!3027 = !DILocation(line: 186, column: 5, scope: !1537, inlinedAt: !3019)
!3028 = !DILocation(line: 187, column: 6, scope: !1521, inlinedAt: !3019)
!3029 = !DILocation(line: 187, column: 17, scope: !1521, inlinedAt: !3019)
!3030 = !DILocation(line: 188, column: 6, scope: !1521, inlinedAt: !3019)
!3031 = !DILocation(line: 188, column: 18, scope: !1521, inlinedAt: !3019)
!3032 = !DILocation(line: 1032, column: 10, scope: !2975)
!3033 = !DILocation(line: 1033, column: 1, scope: !2975)
!3034 = !DILocation(line: 1032, column: 3, scope: !2975)
!3035 = distinct !DISubprogram(name: "quotearg_custom", scope: !149, file: !149, line: 1036, type: !3036, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!68, !98, !98, !98}
!3038 = !{!3039, !3040, !3041}
!3039 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3035, file: !149, line: 1036, type: !98)
!3040 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3035, file: !149, line: 1036, type: !98)
!3041 = !DILocalVariable(name: "arg", arg: 3, scope: !3035, file: !149, line: 1037, type: !98)
!3042 = !DILocation(line: 1036, column: 30, scope: !3035)
!3043 = !DILocation(line: 1036, column: 54, scope: !3035)
!3044 = !DILocation(line: 1037, column: 30, scope: !3035)
!3045 = !DILocation(line: 1018, column: 24, scope: !2962, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1039, column: 10, scope: !3035)
!3047 = !DILocation(line: 1018, column: 39, scope: !2962, inlinedAt: !3046)
!3048 = !DILocation(line: 1019, column: 32, scope: !2962, inlinedAt: !3046)
!3049 = !DILocation(line: 1019, column: 57, scope: !2962, inlinedAt: !3046)
!3050 = !DILocation(line: 1026, column: 28, scope: !2975, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 1021, column: 10, scope: !2962, inlinedAt: !3046)
!3052 = !DILocation(line: 1026, column: 43, scope: !2975, inlinedAt: !3051)
!3053 = !DILocation(line: 1027, column: 36, scope: !2975, inlinedAt: !3051)
!3054 = !DILocation(line: 1028, column: 36, scope: !2975, inlinedAt: !3051)
!3055 = !DILocation(line: 1028, column: 48, scope: !2975, inlinedAt: !3051)
!3056 = !DILocation(line: 1030, column: 3, scope: !2975, inlinedAt: !3051)
!3057 = !DILocation(line: 1030, column: 30, scope: !2975, inlinedAt: !3051)
!3058 = !DILocation(line: 1030, column: 26, scope: !2975, inlinedAt: !3051)
!3059 = !DILocation(line: 179, column: 45, scope: !1521, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 1031, column: 3, scope: !2975, inlinedAt: !3051)
!3061 = !DILocation(line: 180, column: 33, scope: !1521, inlinedAt: !3060)
!3062 = !DILocation(line: 180, column: 57, scope: !1521, inlinedAt: !3060)
!3063 = !DILocation(line: 184, column: 6, scope: !1521, inlinedAt: !3060)
!3064 = !DILocation(line: 184, column: 12, scope: !1521, inlinedAt: !3060)
!3065 = !DILocation(line: 185, column: 8, scope: !1537, inlinedAt: !3060)
!3066 = !DILocation(line: 185, column: 23, scope: !1537, inlinedAt: !3060)
!3067 = !DILocation(line: 185, column: 19, scope: !1537, inlinedAt: !3060)
!3068 = !DILocation(line: 186, column: 5, scope: !1537, inlinedAt: !3060)
!3069 = !DILocation(line: 187, column: 6, scope: !1521, inlinedAt: !3060)
!3070 = !DILocation(line: 187, column: 17, scope: !1521, inlinedAt: !3060)
!3071 = !DILocation(line: 188, column: 6, scope: !1521, inlinedAt: !3060)
!3072 = !DILocation(line: 188, column: 18, scope: !1521, inlinedAt: !3060)
!3073 = !DILocation(line: 1032, column: 10, scope: !2975, inlinedAt: !3051)
!3074 = !DILocation(line: 1033, column: 1, scope: !2975, inlinedAt: !3051)
!3075 = !DILocation(line: 1039, column: 3, scope: !3035)
!3076 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !149, file: !149, line: 1043, type: !3077, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!68, !98, !98, !98, !57}
!3079 = !{!3080, !3081, !3082, !3083}
!3080 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3076, file: !149, line: 1043, type: !98)
!3081 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3076, file: !149, line: 1043, type: !98)
!3082 = !DILocalVariable(name: "arg", arg: 3, scope: !3076, file: !149, line: 1044, type: !98)
!3083 = !DILocalVariable(name: "argsize", arg: 4, scope: !3076, file: !149, line: 1044, type: !57)
!3084 = !DILocation(line: 1043, column: 34, scope: !3076)
!3085 = !DILocation(line: 1043, column: 58, scope: !3076)
!3086 = !DILocation(line: 1044, column: 34, scope: !3076)
!3087 = !DILocation(line: 1044, column: 46, scope: !3076)
!3088 = !DILocation(line: 1026, column: 28, scope: !2975, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 1046, column: 10, scope: !3076)
!3090 = !DILocation(line: 1026, column: 43, scope: !2975, inlinedAt: !3089)
!3091 = !DILocation(line: 1027, column: 36, scope: !2975, inlinedAt: !3089)
!3092 = !DILocation(line: 1028, column: 36, scope: !2975, inlinedAt: !3089)
!3093 = !DILocation(line: 1028, column: 48, scope: !2975, inlinedAt: !3089)
!3094 = !DILocation(line: 1030, column: 3, scope: !2975, inlinedAt: !3089)
!3095 = !DILocation(line: 1030, column: 30, scope: !2975, inlinedAt: !3089)
!3096 = !DILocation(line: 1030, column: 26, scope: !2975, inlinedAt: !3089)
!3097 = !DILocation(line: 179, column: 45, scope: !1521, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 1031, column: 3, scope: !2975, inlinedAt: !3089)
!3099 = !DILocation(line: 180, column: 33, scope: !1521, inlinedAt: !3098)
!3100 = !DILocation(line: 180, column: 57, scope: !1521, inlinedAt: !3098)
!3101 = !DILocation(line: 184, column: 6, scope: !1521, inlinedAt: !3098)
!3102 = !DILocation(line: 184, column: 12, scope: !1521, inlinedAt: !3098)
!3103 = !DILocation(line: 185, column: 8, scope: !1537, inlinedAt: !3098)
!3104 = !DILocation(line: 185, column: 23, scope: !1537, inlinedAt: !3098)
!3105 = !DILocation(line: 185, column: 19, scope: !1537, inlinedAt: !3098)
!3106 = !DILocation(line: 186, column: 5, scope: !1537, inlinedAt: !3098)
!3107 = !DILocation(line: 187, column: 6, scope: !1521, inlinedAt: !3098)
!3108 = !DILocation(line: 187, column: 17, scope: !1521, inlinedAt: !3098)
!3109 = !DILocation(line: 188, column: 6, scope: !1521, inlinedAt: !3098)
!3110 = !DILocation(line: 188, column: 18, scope: !1521, inlinedAt: !3098)
!3111 = !DILocation(line: 1032, column: 10, scope: !2975, inlinedAt: !3089)
!3112 = !DILocation(line: 1033, column: 1, scope: !2975, inlinedAt: !3089)
!3113 = !DILocation(line: 1046, column: 3, scope: !3076)
!3114 = distinct !DISubprogram(name: "quote_n_mem", scope: !149, file: !149, line: 1061, type: !3115, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!98, !70, !98, !57}
!3117 = !{!3118, !3119, !3120}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !149, line: 1061, type: !70)
!3119 = !DILocalVariable(name: "arg", arg: 2, scope: !3114, file: !149, line: 1061, type: !98)
!3120 = !DILocalVariable(name: "argsize", arg: 3, scope: !3114, file: !149, line: 1061, type: !57)
!3121 = !DILocation(line: 1061, column: 18, scope: !3114)
!3122 = !DILocation(line: 1061, column: 33, scope: !3114)
!3123 = !DILocation(line: 1061, column: 45, scope: !3114)
!3124 = !DILocation(line: 1063, column: 10, scope: !3114)
!3125 = !DILocation(line: 1063, column: 3, scope: !3114)
!3126 = distinct !DISubprogram(name: "quote_mem", scope: !149, file: !149, line: 1067, type: !3127, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!98, !98, !57}
!3129 = !{!3130, !3131}
!3130 = !DILocalVariable(name: "arg", arg: 1, scope: !3126, file: !149, line: 1067, type: !98)
!3131 = !DILocalVariable(name: "argsize", arg: 2, scope: !3126, file: !149, line: 1067, type: !57)
!3132 = !DILocation(line: 1067, column: 24, scope: !3126)
!3133 = !DILocation(line: 1067, column: 36, scope: !3126)
!3134 = !DILocation(line: 1061, column: 18, scope: !3114, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 1069, column: 10, scope: !3126)
!3136 = !DILocation(line: 1061, column: 33, scope: !3114, inlinedAt: !3135)
!3137 = !DILocation(line: 1061, column: 45, scope: !3114, inlinedAt: !3135)
!3138 = !DILocation(line: 1063, column: 10, scope: !3114, inlinedAt: !3135)
!3139 = !DILocation(line: 1069, column: 3, scope: !3126)
!3140 = distinct !DISubprogram(name: "quote_n", scope: !149, file: !149, line: 1073, type: !3141, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!98, !70, !98}
!3143 = !{!3144, !3145}
!3144 = !DILocalVariable(name: "n", arg: 1, scope: !3140, file: !149, line: 1073, type: !70)
!3145 = !DILocalVariable(name: "arg", arg: 2, scope: !3140, file: !149, line: 1073, type: !98)
!3146 = !DILocation(line: 1073, column: 14, scope: !3140)
!3147 = !DILocation(line: 1073, column: 29, scope: !3140)
!3148 = !DILocation(line: 1061, column: 18, scope: !3114, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1075, column: 10, scope: !3140)
!3150 = !DILocation(line: 1061, column: 33, scope: !3114, inlinedAt: !3149)
!3151 = !DILocation(line: 1061, column: 45, scope: !3114, inlinedAt: !3149)
!3152 = !DILocation(line: 1063, column: 10, scope: !3114, inlinedAt: !3149)
!3153 = !DILocation(line: 1075, column: 3, scope: !3140)
!3154 = distinct !DISubprogram(name: "quote", scope: !149, file: !149, line: 1079, type: !3155, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !137, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!98, !98}
!3157 = !{!3158}
!3158 = !DILocalVariable(name: "arg", arg: 1, scope: !3154, file: !149, line: 1079, type: !98)
!3159 = !DILocation(line: 1079, column: 20, scope: !3154)
!3160 = !DILocation(line: 1073, column: 14, scope: !3140, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1081, column: 10, scope: !3154)
!3162 = !DILocation(line: 1073, column: 29, scope: !3140, inlinedAt: !3161)
!3163 = !DILocation(line: 1061, column: 18, scope: !3114, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 1075, column: 10, scope: !3140, inlinedAt: !3161)
!3165 = !DILocation(line: 1061, column: 33, scope: !3114, inlinedAt: !3164)
!3166 = !DILocation(line: 1061, column: 45, scope: !3114, inlinedAt: !3164)
!3167 = !DILocation(line: 1063, column: 10, scope: !3114, inlinedAt: !3164)
!3168 = !DILocation(line: 1081, column: 3, scope: !3154)
!3169 = distinct !DISubprogram(name: "parse_user_spec", scope: !205, file: !205, line: 259, type: !3170, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!98, !98, !208, !209, !86, !86}
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180}
!3173 = !DILocalVariable(name: "spec", arg: 1, scope: !3169, file: !205, line: 259, type: !98)
!3174 = !DILocalVariable(name: "uid", arg: 2, scope: !3169, file: !205, line: 259, type: !208)
!3175 = !DILocalVariable(name: "gid", arg: 3, scope: !3169, file: !205, line: 259, type: !209)
!3176 = !DILocalVariable(name: "username", arg: 4, scope: !3169, file: !205, line: 260, type: !86)
!3177 = !DILocalVariable(name: "groupname", arg: 5, scope: !3169, file: !205, line: 260, type: !86)
!3178 = !DILocalVariable(name: "colon", scope: !3169, file: !205, line: 262, type: !98)
!3179 = !DILocalVariable(name: "error_msg", scope: !3169, file: !205, line: 263, type: !98)
!3180 = !DILocalVariable(name: "dot", scope: !3181, file: !205, line: 274, type: !98)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !205, line: 267, column: 5)
!3182 = distinct !DILexicalBlock(scope: !3169, file: !205, line: 266, column: 7)
!3183 = !DILocation(line: 259, column: 30, scope: !3169)
!3184 = !DILocation(line: 259, column: 43, scope: !3169)
!3185 = !DILocation(line: 259, column: 55, scope: !3169)
!3186 = !DILocation(line: 260, column: 25, scope: !3169)
!3187 = !DILocation(line: 260, column: 42, scope: !3169)
!3188 = !DILocation(line: 262, column: 23, scope: !3169)
!3189 = !DILocation(line: 262, column: 29, scope: !3169)
!3190 = !DILocation(line: 262, column: 15, scope: !3169)
!3191 = !DILocation(line: 264, column: 5, scope: !3169)
!3192 = !DILocation(line: 263, column: 15, scope: !3169)
!3193 = !DILocation(line: 266, column: 7, scope: !3182)
!3194 = !DILocation(line: 266, column: 15, scope: !3182)
!3195 = !DILocation(line: 266, column: 11, scope: !3182)
!3196 = !DILocation(line: 266, column: 24, scope: !3182)
!3197 = !DILocation(line: 274, column: 25, scope: !3181)
!3198 = !DILocation(line: 274, column: 19, scope: !3181)
!3199 = !DILocation(line: 275, column: 11, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3181, file: !205, line: 275, column: 11)
!3201 = !DILocation(line: 276, column: 11, scope: !3200)
!3202 = !DILocation(line: 276, column: 16, scope: !3200)
!3203 = !DILocation(line: 275, column: 11, scope: !3181)
!3204 = !DILocation(line: 280, column: 3, scope: !3169)
!3205 = !DILocation(line: 102, column: 35, scope: !204)
!3206 = !DILocation(line: 102, column: 53, scope: !204)
!3207 = !DILocation(line: 103, column: 30, scope: !204)
!3208 = !DILocation(line: 103, column: 42, scope: !204)
!3209 = !DILocation(line: 104, column: 30, scope: !204)
!3210 = !DILocation(line: 104, column: 47, scope: !204)
!3211 = !DILocation(line: 115, column: 9, scope: !204)
!3212 = !DILocation(line: 116, column: 16, scope: !204)
!3213 = !DILocation(line: 116, column: 9, scope: !204)
!3214 = !DILocation(line: 117, column: 16, scope: !204)
!3215 = !DILocation(line: 117, column: 22, scope: !204)
!3216 = !DILocation(line: 117, column: 9, scope: !204)
!3217 = !DILocation(line: 110, column: 15, scope: !204)
!3218 = !DILocation(line: 120, column: 7, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !204, file: !205, line: 120, column: 7)
!3220 = !DILocation(line: 120, column: 7, scope: !204)
!3221 = !DILocation(line: 121, column: 15, scope: !3219)
!3222 = !DILocation(line: 121, column: 5, scope: !3219)
!3223 = !DILocation(line: 122, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !204, file: !205, line: 122, column: 7)
!3225 = !DILocation(line: 122, column: 7, scope: !204)
!3226 = !DILocation(line: 123, column: 16, scope: !3224)
!3227 = !DILocation(line: 123, column: 5, scope: !3224)
!3228 = !DILocation(line: 113, column: 9, scope: !204)
!3229 = !DILocation(line: 130, column: 17, scope: !245)
!3230 = !DILocation(line: 130, column: 7, scope: !204)
!3231 = !DILocation(line: 132, column: 11, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !205, line: 132, column: 11)
!3233 = distinct !DILexicalBlock(scope: !245, file: !205, line: 131, column: 5)
!3234 = !DILocation(line: 132, column: 11, scope: !3233)
!3235 = !DILocation(line: 133, column: 13, scope: !3232)
!3236 = !DILocation(line: 133, column: 9, scope: !3232)
!3237 = !DILocation(line: 137, column: 31, scope: !244)
!3238 = !DILocation(line: 137, column: 14, scope: !244)
!3239 = !DILocation(line: 138, column: 16, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !244, file: !205, line: 138, column: 11)
!3241 = !DILocation(line: 138, column: 11, scope: !244)
!3242 = !DILocation(line: 140, column: 35, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3240, file: !205, line: 139, column: 9)
!3244 = !DILocation(line: 140, column: 15, scope: !3243)
!3245 = !DILocation(line: 141, column: 11, scope: !3243)
!3246 = !DILocation(line: 141, column: 19, scope: !3243)
!3247 = !DILocation(line: 142, column: 9, scope: !3243)
!3248 = !DILocation(line: 0, scope: !3243)
!3249 = !DILocation(line: 145, column: 41, scope: !204)
!3250 = !DILocation(line: 145, column: 29, scope: !204)
!3251 = !DILocation(line: 145, column: 46, scope: !204)
!3252 = !DILocation(line: 145, column: 8, scope: !204)
!3253 = !DILocation(line: 114, column: 15, scope: !204)
!3254 = !DILocation(line: 158, column: 9, scope: !250)
!3255 = !DILocation(line: 158, column: 7, scope: !204)
!3256 = !DILocation(line: 161, column: 14, scope: !249)
!3257 = !DILocation(line: 161, column: 17, scope: !249)
!3258 = !DILocation(line: 161, column: 33, scope: !249)
!3259 = !DILocation(line: 111, column: 18, scope: !204)
!3260 = !DILocation(line: 162, column: 15, scope: !248)
!3261 = !DILocation(line: 162, column: 11, scope: !249)
!3262 = !DILocation(line: 164, column: 45, scope: !247)
!3263 = !DILocation(line: 164, column: 58, scope: !247)
!3264 = !DILocation(line: 164, column: 53, scope: !247)
!3265 = !DILocation(line: 165, column: 15, scope: !247)
!3266 = !DILocation(line: 173, column: 15, scope: !252)
!3267 = !DILocation(line: 173, column: 33, scope: !252)
!3268 = !DILocation(line: 174, column: 19, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !252, file: !205, line: 174, column: 19)
!3270 = !DILocation(line: 174, column: 52, scope: !3269)
!3271 = !DILocation(line: 175, column: 22, scope: !3269)
!3272 = !DILocation(line: 175, column: 26, scope: !3269)
!3273 = !DILocation(line: 175, column: 19, scope: !3269)
!3274 = !DILocation(line: 175, column: 39, scope: !3269)
!3275 = !DILocation(line: 175, column: 51, scope: !3269)
!3276 = !DILocation(line: 174, column: 19, scope: !252)
!3277 = !DILocation(line: 0, scope: !204)
!3278 = !DILocation(line: 0, scope: !3269)
!3279 = !DILocation(line: 179, column: 13, scope: !253)
!3280 = !DILocation(line: 183, column: 23, scope: !257)
!3281 = !{!1016, !898, i64 16}
!3282 = !DILocation(line: 184, column: 17, scope: !256)
!3283 = !DILocation(line: 184, column: 38, scope: !256)
!3284 = !DILocation(line: 184, column: 25, scope: !256)
!3285 = !DILocation(line: 188, column: 15, scope: !255)
!3286 = !DILocation(line: 188, column: 20, scope: !255)
!3287 = !DILocation(line: 189, column: 27, scope: !255)
!3288 = !DILocation(line: 190, column: 21, scope: !255)
!3289 = !DILocation(line: 112, column: 17, scope: !204)
!3290 = !DILocation(line: 191, column: 32, scope: !255)
!3291 = !DILocation(line: 191, column: 43, scope: !255)
!3292 = !{!1260, !781, i64 0}
!3293 = !DILocation(line: 191, column: 64, scope: !255)
!3294 = !DILocation(line: 191, column: 53, scope: !255)
!3295 = !DILocation(line: 191, column: 23, scope: !255)
!3296 = !DILocation(line: 192, column: 15, scope: !255)
!3297 = !DILocation(line: 193, column: 13, scope: !256)
!3298 = !DILocation(line: 193, column: 13, scope: !255)
!3299 = !DILocation(line: 0, scope: !257)
!3300 = !DILocation(line: 195, column: 7, scope: !249)
!3301 = !DILocation(line: 196, column: 5, scope: !249)
!3302 = !DILocation(line: 198, column: 9, scope: !265)
!3303 = !DILocation(line: 198, column: 30, scope: !265)
!3304 = !DILocation(line: 198, column: 17, scope: !265)
!3305 = !DILocation(line: 202, column: 14, scope: !264)
!3306 = !DILocation(line: 202, column: 17, scope: !264)
!3307 = !DILocation(line: 202, column: 33, scope: !264)
!3308 = !DILocation(line: 203, column: 15, scope: !263)
!3309 = !DILocation(line: 203, column: 11, scope: !264)
!3310 = !DILocation(line: 205, column: 11, scope: !262)
!3311 = !DILocation(line: 205, column: 29, scope: !262)
!3312 = !DILocation(line: 206, column: 15, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !262, file: !205, line: 206, column: 15)
!3314 = !DILocation(line: 206, column: 48, scope: !3313)
!3315 = !DILocation(line: 207, column: 18, scope: !3313)
!3316 = !DILocation(line: 207, column: 22, scope: !3313)
!3317 = !DILocation(line: 207, column: 15, scope: !3313)
!3318 = !DILocation(line: 207, column: 35, scope: !3313)
!3319 = !DILocation(line: 207, column: 47, scope: !3313)
!3320 = !DILocation(line: 206, column: 15, scope: !262)
!3321 = !DILocation(line: 0, scope: !3313)
!3322 = !DILocation(line: 211, column: 9, scope: !263)
!3323 = !DILocation(line: 211, column: 9, scope: !262)
!3324 = !DILocation(line: 213, column: 21, scope: !263)
!3325 = !DILocation(line: 0, scope: !263)
!3326 = !DILocation(line: 169, column: 25, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !253, file: !205, line: 166, column: 13)
!3328 = !DILocation(line: 214, column: 7, scope: !264)
!3329 = !DILocation(line: 215, column: 15, scope: !264)
!3330 = !DILocation(line: 216, column: 5, scope: !264)
!3331 = !DILocation(line: 218, column: 17, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !204, file: !205, line: 218, column: 7)
!3333 = !DILocation(line: 218, column: 7, scope: !204)
!3334 = !DILocation(line: 220, column: 12, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !205, line: 219, column: 5)
!3336 = !DILocation(line: 221, column: 11, scope: !3335)
!3337 = !DILocation(line: 222, column: 14, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3335, file: !205, line: 221, column: 11)
!3339 = !DILocation(line: 222, column: 9, scope: !3338)
!3340 = !DILocation(line: 223, column: 11, scope: !3335)
!3341 = !DILocation(line: 225, column: 21, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !205, line: 224, column: 9)
!3343 = distinct !DILexicalBlock(scope: !3335, file: !205, line: 223, column: 11)
!3344 = !DILocation(line: 227, column: 9, scope: !3342)
!3345 = !DILocation(line: 0, scope: !3232)
!3346 = !DILocation(line: 228, column: 11, scope: !3335)
!3347 = !DILocation(line: 230, column: 22, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !205, line: 229, column: 9)
!3349 = distinct !DILexicalBlock(scope: !3335, file: !205, line: 228, column: 11)
!3350 = !DILocation(line: 232, column: 9, scope: !3348)
!3351 = !DILocation(line: 0, scope: !264)
!3352 = !DILocation(line: 235, column: 3, scope: !204)
!3353 = !DILocation(line: 236, column: 3, scope: !204)
!3354 = !DILocation(line: 237, column: 10, scope: !204)
!3355 = !DILocation(line: 237, column: 22, scope: !204)
!3356 = !DILocation(line: 237, column: 3, scope: !204)
!3357 = distinct !DISubprogram(name: "version_etc_arn", scope: !274, file: !274, line: 62, type: !3358, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3414)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3360, !98, !98, !98, !3413, !57}
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3362, line: 7, baseType: !3363)
!3362 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3364, line: 49, size: 1728, elements: !3365)
!3364 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3365 = !{!3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3381, !3383, !3384, !3385, !3387, !3388, !3390, !3394, !3397, !3399, !3402, !3405, !3406, !3407, !3408, !3409}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3363, file: !3364, line: 51, baseType: !70, size: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3363, file: !3364, line: 54, baseType: !68, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3363, file: !3364, line: 55, baseType: !68, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3363, file: !3364, line: 56, baseType: !68, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3363, file: !3364, line: 57, baseType: !68, size: 64, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3363, file: !3364, line: 58, baseType: !68, size: 64, offset: 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3363, file: !3364, line: 59, baseType: !68, size: 64, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3363, file: !3364, line: 60, baseType: !68, size: 64, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3363, file: !3364, line: 61, baseType: !68, size: 64, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3363, file: !3364, line: 64, baseType: !68, size: 64, offset: 576)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3363, file: !3364, line: 65, baseType: !68, size: 64, offset: 640)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3363, file: !3364, line: 66, baseType: !68, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3363, file: !3364, line: 68, baseType: !3379, size: 64, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3364, line: 36, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3363, file: !3364, line: 70, baseType: !3382, size: 64, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3363, file: !3364, line: 72, baseType: !70, size: 32, offset: 896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3363, file: !3364, line: 73, baseType: !70, size: 32, offset: 928)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3363, file: !3364, line: 74, baseType: !3386, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !74, line: 150, baseType: !90)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3363, file: !3364, line: 77, baseType: !77, size: 16, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3363, file: !3364, line: 78, baseType: !3389, size: 8, offset: 1040)
!3389 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3363, file: !3364, line: 79, baseType: !3391, size: 8, offset: 1048)
!3391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8, elements: !3392)
!3392 = !{!3393}
!3393 = !DISubrange(count: 1)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3363, file: !3364, line: 81, baseType: !3395, size: 64, offset: 1088)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3364, line: 43, baseType: null)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3363, file: !3364, line: 89, baseType: !3398, size: 64, offset: 1152)
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !74, line: 151, baseType: !90)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3363, file: !3364, line: 91, baseType: !3400, size: 64, offset: 1216)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3364, line: 37, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3363, file: !3364, line: 92, baseType: !3403, size: 64, offset: 1280)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3364, line: 38, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3363, file: !3364, line: 93, baseType: !3382, size: 64, offset: 1344)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3363, file: !3364, line: 94, baseType: !55, size: 64, offset: 1408)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3363, file: !3364, line: 95, baseType: !57, size: 64, offset: 1472)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3363, file: !3364, line: 96, baseType: !70, size: 32, offset: 1536)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3363, file: !3364, line: 98, baseType: !3410, size: 160, offset: 1568)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 160, elements: !3411)
!3411 = !{!3412}
!3412 = !DISubrange(count: 20)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420}
!3415 = !DILocalVariable(name: "stream", arg: 1, scope: !3357, file: !274, line: 62, type: !3360)
!3416 = !DILocalVariable(name: "command_name", arg: 2, scope: !3357, file: !274, line: 63, type: !98)
!3417 = !DILocalVariable(name: "package", arg: 3, scope: !3357, file: !274, line: 63, type: !98)
!3418 = !DILocalVariable(name: "version", arg: 4, scope: !3357, file: !274, line: 64, type: !98)
!3419 = !DILocalVariable(name: "authors", arg: 5, scope: !3357, file: !274, line: 65, type: !3413)
!3420 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3357, file: !274, line: 65, type: !57)
!3421 = !DILocation(line: 62, column: 24, scope: !3357)
!3422 = !DILocation(line: 63, column: 30, scope: !3357)
!3423 = !DILocation(line: 63, column: 56, scope: !3357)
!3424 = !DILocation(line: 64, column: 30, scope: !3357)
!3425 = !DILocation(line: 65, column: 39, scope: !3357)
!3426 = !DILocation(line: 65, column: 55, scope: !3357)
!3427 = !DILocation(line: 67, column: 7, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3357, file: !274, line: 67, column: 7)
!3429 = !DILocation(line: 67, column: 7, scope: !3357)
!3430 = !DILocation(line: 68, column: 5, scope: !3428)
!3431 = !DILocation(line: 70, column: 5, scope: !3428)
!3432 = !DILocation(line: 84, column: 3, scope: !3357)
!3433 = !DILocation(line: 86, column: 3, scope: !3357)
!3434 = !DILocation(line: 95, column: 3, scope: !3357)
!3435 = !DILocation(line: 99, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3357, file: !274, line: 96, column: 5)
!3437 = !DILocation(line: 102, column: 7, scope: !3436)
!3438 = !DILocation(line: 103, column: 7, scope: !3436)
!3439 = !DILocation(line: 106, column: 7, scope: !3436)
!3440 = !DILocation(line: 107, column: 7, scope: !3436)
!3441 = !DILocation(line: 110, column: 7, scope: !3436)
!3442 = !DILocation(line: 112, column: 7, scope: !3436)
!3443 = !DILocation(line: 117, column: 7, scope: !3436)
!3444 = !DILocation(line: 119, column: 7, scope: !3436)
!3445 = !DILocation(line: 124, column: 7, scope: !3436)
!3446 = !DILocation(line: 126, column: 7, scope: !3436)
!3447 = !DILocation(line: 131, column: 7, scope: !3436)
!3448 = !DILocation(line: 134, column: 7, scope: !3436)
!3449 = !DILocation(line: 139, column: 7, scope: !3436)
!3450 = !DILocation(line: 142, column: 7, scope: !3436)
!3451 = !DILocation(line: 147, column: 7, scope: !3436)
!3452 = !DILocation(line: 151, column: 7, scope: !3436)
!3453 = !DILocation(line: 156, column: 7, scope: !3436)
!3454 = !DILocation(line: 160, column: 7, scope: !3436)
!3455 = !DILocation(line: 167, column: 7, scope: !3436)
!3456 = !DILocation(line: 171, column: 7, scope: !3436)
!3457 = !DILocation(line: 173, column: 1, scope: !3357)
!3458 = distinct !DISubprogram(name: "version_etc_ar", scope: !274, file: !274, line: 180, type: !3459, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{null, !3360, !98, !98, !98, !3413}
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467}
!3462 = !DILocalVariable(name: "stream", arg: 1, scope: !3458, file: !274, line: 180, type: !3360)
!3463 = !DILocalVariable(name: "command_name", arg: 2, scope: !3458, file: !274, line: 181, type: !98)
!3464 = !DILocalVariable(name: "package", arg: 3, scope: !3458, file: !274, line: 181, type: !98)
!3465 = !DILocalVariable(name: "version", arg: 4, scope: !3458, file: !274, line: 182, type: !98)
!3466 = !DILocalVariable(name: "authors", arg: 5, scope: !3458, file: !274, line: 182, type: !3413)
!3467 = !DILocalVariable(name: "n_authors", scope: !3458, file: !274, line: 184, type: !57)
!3468 = !DILocation(line: 180, column: 23, scope: !3458)
!3469 = !DILocation(line: 181, column: 29, scope: !3458)
!3470 = !DILocation(line: 181, column: 55, scope: !3458)
!3471 = !DILocation(line: 182, column: 29, scope: !3458)
!3472 = !DILocation(line: 182, column: 59, scope: !3458)
!3473 = !DILocation(line: 184, column: 10, scope: !3458)
!3474 = !DILocation(line: 186, column: 8, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3458, file: !274, line: 186, column: 3)
!3476 = !DILocation(line: 0, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3475, file: !274, line: 186, column: 3)
!3478 = !DILocation(line: 186, column: 23, scope: !3477)
!3479 = !DILocation(line: 186, column: 3, scope: !3475)
!3480 = !DILocation(line: 186, column: 52, scope: !3477)
!3481 = distinct !{!3481, !3479, !3482}
!3482 = !DILocation(line: 187, column: 5, scope: !3475)
!3483 = !DILocation(line: 188, column: 3, scope: !3458)
!3484 = !DILocation(line: 189, column: 1, scope: !3458)
!3485 = distinct !DISubprogram(name: "version_etc_va", scope: !274, file: !274, line: 196, type: !3486, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3495)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !3360, !98, !98, !98, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !271, line: 189, size: 192, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3494}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3489, file: !271, line: 189, baseType: !7, size: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3489, file: !271, line: 189, baseType: !7, size: 32, offset: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3489, file: !271, line: 189, baseType: !55, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3489, file: !271, line: 189, baseType: !55, size: 64, offset: 128)
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502}
!3496 = !DILocalVariable(name: "stream", arg: 1, scope: !3485, file: !274, line: 196, type: !3360)
!3497 = !DILocalVariable(name: "command_name", arg: 2, scope: !3485, file: !274, line: 197, type: !98)
!3498 = !DILocalVariable(name: "package", arg: 3, scope: !3485, file: !274, line: 197, type: !98)
!3499 = !DILocalVariable(name: "version", arg: 4, scope: !3485, file: !274, line: 198, type: !98)
!3500 = !DILocalVariable(name: "authors", arg: 5, scope: !3485, file: !274, line: 198, type: !3488)
!3501 = !DILocalVariable(name: "n_authors", scope: !3485, file: !274, line: 200, type: !57)
!3502 = !DILocalVariable(name: "authtab", scope: !3485, file: !274, line: 201, type: !3503)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 640, elements: !152)
!3504 = !DILocation(line: 196, column: 23, scope: !3485)
!3505 = !DILocation(line: 197, column: 29, scope: !3485)
!3506 = !DILocation(line: 197, column: 55, scope: !3485)
!3507 = !DILocation(line: 198, column: 29, scope: !3485)
!3508 = !DILocation(line: 198, column: 46, scope: !3485)
!3509 = !DILocation(line: 201, column: 3, scope: !3485)
!3510 = !DILocation(line: 201, column: 15, scope: !3485)
!3511 = !DILocation(line: 200, column: 10, scope: !3485)
!3512 = !DILocation(line: 205, column: 35, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !274, line: 203, column: 3)
!3514 = distinct !DILexicalBlock(scope: !3485, file: !274, line: 203, column: 3)
!3515 = !DILocation(line: 205, column: 14, scope: !3513)
!3516 = !DILocation(line: 205, column: 33, scope: !3513)
!3517 = !DILocation(line: 205, column: 67, scope: !3513)
!3518 = !DILocation(line: 203, column: 3, scope: !3514)
!3519 = !DILocation(line: 0, scope: !3513)
!3520 = !DILocation(line: 208, column: 3, scope: !3485)
!3521 = !DILocation(line: 210, column: 1, scope: !3485)
!3522 = distinct !DISubprogram(name: "version_etc", scope: !274, file: !274, line: 227, type: !3523, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{null, !3360, !98, !98, !98, null}
!3525 = !{!3526, !3527, !3528, !3529, !3530}
!3526 = !DILocalVariable(name: "stream", arg: 1, scope: !3522, file: !274, line: 227, type: !3360)
!3527 = !DILocalVariable(name: "command_name", arg: 2, scope: !3522, file: !274, line: 228, type: !98)
!3528 = !DILocalVariable(name: "package", arg: 3, scope: !3522, file: !274, line: 228, type: !98)
!3529 = !DILocalVariable(name: "version", arg: 4, scope: !3522, file: !274, line: 229, type: !98)
!3530 = !DILocalVariable(name: "authors", scope: !3522, file: !274, line: 231, type: !3531)
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3532, line: 52, baseType: !3533)
!3532 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3534, line: 48, baseType: !3535)
!3534 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !271, line: 231, baseType: !3536)
!3536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3489, size: 192, elements: !3392)
!3537 = !DILocation(line: 227, column: 20, scope: !3522)
!3538 = !DILocation(line: 228, column: 26, scope: !3522)
!3539 = !DILocation(line: 228, column: 52, scope: !3522)
!3540 = !DILocation(line: 229, column: 26, scope: !3522)
!3541 = !DILocation(line: 231, column: 3, scope: !3522)
!3542 = !DILocation(line: 231, column: 11, scope: !3522)
!3543 = !DILocation(line: 233, column: 3, scope: !3522)
!3544 = !DILocation(line: 234, column: 3, scope: !3522)
!3545 = !DILocation(line: 235, column: 3, scope: !3522)
!3546 = !DILocation(line: 236, column: 1, scope: !3522)
!3547 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !274, file: !274, line: 239, type: !1357, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !270, retainedNodes: !110)
!3548 = !DILocation(line: 245, column: 3, scope: !3547)
!3549 = !DILocation(line: 251, column: 3, scope: !3547)
!3550 = !DILocation(line: 256, column: 3, scope: !3547)
!3551 = !DILocation(line: 258, column: 1, scope: !3547)
!3552 = distinct !DISubprogram(name: "xnmalloc", scope: !51, file: !51, line: 99, type: !3553, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!55, !57, !57}
!3555 = !{!3556, !3557}
!3556 = !DILocalVariable(name: "n", arg: 1, scope: !3552, file: !51, line: 99, type: !57)
!3557 = !DILocalVariable(name: "s", arg: 2, scope: !3552, file: !51, line: 99, type: !57)
!3558 = !DILocation(line: 99, column: 18, scope: !3552)
!3559 = !DILocation(line: 99, column: 28, scope: !3552)
!3560 = !DILocation(line: 101, column: 7, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3552, file: !51, line: 101, column: 7)
!3562 = !DILocation(line: 101, column: 7, scope: !3552)
!3563 = !DILocation(line: 102, column: 5, scope: !3561)
!3564 = !DILocation(line: 103, column: 21, scope: !3552)
!3565 = !DILocalVariable(name: "n", arg: 1, scope: !3566, file: !3567, line: 39, type: !57)
!3566 = distinct !DISubprogram(name: "xmalloc", scope: !3567, file: !3567, line: 39, type: !3568, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3570)
!3567 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!55, !57}
!3570 = !{!3565, !3571}
!3571 = !DILocalVariable(name: "p", scope: !3566, file: !3567, line: 41, type: !55)
!3572 = !DILocation(line: 39, column: 17, scope: !3566, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 103, column: 10, scope: !3552)
!3574 = !DILocation(line: 41, column: 13, scope: !3566, inlinedAt: !3573)
!3575 = !DILocation(line: 41, column: 9, scope: !3566, inlinedAt: !3573)
!3576 = !DILocation(line: 42, column: 8, scope: !3577, inlinedAt: !3573)
!3577 = distinct !DILexicalBlock(scope: !3566, file: !3567, line: 42, column: 7)
!3578 = !DILocation(line: 42, column: 15, scope: !3577, inlinedAt: !3573)
!3579 = !DILocation(line: 42, column: 10, scope: !3577, inlinedAt: !3573)
!3580 = !DILocation(line: 43, column: 5, scope: !3577, inlinedAt: !3573)
!3581 = !DILocation(line: 103, column: 3, scope: !3552)
!3582 = !DILocation(line: 39, column: 17, scope: !3566)
!3583 = !DILocation(line: 41, column: 13, scope: !3566)
!3584 = !DILocation(line: 41, column: 9, scope: !3566)
!3585 = !DILocation(line: 42, column: 8, scope: !3577)
!3586 = !DILocation(line: 42, column: 15, scope: !3577)
!3587 = !DILocation(line: 42, column: 10, scope: !3577)
!3588 = !DILocation(line: 43, column: 5, scope: !3577)
!3589 = !DILocation(line: 44, column: 3, scope: !3566)
!3590 = distinct !DISubprogram(name: "xnrealloc", scope: !51, file: !51, line: 112, type: !3591, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!55, !55, !57, !57}
!3593 = !{!3594, !3595, !3596}
!3594 = !DILocalVariable(name: "p", arg: 1, scope: !3590, file: !51, line: 112, type: !55)
!3595 = !DILocalVariable(name: "n", arg: 2, scope: !3590, file: !51, line: 112, type: !57)
!3596 = !DILocalVariable(name: "s", arg: 3, scope: !3590, file: !51, line: 112, type: !57)
!3597 = !DILocation(line: 112, column: 18, scope: !3590)
!3598 = !DILocation(line: 112, column: 28, scope: !3590)
!3599 = !DILocation(line: 112, column: 38, scope: !3590)
!3600 = !DILocation(line: 114, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3590, file: !51, line: 114, column: 7)
!3602 = !DILocation(line: 114, column: 7, scope: !3590)
!3603 = !DILocation(line: 115, column: 5, scope: !3601)
!3604 = !DILocation(line: 116, column: 25, scope: !3590)
!3605 = !DILocalVariable(name: "p", arg: 1, scope: !3606, file: !3567, line: 51, type: !55)
!3606 = distinct !DISubprogram(name: "xrealloc", scope: !3567, file: !3567, line: 51, type: !3607, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!55, !55, !57}
!3609 = !{!3605, !3610}
!3610 = !DILocalVariable(name: "n", arg: 2, scope: !3606, file: !3567, line: 51, type: !57)
!3611 = !DILocation(line: 51, column: 17, scope: !3606, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 116, column: 10, scope: !3590)
!3613 = !DILocation(line: 51, column: 27, scope: !3606, inlinedAt: !3612)
!3614 = !DILocation(line: 53, column: 8, scope: !3615, inlinedAt: !3612)
!3615 = distinct !DILexicalBlock(scope: !3606, file: !3567, line: 53, column: 7)
!3616 = !DILocation(line: 53, column: 13, scope: !3615, inlinedAt: !3612)
!3617 = !DILocation(line: 53, column: 10, scope: !3615, inlinedAt: !3612)
!3618 = !DILocation(line: 57, column: 7, scope: !3619, inlinedAt: !3612)
!3619 = distinct !DILexicalBlock(scope: !3615, file: !3567, line: 54, column: 5)
!3620 = !DILocation(line: 58, column: 7, scope: !3619, inlinedAt: !3612)
!3621 = !DILocation(line: 61, column: 7, scope: !3606, inlinedAt: !3612)
!3622 = !DILocation(line: 62, column: 8, scope: !3623, inlinedAt: !3612)
!3623 = distinct !DILexicalBlock(scope: !3606, file: !3567, line: 62, column: 7)
!3624 = !DILocation(line: 62, column: 13, scope: !3623, inlinedAt: !3612)
!3625 = !DILocation(line: 62, column: 10, scope: !3623, inlinedAt: !3612)
!3626 = !DILocation(line: 63, column: 5, scope: !3623, inlinedAt: !3612)
!3627 = !DILocation(line: 0, scope: !3606, inlinedAt: !3612)
!3628 = !DILocation(line: 116, column: 3, scope: !3590)
!3629 = !DILocation(line: 51, column: 17, scope: !3606)
!3630 = !DILocation(line: 51, column: 27, scope: !3606)
!3631 = !DILocation(line: 53, column: 8, scope: !3615)
!3632 = !DILocation(line: 53, column: 13, scope: !3615)
!3633 = !DILocation(line: 53, column: 10, scope: !3615)
!3634 = !DILocation(line: 57, column: 7, scope: !3619)
!3635 = !DILocation(line: 58, column: 7, scope: !3619)
!3636 = !DILocation(line: 61, column: 7, scope: !3606)
!3637 = !DILocation(line: 62, column: 8, scope: !3623)
!3638 = !DILocation(line: 62, column: 13, scope: !3623)
!3639 = !DILocation(line: 62, column: 10, scope: !3623)
!3640 = !DILocation(line: 63, column: 5, scope: !3623)
!3641 = !DILocation(line: 0, scope: !3606)
!3642 = !DILocation(line: 65, column: 1, scope: !3606)
!3643 = !DILocation(line: 174, column: 19, scope: !282)
!3644 = !DILocation(line: 174, column: 30, scope: !282)
!3645 = !DILocation(line: 174, column: 41, scope: !282)
!3646 = !DILocation(line: 176, column: 14, scope: !282)
!3647 = !DILocation(line: 176, column: 10, scope: !282)
!3648 = !DILocation(line: 178, column: 9, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !282, file: !51, line: 178, column: 7)
!3650 = !DILocation(line: 178, column: 7, scope: !282)
!3651 = !DILocation(line: 180, column: 13, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !51, line: 180, column: 11)
!3653 = distinct !DILexicalBlock(scope: !3649, file: !51, line: 179, column: 5)
!3654 = !DILocation(line: 180, column: 11, scope: !3653)
!3655 = !DILocation(line: 188, column: 30, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3652, file: !51, line: 181, column: 9)
!3657 = !DILocation(line: 189, column: 16, scope: !3656)
!3658 = !DILocation(line: 189, column: 13, scope: !3656)
!3659 = !DILocation(line: 190, column: 9, scope: !3656)
!3660 = !DILocation(line: 0, scope: !3656)
!3661 = !DILocation(line: 191, column: 11, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3653, file: !51, line: 191, column: 11)
!3663 = !DILocation(line: 191, column: 11, scope: !3653)
!3664 = !DILocation(line: 206, column: 7, scope: !282)
!3665 = !DILocation(line: 207, column: 25, scope: !282)
!3666 = !DILocation(line: 51, column: 17, scope: !3606, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 207, column: 10, scope: !282)
!3668 = !DILocation(line: 51, column: 27, scope: !3606, inlinedAt: !3667)
!3669 = !DILocation(line: 53, column: 10, scope: !3615, inlinedAt: !3667)
!3670 = !DILocation(line: 192, column: 9, scope: !3662)
!3671 = !DILocation(line: 200, column: 69, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !51, line: 200, column: 11)
!3673 = distinct !DILexicalBlock(scope: !3649, file: !51, line: 195, column: 5)
!3674 = !DILocation(line: 201, column: 11, scope: !3672)
!3675 = !DILocation(line: 200, column: 11, scope: !3673)
!3676 = !DILocation(line: 202, column: 9, scope: !3672)
!3677 = !DILocation(line: 203, column: 14, scope: !3673)
!3678 = !DILocation(line: 203, column: 18, scope: !3673)
!3679 = !DILocation(line: 203, column: 9, scope: !3673)
!3680 = !DILocation(line: 53, column: 8, scope: !3615, inlinedAt: !3667)
!3681 = !DILocation(line: 57, column: 7, scope: !3619, inlinedAt: !3667)
!3682 = !DILocation(line: 58, column: 7, scope: !3619, inlinedAt: !3667)
!3683 = !DILocation(line: 61, column: 7, scope: !3606, inlinedAt: !3667)
!3684 = !DILocation(line: 62, column: 8, scope: !3623, inlinedAt: !3667)
!3685 = !DILocation(line: 62, column: 13, scope: !3623, inlinedAt: !3667)
!3686 = !DILocation(line: 62, column: 10, scope: !3623, inlinedAt: !3667)
!3687 = !DILocation(line: 63, column: 5, scope: !3623, inlinedAt: !3667)
!3688 = !DILocation(line: 0, scope: !3606, inlinedAt: !3667)
!3689 = !DILocation(line: 207, column: 3, scope: !282)
!3690 = distinct !DISubprogram(name: "xcharalloc", scope: !51, file: !51, line: 216, type: !2455, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3691)
!3691 = !{!3692}
!3692 = !DILocalVariable(name: "n", arg: 1, scope: !3690, file: !51, line: 216, type: !57)
!3693 = !DILocation(line: 216, column: 20, scope: !3690)
!3694 = !DILocation(line: 39, column: 17, scope: !3566, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 218, column: 10, scope: !3690)
!3696 = !DILocation(line: 41, column: 13, scope: !3566, inlinedAt: !3695)
!3697 = !DILocation(line: 41, column: 9, scope: !3566, inlinedAt: !3695)
!3698 = !DILocation(line: 42, column: 8, scope: !3577, inlinedAt: !3695)
!3699 = !DILocation(line: 42, column: 15, scope: !3577, inlinedAt: !3695)
!3700 = !DILocation(line: 42, column: 10, scope: !3577, inlinedAt: !3695)
!3701 = !DILocation(line: 43, column: 5, scope: !3577, inlinedAt: !3695)
!3702 = !DILocation(line: 218, column: 3, scope: !3690)
!3703 = distinct !DISubprogram(name: "x2realloc", scope: !3567, file: !3567, line: 74, type: !3704, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!55, !55, !56}
!3706 = !{!3707, !3708}
!3707 = !DILocalVariable(name: "p", arg: 1, scope: !3703, file: !3567, line: 74, type: !55)
!3708 = !DILocalVariable(name: "pn", arg: 2, scope: !3703, file: !3567, line: 74, type: !56)
!3709 = !DILocation(line: 74, column: 18, scope: !3703)
!3710 = !DILocation(line: 74, column: 29, scope: !3703)
!3711 = !DILocation(line: 174, column: 19, scope: !282, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 76, column: 10, scope: !3703)
!3713 = !DILocation(line: 174, column: 30, scope: !282, inlinedAt: !3712)
!3714 = !DILocation(line: 174, column: 41, scope: !282, inlinedAt: !3712)
!3715 = !DILocation(line: 176, column: 14, scope: !282, inlinedAt: !3712)
!3716 = !DILocation(line: 176, column: 10, scope: !282, inlinedAt: !3712)
!3717 = !DILocation(line: 178, column: 9, scope: !3649, inlinedAt: !3712)
!3718 = !DILocation(line: 178, column: 7, scope: !282, inlinedAt: !3712)
!3719 = !DILocation(line: 180, column: 13, scope: !3652, inlinedAt: !3712)
!3720 = !DILocation(line: 180, column: 11, scope: !3653, inlinedAt: !3712)
!3721 = !DILocation(line: 191, column: 11, scope: !3662, inlinedAt: !3712)
!3722 = !DILocation(line: 191, column: 11, scope: !3653, inlinedAt: !3712)
!3723 = !DILocation(line: 206, column: 7, scope: !282, inlinedAt: !3712)
!3724 = !DILocation(line: 51, column: 17, scope: !3606, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 207, column: 10, scope: !282, inlinedAt: !3712)
!3726 = !DILocation(line: 51, column: 27, scope: !3606, inlinedAt: !3725)
!3727 = !DILocation(line: 53, column: 10, scope: !3615, inlinedAt: !3725)
!3728 = !DILocation(line: 192, column: 9, scope: !3662, inlinedAt: !3712)
!3729 = !DILocation(line: 201, column: 11, scope: !3672, inlinedAt: !3712)
!3730 = !DILocation(line: 200, column: 11, scope: !3673, inlinedAt: !3712)
!3731 = !DILocation(line: 202, column: 9, scope: !3672, inlinedAt: !3712)
!3732 = !DILocation(line: 203, column: 14, scope: !3673, inlinedAt: !3712)
!3733 = !DILocation(line: 203, column: 18, scope: !3673, inlinedAt: !3712)
!3734 = !DILocation(line: 203, column: 9, scope: !3673, inlinedAt: !3712)
!3735 = !DILocation(line: 53, column: 8, scope: !3615, inlinedAt: !3725)
!3736 = !DILocation(line: 57, column: 7, scope: !3619, inlinedAt: !3725)
!3737 = !DILocation(line: 58, column: 7, scope: !3619, inlinedAt: !3725)
!3738 = !DILocation(line: 61, column: 7, scope: !3606, inlinedAt: !3725)
!3739 = !DILocation(line: 62, column: 8, scope: !3623, inlinedAt: !3725)
!3740 = !DILocation(line: 62, column: 13, scope: !3623, inlinedAt: !3725)
!3741 = !DILocation(line: 62, column: 10, scope: !3623, inlinedAt: !3725)
!3742 = !DILocation(line: 63, column: 5, scope: !3623, inlinedAt: !3725)
!3743 = !DILocation(line: 0, scope: !3606, inlinedAt: !3725)
!3744 = !DILocation(line: 76, column: 3, scope: !3703)
!3745 = distinct !DISubprogram(name: "xzalloc", scope: !3567, file: !3567, line: 84, type: !3568, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3746)
!3746 = !{!3747}
!3747 = !DILocalVariable(name: "s", arg: 1, scope: !3745, file: !3567, line: 84, type: !57)
!3748 = !DILocation(line: 84, column: 17, scope: !3745)
!3749 = !DILocation(line: 39, column: 17, scope: !3566, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 86, column: 18, scope: !3745)
!3751 = !DILocation(line: 41, column: 13, scope: !3566, inlinedAt: !3750)
!3752 = !DILocation(line: 41, column: 9, scope: !3566, inlinedAt: !3750)
!3753 = !DILocation(line: 42, column: 8, scope: !3577, inlinedAt: !3750)
!3754 = !DILocation(line: 42, column: 15, scope: !3577, inlinedAt: !3750)
!3755 = !DILocation(line: 42, column: 10, scope: !3577, inlinedAt: !3750)
!3756 = !DILocation(line: 43, column: 5, scope: !3577, inlinedAt: !3750)
!3757 = !DILocation(line: 86, column: 10, scope: !3745)
!3758 = !DILocation(line: 86, column: 3, scope: !3745)
!3759 = distinct !DISubprogram(name: "xcalloc", scope: !3567, file: !3567, line: 93, type: !3553, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DILocalVariable(name: "n", arg: 1, scope: !3759, file: !3567, line: 93, type: !57)
!3762 = !DILocalVariable(name: "s", arg: 2, scope: !3759, file: !3567, line: 93, type: !57)
!3763 = !DILocalVariable(name: "p", scope: !3759, file: !3567, line: 95, type: !55)
!3764 = !DILocation(line: 93, column: 17, scope: !3759)
!3765 = !DILocation(line: 93, column: 27, scope: !3759)
!3766 = !DILocation(line: 100, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3759, file: !3567, line: 100, column: 7)
!3768 = !DILocation(line: 101, column: 7, scope: !3767)
!3769 = !DILocation(line: 101, column: 18, scope: !3767)
!3770 = !DILocation(line: 95, column: 9, scope: !3759)
!3771 = !DILocation(line: 101, column: 16, scope: !3767)
!3772 = !DILocation(line: 100, column: 7, scope: !3759)
!3773 = !DILocation(line: 102, column: 5, scope: !3767)
!3774 = !DILocation(line: 103, column: 3, scope: !3759)
!3775 = distinct !DISubprogram(name: "xmemdup", scope: !3567, file: !3567, line: 111, type: !3776, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3780)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!55, !3778, !57}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3780 = !{!3781, !3782}
!3781 = !DILocalVariable(name: "p", arg: 1, scope: !3775, file: !3567, line: 111, type: !3778)
!3782 = !DILocalVariable(name: "s", arg: 2, scope: !3775, file: !3567, line: 111, type: !57)
!3783 = !DILocation(line: 111, column: 22, scope: !3775)
!3784 = !DILocation(line: 111, column: 32, scope: !3775)
!3785 = !DILocation(line: 39, column: 17, scope: !3566, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 113, column: 18, scope: !3775)
!3787 = !DILocation(line: 41, column: 13, scope: !3566, inlinedAt: !3786)
!3788 = !DILocation(line: 41, column: 9, scope: !3566, inlinedAt: !3786)
!3789 = !DILocation(line: 42, column: 8, scope: !3577, inlinedAt: !3786)
!3790 = !DILocation(line: 42, column: 15, scope: !3577, inlinedAt: !3786)
!3791 = !DILocation(line: 42, column: 10, scope: !3577, inlinedAt: !3786)
!3792 = !DILocation(line: 43, column: 5, scope: !3577, inlinedAt: !3786)
!3793 = !DILocation(line: 113, column: 10, scope: !3775)
!3794 = !DILocation(line: 113, column: 3, scope: !3775)
!3795 = distinct !DISubprogram(name: "xstrdup", scope: !3567, file: !3567, line: 119, type: !2659, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3796)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "string", arg: 1, scope: !3795, file: !3567, line: 119, type: !98)
!3798 = !DILocation(line: 119, column: 22, scope: !3795)
!3799 = !DILocation(line: 121, column: 27, scope: !3795)
!3800 = !DILocation(line: 121, column: 43, scope: !3795)
!3801 = !DILocation(line: 111, column: 22, scope: !3775, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 121, column: 10, scope: !3795)
!3803 = !DILocation(line: 111, column: 32, scope: !3775, inlinedAt: !3802)
!3804 = !DILocation(line: 39, column: 17, scope: !3566, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 113, column: 18, scope: !3775, inlinedAt: !3802)
!3806 = !DILocation(line: 41, column: 13, scope: !3566, inlinedAt: !3805)
!3807 = !DILocation(line: 41, column: 9, scope: !3566, inlinedAt: !3805)
!3808 = !DILocation(line: 42, column: 8, scope: !3577, inlinedAt: !3805)
!3809 = !DILocation(line: 42, column: 15, scope: !3577, inlinedAt: !3805)
!3810 = !DILocation(line: 42, column: 10, scope: !3577, inlinedAt: !3805)
!3811 = !DILocation(line: 43, column: 5, scope: !3577, inlinedAt: !3805)
!3812 = !DILocation(line: 113, column: 10, scope: !3775, inlinedAt: !3802)
!3813 = !DILocation(line: 121, column: 3, scope: !3795)
!3814 = distinct !DISubprogram(name: "xalloc_die", scope: !3815, file: !3815, line: 32, type: !1357, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !289, retainedNodes: !110)
!3815 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3816 = !DILocation(line: 34, column: 10, scope: !3814)
!3817 = !DILocation(line: 34, column: 33, scope: !3814)
!3818 = !DILocation(line: 34, column: 3, scope: !3814)
!3819 = !DILocation(line: 40, column: 3, scope: !3814)
!3820 = distinct !DISubprogram(name: "xgetgroups", scope: !3821, file: !3821, line: 31, type: !707, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !3822)
!3821 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3822 = !{!3823, !3824, !3825, !3826}
!3823 = !DILocalVariable(name: "username", arg: 1, scope: !3820, file: !3821, line: 31, type: !98)
!3824 = !DILocalVariable(name: "gid", arg: 2, scope: !3820, file: !3821, line: 31, type: !75)
!3825 = !DILocalVariable(name: "groups", arg: 3, scope: !3820, file: !3821, line: 31, type: !709)
!3826 = !DILocalVariable(name: "result", scope: !3820, file: !3821, line: 33, type: !70)
!3827 = !DILocation(line: 31, column: 25, scope: !3820)
!3828 = !DILocation(line: 31, column: 41, scope: !3820)
!3829 = !DILocation(line: 31, column: 54, scope: !3820)
!3830 = !DILocation(line: 33, column: 16, scope: !3820)
!3831 = !DILocation(line: 33, column: 7, scope: !3820)
!3832 = !DILocation(line: 34, column: 14, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3820, file: !3821, line: 34, column: 7)
!3834 = !DILocation(line: 34, column: 20, scope: !3833)
!3835 = !DILocation(line: 34, column: 23, scope: !3833)
!3836 = !DILocation(line: 34, column: 29, scope: !3833)
!3837 = !DILocation(line: 34, column: 7, scope: !3820)
!3838 = !DILocation(line: 35, column: 5, scope: !3833)
!3839 = !DILocation(line: 36, column: 3, scope: !3820)
!3840 = distinct !DISubprogram(name: "xstrtoul", scope: !3841, file: !3841, line: 88, type: !3842, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !293, retainedNodes: !3846)
!3841 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!3844, !98, !86, !70, !3845, !98}
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !28, line: 39, baseType: !27)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!3846 = !{!3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3859, !3860, !3863, !3864}
!3847 = !DILocalVariable(name: "s", arg: 1, scope: !3840, file: !3841, line: 88, type: !98)
!3848 = !DILocalVariable(name: "ptr", arg: 2, scope: !3840, file: !3841, line: 88, type: !86)
!3849 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3840, file: !3841, line: 88, type: !70)
!3850 = !DILocalVariable(name: "val", arg: 4, scope: !3840, file: !3841, line: 89, type: !3845)
!3851 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3840, file: !3841, line: 89, type: !98)
!3852 = !DILocalVariable(name: "t_ptr", scope: !3840, file: !3841, line: 91, type: !68)
!3853 = !DILocalVariable(name: "p", scope: !3840, file: !3841, line: 92, type: !86)
!3854 = !DILocalVariable(name: "tmp", scope: !3840, file: !3841, line: 93, type: !59)
!3855 = !DILocalVariable(name: "err", scope: !3840, file: !3841, line: 94, type: !3844)
!3856 = !DILocalVariable(name: "q", scope: !3857, file: !3841, line: 104, type: !98)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !3841, line: 103, column: 5)
!3858 = distinct !DILexicalBlock(scope: !3840, file: !3841, line: 102, column: 7)
!3859 = !DILocalVariable(name: "ch", scope: !3857, file: !3841, line: 105, type: !1480)
!3860 = !DILocalVariable(name: "base", scope: !3861, file: !3841, line: 141, type: !70)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !3841, line: 140, column: 5)
!3862 = distinct !DILexicalBlock(scope: !3840, file: !3841, line: 139, column: 7)
!3863 = !DILocalVariable(name: "suffixes", scope: !3861, file: !3841, line: 142, type: !70)
!3864 = !DILocalVariable(name: "overflow", scope: !3861, file: !3841, line: 143, type: !3844)
!3865 = !DILocation(line: 88, column: 24, scope: !3840)
!3866 = !DILocation(line: 88, column: 34, scope: !3840)
!3867 = !DILocation(line: 88, column: 43, scope: !3840)
!3868 = !DILocation(line: 89, column: 24, scope: !3840)
!3869 = !DILocation(line: 89, column: 41, scope: !3840)
!3870 = !DILocation(line: 91, column: 3, scope: !3840)
!3871 = !DILocation(line: 94, column: 16, scope: !3840)
!3872 = !DILocation(line: 96, column: 3, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !3841, line: 96, column: 3)
!3874 = distinct !DILexicalBlock(scope: !3840, file: !3841, line: 96, column: 3)
!3875 = !DILocation(line: 98, column: 8, scope: !3840)
!3876 = !DILocation(line: 92, column: 10, scope: !3840)
!3877 = !DILocation(line: 100, column: 3, scope: !3840)
!3878 = !DILocation(line: 100, column: 9, scope: !3840)
!3879 = !DILocation(line: 104, column: 19, scope: !3857)
!3880 = !DILocation(line: 105, column: 21, scope: !3857)
!3881 = !DILocation(line: 106, column: 14, scope: !3857)
!3882 = !DILocation(line: 106, column: 7, scope: !3857)
!3883 = !DILocation(line: 0, scope: !3857)
!3884 = !DILocation(line: 107, column: 15, scope: !3857)
!3885 = distinct !{!3885, !3882, !3886}
!3886 = !DILocation(line: 107, column: 17, scope: !3857)
!3887 = !DILocation(line: 108, column: 14, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3857, file: !3841, line: 108, column: 11)
!3889 = !DILocation(line: 112, column: 9, scope: !3840)
!3890 = !DILocation(line: 93, column: 14, scope: !3840)
!3891 = !DILocation(line: 114, column: 7, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3840, file: !3841, line: 114, column: 7)
!3893 = !DILocation(line: 114, column: 10, scope: !3892)
!3894 = !DILocation(line: 114, column: 7, scope: !3840)
!3895 = !DILocation(line: 118, column: 11, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !3841, line: 118, column: 11)
!3897 = distinct !DILexicalBlock(scope: !3892, file: !3841, line: 115, column: 5)
!3898 = !DILocation(line: 118, column: 26, scope: !3896)
!3899 = !DILocation(line: 118, column: 29, scope: !3896)
!3900 = !DILocation(line: 118, column: 33, scope: !3896)
!3901 = !DILocation(line: 118, column: 36, scope: !3896)
!3902 = !DILocation(line: 118, column: 11, scope: !3897)
!3903 = !DILocation(line: 123, column: 12, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3892, file: !3841, line: 123, column: 12)
!3905 = !DILocation(line: 123, column: 12, scope: !3892)
!3906 = !DILocation(line: 128, column: 5, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3904, file: !3841, line: 124, column: 5)
!3908 = !DILocation(line: 0, scope: !3840)
!3909 = !DILocation(line: 133, column: 8, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3840, file: !3841, line: 133, column: 7)
!3911 = !DILocation(line: 133, column: 7, scope: !3840)
!3912 = !DILocation(line: 135, column: 12, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3910, file: !3841, line: 134, column: 5)
!3914 = !DILocation(line: 136, column: 7, scope: !3913)
!3915 = !DILocation(line: 139, column: 7, scope: !3862)
!3916 = !DILocation(line: 139, column: 11, scope: !3862)
!3917 = !DILocation(line: 139, column: 7, scope: !3840)
!3918 = !DILocation(line: 141, column: 11, scope: !3861)
!3919 = !DILocation(line: 142, column: 11, scope: !3861)
!3920 = !DILocation(line: 145, column: 12, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3861, file: !3841, line: 145, column: 11)
!3922 = !DILocation(line: 145, column: 11, scope: !3861)
!3923 = !DILocation(line: 147, column: 16, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3921, file: !3841, line: 146, column: 9)
!3925 = !DILocation(line: 148, column: 22, scope: !3924)
!3926 = !DILocation(line: 148, column: 11, scope: !3924)
!3927 = !DILocation(line: 151, column: 7, scope: !3861)
!3928 = !DILocation(line: 163, column: 15, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !3841, line: 163, column: 15)
!3930 = distinct !DILexicalBlock(scope: !3861, file: !3841, line: 152, column: 9)
!3931 = !DILocation(line: 163, column: 15, scope: !3930)
!3932 = !DILocation(line: 164, column: 21, scope: !3929)
!3933 = !DILocation(line: 164, column: 13, scope: !3929)
!3934 = !DILocation(line: 167, column: 21, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !3841, line: 167, column: 21)
!3936 = distinct !DILexicalBlock(scope: !3929, file: !3841, line: 165, column: 15)
!3937 = !DILocation(line: 167, column: 29, scope: !3935)
!3938 = !DILocation(line: 167, column: 21, scope: !3936)
!3939 = !DILocation(line: 175, column: 17, scope: !3936)
!3940 = !DILocation(line: 179, column: 7, scope: !3861)
!3941 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3942, file: !3841, line: 60, type: !70)
!3942 = distinct !DISubprogram(name: "bkm_scale", scope: !3841, file: !3841, line: 60, type: !3943, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !293, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!3844, !3845, !70}
!3945 = !{!3946, !3941}
!3946 = !DILocalVariable(name: "x", arg: 1, scope: !3942, file: !3841, line: 60, type: !3845)
!3947 = !DILocation(line: 60, column: 31, scope: !3942, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 182, column: 22, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3861, file: !3841, line: 180, column: 9)
!3950 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !3948)
!3951 = distinct !DILexicalBlock(scope: !3942, file: !3841, line: 67, column: 7)
!3952 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !3948)
!3953 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !3948)
!3954 = !DILocation(line: 143, column: 20, scope: !3861)
!3955 = !DILocation(line: 183, column: 11, scope: !3949)
!3956 = !DILocation(line: 60, column: 31, scope: !3942, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 189, column: 22, scope: !3949)
!3958 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !3957)
!3959 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !3957)
!3960 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !3957)
!3961 = !DILocation(line: 190, column: 11, scope: !3949)
!3962 = !DILocalVariable(name: "power", arg: 3, scope: !3963, file: !3841, line: 77, type: !70)
!3963 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3841, file: !3841, line: 77, type: !3964, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !293, retainedNodes: !3966)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!3844, !3845, !70, !70}
!3966 = !{!3967, !3968, !3962, !3969}
!3967 = !DILocalVariable(name: "x", arg: 1, scope: !3963, file: !3841, line: 77, type: !3845)
!3968 = !DILocalVariable(name: "base", arg: 2, scope: !3963, file: !3841, line: 77, type: !70)
!3969 = !DILocalVariable(name: "err", scope: !3963, file: !3841, line: 79, type: !3844)
!3970 = !DILocation(line: 77, column: 50, scope: !3963, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 197, column: 22, scope: !3949)
!3972 = !DILocation(line: 79, column: 16, scope: !3963, inlinedAt: !3971)
!3973 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 81, column: 12, scope: !3963, inlinedAt: !3971)
!3975 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !3974)
!3976 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !3974)
!3977 = !DILocation(line: 81, column: 9, scope: !3963, inlinedAt: !3971)
!3978 = !DILocation(line: 241, column: 11, scope: !3861)
!3979 = !DILocation(line: 77, column: 50, scope: !3963, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 202, column: 22, scope: !3949)
!3981 = !DILocation(line: 79, column: 16, scope: !3963, inlinedAt: !3980)
!3982 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 81, column: 12, scope: !3963, inlinedAt: !3980)
!3984 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !3983)
!3985 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !3983)
!3986 = !DILocation(line: 81, column: 9, scope: !3963, inlinedAt: !3980)
!3987 = !DILocation(line: 77, column: 50, scope: !3963, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 207, column: 22, scope: !3949)
!3989 = !DILocation(line: 79, column: 16, scope: !3963, inlinedAt: !3988)
!3990 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 81, column: 12, scope: !3963, inlinedAt: !3988)
!3992 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !3991)
!3993 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !3991)
!3994 = !DILocation(line: 77, column: 50, scope: !3963, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 212, column: 22, scope: !3949)
!3996 = !DILocation(line: 79, column: 16, scope: !3963, inlinedAt: !3995)
!3997 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 81, column: 12, scope: !3963, inlinedAt: !3995)
!3999 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !3998)
!4000 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !3998)
!4001 = !DILocation(line: 81, column: 9, scope: !3963, inlinedAt: !3995)
!4002 = !DILocation(line: 77, column: 50, scope: !3963, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 216, column: 22, scope: !3949)
!4004 = !DILocation(line: 79, column: 16, scope: !3963, inlinedAt: !4003)
!4005 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 81, column: 12, scope: !3963, inlinedAt: !4003)
!4007 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !4006)
!4008 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !4006)
!4009 = !DILocation(line: 81, column: 9, scope: !3963, inlinedAt: !4003)
!4010 = !DILocation(line: 77, column: 50, scope: !3963, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 221, column: 22, scope: !3949)
!4012 = !DILocation(line: 79, column: 16, scope: !3963, inlinedAt: !4011)
!4013 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 81, column: 12, scope: !3963, inlinedAt: !4011)
!4015 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !4014)
!4016 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !4014)
!4017 = !DILocation(line: 81, column: 9, scope: !3963, inlinedAt: !4011)
!4018 = !DILocation(line: 60, column: 31, scope: !3942, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 225, column: 22, scope: !3949)
!4020 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !4019)
!4021 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !4019)
!4022 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !4019)
!4023 = !DILocation(line: 226, column: 11, scope: !3949)
!4024 = !DILocation(line: 77, column: 50, scope: !3963, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 229, column: 22, scope: !3949)
!4026 = !DILocation(line: 79, column: 16, scope: !3963, inlinedAt: !4025)
!4027 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 81, column: 12, scope: !3963, inlinedAt: !4025)
!4029 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !4028)
!4030 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !4028)
!4031 = !DILocation(line: 81, column: 9, scope: !3963, inlinedAt: !4025)
!4032 = !DILocation(line: 77, column: 50, scope: !3963, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 233, column: 22, scope: !3949)
!4034 = !DILocation(line: 79, column: 16, scope: !3963, inlinedAt: !4033)
!4035 = !DILocation(line: 67, column: 39, scope: !3951, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 81, column: 12, scope: !3963, inlinedAt: !4033)
!4037 = !DILocation(line: 72, column: 6, scope: !3942, inlinedAt: !4036)
!4038 = !DILocation(line: 67, column: 7, scope: !3942, inlinedAt: !4036)
!4039 = !DILocation(line: 81, column: 9, scope: !3963, inlinedAt: !4033)
!4040 = !DILocation(line: 237, column: 16, scope: !3949)
!4041 = !DILocation(line: 238, column: 22, scope: !3949)
!4042 = !DILocation(line: 238, column: 11, scope: !3949)
!4043 = !DILocation(line: 0, scope: !3896)
!4044 = !DILocation(line: 0, scope: !3949)
!4045 = !DILocation(line: 242, column: 10, scope: !3861)
!4046 = !DILocation(line: 243, column: 11, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !3861, file: !3841, line: 243, column: 11)
!4048 = !DILocation(line: 244, column: 13, scope: !4047)
!4049 = !DILocation(line: 243, column: 11, scope: !3861)
!4050 = !DILocation(line: 119, column: 13, scope: !3896)
!4051 = !DILocation(line: 247, column: 8, scope: !3840)
!4052 = !DILocation(line: 248, column: 3, scope: !3840)
!4053 = !DILocation(line: 0, scope: !3888)
!4054 = !DILocation(line: 249, column: 1, scope: !3840)
!4055 = distinct !DISubprogram(name: "rpl_calloc", scope: !4056, file: !4056, line: 42, type: !3553, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !297, retainedNodes: !4057)
!4056 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4057 = !{!4058, !4059, !4060, !4061}
!4058 = !DILocalVariable(name: "n", arg: 1, scope: !4055, file: !4056, line: 42, type: !57)
!4059 = !DILocalVariable(name: "s", arg: 2, scope: !4055, file: !4056, line: 42, type: !57)
!4060 = !DILocalVariable(name: "result", scope: !4055, file: !4056, line: 44, type: !55)
!4061 = !DILocalVariable(name: "bytes", scope: !4062, file: !4056, line: 56, type: !57)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !4056, line: 53, column: 5)
!4063 = distinct !DILexicalBlock(scope: !4055, file: !4056, line: 47, column: 7)
!4064 = !DILocation(line: 42, column: 20, scope: !4055)
!4065 = !DILocation(line: 42, column: 30, scope: !4055)
!4066 = !DILocation(line: 47, column: 9, scope: !4063)
!4067 = !DILocation(line: 47, column: 19, scope: !4063)
!4068 = !DILocation(line: 47, column: 14, scope: !4063)
!4069 = !DILocation(line: 56, column: 24, scope: !4062)
!4070 = !DILocation(line: 56, column: 14, scope: !4062)
!4071 = !DILocation(line: 57, column: 17, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4062, file: !4056, line: 57, column: 11)
!4073 = !DILocation(line: 57, column: 21, scope: !4072)
!4074 = !DILocation(line: 57, column: 11, scope: !4062)
!4075 = !DILocation(line: 59, column: 11, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !4056, line: 58, column: 9)
!4077 = !DILocation(line: 59, column: 17, scope: !4076)
!4078 = !DILocation(line: 65, column: 12, scope: !4055)
!4079 = !DILocation(line: 44, column: 9, scope: !4055)
!4080 = !DILocation(line: 72, column: 3, scope: !4055)
!4081 = !DILocation(line: 0, scope: !4076)
!4082 = !DILocation(line: 73, column: 1, scope: !4055)
!4083 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4084, file: !4084, line: 385, type: !4085, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !299, retainedNodes: !4099)
!4084 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!57, !4087, !98, !57, !4088}
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1620, line: 6, baseType: !4090)
!4090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1622, line: 21, baseType: !4091)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1622, line: 13, size: 64, elements: !4092)
!4092 = !{!4093, !4094}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4091, file: !1622, line: 15, baseType: !70, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4091, file: !1622, line: 20, baseType: !4095, size: 32, offset: 32)
!4095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4091, file: !1622, line: 16, size: 32, elements: !4096)
!4096 = !{!4097, !4098}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4095, file: !1622, line: 18, baseType: !7, size: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4095, file: !1622, line: 19, baseType: !1631, size: 32)
!4099 = !{!4100, !4101, !4102, !4103, !4104, !4105, !4106}
!4100 = !DILocalVariable(name: "pwc", arg: 1, scope: !4083, file: !4084, line: 385, type: !4087)
!4101 = !DILocalVariable(name: "s", arg: 2, scope: !4083, file: !4084, line: 385, type: !98)
!4102 = !DILocalVariable(name: "n", arg: 3, scope: !4083, file: !4084, line: 385, type: !57)
!4103 = !DILocalVariable(name: "ps", arg: 4, scope: !4083, file: !4084, line: 385, type: !4088)
!4104 = !DILocalVariable(name: "ret", scope: !4083, file: !4084, line: 387, type: !57)
!4105 = !DILocalVariable(name: "wc", scope: !4083, file: !4084, line: 388, type: !1636)
!4106 = !DILocalVariable(name: "uc", scope: !4107, file: !4084, line: 449, type: !1480)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !4084, line: 448, column: 5)
!4108 = distinct !DILexicalBlock(scope: !4083, file: !4084, line: 447, column: 7)
!4109 = !DILocation(line: 385, column: 23, scope: !4083)
!4110 = !DILocation(line: 385, column: 40, scope: !4083)
!4111 = !DILocation(line: 385, column: 50, scope: !4083)
!4112 = !DILocation(line: 385, column: 64, scope: !4083)
!4113 = !DILocation(line: 388, column: 3, scope: !4083)
!4114 = !DILocation(line: 404, column: 9, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4083, file: !4084, line: 404, column: 7)
!4116 = !DILocation(line: 404, column: 7, scope: !4083)
!4117 = !DILocation(line: 439, column: 9, scope: !4083)
!4118 = !DILocation(line: 387, column: 10, scope: !4083)
!4119 = !DILocation(line: 447, column: 19, scope: !4108)
!4120 = !DILocation(line: 447, column: 31, scope: !4108)
!4121 = !DILocation(line: 447, column: 26, scope: !4108)
!4122 = !DILocation(line: 447, column: 41, scope: !4108)
!4123 = !DILocation(line: 447, column: 7, scope: !4083)
!4124 = !DILocation(line: 449, column: 26, scope: !4107)
!4125 = !DILocation(line: 449, column: 21, scope: !4107)
!4126 = !DILocation(line: 450, column: 14, scope: !4107)
!4127 = !DILocation(line: 450, column: 12, scope: !4107)
!4128 = !DILocation(line: 0, scope: !4107)
!4129 = !DILocation(line: 456, column: 1, scope: !4083)
!4130 = distinct !DISubprogram(name: "close_stream", scope: !4131, file: !4131, line: 56, type: !4132, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !302, retainedNodes: !4168)
!4131 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!70, !4134}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3362, line: 7, baseType: !4136)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3364, line: 49, size: 1728, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4136, file: !3364, line: 51, baseType: !70, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4136, file: !3364, line: 54, baseType: !68, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4136, file: !3364, line: 55, baseType: !68, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4136, file: !3364, line: 56, baseType: !68, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4136, file: !3364, line: 57, baseType: !68, size: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4136, file: !3364, line: 58, baseType: !68, size: 64, offset: 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4136, file: !3364, line: 59, baseType: !68, size: 64, offset: 384)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4136, file: !3364, line: 60, baseType: !68, size: 64, offset: 448)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4136, file: !3364, line: 61, baseType: !68, size: 64, offset: 512)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4136, file: !3364, line: 64, baseType: !68, size: 64, offset: 576)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4136, file: !3364, line: 65, baseType: !68, size: 64, offset: 640)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4136, file: !3364, line: 66, baseType: !68, size: 64, offset: 704)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4136, file: !3364, line: 68, baseType: !3379, size: 64, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4136, file: !3364, line: 70, baseType: !4152, size: 64, offset: 832)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4136, file: !3364, line: 72, baseType: !70, size: 32, offset: 896)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4136, file: !3364, line: 73, baseType: !70, size: 32, offset: 928)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4136, file: !3364, line: 74, baseType: !3386, size: 64, offset: 960)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4136, file: !3364, line: 77, baseType: !77, size: 16, offset: 1024)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4136, file: !3364, line: 78, baseType: !3389, size: 8, offset: 1040)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4136, file: !3364, line: 79, baseType: !3391, size: 8, offset: 1048)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4136, file: !3364, line: 81, baseType: !3395, size: 64, offset: 1088)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4136, file: !3364, line: 89, baseType: !3398, size: 64, offset: 1152)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4136, file: !3364, line: 91, baseType: !3400, size: 64, offset: 1216)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4136, file: !3364, line: 92, baseType: !3403, size: 64, offset: 1280)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4136, file: !3364, line: 93, baseType: !4152, size: 64, offset: 1344)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4136, file: !3364, line: 94, baseType: !55, size: 64, offset: 1408)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4136, file: !3364, line: 95, baseType: !57, size: 64, offset: 1472)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4136, file: !3364, line: 96, baseType: !70, size: 32, offset: 1536)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4136, file: !3364, line: 98, baseType: !3410, size: 160, offset: 1568)
!4168 = !{!4169, !4170, !4172, !4173}
!4169 = !DILocalVariable(name: "stream", arg: 1, scope: !4130, file: !4131, line: 56, type: !4134)
!4170 = !DILocalVariable(name: "some_pending", scope: !4130, file: !4131, line: 58, type: !4171)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!4172 = !DILocalVariable(name: "prev_fail", scope: !4130, file: !4131, line: 59, type: !4171)
!4173 = !DILocalVariable(name: "fclose_fail", scope: !4130, file: !4131, line: 60, type: !4171)
!4174 = !DILocation(line: 56, column: 21, scope: !4130)
!4175 = !DILocation(line: 58, column: 30, scope: !4130)
!4176 = !DILocalVariable(name: "__stream", arg: 1, scope: !4177, file: !4178, line: 135, type: !4134)
!4177 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4178, file: !4178, line: 135, type: !4132, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !302, retainedNodes: !4179)
!4178 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4179 = !{!4176}
!4180 = !DILocation(line: 135, column: 1, scope: !4177, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 59, column: 27, scope: !4130)
!4182 = !DILocation(line: 137, column: 10, scope: !4177, inlinedAt: !4181)
!4183 = !{!4184, !898, i64 0}
!4184 = !{!"_IO_FILE", !898, i64 0, !781, i64 8, !781, i64 16, !781, i64 24, !781, i64 32, !781, i64 40, !781, i64 48, !781, i64 56, !781, i64 64, !781, i64 72, !781, i64 80, !781, i64 88, !781, i64 96, !781, i64 104, !898, i64 112, !898, i64 116, !906, i64 120, !1245, i64 128, !782, i64 130, !782, i64 131, !781, i64 136, !906, i64 144, !781, i64 152, !781, i64 160, !781, i64 168, !781, i64 176, !906, i64 184, !898, i64 192, !782, i64 196}
!4185 = !DILocation(line: 59, column: 43, scope: !4130)
!4186 = !DILocation(line: 60, column: 29, scope: !4130)
!4187 = !DILocation(line: 60, column: 45, scope: !4130)
!4188 = !DILocation(line: 70, column: 17, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4130, file: !4131, line: 70, column: 7)
!4190 = !DILocation(line: 58, column: 50, scope: !4130)
!4191 = !DILocation(line: 70, column: 33, scope: !4189)
!4192 = !DILocation(line: 70, column: 53, scope: !4189)
!4193 = !DILocation(line: 70, column: 59, scope: !4189)
!4194 = !DILocation(line: 70, column: 7, scope: !4130)
!4195 = !DILocation(line: 72, column: 11, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4189, file: !4131, line: 71, column: 5)
!4197 = !DILocation(line: 73, column: 9, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4196, file: !4131, line: 72, column: 11)
!4199 = !DILocation(line: 73, column: 15, scope: !4198)
!4200 = !DILocation(line: 0, scope: !4130)
!4201 = !DILocation(line: 78, column: 1, scope: !4130)
!4202 = distinct !DISubprogram(name: "hard_locale", scope: !4203, file: !4203, line: 38, type: !4204, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !304, retainedNodes: !4206)
!4203 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!120, !70}
!4206 = !{!4207, !4208, !4209}
!4207 = !DILocalVariable(name: "category", arg: 1, scope: !4202, file: !4203, line: 38, type: !70)
!4208 = !DILocalVariable(name: "hard", scope: !4202, file: !4203, line: 40, type: !120)
!4209 = !DILocalVariable(name: "p", scope: !4202, file: !4203, line: 41, type: !98)
!4210 = !DILocation(line: 38, column: 18, scope: !4202)
!4211 = !DILocation(line: 40, column: 8, scope: !4202)
!4212 = !DILocation(line: 41, column: 19, scope: !4202)
!4213 = !DILocation(line: 41, column: 15, scope: !4202)
!4214 = !DILocation(line: 43, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4202, file: !4203, line: 43, column: 7)
!4216 = !DILocation(line: 43, column: 7, scope: !4202)
!4217 = !DILocation(line: 47, column: 15, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !4203, line: 47, column: 15)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !4203, line: 46, column: 9)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !4203, line: 45, column: 11)
!4221 = distinct !DILexicalBlock(scope: !4215, file: !4203, line: 44, column: 5)
!4222 = !DILocation(line: 47, column: 31, scope: !4218)
!4223 = !DILocation(line: 47, column: 36, scope: !4218)
!4224 = !DILocation(line: 47, column: 39, scope: !4218)
!4225 = !DILocation(line: 47, column: 59, scope: !4218)
!4226 = !DILocation(line: 47, column: 15, scope: !4219)
!4227 = !DILocation(line: 48, column: 13, scope: !4218)
!4228 = !DILocation(line: 71, column: 3, scope: !4202)
!4229 = distinct !DISubprogram(name: "umaxtostr", scope: !4230, file: !4230, line: 36, type: !4231, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !306, retainedNodes: !4233)
!4230 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!68, !309, !68}
!4233 = !{!4234, !4235, !4236}
!4234 = !DILocalVariable(name: "i", arg: 1, scope: !4229, file: !4230, line: 36, type: !309)
!4235 = !DILocalVariable(name: "buf", arg: 2, scope: !4229, file: !4230, line: 36, type: !68)
!4236 = !DILocalVariable(name: "p", scope: !4229, file: !4230, line: 38, type: !68)
!4237 = !DILocation(line: 36, column: 19, scope: !4229)
!4238 = !DILocation(line: 36, column: 28, scope: !4229)
!4239 = !DILocation(line: 38, column: 17, scope: !4229)
!4240 = !DILocation(line: 38, column: 9, scope: !4229)
!4241 = !DILocation(line: 39, column: 6, scope: !4229)
!4242 = !DILocation(line: 41, column: 7, scope: !4229)
!4243 = !DILocation(line: 0, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !4230, line: 50, column: 5)
!4245 = distinct !DILexicalBlock(scope: !4229, file: !4230, line: 41, column: 7)
!4246 = !DILocation(line: 52, column: 24, scope: !4244)
!4247 = !DILocation(line: 52, column: 16, scope: !4244)
!4248 = !DILocation(line: 52, column: 10, scope: !4244)
!4249 = !DILocation(line: 52, column: 14, scope: !4244)
!4250 = !DILocation(line: 53, column: 17, scope: !4244)
!4251 = !DILocation(line: 53, column: 24, scope: !4244)
!4252 = !DILocation(line: 52, column: 9, scope: !4244)
!4253 = distinct !{!4253, !4254, !4255}
!4254 = !DILocation(line: 51, column: 7, scope: !4244)
!4255 = !DILocation(line: 53, column: 28, scope: !4244)
!4256 = !DILocation(line: 56, column: 3, scope: !4229)
!4257 = distinct !DISubprogram(name: "locale_charset", scope: !4258, file: !4258, line: 687, type: !4259, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !312, retainedNodes: !4261)
!4258 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!98}
!4261 = !{!4262}
!4262 = !DILocalVariable(name: "codeset", scope: !4257, file: !4258, line: 689, type: !98)
!4263 = !DILocation(line: 696, column: 13, scope: !4257)
!4264 = !DILocation(line: 689, column: 15, scope: !4257)
!4265 = !DILocation(line: 754, column: 15, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4257, file: !4258, line: 754, column: 7)
!4267 = !DILocation(line: 754, column: 7, scope: !4257)
!4268 = !DILocation(line: 907, column: 13, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !4258, line: 907, column: 13)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !4258, line: 897, column: 7)
!4271 = distinct !DILexicalBlock(scope: !4257, file: !4258, line: 856, column: 3)
!4272 = !DILocation(line: 907, column: 24, scope: !4269)
!4273 = !DILocation(line: 907, column: 13, scope: !4270)
!4274 = !DILocation(line: 995, column: 3, scope: !4257)
!4275 = !DILocation(line: 66, column: 25, scope: !706)
!4276 = !DILocation(line: 66, column: 41, scope: !706)
!4277 = !DILocation(line: 66, column: 54, scope: !706)
!4278 = !DILocation(line: 68, column: 3, scope: !706)
!4279 = !DILocation(line: 81, column: 7, scope: !720)
!4280 = !DILocation(line: 81, column: 7, scope: !706)
!4281 = !DILocation(line: 68, column: 7, scope: !706)
!4282 = !DILocation(line: 84, column: 20, scope: !719)
!4283 = !DILocalVariable(name: "g", arg: 1, scope: !4284, file: !705, line: 43, type: !209)
!4284 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !705, file: !705, line: 43, type: !4285, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !701, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!209, !209, !57}
!4287 = !{!4283, !4288}
!4288 = !DILocalVariable(name: "num", arg: 2, scope: !4284, file: !705, line: 43, type: !57)
!4289 = !DILocation(line: 43, column: 26, scope: !4284, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 86, column: 11, scope: !719)
!4291 = !DILocation(line: 43, column: 36, scope: !4284, inlinedAt: !4290)
!4292 = !DILocation(line: 51, column: 10, scope: !4284, inlinedAt: !4290)
!4293 = !DILocation(line: 70, column: 10, scope: !706)
!4294 = !DILocation(line: 87, column: 13, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !719, file: !705, line: 87, column: 11)
!4296 = !DILocation(line: 87, column: 11, scope: !719)
!4297 = !DILocation(line: 93, column: 31, scope: !718)
!4298 = !DILocation(line: 86, column: 9, scope: !719)
!4299 = !DILocation(line: 93, column: 15, scope: !718)
!4300 = !DILocation(line: 96, column: 16, scope: !718)
!4301 = !DILocation(line: 69, column: 7, scope: !706)
!4302 = !DILocation(line: 100, column: 18, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !718, file: !705, line: 100, column: 15)
!4304 = !DILocation(line: 0, scope: !724)
!4305 = !DILocation(line: 100, column: 39, scope: !4303)
!4306 = !DILocation(line: 100, column: 22, scope: !4303)
!4307 = !DILocation(line: 101, column: 26, scope: !4303)
!4308 = !DILocation(line: 101, column: 13, scope: !4303)
!4309 = !DILocation(line: 103, column: 41, scope: !724)
!4310 = !DILocation(line: 43, column: 26, scope: !4284, inlinedAt: !4311)
!4311 = distinct !DILocation(line: 103, column: 20, scope: !724)
!4312 = !DILocation(line: 45, column: 7, scope: !4313, inlinedAt: !4311)
!4313 = distinct !DILexicalBlock(scope: !4284, file: !705, line: 45, column: 7)
!4314 = !DILocation(line: 45, column: 7, scope: !4284, inlinedAt: !4311)
!4315 = !DILocation(line: 47, column: 7, scope: !4316, inlinedAt: !4311)
!4316 = distinct !DILexicalBlock(scope: !4313, file: !705, line: 46, column: 5)
!4317 = !DILocation(line: 47, column: 13, scope: !4316, inlinedAt: !4311)
!4318 = !DILocation(line: 92, column: 18, scope: !718)
!4319 = !DILocation(line: 103, column: 15, scope: !718)
!4320 = !DILocation(line: 43, column: 36, scope: !4284, inlinedAt: !4311)
!4321 = !DILocation(line: 51, column: 26, scope: !4284, inlinedAt: !4311)
!4322 = !DILocation(line: 51, column: 10, scope: !4284, inlinedAt: !4311)
!4323 = !DILocation(line: 103, column: 56, scope: !724)
!4324 = !DILocation(line: 105, column: 33, scope: !723)
!4325 = !DILocation(line: 105, column: 19, scope: !723)
!4326 = !DILocation(line: 106, column: 15, scope: !723)
!4327 = !DILocation(line: 107, column: 21, scope: !723)
!4328 = !DILocation(line: 112, column: 17, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !718, file: !705, line: 112, column: 15)
!4330 = !DILocation(line: 112, column: 15, scope: !718)
!4331 = !DILocation(line: 114, column: 23, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4329, file: !705, line: 113, column: 13)
!4333 = !DILocation(line: 117, column: 22, scope: !4332)
!4334 = !DILocation(line: 117, column: 15, scope: !4332)
!4335 = !DILocation(line: 126, column: 21, scope: !706)
!4336 = !DILocation(line: 124, column: 16, scope: !706)
!4337 = !DILocation(line: 131, column: 20, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !706, file: !705, line: 131, column: 7)
!4339 = !DILocation(line: 131, column: 7, scope: !706)
!4340 = !DILocation(line: 133, column: 11, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !705, line: 133, column: 11)
!4342 = distinct !DILexicalBlock(scope: !4338, file: !705, line: 132, column: 5)
!4343 = !DILocation(line: 133, column: 17, scope: !4341)
!4344 = !DILocation(line: 133, column: 27, scope: !4341)
!4345 = !DILocation(line: 43, column: 26, scope: !4284, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 133, column: 35, scope: !4341)
!4347 = !DILocation(line: 43, column: 36, scope: !4284, inlinedAt: !4346)
!4348 = !DILocation(line: 51, column: 10, scope: !4284, inlinedAt: !4346)
!4349 = !DILocation(line: 133, column: 33, scope: !4341)
!4350 = !DILocation(line: 133, column: 11, scope: !4342)
!4351 = !DILocation(line: 135, column: 19, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4341, file: !705, line: 134, column: 9)
!4353 = !DILocation(line: 136, column: 14, scope: !4352)
!4354 = !DILocation(line: 137, column: 22, scope: !4352)
!4355 = !DILocation(line: 137, column: 11, scope: !4352)
!4356 = !DILocation(line: 142, column: 20, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !706, file: !705, line: 142, column: 7)
!4358 = !DILocation(line: 142, column: 46, scope: !4357)
!4359 = !DILocation(line: 142, column: 25, scope: !4357)
!4360 = !DILocation(line: 143, column: 17, scope: !4357)
!4361 = !DILocation(line: 43, column: 26, scope: !4284, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 144, column: 7, scope: !706)
!4363 = !DILocation(line: 45, column: 7, scope: !4313, inlinedAt: !4362)
!4364 = !DILocation(line: 45, column: 7, scope: !4284, inlinedAt: !4362)
!4365 = !DILocation(line: 47, column: 7, scope: !4316, inlinedAt: !4362)
!4366 = !DILocation(line: 47, column: 13, scope: !4316, inlinedAt: !4362)
!4367 = !DILocation(line: 145, column: 7, scope: !706)
!4368 = !DILocation(line: 144, column: 31, scope: !706)
!4369 = !DILocation(line: 43, column: 36, scope: !4284, inlinedAt: !4362)
!4370 = !DILocation(line: 51, column: 26, scope: !4284, inlinedAt: !4362)
!4371 = !DILocation(line: 51, column: 10, scope: !4284, inlinedAt: !4362)
!4372 = !DILocation(line: 145, column: 9, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !706, file: !705, line: 145, column: 7)
!4374 = !DILocation(line: 150, column: 42, scope: !706)
!4375 = !DILocation(line: 150, column: 35, scope: !706)
!4376 = !DILocation(line: 151, column: 35, scope: !706)
!4377 = !DILocation(line: 150, column: 11, scope: !706)
!4378 = !DILocation(line: 153, column: 10, scope: !727)
!4379 = !DILocation(line: 153, column: 7, scope: !706)
!4380 = !DILocation(line: 156, column: 25, scope: !726)
!4381 = !DILocation(line: 156, column: 11, scope: !726)
!4382 = !DILocation(line: 157, column: 7, scope: !726)
!4383 = !DILocation(line: 158, column: 13, scope: !726)
!4384 = !DILocation(line: 162, column: 17, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !706, file: !705, line: 162, column: 7)
!4386 = !DILocation(line: 164, column: 10, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4385, file: !705, line: 163, column: 5)
!4388 = !DILocation(line: 165, column: 9, scope: !4387)
!4389 = !DILocation(line: 166, column: 5, scope: !4387)
!4390 = !DILocation(line: 0, scope: !706)
!4391 = !DILocation(line: 167, column: 11, scope: !706)
!4392 = !DILocation(line: 185, column: 9, scope: !730)
!4393 = !DILocation(line: 185, column: 7, scope: !706)
!4394 = !DILocation(line: 187, column: 21, scope: !729)
!4395 = !DILocation(line: 187, column: 13, scope: !729)
!4396 = !DILocation(line: 189, column: 29, scope: !729)
!4397 = !DILocation(line: 189, column: 14, scope: !729)
!4398 = !DILocation(line: 188, column: 14, scope: !729)
!4399 = !DILocation(line: 0, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !705, line: 191, column: 7)
!4401 = distinct !DILexicalBlock(scope: !729, file: !705, line: 191, column: 7)
!4402 = !DILocation(line: 191, column: 31, scope: !4400)
!4403 = !DILocation(line: 191, column: 7, scope: !4401)
!4404 = !DILocation(line: 193, column: 15, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !705, line: 193, column: 15)
!4406 = distinct !DILexicalBlock(scope: !4400, file: !705, line: 192, column: 9)
!4407 = !DILocation(line: 193, column: 39, scope: !4405)
!4408 = !DILocation(line: 193, column: 30, scope: !4405)
!4409 = !DILocation(line: 196, column: 14, scope: !4405)
!4410 = !DILocation(line: 196, column: 18, scope: !4405)
!4411 = !DILocation(line: 194, column: 15, scope: !4405)
!4412 = !DILocation(line: 194, column: 13, scope: !4405)
!4413 = !DILocation(line: 0, scope: !4405)
!4414 = !DILocation(line: 0, scope: !4387)
!4415 = !DILocation(line: 193, column: 21, scope: !4405)
!4416 = !DILocation(line: 201, column: 1, scope: !706)
!4417 = distinct !{!4417, !4403, !4418}
!4418 = !DILocation(line: 197, column: 9, scope: !4401)
!4419 = distinct !DISubprogram(name: "rpl_fclose", scope: !4420, file: !4420, line: 58, type: !4421, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !736, retainedNodes: !4457)
!4420 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!70, !4423}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3362, line: 7, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3364, line: 49, size: 1728, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4425, file: !3364, line: 51, baseType: !70, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4425, file: !3364, line: 54, baseType: !68, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4425, file: !3364, line: 55, baseType: !68, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4425, file: !3364, line: 56, baseType: !68, size: 64, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4425, file: !3364, line: 57, baseType: !68, size: 64, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4425, file: !3364, line: 58, baseType: !68, size: 64, offset: 320)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4425, file: !3364, line: 59, baseType: !68, size: 64, offset: 384)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4425, file: !3364, line: 60, baseType: !68, size: 64, offset: 448)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4425, file: !3364, line: 61, baseType: !68, size: 64, offset: 512)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4425, file: !3364, line: 64, baseType: !68, size: 64, offset: 576)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4425, file: !3364, line: 65, baseType: !68, size: 64, offset: 640)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4425, file: !3364, line: 66, baseType: !68, size: 64, offset: 704)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4425, file: !3364, line: 68, baseType: !3379, size: 64, offset: 768)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4425, file: !3364, line: 70, baseType: !4441, size: 64, offset: 832)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4425, file: !3364, line: 72, baseType: !70, size: 32, offset: 896)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4425, file: !3364, line: 73, baseType: !70, size: 32, offset: 928)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4425, file: !3364, line: 74, baseType: !3386, size: 64, offset: 960)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4425, file: !3364, line: 77, baseType: !77, size: 16, offset: 1024)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4425, file: !3364, line: 78, baseType: !3389, size: 8, offset: 1040)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4425, file: !3364, line: 79, baseType: !3391, size: 8, offset: 1048)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4425, file: !3364, line: 81, baseType: !3395, size: 64, offset: 1088)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4425, file: !3364, line: 89, baseType: !3398, size: 64, offset: 1152)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4425, file: !3364, line: 91, baseType: !3400, size: 64, offset: 1216)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4425, file: !3364, line: 92, baseType: !3403, size: 64, offset: 1280)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4425, file: !3364, line: 93, baseType: !4441, size: 64, offset: 1344)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4425, file: !3364, line: 94, baseType: !55, size: 64, offset: 1408)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4425, file: !3364, line: 95, baseType: !57, size: 64, offset: 1472)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4425, file: !3364, line: 96, baseType: !70, size: 32, offset: 1536)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4425, file: !3364, line: 98, baseType: !3410, size: 160, offset: 1568)
!4457 = !{!4458, !4459, !4460, !4461}
!4458 = !DILocalVariable(name: "fp", arg: 1, scope: !4419, file: !4420, line: 58, type: !4423)
!4459 = !DILocalVariable(name: "saved_errno", scope: !4419, file: !4420, line: 60, type: !70)
!4460 = !DILocalVariable(name: "fd", scope: !4419, file: !4420, line: 61, type: !70)
!4461 = !DILocalVariable(name: "result", scope: !4419, file: !4420, line: 62, type: !70)
!4462 = !DILocation(line: 58, column: 19, scope: !4419)
!4463 = !DILocation(line: 60, column: 7, scope: !4419)
!4464 = !DILocation(line: 62, column: 7, scope: !4419)
!4465 = !DILocation(line: 65, column: 8, scope: !4419)
!4466 = !DILocation(line: 61, column: 7, scope: !4419)
!4467 = !DILocation(line: 66, column: 10, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4419, file: !4420, line: 66, column: 7)
!4469 = !DILocation(line: 66, column: 7, scope: !4419)
!4470 = !DILocation(line: 67, column: 12, scope: !4468)
!4471 = !DILocation(line: 67, column: 5, scope: !4468)
!4472 = !DILocation(line: 72, column: 9, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4419, file: !4420, line: 72, column: 7)
!4474 = !DILocation(line: 72, column: 23, scope: !4473)
!4475 = !DILocation(line: 72, column: 33, scope: !4473)
!4476 = !DILocation(line: 72, column: 26, scope: !4473)
!4477 = !DILocation(line: 72, column: 59, scope: !4473)
!4478 = !DILocation(line: 73, column: 7, scope: !4473)
!4479 = !DILocation(line: 73, column: 10, scope: !4473)
!4480 = !DILocation(line: 72, column: 7, scope: !4419)
!4481 = !DILocation(line: 100, column: 12, scope: !4419)
!4482 = !DILocation(line: 105, column: 7, scope: !4419)
!4483 = !DILocation(line: 74, column: 19, scope: !4473)
!4484 = !DILocation(line: 105, column: 19, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4419, file: !4420, line: 105, column: 7)
!4486 = !DILocation(line: 107, column: 13, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4485, file: !4420, line: 106, column: 5)
!4488 = !DILocation(line: 109, column: 5, scope: !4487)
!4489 = !DILocation(line: 0, scope: !4419)
!4490 = !DILocation(line: 112, column: 1, scope: !4419)
!4491 = distinct !DISubprogram(name: "rpl_fflush", scope: !4492, file: !4492, line: 129, type: !4493, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !738, retainedNodes: !4529)
!4492 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!70, !4495}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3362, line: 7, baseType: !4497)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3364, line: 49, size: 1728, elements: !4498)
!4498 = !{!4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4497, file: !3364, line: 51, baseType: !70, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4497, file: !3364, line: 54, baseType: !68, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4497, file: !3364, line: 55, baseType: !68, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4497, file: !3364, line: 56, baseType: !68, size: 64, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4497, file: !3364, line: 57, baseType: !68, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4497, file: !3364, line: 58, baseType: !68, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4497, file: !3364, line: 59, baseType: !68, size: 64, offset: 384)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4497, file: !3364, line: 60, baseType: !68, size: 64, offset: 448)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4497, file: !3364, line: 61, baseType: !68, size: 64, offset: 512)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4497, file: !3364, line: 64, baseType: !68, size: 64, offset: 576)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4497, file: !3364, line: 65, baseType: !68, size: 64, offset: 640)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4497, file: !3364, line: 66, baseType: !68, size: 64, offset: 704)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4497, file: !3364, line: 68, baseType: !3379, size: 64, offset: 768)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4497, file: !3364, line: 70, baseType: !4513, size: 64, offset: 832)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4497, file: !3364, line: 72, baseType: !70, size: 32, offset: 896)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4497, file: !3364, line: 73, baseType: !70, size: 32, offset: 928)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4497, file: !3364, line: 74, baseType: !3386, size: 64, offset: 960)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4497, file: !3364, line: 77, baseType: !77, size: 16, offset: 1024)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4497, file: !3364, line: 78, baseType: !3389, size: 8, offset: 1040)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4497, file: !3364, line: 79, baseType: !3391, size: 8, offset: 1048)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4497, file: !3364, line: 81, baseType: !3395, size: 64, offset: 1088)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4497, file: !3364, line: 89, baseType: !3398, size: 64, offset: 1152)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4497, file: !3364, line: 91, baseType: !3400, size: 64, offset: 1216)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4497, file: !3364, line: 92, baseType: !3403, size: 64, offset: 1280)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4497, file: !3364, line: 93, baseType: !4513, size: 64, offset: 1344)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4497, file: !3364, line: 94, baseType: !55, size: 64, offset: 1408)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4497, file: !3364, line: 95, baseType: !57, size: 64, offset: 1472)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4497, file: !3364, line: 96, baseType: !70, size: 32, offset: 1536)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4497, file: !3364, line: 98, baseType: !3410, size: 160, offset: 1568)
!4529 = !{!4530}
!4530 = !DILocalVariable(name: "stream", arg: 1, scope: !4491, file: !4492, line: 129, type: !4495)
!4531 = !DILocation(line: 129, column: 19, scope: !4491)
!4532 = !DILocation(line: 150, column: 14, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4491, file: !4492, line: 150, column: 7)
!4534 = !DILocation(line: 150, column: 22, scope: !4533)
!4535 = !DILocation(line: 150, column: 27, scope: !4533)
!4536 = !DILocation(line: 150, column: 7, scope: !4491)
!4537 = !DILocation(line: 151, column: 12, scope: !4533)
!4538 = !DILocation(line: 151, column: 5, scope: !4533)
!4539 = !DILocalVariable(name: "fp", arg: 1, scope: !4540, file: !4492, line: 41, type: !4495)
!4540 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4492, file: !4492, line: 41, type: !4541, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !738, retainedNodes: !4543)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{null, !4495}
!4543 = !{!4539}
!4544 = !DILocation(line: 41, column: 48, scope: !4540, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 156, column: 3, scope: !4491)
!4546 = !DILocation(line: 43, column: 11, scope: !4547, inlinedAt: !4545)
!4547 = distinct !DILexicalBlock(scope: !4540, file: !4492, line: 43, column: 7)
!4548 = !DILocation(line: 43, column: 18, scope: !4547, inlinedAt: !4545)
!4549 = !DILocation(line: 43, column: 7, scope: !4540, inlinedAt: !4545)
!4550 = !DILocation(line: 45, column: 5, scope: !4547, inlinedAt: !4545)
!4551 = !DILocation(line: 158, column: 10, scope: !4491)
!4552 = !DILocation(line: 158, column: 3, scope: !4491)
!4553 = !DILocation(line: 0, scope: !4491)
!4554 = !DILocation(line: 232, column: 1, scope: !4491)
!4555 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4556, file: !4556, line: 28, type: !4557, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !740, retainedNodes: !4594)
!4556 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!70, !4559, !4593, !70}
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3362, line: 7, baseType: !4561)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3364, line: 49, size: 1728, elements: !4562)
!4562 = !{!4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4561, file: !3364, line: 51, baseType: !70, size: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4561, file: !3364, line: 54, baseType: !68, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4561, file: !3364, line: 55, baseType: !68, size: 64, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4561, file: !3364, line: 56, baseType: !68, size: 64, offset: 192)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4561, file: !3364, line: 57, baseType: !68, size: 64, offset: 256)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4561, file: !3364, line: 58, baseType: !68, size: 64, offset: 320)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4561, file: !3364, line: 59, baseType: !68, size: 64, offset: 384)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4561, file: !3364, line: 60, baseType: !68, size: 64, offset: 448)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4561, file: !3364, line: 61, baseType: !68, size: 64, offset: 512)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4561, file: !3364, line: 64, baseType: !68, size: 64, offset: 576)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4561, file: !3364, line: 65, baseType: !68, size: 64, offset: 640)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4561, file: !3364, line: 66, baseType: !68, size: 64, offset: 704)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4561, file: !3364, line: 68, baseType: !3379, size: 64, offset: 768)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4561, file: !3364, line: 70, baseType: !4577, size: 64, offset: 832)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4561, file: !3364, line: 72, baseType: !70, size: 32, offset: 896)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4561, file: !3364, line: 73, baseType: !70, size: 32, offset: 928)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4561, file: !3364, line: 74, baseType: !3386, size: 64, offset: 960)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4561, file: !3364, line: 77, baseType: !77, size: 16, offset: 1024)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4561, file: !3364, line: 78, baseType: !3389, size: 8, offset: 1040)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4561, file: !3364, line: 79, baseType: !3391, size: 8, offset: 1048)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4561, file: !3364, line: 81, baseType: !3395, size: 64, offset: 1088)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4561, file: !3364, line: 89, baseType: !3398, size: 64, offset: 1152)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4561, file: !3364, line: 91, baseType: !3400, size: 64, offset: 1216)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4561, file: !3364, line: 92, baseType: !3403, size: 64, offset: 1280)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4561, file: !3364, line: 93, baseType: !4577, size: 64, offset: 1344)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4561, file: !3364, line: 94, baseType: !55, size: 64, offset: 1408)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4561, file: !3364, line: 95, baseType: !57, size: 64, offset: 1472)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4561, file: !3364, line: 96, baseType: !70, size: 32, offset: 1536)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4561, file: !3364, line: 98, baseType: !3410, size: 160, offset: 1568)
!4593 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3532, line: 63, baseType: !3386)
!4594 = !{!4595, !4596, !4597, !4598}
!4595 = !DILocalVariable(name: "fp", arg: 1, scope: !4555, file: !4556, line: 28, type: !4559)
!4596 = !DILocalVariable(name: "offset", arg: 2, scope: !4555, file: !4556, line: 28, type: !4593)
!4597 = !DILocalVariable(name: "whence", arg: 3, scope: !4555, file: !4556, line: 28, type: !70)
!4598 = !DILocalVariable(name: "pos", scope: !4599, file: !4556, line: 117, type: !4593)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !4556, line: 113, column: 5)
!4600 = distinct !DILexicalBlock(scope: !4555, file: !4556, line: 52, column: 7)
!4601 = !DILocation(line: 28, column: 15, scope: !4555)
!4602 = !DILocation(line: 28, column: 25, scope: !4555)
!4603 = !DILocation(line: 28, column: 37, scope: !4555)
!4604 = !DILocation(line: 52, column: 11, scope: !4600)
!4605 = !{!4184, !781, i64 16}
!4606 = !DILocation(line: 52, column: 31, scope: !4600)
!4607 = !{!4184, !781, i64 8}
!4608 = !DILocation(line: 52, column: 24, scope: !4600)
!4609 = !DILocation(line: 53, column: 7, scope: !4600)
!4610 = !DILocation(line: 53, column: 14, scope: !4600)
!4611 = !{!4184, !781, i64 40}
!4612 = !DILocation(line: 53, column: 35, scope: !4600)
!4613 = !{!4184, !781, i64 32}
!4614 = !DILocation(line: 53, column: 28, scope: !4600)
!4615 = !DILocation(line: 54, column: 7, scope: !4600)
!4616 = !DILocation(line: 54, column: 14, scope: !4600)
!4617 = !{!4184, !781, i64 72}
!4618 = !DILocation(line: 54, column: 28, scope: !4600)
!4619 = !DILocation(line: 52, column: 7, scope: !4555)
!4620 = !DILocation(line: 117, column: 26, scope: !4599)
!4621 = !DILocation(line: 117, column: 19, scope: !4599)
!4622 = !DILocation(line: 117, column: 13, scope: !4599)
!4623 = !DILocation(line: 118, column: 15, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4599, file: !4556, line: 118, column: 11)
!4625 = !DILocation(line: 118, column: 11, scope: !4599)
!4626 = !DILocation(line: 129, column: 11, scope: !4599)
!4627 = !DILocation(line: 129, column: 18, scope: !4599)
!4628 = !DILocation(line: 130, column: 11, scope: !4599)
!4629 = !DILocation(line: 130, column: 19, scope: !4599)
!4630 = !{!4184, !906, i64 144}
!4631 = !DILocation(line: 161, column: 7, scope: !4599)
!4632 = !DILocation(line: 163, column: 10, scope: !4555)
!4633 = !DILocation(line: 163, column: 3, scope: !4555)
!4634 = !DILocation(line: 0, scope: !4555)
!4635 = !DILocation(line: 164, column: 1, scope: !4555)
