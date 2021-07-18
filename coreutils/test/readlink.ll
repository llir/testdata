; ModuleID = 'coreutils-8.32/src/readlink.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.F_triple = type { i8*, i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Print value of a symbolic link or canonical file name\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [437 x i8] c"  -f, --canonicalize            canonicalize by following every symlink in\0A                                every component of the given name recursively;\0A                                all but the last component must exist\0A  -e, --canonicalize-existing   canonicalize by following every symlink in\0A                                every component of the given name recursively,\0A                                all components must exist\0A\00", align 1
@.str.4 = private unnamed_addr constant [521 x i8] c"  -m, --canonicalize-missing    canonicalize by following every symlink in\0A                                every component of the given name recursively,\0A                                without requirements on components existence\0A  -n, --no-newline              do not output the trailing delimiter\0A  -q, --quiet\0A  -s, --silent                  suppress most error messages (on by default)\0A  -v, --verbose                 report error messages\0A  -z, --zero                    end each output line with NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"efmnqsvz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@no_newline = internal unnamed_addr global i1 false, align 1, !dbg !53
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !54
@.str.13 = private unnamed_addr constant [16 x i8] c"Dmitry V. Levin\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"ignoring --no-newline with multiple arguments\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"canonicalize\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"canonicalize-existing\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"canonicalize-missing\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"no-newline\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), align 8, !dbg !55
@.str.42 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !61
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !66
@.str.50 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.51 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !68
@.str.59 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.61 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.62 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4, !dbg !74
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !94
@.str.81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 16, !dbg !100
@.str.84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.85 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.86 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.87 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.88 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.90 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.91 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.92 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.93 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !128
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !134
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !146
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.96 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.97 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.98 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.99 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.100 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !153
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !160
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !148
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !162
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.109 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.110 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.111 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.112 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.113 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.114 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.115 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.116 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.117 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.118 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.119 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.120 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.121 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.122 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.123 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.126 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.127 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.128 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.129 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.130 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.131 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.132 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !166
@.str.1.145 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.165 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.170 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.171 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !671 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !675, metadata !DIExpression()), !dbg !676
  %3 = icmp eq i32 %0, 0, !dbg !677
  br i1 %3, label %9, label %4, !dbg !679

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !680, !tbaa !682
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #29, !dbg !680
  %7 = load i8*, i8** @program_name, align 8, !dbg !680, !tbaa !682
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #29, !dbg !680
  br label %64, !dbg !680

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #29, !dbg !686
  %11 = load i8*, i8** @program_name, align 8, !dbg !686, !tbaa !682
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #29, !dbg !686
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 5) #29, !dbg !688
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !682
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !688
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([437 x i8], [437 x i8]* @.str.3, i64 0, i64 0), i32 5) #29, !dbg !689
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !682
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !689
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([521 x i8], [521 x i8]* @.str.4, i64 0, i64 0), i32 5) #29, !dbg !690
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !682
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !690
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #29, !dbg !691
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !682
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !691
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #29, !dbg !692
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !692, !tbaa !682
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !692
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), metadata !693, metadata !DIExpression()) #29, !dbg !712
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !714
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #29, !dbg !714
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !699, metadata !DIExpression()) #29, !dbg !715
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #29, !dbg !715
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), metadata !708, metadata !DIExpression()) #29, !dbg !712
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !709, metadata !DIExpression()) #29, !dbg !712
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !716
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !709, metadata !DIExpression()) #29, !dbg !712
  br label %30, !dbg !717

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !709, metadata !DIExpression()) #29, !dbg !712
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #30, !dbg !718
  %34 = icmp eq i32 %33, 0, !dbg !718
  br i1 %34, label %40, label %35, !dbg !717

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !719
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !709, metadata !DIExpression()) #29, !dbg !712
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !720
  %38 = load i8*, i8** %37, align 8, !dbg !720, !tbaa !721
  %39 = icmp eq i8* %38, null, !dbg !723
  br i1 %39, label %40, label %30, !dbg !724, !llvm.loop !725

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !727
  %43 = load i8*, i8** %42, align 8, !dbg !727, !tbaa !729
  %44 = icmp eq i8* %43, null, !dbg !730
  %45 = select i1 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !731
  call void @llvm.dbg.value(metadata i8* %45, metadata !708, metadata !DIExpression()) #29, !dbg !712
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #29, !dbg !732
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #29, !dbg !732
  %48 = tail call i8* @setlocale(i32 5, i8* null) #29, !dbg !733
  call void @llvm.dbg.value(metadata i8* %48, metadata !711, metadata !DIExpression()) #29, !dbg !712
  %49 = icmp eq i8* %48, null, !dbg !734
  br i1 %49, label %57, label %50, !dbg !736

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #30, !dbg !737
  %52 = icmp eq i32 %51, 0, !dbg !737
  br i1 %52, label %57, label %53, !dbg !738

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #29, !dbg !739
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !682
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #29, !dbg !739
  br label %57, !dbg !741

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #29, !dbg !742
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #29, !dbg !742
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #29, !dbg !743
  %61 = icmp eq i8* %45, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), !dbg !743
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !743
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #29, !dbg !743
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #29, !dbg !744
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #31, !dbg !745
  unreachable, !dbg !745
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !746 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !750 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !804 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !808 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !813, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8** %1, metadata !814, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i32 -1, metadata !815, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i32 0, metadata !816, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8 0, metadata !818, metadata !DIExpression()), !dbg !824
  %3 = load i8*, i8** %1, align 8, !dbg !825, !tbaa !682
  tail call void @set_program_name(i8* %3) #29, !dbg !826
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #29, !dbg !827
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #29, !dbg !828
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #29, !dbg !829
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #29, !dbg !830
  br label %8, !dbg !831

8:                                                ; preds = %13, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %13 ]
  %10 = phi i32 [ -1, %2 ], [ %12, %13 ]
  br label %11, !dbg !831

11:                                               ; preds = %17, %8
  %12 = phi i32 [ %10, %8 ], [ %18, %17 ]
  br label %13, !dbg !831

13:                                               ; preds = %22, %11
  call void @llvm.dbg.value(metadata i32 %12, metadata !815, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8 undef, metadata !818, metadata !DIExpression()), !dbg !824
  %14 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #29, !dbg !832
  call void @llvm.dbg.value(metadata i32 %14, metadata !817, metadata !DIExpression()), !dbg !824
  switch i32 %14, label %27 [
    i32 -1, label %28
    i32 101, label %17
    i32 102, label %15
    i32 109, label %16
    i32 110, label %19
    i32 113, label %20
    i32 115, label %20
    i32 118, label %21
    i32 122, label %8
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !831, !llvm.loop !833

15:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !815, metadata !DIExpression()), !dbg !824
  br label %17, !dbg !835

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 2, metadata !815, metadata !DIExpression()), !dbg !824
  br label %17, !dbg !838

17:                                               ; preds = %13, %16, %15
  %18 = phi i32 [ 1, %15 ], [ 2, %16 ], [ 0, %13 ]
  br label %11, !dbg !831, !llvm.loop !833

19:                                               ; preds = %13
  store i1 true, i1* @no_newline, align 1, !dbg !839
  br label %22, !dbg !840

20:                                               ; preds = %13, %13
  store i1 false, i1* @verbose, align 1, !dbg !841
  br label %22, !dbg !842

21:                                               ; preds = %13
  store i1 true, i1* @verbose, align 1, !dbg !843
  br label %22, !dbg !844

22:                                               ; preds = %21, %20, %19
  br label %13, !dbg !824, !llvm.loop !833

23:                                               ; preds = %13
  tail call void @usage(i32 0) #32, !dbg !845
  unreachable, !dbg !845

24:                                               ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !846, !tbaa !682
  %26 = load i8*, i8** @Version, align 8, !dbg !846, !tbaa !682
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #29, !dbg !846
  tail call void @exit(i32 0) #31, !dbg !846
  unreachable, !dbg !846

27:                                               ; preds = %13
  tail call void @usage(i32 1) #32, !dbg !847
  unreachable, !dbg !847

28:                                               ; preds = %13
  %29 = load i32, i32* @optind, align 4, !dbg !848, !tbaa !850
  %30 = icmp slt i32 %29, %0, !dbg !852
  br i1 %30, label %33, label %31, !dbg !853

31:                                               ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #29, !dbg !854
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #29, !dbg !856
  tail call void @usage(i32 1) #32, !dbg !857
  unreachable, !dbg !857

33:                                               ; preds = %28
  %34 = sub nsw i32 %0, %29, !dbg !858
  %35 = icmp sgt i32 %34, 1, !dbg !860
  br i1 %35, label %36, label %43, !dbg !861

36:                                               ; preds = %33
  %37 = load i1, i1* @no_newline, align 1, !dbg !862
  br i1 %37, label %38, label %41, !dbg !865

38:                                               ; preds = %36
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 5) #29, !dbg !866
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39) #29, !dbg !867
  %40 = load i32, i32* @optind, align 4, !dbg !868, !tbaa !850
  br label %41, !dbg !867

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %40, %38 ], [ %29, %36 ], !dbg !868
  store i1 false, i1* @no_newline, align 1, !dbg !869
  br label %43, !dbg !870

43:                                               ; preds = %41, %33
  %44 = phi i32 [ %42, %41 ], [ %29, %33 ], !dbg !868
  call void @llvm.dbg.value(metadata i32 0, metadata !816, metadata !DIExpression()), !dbg !824
  %45 = icmp slt i32 %44, %0, !dbg !871
  br i1 %45, label %46, label %89, !dbg !872

46:                                               ; preds = %43
  %47 = icmp eq i32 %12, -1
  %48 = trunc i32 %9 to i8
  br label %49, !dbg !872

49:                                               ; preds = %46, %84
  %50 = phi i32 [ %44, %46 ], [ %87, %84 ]
  %51 = phi i32 [ 0, %46 ], [ %85, %84 ]
  call void @llvm.dbg.value(metadata i32 %51, metadata !816, metadata !DIExpression()), !dbg !824
  %52 = sext i32 %50 to i64, !dbg !873
  %53 = getelementptr inbounds i8*, i8** %1, i64 %52, !dbg !873
  %54 = load i8*, i8** %53, align 8, !dbg !873, !tbaa !682
  call void @llvm.dbg.value(metadata i8* %54, metadata !819, metadata !DIExpression()), !dbg !874
  br i1 %47, label %57, label %55, !dbg !875

55:                                               ; preds = %49
  %56 = tail call i8* @canonicalize_filename_mode(i8* %54, i32 %12) #29, !dbg !876
  br label %59, !dbg !875

57:                                               ; preds = %49
  %58 = tail call i8* @areadlink_with_size(i8* %54, i64 63) #29, !dbg !877
  br label %59, !dbg !875

59:                                               ; preds = %57, %55
  %60 = phi i8* [ %56, %55 ], [ %58, %57 ], !dbg !875
  call void @llvm.dbg.value(metadata i8* %60, metadata !823, metadata !DIExpression()), !dbg !874
  %61 = icmp eq i8* %60, null, !dbg !878
  br i1 %61, label %78, label %62, !dbg !880

62:                                               ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !881, !tbaa !682
  %64 = tail call i32 @fputs_unlocked(i8* nonnull %60, %struct._IO_FILE* %63), !dbg !881
  %65 = load i1, i1* @no_newline, align 1, !dbg !883
  br i1 %65, label %77, label %66, !dbg !885

66:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i32 %9, metadata !886, metadata !DIExpression()) #29, !dbg !892
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !894, !tbaa !682
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 5, !dbg !894
  %69 = load i8*, i8** %68, align 8, !dbg !894, !tbaa !895
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 6, !dbg !894
  %71 = load i8*, i8** %70, align 8, !dbg !894, !tbaa !899
  %72 = icmp ult i8* %69, %71, !dbg !894
  br i1 %72, label %75, label %73, !dbg !894, !prof !900

73:                                               ; preds = %66
  %74 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %67, i32 %9) #29, !dbg !894
  br label %77, !dbg !894

75:                                               ; preds = %66
  %76 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !894
  store i8* %76, i8** %68, align 8, !dbg !894, !tbaa !895
  store i8 %48, i8* %69, align 1, !dbg !894, !tbaa !901
  br label %77, !dbg !894

77:                                               ; preds = %75, %73, %62
  tail call void @free(i8* nonnull %60) #29, !dbg !902
  br label %84, !dbg !903

78:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 1, metadata !816, metadata !DIExpression()), !dbg !824
  %79 = load i1, i1* @verbose, align 1, !dbg !904
  br i1 %79, label %80, label %84, !dbg !907

80:                                               ; preds = %78
  %81 = tail call i32* @__errno_location() #33, !dbg !908
  %82 = load i32, i32* %81, align 4, !dbg !908, !tbaa !850
  %83 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %54) #29, !dbg !909
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %83) #29, !dbg !910
  br label %84, !dbg !910

84:                                               ; preds = %78, %80, %77
  %85 = phi i32 [ %51, %77 ], [ 1, %80 ], [ 1, %78 ], !dbg !824
  call void @llvm.dbg.value(metadata i32 %85, metadata !816, metadata !DIExpression()), !dbg !824
  %86 = load i32, i32* @optind, align 4, !dbg !911, !tbaa !850
  %87 = add nsw i32 %86, 1, !dbg !911
  store i32 %87, i32* @optind, align 4, !dbg !911, !tbaa !850
  %88 = icmp slt i32 %87, %0, !dbg !871
  br i1 %88, label %49, label %89, !dbg !872, !llvm.loop !912

89:                                               ; preds = %84, %43
  %90 = phi i32 [ 0, %43 ], [ %85, %84 ], !dbg !914
  ret i32 %90, !dbg !915
}

; Function Attrs: nounwind
declare !dbg !916 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !919 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !922 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !929 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !935 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @areadlink_with_size(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !178 {
  %3 = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !182, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i64 %1, metadata !183, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i64 1024, metadata !184, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i64 8192, metadata !185, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i64 1025, metadata !186, metadata !DIExpression()), !dbg !939
  %4 = icmp eq i64 %1, 0, !dbg !940
  %5 = icmp ult i64 %1, 1025, !dbg !941
  %6 = add i64 %1, 1, !dbg !941
  %7 = select i1 %5, i64 %6, i64 1025, !dbg !941
  %8 = select i1 %4, i64 128, i64 %7, !dbg !941
  call void @llvm.dbg.value(metadata i64 %8, metadata !187, metadata !DIExpression()), !dbg !939
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  br label %10, !dbg !942

10:                                               ; preds = %51, %2
  %11 = phi i64 [ %8, %2 ], [ %52, %51 ], !dbg !943
  call void @llvm.dbg.value(metadata i64 %11, metadata !187, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #29, !dbg !944
  call void @llvm.dbg.declare(metadata [128 x i8]* %3, metadata !196, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8* %9, metadata !200, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* null, metadata !201, metadata !DIExpression()), !dbg !946
  %12 = icmp eq i64 %11, 128
  %13 = and i1 %4, %12, !dbg !947
  br i1 %13, label %17, label %14, !dbg !947

14:                                               ; preds = %10
  %15 = tail call noalias i8* @malloc(i64 %11) #29, !dbg !949
  call void @llvm.dbg.value(metadata i8* %15, metadata !201, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* %15, metadata !200, metadata !DIExpression()), !dbg !946
  %16 = icmp eq i8* %15, null, !dbg !951
  br i1 %16, label %53, label %17, !dbg !953

17:                                               ; preds = %14, %10
  %18 = phi i8* [ %9, %10 ], [ %15, %14 ], !dbg !946
  %19 = phi i8* [ null, %10 ], [ %15, %14 ], !dbg !946
  call void @llvm.dbg.value(metadata i8* %19, metadata !201, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* %18, metadata !200, metadata !DIExpression()), !dbg !946
  %20 = call i64 @readlink(i8* %0, i8* nonnull %18, i64 %11) #29, !dbg !954
  call void @llvm.dbg.value(metadata i64 %20, metadata !188, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 %20, metadata !195, metadata !DIExpression()), !dbg !946
  %21 = icmp slt i64 %20, 0, !dbg !955
  br i1 %21, label %22, label %27, !dbg !956

22:                                               ; preds = %17
  %23 = tail call i32* @__errno_location() #33, !dbg !957
  %24 = load i32, i32* %23, align 4, !dbg !957, !tbaa !850
  %25 = icmp eq i32 %24, 34, !dbg !958
  br i1 %25, label %27, label %26, !dbg !959

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 %24, metadata !202, metadata !DIExpression()), !dbg !960
  tail call void @free(i8* %19) #29, !dbg !961
  store i32 %24, i32* %23, align 4, !dbg !962, !tbaa !850
  br label %53

27:                                               ; preds = %22, %17
  %28 = icmp ult i64 %20, %11, !dbg !963
  br i1 %28, label %29, label %43, !dbg !964

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !965
  store i8 0, i8* %30, align 1, !dbg !966, !tbaa !901
  %31 = icmp eq i8* %19, null, !dbg !967
  %32 = add nuw i64 %20, 1, !dbg !968
  br i1 %31, label %33, label %37, !dbg !969

33:                                               ; preds = %29
  %34 = tail call noalias i8* @malloc(i64 %32) #29, !dbg !970
  call void @llvm.dbg.value(metadata i8* %34, metadata !201, metadata !DIExpression()), !dbg !946
  %35 = icmp eq i8* %34, null, !dbg !972
  br i1 %35, label %53, label %36, !dbg !974

36:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i8* %34, metadata !975, metadata !DIExpression()) #29, !dbg !987
  call void @llvm.dbg.value(metadata i8* %18, metadata !985, metadata !DIExpression()) #29, !dbg !987
  call void @llvm.dbg.value(metadata i64 %32, metadata !986, metadata !DIExpression()) #29, !dbg !987
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %34, i8* nonnull align 1 %18, i64 %32, i1 false) #29, !dbg !989
  br label %53, !dbg !990

37:                                               ; preds = %29
  %38 = icmp ult i64 %32, %11, !dbg !991
  br i1 %38, label %39, label %53, !dbg !992

39:                                               ; preds = %37
  %40 = tail call i8* @realloc(i8* nonnull %19, i64 %32) #29, !dbg !993
  call void @llvm.dbg.value(metadata i8* %40, metadata !205, metadata !DIExpression()), !dbg !994
  %41 = icmp eq i8* %40, null, !dbg !995
  %42 = select i1 %41, i8* %19, i8* %40, !dbg !997
  call void @llvm.dbg.value(metadata i8* %42, metadata !201, metadata !DIExpression()), !dbg !946
  br label %53, !dbg !998

43:                                               ; preds = %27
  tail call void @free(i8* %19) #29, !dbg !999
  %44 = icmp ult i64 %11, 4611686018427387904, !dbg !1000
  br i1 %44, label %45, label %47, !dbg !1002

45:                                               ; preds = %43
  %46 = shl nuw nsw i64 %11, 1, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %46, metadata !187, metadata !DIExpression()), !dbg !939
  br label %51, !dbg !1004

47:                                               ; preds = %43
  %48 = icmp ult i64 %11, 9223372036854775807, !dbg !1005
  br i1 %48, label %51, label %49, !dbg !1007

49:                                               ; preds = %47
  %50 = tail call i32* @__errno_location() #33, !dbg !1008
  store i32 12, i32* %50, align 4, !dbg !1010, !tbaa !850
  br label %53, !dbg !1011

51:                                               ; preds = %45, %47
  %52 = phi i64 [ %46, %45 ], [ 9223372036854775807, %47 ], !dbg !939
  call void @llvm.dbg.value(metadata i64 %52, metadata !187, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #29, !dbg !1012
  br label %10

53:                                               ; preds = %14, %49, %36, %26, %37, %39, %33
  %54 = phi i8* [ null, %33 ], [ %19, %37 ], [ %42, %39 ], [ null, %26 ], [ %34, %36 ], [ null, %49 ], [ null, %14 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !187, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #29, !dbg !1012
  ret i8* %54, !dbg !1013
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(i8* nocapture noundef readonly, i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @canonicalize_filename_mode(i8* %0, i32 %1) local_unnamed_addr #8 !dbg !1014 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1019, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %1, metadata !1020, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* null, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1027, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata %struct.hash_table* null, metadata !1028, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %1, metadata !1033, metadata !DIExpression(DW_OP_constu, 18446744073709551612, DW_OP_and, DW_OP_stack_value)), !dbg !1099
  %4 = and i32 %1, 4, !dbg !1100
  %5 = icmp eq i32 %4, 0, !dbg !1101
  call void @llvm.dbg.value(metadata i1 %5, metadata !1034, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1099
  %6 = and i32 %1, 3, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %6, metadata !1020, metadata !DIExpression()), !dbg !1099
  %7 = tail call i32 @llvm.ctpop.i32(i32 %6), !dbg !1103, !range !1105
  %8 = icmp ult i32 %7, 2, !dbg !1103
  br i1 %8, label %11, label %9, !dbg !1106

9:                                                ; preds = %2
  %10 = tail call i32* @__errno_location() #33, !dbg !1107
  store i32 22, i32* %10, align 4, !dbg !1109, !tbaa !850
  br label %263, !dbg !1110

11:                                               ; preds = %2
  %12 = icmp eq i8* %0, null, !dbg !1111
  br i1 %12, label %13, label %15, !dbg !1113

13:                                               ; preds = %11
  %14 = tail call i32* @__errno_location() #33, !dbg !1114
  store i32 22, i32* %14, align 4, !dbg !1116, !tbaa !850
  br label %263, !dbg !1117

15:                                               ; preds = %11
  %16 = load i8, i8* %0, align 1, !dbg !1118, !tbaa !901
  switch i8 %16, label %19 [
    i8 0, label %17
    i8 47, label %30
  ], !dbg !1120

17:                                               ; preds = %15
  %18 = tail call i32* @__errno_location() #33, !dbg !1121
  store i32 2, i32* %18, align 4, !dbg !1123, !tbaa !850
  br label %263, !dbg !1124

19:                                               ; preds = %15
  %20 = tail call i8* @xgetcwd() #29, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %20, metadata !1021, metadata !DIExpression()), !dbg !1099
  %21 = icmp eq i8* %20, null, !dbg !1126
  br i1 %21, label %263, label %22, !dbg !1128

22:                                               ; preds = %19
  %23 = tail call i64 @strlen(i8* nonnull %20), !dbg !1129
  %24 = getelementptr i8, i8* %20, i64 %23, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %24, metadata !1022, metadata !DIExpression()), !dbg !1099
  %25 = icmp slt i64 %23, 4096, !dbg !1130
  br i1 %25, label %26, label %34, !dbg !1131

26:                                               ; preds = %22
  %27 = tail call i8* @xrealloc(i8* nonnull %20, i64 4096) #29, !dbg !1132
  call void @llvm.dbg.value(metadata i8* %27, metadata !1036, metadata !DIExpression()), !dbg !1133
  %28 = getelementptr inbounds i8, i8* %27, i64 %23, !dbg !1134
  call void @llvm.dbg.value(metadata i8* %28, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %27, metadata !1021, metadata !DIExpression()), !dbg !1099
  %29 = getelementptr inbounds i8, i8* %27, i64 4096, !dbg !1135
  call void @llvm.dbg.value(metadata i8* %29, metadata !1026, metadata !DIExpression()), !dbg !1099
  br label %34, !dbg !1136

30:                                               ; preds = %15
  %31 = tail call noalias i8* @xmalloc(i64 4096) #29, !dbg !1137
  call void @llvm.dbg.value(metadata i8* %31, metadata !1021, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %31, metadata !1026, metadata !DIExpression(DW_OP_plus_uconst, 4096, DW_OP_stack_value)), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %31, metadata !1022, metadata !DIExpression()), !dbg !1099
  %32 = getelementptr inbounds i8, i8* %31, i64 4096, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %32, metadata !1026, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %31, metadata !1022, metadata !DIExpression()), !dbg !1099
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %33, metadata !1022, metadata !DIExpression()), !dbg !1099
  store i8 47, i8* %31, align 1, !dbg !1141, !tbaa !901
  call void @llvm.dbg.value(metadata i8* %0, metadata !1024, metadata !DIExpression()), !dbg !1099
  br label %34

34:                                               ; preds = %26, %22, %30
  %35 = phi i8* [ %32, %30 ], [ %29, %26 ], [ %24, %22 ], !dbg !1142
  %36 = phi i8* [ %33, %30 ], [ %28, %26 ], [ %24, %22 ], !dbg !1142
  %37 = phi i8* [ %31, %30 ], [ %27, %26 ], [ %20, %22 ], !dbg !1142
  call void @llvm.dbg.value(metadata i8* %37, metadata !1021, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %36, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %0, metadata !1024, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %35, metadata !1026, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %0, metadata !1019, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* null, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 undef, metadata !1032, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1027, metadata !DIExpression()), !dbg !1099
  %38 = load i8, i8* %0, align 1, !dbg !1143, !tbaa !901
  %39 = icmp eq i8 %38, 0, !dbg !1144
  br i1 %39, label %229, label %40, !dbg !1144

40:                                               ; preds = %34
  %41 = bitcast %struct.stat* %3 to i8*
  %42 = icmp eq i32 %6, 2
  %43 = and i32 %1, 7
  %44 = icmp eq i32 %43, 6
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  %47 = icmp ne i32 %6, 2
  br label %48, !dbg !1144

48:                                               ; preds = %40, %218
  %49 = phi i8 [ %38, %40 ], [ %227, %218 ]
  %50 = phi i8* [ %0, %40 ], [ %226, %218 ]
  %51 = phi i8* [ %37, %40 ], [ %225, %218 ]
  %52 = phi i8* [ %36, %40 ], [ %224, %218 ]
  %53 = phi i8* [ null, %40 ], [ %223, %218 ]
  %54 = phi i8* [ %0, %40 ], [ %222, %218 ]
  %55 = phi i64 [ 0, %40 ], [ %221, %218 ]
  %56 = phi i8* [ %35, %40 ], [ %220, %218 ]
  %57 = phi %struct.hash_table* [ null, %40 ], [ %219, %218 ]
  call void @llvm.dbg.value(metadata i8* %50, metadata !1019, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %51, metadata !1021, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %52, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %53, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %54, metadata !1024, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 undef, metadata !1032, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %55, metadata !1027, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %56, metadata !1026, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %54, metadata !1024, metadata !DIExpression()), !dbg !1099
  %58 = icmp eq i8 %49, 47, !dbg !1145
  br i1 %58, label %62, label %59, !dbg !1146

59:                                               ; preds = %62, %48
  %60 = phi i8 [ %49, %48 ], [ %65, %62 ], !dbg !1145
  %61 = phi i8* [ %54, %48 ], [ %64, %62 ], !dbg !1099
  br label %67, !dbg !1147

62:                                               ; preds = %48, %62
  %63 = phi i8* [ %64, %62 ], [ %54, %48 ]
  call void @llvm.dbg.value(metadata i8* %63, metadata !1024, metadata !DIExpression()), !dbg !1099
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %64, metadata !1024, metadata !DIExpression()), !dbg !1099
  %65 = load i8, i8* %64, align 1, !dbg !1145, !tbaa !901
  %66 = icmp eq i8 %65, 47, !dbg !1145
  br i1 %66, label %62, label %59, !dbg !1146, !llvm.loop !1150

67:                                               ; preds = %59, %70
  %68 = phi i8 [ %72, %70 ], [ %60, %59 ], !dbg !1152
  %69 = phi i8* [ %71, %70 ], [ %61, %59 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8* %69, metadata !1025, metadata !DIExpression()), !dbg !1099
  switch i8 %68, label %70 [
    i8 0, label %73
    i8 47, label %73
  ], !dbg !1155

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %71, metadata !1025, metadata !DIExpression()), !dbg !1099
  %72 = load i8, i8* %71, align 1, !dbg !1152, !tbaa !901
  br label %67, !dbg !1157, !llvm.loop !1158

73:                                               ; preds = %67, %67
  %74 = ptrtoint i8* %69 to i64, !dbg !1160
  %75 = ptrtoint i8* %61 to i64, !dbg !1160
  %76 = sub i64 %74, %75, !dbg !1160
  switch i64 %76, label %96 [
    i64 0, label %229
    i64 1, label %77
    i64 2, label %79
  ], !dbg !1161

77:                                               ; preds = %73
  %78 = icmp eq i8 %60, 46, !dbg !1162
  br i1 %78, label %218, label %96, !dbg !1163

79:                                               ; preds = %73
  %80 = icmp eq i8 %60, 46, !dbg !1164
  br i1 %80, label %81, label %96, !dbg !1165

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1166
  %83 = load i8, i8* %82, align 1, !dbg !1166, !tbaa !901
  %84 = icmp eq i8 %83, 46, !dbg !1167
  br i1 %84, label %85, label %96, !dbg !1168

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1169
  %87 = icmp ugt i8* %52, %86, !dbg !1172
  br i1 %87, label %88, label %218, !dbg !1173

88:                                               ; preds = %85, %92
  %89 = phi i8* [ %90, %92 ], [ %52, %85 ]
  %90 = getelementptr inbounds i8, i8* %89, i64 -1, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %90, metadata !1022, metadata !DIExpression()), !dbg !1099
  %91 = icmp ugt i8* %90, %51, !dbg !1176
  br i1 %91, label %92, label %218, !dbg !1178

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, i8* %89, i64 -2, !dbg !1179
  %94 = load i8, i8* %93, align 1, !dbg !1179, !tbaa !901
  %95 = icmp eq i8 %94, 47, !dbg !1179
  br i1 %95, label %218, label %88, !dbg !1180, !llvm.loop !1181

96:                                               ; preds = %77, %73, %81, %79
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %41) #29, !dbg !1183
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1041, metadata !DIExpression()), !dbg !1184
  %97 = getelementptr inbounds i8, i8* %52, i64 -1, !dbg !1185
  %98 = load i8, i8* %97, align 1, !dbg !1185, !tbaa !901
  %99 = icmp eq i8 %98, 47, !dbg !1185
  br i1 %99, label %102, label %100, !dbg !1187

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %101, metadata !1022, metadata !DIExpression()), !dbg !1099
  store i8 47, i8* %52, align 1, !dbg !1189, !tbaa !901
  br label %102, !dbg !1190

102:                                              ; preds = %100, %96
  %103 = phi i8* [ %52, %96 ], [ %101, %100 ], !dbg !1099
  call void @llvm.dbg.value(metadata i8* %103, metadata !1022, metadata !DIExpression()), !dbg !1099
  %104 = getelementptr inbounds i8, i8* %103, i64 %76, !dbg !1191
  %105 = icmp ult i8* %104, %56, !dbg !1192
  br i1 %105, label %119, label %106, !dbg !1193

106:                                              ; preds = %102
  %107 = ptrtoint i8* %103 to i64, !dbg !1194
  %108 = ptrtoint i8* %51 to i64, !dbg !1194
  %109 = sub i64 %107, %108, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %109, metadata !1085, metadata !DIExpression()), !dbg !1195
  %110 = ptrtoint i8* %56 to i64, !dbg !1196
  %111 = sub i64 %110, %108, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %111, metadata !1089, metadata !DIExpression()), !dbg !1195
  %112 = add nsw i64 %76, 1, !dbg !1197
  %113 = icmp slt i64 %76, 4096, !dbg !1197
  %114 = select i1 %113, i64 4096, i64 %112, !dbg !1197
  %115 = add i64 %114, %111, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %115, metadata !1089, metadata !DIExpression()), !dbg !1195
  %116 = call i8* @xrealloc(i8* %51, i64 %115) #29, !dbg !1200
  call void @llvm.dbg.value(metadata i8* %116, metadata !1021, metadata !DIExpression()), !dbg !1099
  %117 = getelementptr inbounds i8, i8* %116, i64 %115, !dbg !1201
  call void @llvm.dbg.value(metadata i8* %117, metadata !1026, metadata !DIExpression()), !dbg !1099
  %118 = getelementptr inbounds i8, i8* %116, i64 %109, !dbg !1202
  call void @llvm.dbg.value(metadata i8* %118, metadata !1022, metadata !DIExpression()), !dbg !1099
  br label %119, !dbg !1203

119:                                              ; preds = %106, %102
  %120 = phi i8* [ %117, %106 ], [ %56, %102 ], !dbg !1099
  %121 = phi i8* [ %118, %106 ], [ %103, %102 ], !dbg !1099
  %122 = phi i8* [ %116, %106 ], [ %51, %102 ], !dbg !1099
  call void @llvm.dbg.value(metadata i8* %122, metadata !1021, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %121, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %120, metadata !1026, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %121, metadata !1204, metadata !DIExpression()) #29, !dbg !1209
  call void @llvm.dbg.value(metadata i8* %61, metadata !1207, metadata !DIExpression()) #29, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %76, metadata !1208, metadata !DIExpression()) #29, !dbg !1209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %121, i8* nonnull align 1 %61, i64 %76, i1 false) #29, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %121, metadata !1022, metadata !DIExpression()), !dbg !1099
  %123 = getelementptr inbounds i8, i8* %121, i64 %76, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %123, metadata !1022, metadata !DIExpression()), !dbg !1099
  store i8 0, i8* %123, align 1, !dbg !1213, !tbaa !901
  br i1 %44, label %201, label %124, !dbg !1214

124:                                              ; preds = %119
  br i1 %5, label %127, label %125, !dbg !1216

125:                                              ; preds = %124
  %126 = call i32 @stat(i8* %122, %struct.stat* nonnull %3) #29, !dbg !1218
  br label %129, !dbg !1216

127:                                              ; preds = %124
  %128 = call i32 @lstat(i8* %122, %struct.stat* nonnull %3) #29, !dbg !1219
  br label %129, !dbg !1216

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ], !dbg !1216
  %131 = icmp eq i32 %130, 0, !dbg !1220
  br i1 %131, label %142, label %132, !dbg !1221

132:                                              ; preds = %129
  %133 = tail call i32* @__errno_location() #33, !dbg !1222
  %134 = load i32, i32* %133, align 4, !dbg !1222, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %134, metadata !1032, metadata !DIExpression()), !dbg !1099
  switch i32 %6, label %201 [
    i32 0, label %206
    i32 1, label %135
  ], !dbg !1224

135:                                              ; preds = %132
  %136 = call i64 @strspn(i8* nonnull %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #30, !dbg !1225
  %137 = getelementptr inbounds i8, i8* %69, i64 %136, !dbg !1229
  %138 = load i8, i8* %137, align 1, !dbg !1229, !tbaa !901
  %139 = icmp ne i8 %138, 0, !dbg !1229
  %140 = icmp ne i32 %134, 2
  %141 = or i1 %140, %139, !dbg !1230
  br i1 %141, label %206, label %208

142:                                              ; preds = %129
  %143 = load i32, i32* %45, align 8, !dbg !1231, !tbaa !1232
  call void @llvm.dbg.value(metadata i32 undef, metadata !1032, metadata !DIExpression()), !dbg !1099
  %144 = trunc i32 %143 to i16, !dbg !1235
  %145 = and i16 %144, -4096, !dbg !1235
  switch i16 %145, label %202 [
    i16 -24576, label %146
    i16 16384, label %208
  ], !dbg !1235

146:                                              ; preds = %142
  call void @llvm.dbg.value(metadata %struct.hash_table** undef, metadata !1236, metadata !DIExpression()) #29, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %50, metadata !1244, metadata !DIExpression()) #29, !dbg !1249
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1245, metadata !DIExpression()) #29, !dbg !1249
  %147 = icmp eq %struct.hash_table* %57, null, !dbg !1252
  br i1 %147, label %148, label %152, !dbg !1253

148:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i64 7, metadata !1246, metadata !DIExpression()) #29, !dbg !1254
  %149 = call %struct.hash_table* @hash_initialize(i64 7, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @triple_hash, i1 (i8*, i8*)* nonnull @triple_compare_ino_str, void (i8*)* nonnull @triple_free) #29, !dbg !1255
  %150 = icmp eq %struct.hash_table* %149, null, !dbg !1256
  br i1 %150, label %151, label %152, !dbg !1258

151:                                              ; preds = %148
  call void @xalloc_die() #31, !dbg !1259
  unreachable, !dbg !1259

152:                                              ; preds = %148, %146
  %153 = phi %struct.hash_table* [ %149, %148 ], [ %57, %146 ], !dbg !1099
  %154 = call zeroext i1 @seen_file(%struct.hash_table* nonnull %153, i8* %50, %struct.stat* nonnull %3) #29, !dbg !1260
  br i1 %154, label %155, label %156, !dbg !1262

155:                                              ; preds = %152
  br i1 %42, label %215, label %216

156:                                              ; preds = %152
  call void @record_file(%struct.hash_table* nonnull %153, i8* %50, %struct.stat* nonnull %3) #29, !dbg !1263
  %157 = load i64, i64* %46, align 8, !dbg !1264, !tbaa !1265
  %158 = call i8* @areadlink_with_size(i8* %122, i64 %157) #29, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %158, metadata !1090, metadata !DIExpression()), !dbg !1267
  %159 = icmp eq i8* %158, null, !dbg !1268
  br i1 %159, label %160, label %167, !dbg !1270

160:                                              ; preds = %156
  %161 = tail call i32* @__errno_location() #33, !dbg !1271
  br i1 %42, label %162, label %165, !dbg !1273

162:                                              ; preds = %160
  %163 = load i32, i32* %161, align 4, !dbg !1275, !tbaa !850
  %164 = icmp eq i32 %163, 12, !dbg !1276
  br i1 %164, label %165, label %215, !dbg !1277

165:                                              ; preds = %162, %160
  %166 = load i32, i32* %161, align 4, !dbg !1278, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %166, metadata !1032, metadata !DIExpression()), !dbg !1099
  br label %216, !dbg !1279

167:                                              ; preds = %156
  %168 = call i64 @strlen(i8* nonnull %158) #30, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %168, metadata !1093, metadata !DIExpression()), !dbg !1267
  %169 = call i64 @strlen(i8* nonnull %69) #30, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %169, metadata !1094, metadata !DIExpression()), !dbg !1267
  %170 = icmp eq i64 %55, 0, !dbg !1282
  %171 = add i64 %169, 1, !dbg !1284
  %172 = add i64 %171, %168, !dbg !1284
  br i1 %170, label %173, label %177, !dbg !1285

173:                                              ; preds = %167
  %174 = icmp ugt i64 %172, 4096, !dbg !1286
  %175 = select i1 %174, i64 %172, i64 4096, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %175, metadata !1027, metadata !DIExpression()), !dbg !1099
  %176 = call noalias i8* @xmalloc(i64 %175) #29, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %176, metadata !1023, metadata !DIExpression()), !dbg !1099
  br label %181, !dbg !1290

177:                                              ; preds = %167
  %178 = icmp ugt i64 %172, %55, !dbg !1291
  br i1 %178, label %179, label %181, !dbg !1293

179:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i64 %172, metadata !1027, metadata !DIExpression()), !dbg !1099
  %180 = call i8* @xrealloc(i8* %53, i64 %172) #29, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %180, metadata !1023, metadata !DIExpression()), !dbg !1099
  br label %181, !dbg !1296

181:                                              ; preds = %177, %179, %173
  %182 = phi i64 [ %55, %177 ], [ %172, %179 ], [ %175, %173 ], !dbg !1099
  %183 = phi i8* [ %53, %177 ], [ %180, %179 ], [ %176, %173 ], !dbg !1099
  call void @llvm.dbg.value(metadata i8* %183, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %182, metadata !1027, metadata !DIExpression()), !dbg !1099
  %184 = getelementptr inbounds i8, i8* %183, i64 %168, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %184, metadata !1298, metadata !DIExpression()) #29, !dbg !1305
  call void @llvm.dbg.value(metadata i8* %69, metadata !1303, metadata !DIExpression()) #29, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %171, metadata !1304, metadata !DIExpression()) #29, !dbg !1305
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %184, i8* nonnull align 1 %69, i64 %171, i1 false) #29, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %183, metadata !1204, metadata !DIExpression()) #29, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %158, metadata !1207, metadata !DIExpression()) #29, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %168, metadata !1208, metadata !DIExpression()) #29, !dbg !1308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %183, i8* nonnull align 1 %158, i64 %168, i1 false) #29, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %183, metadata !1025, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %183, metadata !1019, metadata !DIExpression()), !dbg !1099
  %185 = load i8, i8* %158, align 1, !dbg !1311, !tbaa !901
  %186 = icmp eq i8 %185, 47, !dbg !1311
  %187 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !1312
  br i1 %186, label %188, label %189, !dbg !1313

188:                                              ; preds = %181
  call void @llvm.dbg.value(metadata i64 0, metadata !1095, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8* %122, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %187, metadata !1022, metadata !DIExpression()), !dbg !1099
  store i8 47, i8* %122, align 1, !dbg !1315, !tbaa !901
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1099
  br label %199, !dbg !1316

189:                                              ; preds = %181
  %190 = icmp ugt i8* %123, %187, !dbg !1317
  br i1 %190, label %191, label %199, !dbg !1320

191:                                              ; preds = %189, %195
  %192 = phi i8* [ %193, %195 ], [ %123, %189 ]
  %193 = getelementptr inbounds i8, i8* %192, i64 -1, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %193, metadata !1022, metadata !DIExpression()), !dbg !1099
  %194 = icmp ugt i8* %193, %122, !dbg !1323
  br i1 %194, label %195, label %199, !dbg !1325

195:                                              ; preds = %191
  %196 = getelementptr inbounds i8, i8* %192, i64 -2, !dbg !1326
  %197 = load i8, i8* %196, align 1, !dbg !1326, !tbaa !901
  %198 = icmp eq i8 %197, 47, !dbg !1326
  br i1 %198, label %199, label %191, !dbg !1327, !llvm.loop !1328

199:                                              ; preds = %195, %191, %188, %189
  %200 = phi i8* [ %187, %188 ], [ %123, %189 ], [ %193, %191 ], [ %193, %195 ], !dbg !1330
  call void @llvm.dbg.value(metadata i8* %200, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @free(i8* %158) #29, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %183, metadata !1019, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %183, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %183, metadata !1025, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 undef, metadata !1032, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %182, metadata !1027, metadata !DIExpression()), !dbg !1099
  br label %208

201:                                              ; preds = %132, %119
  store i32 0, i32* %45, align 8, !dbg !1332, !tbaa !1232
  br label %202, !dbg !1333

202:                                              ; preds = %201, %142
  %203 = load i8, i8* %69, align 1, !dbg !1333, !tbaa !901
  %204 = icmp ne i8 %203, 0, !dbg !1333
  %205 = and i1 %47, %204, !dbg !1336
  br i1 %205, label %206, label %208, !dbg !1336

206:                                              ; preds = %132, %202, %135
  %207 = phi i32 [ %134, %132 ], [ 20, %202 ], [ %134, %135 ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !1019, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %123, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %53, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %69, metadata !1025, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %217, metadata !1032, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 undef, metadata !1027, metadata !DIExpression()), !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %41) #29, !dbg !1337
  br label %256

208:                                              ; preds = %135, %199, %142, %202
  %209 = phi %struct.hash_table* [ %57, %135 ], [ %57, %202 ], [ %57, %142 ], [ %153, %199 ]
  %210 = phi i64 [ %55, %135 ], [ %55, %202 ], [ %55, %142 ], [ %182, %199 ]
  %211 = phi i8* [ %69, %135 ], [ %69, %202 ], [ %69, %142 ], [ %183, %199 ]
  %212 = phi i8* [ %53, %135 ], [ %53, %202 ], [ %53, %142 ], [ %183, %199 ]
  %213 = phi i8* [ %123, %135 ], [ %123, %202 ], [ %123, %142 ], [ %200, %199 ]
  %214 = phi i8* [ %50, %135 ], [ %50, %202 ], [ %50, %142 ], [ %183, %199 ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !1019, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %123, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* undef, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %69, metadata !1025, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %217, metadata !1032, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 undef, metadata !1027, metadata !DIExpression()), !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %41) #29, !dbg !1337
  br label %218

215:                                              ; preds = %162, %155
  call void @llvm.dbg.value(metadata i8* %50, metadata !1019, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %123, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %53, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %69, metadata !1025, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %217, metadata !1032, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %55, metadata !1027, metadata !DIExpression()), !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %41) #29, !dbg !1337
  br label %218

216:                                              ; preds = %155, %165
  %217 = phi i32 [ %166, %165 ], [ 40, %155 ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !1019, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %123, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %53, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %69, metadata !1025, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %217, metadata !1032, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 undef, metadata !1027, metadata !DIExpression()), !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %41) #29, !dbg !1337
  br label %256

218:                                              ; preds = %92, %88, %215, %208, %85, %77
  %219 = phi %struct.hash_table* [ %57, %85 ], [ %57, %77 ], [ %209, %208 ], [ %153, %215 ], [ %57, %88 ], [ %57, %92 ], !dbg !1338
  %220 = phi i8* [ %56, %85 ], [ %56, %77 ], [ %120, %208 ], [ %120, %215 ], [ %56, %88 ], [ %56, %92 ], !dbg !1099
  %221 = phi i64 [ %55, %85 ], [ %55, %77 ], [ %210, %208 ], [ %55, %215 ], [ %55, %88 ], [ %55, %92 ], !dbg !1339
  %222 = phi i8* [ %69, %85 ], [ %69, %77 ], [ %211, %208 ], [ %69, %215 ], [ %69, %88 ], [ %69, %92 ], !dbg !1340
  %223 = phi i8* [ %53, %85 ], [ %53, %77 ], [ %212, %208 ], [ %53, %215 ], [ %53, %88 ], [ %53, %92 ], !dbg !1341
  %224 = phi i8* [ %52, %85 ], [ %52, %77 ], [ %213, %208 ], [ %123, %215 ], [ %90, %88 ], [ %90, %92 ], !dbg !1099
  %225 = phi i8* [ %51, %85 ], [ %51, %77 ], [ %122, %208 ], [ %122, %215 ], [ %51, %88 ], [ %51, %92 ], !dbg !1099
  %226 = phi i8* [ %50, %85 ], [ %50, %77 ], [ %214, %208 ], [ %50, %215 ], [ %50, %88 ], [ %50, %92 ]
  call void @llvm.dbg.value(metadata i8* %222, metadata !1025, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %226, metadata !1019, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %225, metadata !1021, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %224, metadata !1022, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %223, metadata !1023, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %222, metadata !1024, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 undef, metadata !1032, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %221, metadata !1027, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %220, metadata !1026, metadata !DIExpression()), !dbg !1099
  %227 = load i8, i8* %222, align 1, !dbg !1143, !tbaa !901
  %228 = icmp eq i8 %227, 0, !dbg !1144
  br i1 %228, label %229, label %48, !dbg !1144, !llvm.loop !1342

229:                                              ; preds = %218, %73, %34
  %230 = phi %struct.hash_table* [ null, %34 ], [ %57, %73 ], [ %219, %218 ], !dbg !1338
  %231 = phi i8* [ %35, %34 ], [ %56, %73 ], [ %220, %218 ], !dbg !1344
  %232 = phi i8* [ null, %34 ], [ %53, %73 ], [ %223, %218 ], !dbg !1341
  %233 = phi i8* [ %36, %34 ], [ %52, %73 ], [ %224, %218 ], !dbg !1140
  %234 = phi i8* [ %37, %34 ], [ %51, %73 ], [ %225, %218 ], !dbg !1345
  %235 = getelementptr inbounds i8, i8* %234, i64 1, !dbg !1346
  %236 = icmp ugt i8* %233, %235, !dbg !1348
  br i1 %236, label %237, label %242, !dbg !1349

237:                                              ; preds = %229
  %238 = getelementptr inbounds i8, i8* %233, i64 -1, !dbg !1350
  %239 = load i8, i8* %238, align 1, !dbg !1350, !tbaa !901
  %240 = icmp eq i8 %239, 47, !dbg !1350
  %241 = select i1 %240, i8* %238, i8* %233, !dbg !1351
  br label %242, !dbg !1351

242:                                              ; preds = %237, %229
  %243 = phi i8* [ %233, %229 ], [ %241, %237 ], !dbg !1099
  call void @llvm.dbg.value(metadata i8* %243, metadata !1022, metadata !DIExpression()), !dbg !1099
  store i8 0, i8* %243, align 1, !dbg !1352, !tbaa !901
  %244 = getelementptr inbounds i8, i8* %243, i64 1, !dbg !1353
  %245 = icmp eq i8* %231, %244, !dbg !1355
  br i1 %245, label %252, label %246, !dbg !1356

246:                                              ; preds = %242
  %247 = ptrtoint i8* %243 to i64, !dbg !1357
  %248 = ptrtoint i8* %234 to i64, !dbg !1357
  %249 = sub i64 1, %248, !dbg !1357
  %250 = add i64 %249, %247, !dbg !1358
  %251 = call i8* @xrealloc(i8* %234, i64 %250) #29, !dbg !1359
  call void @llvm.dbg.value(metadata i8* %251, metadata !1021, metadata !DIExpression()), !dbg !1099
  br label %252, !dbg !1360

252:                                              ; preds = %246, %242
  %253 = phi i8* [ %251, %246 ], [ %234, %242 ], !dbg !1099
  call void @llvm.dbg.value(metadata i8* %253, metadata !1021, metadata !DIExpression()), !dbg !1099
  call void @free(i8* %232) #29, !dbg !1361
  call void @llvm.dbg.value(metadata %struct.hash_table* %230, metadata !1028, metadata !DIExpression()), !dbg !1099
  %254 = icmp eq %struct.hash_table* %230, null, !dbg !1362
  br i1 %254, label %263, label %255, !dbg !1364

255:                                              ; preds = %252
  call void @hash_free(%struct.hash_table* nonnull %230) #29, !dbg !1365
  br label %263, !dbg !1365

256:                                              ; preds = %216, %206
  %257 = phi i32 [ %207, %206 ], [ %217, %216 ]
  %258 = phi %struct.hash_table* [ %57, %206 ], [ %153, %216 ]
  call void @llvm.dbg.label(metadata !1098), !dbg !1366
  call void @free(i8* %53) #29, !dbg !1367
  call void @free(i8* %122) #29, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.hash_table* %153, metadata !1028, metadata !DIExpression()), !dbg !1099
  %259 = icmp eq %struct.hash_table* %258, null, !dbg !1369
  br i1 %259, label %261, label %260, !dbg !1371

260:                                              ; preds = %256
  call void @hash_free(%struct.hash_table* nonnull %258) #29, !dbg !1372
  br label %261, !dbg !1372

261:                                              ; preds = %260, %256
  %262 = tail call i32* @__errno_location() #33, !dbg !1373
  store i32 %257, i32* %262, align 4, !dbg !1374, !tbaa !850
  br label %263, !dbg !1375

263:                                              ; preds = %252, %255, %19, %261, %17, %13, %9
  %264 = phi i8* [ null, %9 ], [ null, %13 ], [ null, %17 ], [ null, %261 ], [ null, %19 ], [ %253, %255 ], [ %253, %252 ]
  ret i8* %264, !dbg !1376
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1377 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1382 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1383 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1385, metadata !DIExpression()), !dbg !1386
  store i8* %0, i8** @file_name, align 8, !dbg !1387, !tbaa !682
  ret void, !dbg !1388
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1389 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1393, metadata !DIExpression()), !dbg !1394
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1395, !tbaa !1396
  ret void, !dbg !1398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1399 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !682
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #29, !dbg !1405
  %3 = icmp eq i32 %2, 0, !dbg !1406
  br i1 %3, label %22, label %4, !dbg !1407

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1408, !tbaa !1396, !range !1409
  %6 = icmp eq i8 %5, 0, !dbg !1408
  br i1 %6, label %11, label %7, !dbg !1410

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #33, !dbg !1411
  %9 = load i32, i32* %8, align 4, !dbg !1411, !tbaa !850
  %10 = icmp eq i32 %9, 32, !dbg !1412
  br i1 %10, label %22, label %11, !dbg !1413

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 5) #29, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %12, metadata !1401, metadata !DIExpression()), !dbg !1415
  %13 = load i8*, i8** @file_name, align 8, !dbg !1416, !tbaa !682
  %14 = icmp eq i8* %13, null, !dbg !1416
  %15 = tail call i32* @__errno_location() #33, !dbg !1418
  %16 = load i32, i32* %15, align 4, !dbg !1418, !tbaa !850
  br i1 %14, label %19, label %17, !dbg !1419

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #29, !dbg !1420
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.51, i64 0, i64 0), i8* %18, i8* %12) #29, !dbg !1421
  br label %20, !dbg !1421

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.52, i64 0, i64 0), i8* %12) #29, !dbg !1422
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1423, !tbaa !850
  tail call void @_exit(i32 %21) #31, !dbg !1424
  unreachable, !dbg !1424

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1425, !tbaa !682
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #29, !dbg !1427
  %25 = icmp eq i32 %24, 0, !dbg !1428
  br i1 %25, label %28, label %26, !dbg !1429

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1430, !tbaa !850
  tail call void @_exit(i32 %27) #31, !dbg !1431
  unreachable, !dbg !1431

28:                                               ; preds = %22
  ret void, !dbg !1432
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @record_file(%struct.hash_table* %0, i8* nonnull %1, %struct.stat* nocapture nonnull readonly %2) local_unnamed_addr #8 !dbg !1433 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1460, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i8* %1, metadata !1461, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1462, metadata !DIExpression()), !dbg !1475
  %4 = icmp eq %struct.hash_table* %0, null, !dbg !1476
  br i1 %4, label %20, label %5, !dbg !1478

5:                                                ; preds = %3
  %6 = tail call noalias i8* @xmalloc(i64 24) #29, !dbg !1479
  call void @llvm.dbg.value(metadata i8* %6, metadata !1463, metadata !DIExpression()), !dbg !1475
  %7 = tail call noalias i8* @xstrdup(i8* nonnull %1) #29, !dbg !1480
  %8 = bitcast i8* %6 to i8**, !dbg !1481
  store i8* %7, i8** %8, align 8, !dbg !1482, !tbaa !1483
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !1485
  %10 = bitcast %struct.stat* %2 to <2 x i64>*, !dbg !1486
  %11 = load <2 x i64>, <2 x i64>* %10, align 8, !dbg !1486, !tbaa !1487
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !1486
  %13 = bitcast i8* %9 to <2 x i64>*, !dbg !1488
  store <2 x i64> %12, <2 x i64>* %13, align 8, !dbg !1488, !tbaa !1487
  %14 = tail call i8* @hash_insert(%struct.hash_table* nonnull %0, i8* %6) #29, !dbg !1489
  call void @llvm.dbg.value(metadata i8* %14, metadata !1473, metadata !DIExpression()), !dbg !1490
  %15 = icmp eq i8* %14, null, !dbg !1491
  br i1 %15, label %16, label %17, !dbg !1493

16:                                               ; preds = %5
  tail call void @xalloc_die() #31, !dbg !1494
  unreachable, !dbg !1494

17:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %14, metadata !1473, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %6, metadata !1463, metadata !DIExpression()), !dbg !1475
  %18 = icmp eq i8* %14, %6, !dbg !1496
  br i1 %18, label %20, label %19, !dbg !1498

19:                                               ; preds = %17
  tail call void @triple_free(i8* nonnull %6) #29, !dbg !1499
  br label %20, !dbg !1501

20:                                               ; preds = %17, %19, %3
  ret void, !dbg !1502
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @seen_file(%struct.hash_table* %0, i8* %1, %struct.stat* nocapture readonly %2) local_unnamed_addr #8 !dbg !1503 {
  %4 = alloca %struct.F_triple, align 8
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1509, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %1, metadata !1510, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1511, metadata !DIExpression()), !dbg !1513
  %5 = bitcast %struct.F_triple* %4 to i8*, !dbg !1514
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #29, !dbg !1514
  call void @llvm.dbg.declare(metadata %struct.F_triple* %4, metadata !1512, metadata !DIExpression()), !dbg !1515
  %6 = icmp eq %struct.hash_table* %0, null, !dbg !1516
  br i1 %6, label %16, label %7, !dbg !1518

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 0, !dbg !1519
  store i8* %1, i8** %8, align 8, !dbg !1520, !tbaa !1483
  %9 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 1, !dbg !1521
  %10 = bitcast %struct.stat* %2 to <2 x i64>*, !dbg !1522
  %11 = load <2 x i64>, <2 x i64>* %10, align 8, !dbg !1522, !tbaa !1487
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !1522
  %13 = bitcast i64* %9 to <2 x i64>*, !dbg !1523
  store <2 x i64> %12, <2 x i64>* %13, align 8, !dbg !1523, !tbaa !1487
  %14 = call i8* @hash_lookup(%struct.hash_table* nonnull %0, i8* nonnull %5) #29, !dbg !1524
  %15 = icmp ne i8* %14, null, !dbg !1525
  br label %16, !dbg !1526

16:                                               ; preds = %3, %7
  %17 = phi i1 [ %15, %7 ], [ false, %3 ], !dbg !1513
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #29, !dbg !1527
  ret i1 %17, !dbg !1527
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @hash_get_n_buckets(%struct.hash_table* nocapture readonly %0) local_unnamed_addr #14 !dbg !1528 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1567, metadata !DIExpression()), !dbg !1568
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1569
  %3 = load i64, i64* %2, align 8, !dbg !1569, !tbaa !1570
  ret i64 %3, !dbg !1572
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @hash_get_n_buckets_used(%struct.hash_table* nocapture readonly %0) local_unnamed_addr #14 !dbg !1573 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1575, metadata !DIExpression()), !dbg !1576
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !1577
  %3 = load i64, i64* %2, align 8, !dbg !1577, !tbaa !1578
  ret i64 %3, !dbg !1579
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @hash_get_n_entries(%struct.hash_table* nocapture readonly %0) local_unnamed_addr #14 !dbg !1580 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1582, metadata !DIExpression()), !dbg !1583
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1584
  %3 = load i64, i64* %2, align 8, !dbg !1584, !tbaa !1585
  ret i64 %3, !dbg !1586
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @hash_get_max_bucket_length(%struct.hash_table* nocapture readonly %0) local_unnamed_addr #14 !dbg !1587 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1589, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1599
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1600
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !dbg !1600, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %3, metadata !1590, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1599
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1602
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1602, !tbaa !1603
  %6 = icmp ult %struct.hash_entry* %3, %5, !dbg !1604
  br i1 %6, label %7, label %27, !dbg !1605

7:                                                ; preds = %1, %23
  %8 = phi i64 [ %24, %23 ], [ 0, %1 ]
  %9 = phi %struct.hash_entry* [ %25, %23 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !1591, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata %struct.hash_entry* %9, metadata !1590, metadata !DIExpression()), !dbg !1599
  %10 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %9, i64 0, i32 0, !dbg !1606
  %11 = load i8*, i8** %10, align 8, !dbg !1606, !tbaa !1607
  %12 = icmp eq i8* %11, null, !dbg !1609
  br i1 %12, label %23, label %13, !dbg !1610

13:                                               ; preds = %7, %13
  %14 = phi %struct.hash_entry* [ %17, %13 ], [ %9, %7 ], !dbg !1611
  %15 = phi i64 [ %19, %13 ], [ 1, %7 ], !dbg !1611
  call void @llvm.dbg.value(metadata i64 %15, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata %struct.hash_entry* %14, metadata !1592, metadata !DIExpression()), !dbg !1611
  %16 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 1, !dbg !1612
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !dbg !1612, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %17, metadata !1592, metadata !DIExpression()), !dbg !1611
  %18 = icmp eq %struct.hash_entry* %17, null, !dbg !1614
  %19 = add i64 %15, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %19, metadata !1598, metadata !DIExpression()), !dbg !1611
  br i1 %18, label %20, label %13, !dbg !1614, !llvm.loop !1616

20:                                               ; preds = %13
  %21 = icmp ugt i64 %15, %8, !dbg !1617
  %22 = select i1 %21, i64 %15, i64 %8, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %22, metadata !1591, metadata !DIExpression()), !dbg !1599
  br label %23, !dbg !1620

23:                                               ; preds = %7, %20
  %24 = phi i64 [ %22, %20 ], [ %8, %7 ], !dbg !1599
  call void @llvm.dbg.value(metadata i64 %24, metadata !1591, metadata !DIExpression()), !dbg !1599
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %9, i64 1, !dbg !1621
  call void @llvm.dbg.value(metadata %struct.hash_entry* %25, metadata !1590, metadata !DIExpression()), !dbg !1599
  %26 = icmp ult %struct.hash_entry* %25, %5, !dbg !1604
  br i1 %26, label %7, label %27, !dbg !1605, !llvm.loop !1622

27:                                               ; preds = %23, %1
  %28 = phi i64 [ 0, %1 ], [ %24, %23 ], !dbg !1599
  ret i64 %28, !dbg !1624
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local zeroext i1 @hash_table_ok(%struct.hash_table* nocapture readonly %0) local_unnamed_addr #14 !dbg !1625 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1629, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1632, metadata !DIExpression()), !dbg !1639
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1640
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !dbg !1640, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %3, metadata !1630, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1632, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1639
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1641
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1641, !tbaa !1603
  %6 = icmp ult %struct.hash_entry* %3, %5, !dbg !1642
  br i1 %6, label %7, label %28, !dbg !1643

7:                                                ; preds = %1, %23
  %8 = phi i64 [ %25, %23 ], [ 0, %1 ]
  %9 = phi i64 [ %24, %23 ], [ 0, %1 ]
  %10 = phi %struct.hash_entry* [ %26, %23 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !1632, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %9, metadata !1631, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata %struct.hash_entry* %10, metadata !1630, metadata !DIExpression()), !dbg !1639
  %11 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 0, i32 0, !dbg !1644
  %12 = load i8*, i8** %11, align 8, !dbg !1644, !tbaa !1607
  %13 = icmp eq i8* %12, null, !dbg !1645
  br i1 %13, label %23, label %14, !dbg !1646

14:                                               ; preds = %7, %14
  %15 = phi i64 [ %17, %14 ], [ %8, %7 ]
  %16 = phi %struct.hash_entry* [ %19, %14 ], [ %10, %7 ], !dbg !1647
  %17 = add i64 %15, 1, !dbg !1647
  call void @llvm.dbg.value(metadata %struct.hash_entry* %16, metadata !1633, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %17, metadata !1632, metadata !DIExpression()), !dbg !1639
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1, !dbg !1648
  %19 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8, !dbg !1648, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %19, metadata !1633, metadata !DIExpression()), !dbg !1647
  %20 = icmp eq %struct.hash_entry* %19, null, !dbg !1649
  br i1 %20, label %21, label %14, !dbg !1649, !llvm.loop !1650

21:                                               ; preds = %14
  %22 = add i64 %9, 1, !dbg !1652
  br label %23, !dbg !1653

23:                                               ; preds = %21, %7
  %24 = phi i64 [ %9, %7 ], [ %22, %21 ], !dbg !1639
  %25 = phi i64 [ %8, %7 ], [ %17, %21 ], !dbg !1639
  call void @llvm.dbg.value(metadata i64 %25, metadata !1632, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %24, metadata !1631, metadata !DIExpression()), !dbg !1639
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 1, !dbg !1653
  call void @llvm.dbg.value(metadata %struct.hash_entry* %26, metadata !1630, metadata !DIExpression()), !dbg !1639
  %27 = icmp ult %struct.hash_entry* %26, %5, !dbg !1642
  br i1 %27, label %7, label %28, !dbg !1643, !llvm.loop !1654

28:                                               ; preds = %23, %1
  %29 = phi i64 [ 0, %1 ], [ %24, %23 ], !dbg !1639
  %30 = phi i64 [ 0, %1 ], [ %25, %23 ], !dbg !1639
  %31 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !1656
  %32 = load i64, i64* %31, align 8, !dbg !1656, !tbaa !1578
  %33 = icmp eq i64 %29, %32, !dbg !1658
  br i1 %33, label %34, label %38, !dbg !1659

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1660
  %36 = load i64, i64* %35, align 8, !dbg !1660, !tbaa !1585
  %37 = icmp eq i64 %30, %36, !dbg !1661
  br i1 %37, label %39, label %38, !dbg !1662

38:                                               ; preds = %34, %28
  br label %39, !dbg !1663

39:                                               ; preds = %34, %38
  %40 = phi i1 [ false, %38 ], [ true, %34 ], !dbg !1639
  ret i1 %40, !dbg !1664
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hash_print_statistics(%struct.hash_table* nocapture readonly %0, %struct._IO_FILE* %1) local_unnamed_addr #8 !dbg !1665 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1704, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1705, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1582, metadata !DIExpression()), !dbg !1711
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1713
  %4 = load i64, i64* %3, align 8, !dbg !1713, !tbaa !1585
  call void @llvm.dbg.value(metadata i64 %4, metadata !1706, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1567, metadata !DIExpression()), !dbg !1714
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1716
  %6 = load i64, i64* %5, align 8, !dbg !1716, !tbaa !1570
  call void @llvm.dbg.value(metadata i64 %6, metadata !1707, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1575, metadata !DIExpression()), !dbg !1717
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !1719
  %8 = load i64, i64* %7, align 8, !dbg !1719, !tbaa !1578
  call void @llvm.dbg.value(metadata i64 %8, metadata !1708, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1589, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1720
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1722
  %10 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !dbg !1722, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %10, metadata !1590, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1720
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1723
  %12 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8, !dbg !1723, !tbaa !1603
  %13 = icmp ult %struct.hash_entry* %10, %12, !dbg !1724
  br i1 %13, label %14, label %34, !dbg !1725

14:                                               ; preds = %2, %30
  %15 = phi i64 [ %31, %30 ], [ 0, %2 ]
  %16 = phi %struct.hash_entry* [ %32, %30 ], [ %10, %2 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !1591, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata %struct.hash_entry* %16, metadata !1590, metadata !DIExpression()), !dbg !1720
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0, !dbg !1726
  %18 = load i8*, i8** %17, align 8, !dbg !1726, !tbaa !1607
  %19 = icmp eq i8* %18, null, !dbg !1727
  br i1 %19, label %30, label %20, !dbg !1728

20:                                               ; preds = %14, %20
  %21 = phi %struct.hash_entry* [ %24, %20 ], [ %16, %14 ], !dbg !1729
  %22 = phi i64 [ %26, %20 ], [ 1, %14 ], !dbg !1729
  call void @llvm.dbg.value(metadata i64 %22, metadata !1598, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata %struct.hash_entry* %21, metadata !1592, metadata !DIExpression()), !dbg !1729
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1, !dbg !1730
  %24 = load %struct.hash_entry*, %struct.hash_entry** %23, align 8, !dbg !1730, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %24, metadata !1592, metadata !DIExpression()), !dbg !1729
  %25 = icmp eq %struct.hash_entry* %24, null, !dbg !1731
  %26 = add i64 %22, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %26, metadata !1598, metadata !DIExpression()), !dbg !1729
  br i1 %25, label %27, label %20, !dbg !1731, !llvm.loop !1733

27:                                               ; preds = %20
  %28 = icmp ugt i64 %22, %15, !dbg !1734
  %29 = select i1 %28, i64 %22, i64 %15, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %29, metadata !1591, metadata !DIExpression()), !dbg !1720
  br label %30, !dbg !1736

30:                                               ; preds = %27, %14
  %31 = phi i64 [ %29, %27 ], [ %15, %14 ], !dbg !1720
  call void @llvm.dbg.value(metadata i64 %31, metadata !1591, metadata !DIExpression()), !dbg !1720
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 1, !dbg !1737
  call void @llvm.dbg.value(metadata %struct.hash_entry* %32, metadata !1590, metadata !DIExpression()), !dbg !1720
  %33 = icmp ult %struct.hash_entry* %32, %12, !dbg !1724
  br i1 %33, label %14, label %34, !dbg !1725, !llvm.loop !1738

34:                                               ; preds = %30, %2
  %35 = phi i64 [ 0, %2 ], [ %31, %30 ], !dbg !1720
  call void @llvm.dbg.value(metadata i64 %35, metadata !1709, metadata !DIExpression()), !dbg !1710
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i64 0, i64 0), i64 %4) #29, !dbg !1740
  %37 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.60, i64 0, i64 0), i64 %6) #29, !dbg !1741
  %38 = uitofp i64 %8 to double, !dbg !1742
  %39 = fmul double %38, 1.000000e+02, !dbg !1742
  %40 = uitofp i64 %6 to double, !dbg !1742
  %41 = fdiv double %39, %40, !dbg !1742
  %42 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.61, i64 0, i64 0), i64 %8, double %41) #29, !dbg !1742
  %43 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.62, i64 0, i64 0), i64 %35) #29, !dbg !1743
  ret void, !dbg !1744
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @hash_lookup(%struct.hash_table* nocapture readonly %0, i8* %1) local_unnamed_addr #8 !dbg !1745 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1749, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8* %1, metadata !1750, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1754, metadata !DIExpression()) #29, !dbg !1761
  call void @llvm.dbg.value(metadata i8* %1, metadata !1759, metadata !DIExpression()) #29, !dbg !1761
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !1763
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !dbg !1763, !tbaa !1764
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1765
  %6 = load i64, i64* %5, align 8, !dbg !1765, !tbaa !1570
  %7 = tail call i64 %4(i8* %1, i64 %6) #29, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %7, metadata !1760, metadata !DIExpression()) #29, !dbg !1761
  %8 = load i64, i64* %5, align 8, !dbg !1767, !tbaa !1570
  %9 = icmp ult i64 %7, %8, !dbg !1769
  br i1 %9, label %11, label %10, !dbg !1770

10:                                               ; preds = %2
  tail call void @abort() #31, !dbg !1771
  unreachable, !dbg !1771

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1772
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !1772, !tbaa !1601
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, !dbg !1773
  call void @llvm.dbg.value(metadata %struct.hash_entry* %14, metadata !1751, metadata !DIExpression()), !dbg !1753
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0, !dbg !1774
  %16 = load i8*, i8** %15, align 8, !dbg !1774, !tbaa !1607
  %17 = icmp eq i8* %16, null, !dbg !1776
  %18 = icmp eq %struct.hash_entry* %13, null
  %19 = or i1 %17, %18, !dbg !1777
  call void @llvm.dbg.value(metadata %struct.hash_entry* %14, metadata !1752, metadata !DIExpression()), !dbg !1753
  br i1 %19, label %39, label %20, !dbg !1777

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  call void @llvm.dbg.value(metadata %struct.hash_entry* %14, metadata !1752, metadata !DIExpression()), !dbg !1753
  %22 = icmp eq i8* %16, %1, !dbg !1778
  br i1 %22, label %39, label %23, !dbg !1782

23:                                               ; preds = %20, %35
  %24 = phi %struct.hash_entry* [ %33, %35 ], [ %14, %20 ]
  %25 = phi i8* [ %37, %35 ], [ %16, %20 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %24, metadata !1752, metadata !DIExpression()), !dbg !1753
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !dbg !1783, !tbaa !1784
  %27 = tail call zeroext i1 %26(i8* %1, i8* %25) #29, !dbg !1785
  br i1 %27, label %28, label %31, !dbg !1786

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 0, !dbg !1787
  %30 = load i8*, i8** %29, align 8, !dbg !1788, !tbaa !1607
  br label %39, !dbg !1786

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1, !dbg !1789
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !dbg !1789, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %33, metadata !1752, metadata !DIExpression()), !dbg !1753
  %34 = icmp eq %struct.hash_entry* %33, null, !dbg !1790
  br i1 %34, label %39, label %35, !dbg !1790, !llvm.loop !1791

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8, !dbg !1787, !tbaa !1607
  call void @llvm.dbg.value(metadata %struct.hash_entry* %33, metadata !1752, metadata !DIExpression()), !dbg !1753
  %38 = icmp eq i8* %37, %1, !dbg !1778
  br i1 %38, label %39, label %23, !dbg !1782

39:                                               ; preds = %35, %31, %20, %28, %11
  %40 = phi i8* [ null, %11 ], [ %30, %28 ], [ %1, %20 ], [ null, %31 ], [ %1, %35 ], !dbg !1753
  ret i8* %40, !dbg !1793
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @hash_get_first(%struct.hash_table* nocapture readonly %0) local_unnamed_addr #15 !dbg !1794 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1798, metadata !DIExpression()), !dbg !1800
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1801
  %3 = load i64, i64* %2, align 8, !dbg !1801, !tbaa !1585
  %4 = icmp eq i64 %3, 0, !dbg !1803
  br i1 %4, label %20, label %5, !dbg !1804

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1805
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1805, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %7, metadata !1799, metadata !DIExpression()), !dbg !1800
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1807
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8, !dbg !1807, !tbaa !1603
  %10 = icmp ult %struct.hash_entry* %7, %9, !dbg !1810
  br i1 %10, label %14, label %13, !dbg !1811

11:                                               ; preds = %14
  call void @llvm.dbg.value(metadata %struct.hash_entry* %19, metadata !1799, metadata !DIExpression()), !dbg !1800
  %12 = icmp ult %struct.hash_entry* %19, %9, !dbg !1810
  br i1 %12, label %14, label %13, !dbg !1811, !llvm.loop !1812

13:                                               ; preds = %11, %5
  tail call void @abort() #31, !dbg !1815
  unreachable, !dbg !1815

14:                                               ; preds = %5, %11
  %15 = phi %struct.hash_entry* [ %19, %11 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %15, metadata !1799, metadata !DIExpression()), !dbg !1800
  %16 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 0, !dbg !1816
  %17 = load i8*, i8** %16, align 8, !dbg !1816, !tbaa !1607
  %18 = icmp eq i8* %17, null, !dbg !1818
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 1, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.hash_entry* %19, metadata !1799, metadata !DIExpression()), !dbg !1800
  br i1 %18, label %11, label %20, !dbg !1820

20:                                               ; preds = %14, %1
  %21 = phi i8* [ null, %1 ], [ %17, %14 ], !dbg !1800
  ret i8* %21, !dbg !1821
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @hash_get_next(%struct.hash_table* nocapture readonly %0, i8* %1) local_unnamed_addr #8 !dbg !1822 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1824, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %1, metadata !1825, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1754, metadata !DIExpression()) #29, !dbg !1829
  call void @llvm.dbg.value(metadata i8* %1, metadata !1759, metadata !DIExpression()) #29, !dbg !1829
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !1831
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !dbg !1831, !tbaa !1764
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1832
  %6 = load i64, i64* %5, align 8, !dbg !1832, !tbaa !1570
  %7 = tail call i64 %4(i8* %1, i64 %6) #29, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %7, metadata !1760, metadata !DIExpression()) #29, !dbg !1829
  %8 = load i64, i64* %5, align 8, !dbg !1834, !tbaa !1570
  %9 = icmp ult i64 %7, %8, !dbg !1835
  br i1 %9, label %11, label %10, !dbg !1836

10:                                               ; preds = %2
  tail call void @abort() #31, !dbg !1837
  unreachable, !dbg !1837

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1838
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !1838, !tbaa !1601
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, !dbg !1839
  call void @llvm.dbg.value(metadata %struct.hash_entry* %14, metadata !1826, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata %struct.hash_entry* %14, metadata !1827, metadata !DIExpression()), !dbg !1828
  br label %15, !dbg !1840

15:                                               ; preds = %27, %11
  %16 = phi %struct.hash_entry* [ %14, %11 ], [ %21, %27 ], !dbg !1828
  call void @llvm.dbg.value(metadata %struct.hash_entry* %16, metadata !1827, metadata !DIExpression()), !dbg !1828
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0, !dbg !1841
  %18 = load i8*, i8** %17, align 8, !dbg !1841, !tbaa !1607
  %19 = icmp eq i8* %18, %1, !dbg !1844
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8, !dbg !1845, !tbaa !1613
  %22 = icmp eq %struct.hash_entry* %21, null, !dbg !1828
  br i1 %19, label %23, label %27, !dbg !1846

23:                                               ; preds = %15
  br i1 %22, label %28, label %24, !dbg !1847

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0, !dbg !1848
  %26 = load i8*, i8** %25, align 8, !dbg !1848, !tbaa !1607
  br label %39, !dbg !1849

27:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %struct.hash_entry* %21, metadata !1827, metadata !DIExpression()), !dbg !1828
  br i1 %22, label %28, label %15, !dbg !1850, !llvm.loop !1851

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !1603
  br label %31, !dbg !1853

31:                                               ; preds = %28, %35
  %32 = phi %struct.hash_entry* [ %33, %35 ], [ %14, %28 ], !dbg !1828
  call void @llvm.dbg.value(metadata %struct.hash_entry* %32, metadata !1826, metadata !DIExpression()), !dbg !1828
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %32, i64 1, !dbg !1854
  call void @llvm.dbg.value(metadata %struct.hash_entry* %33, metadata !1826, metadata !DIExpression()), !dbg !1828
  %34 = icmp ult %struct.hash_entry* %33, %30, !dbg !1855
  br i1 %34, label %35, label %39, !dbg !1853

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0, !dbg !1856
  %37 = load i8*, i8** %36, align 8, !dbg !1856, !tbaa !1607
  %38 = icmp eq i8* %37, null, !dbg !1858
  br i1 %38, label %31, label %39, !dbg !1859, !llvm.loop !1860

39:                                               ; preds = %31, %35, %24
  %40 = phi i8* [ %26, %24 ], [ null, %31 ], [ %37, %35 ], !dbg !1828
  ret i8* %40, !dbg !1862
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i64 @hash_get_entries(%struct.hash_table* nocapture readonly %0, i8** nocapture %1, i64 %2) local_unnamed_addr #16 !dbg !1863 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1868, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8** %1, metadata !1869, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %2, metadata !1870, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 0, metadata !1871, metadata !DIExpression()), !dbg !1874
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1875
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1875, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %5, metadata !1872, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 0, metadata !1871, metadata !DIExpression()), !dbg !1874
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1877
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1877, !tbaa !1603
  %8 = icmp ult %struct.hash_entry* %5, %7, !dbg !1879
  br i1 %8, label %9, label %40, !dbg !1880

9:                                                ; preds = %3, %35
  %10 = phi %struct.hash_entry* [ %36, %35 ], [ %7, %3 ]
  %11 = phi %struct.hash_entry* [ %38, %35 ], [ %5, %3 ]
  %12 = phi i64 [ %37, %35 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %11, metadata !1872, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %12, metadata !1871, metadata !DIExpression()), !dbg !1874
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 0, i32 0, !dbg !1881
  %14 = load i8*, i8** %13, align 8, !dbg !1881, !tbaa !1607
  %15 = icmp eq i8* %14, null, !dbg !1884
  %16 = icmp eq %struct.hash_entry* %11, null
  %17 = or i1 %15, %16, !dbg !1885
  call void @llvm.dbg.value(metadata %struct.hash_entry* %11, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %12, metadata !1871, metadata !DIExpression()), !dbg !1874
  br i1 %17, label %35, label %18, !dbg !1885

18:                                               ; preds = %9
  %19 = icmp ugt i64 %12, %2, !dbg !1886
  %20 = select i1 %19, i64 %12, i64 %2, !dbg !1886
  br label %21, !dbg !1886

21:                                               ; preds = %18, %25
  %22 = phi %struct.hash_entry* [ %31, %25 ], [ %11, %18 ]
  %23 = phi i64 [ %28, %25 ], [ %12, %18 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %22, metadata !1873, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %23, metadata !1871, metadata !DIExpression()), !dbg !1874
  %24 = icmp eq i64 %23, %20, !dbg !1889
  br i1 %24, label %40, label %25, !dbg !1893

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 0, !dbg !1894
  %27 = load i8*, i8** %26, align 8, !dbg !1894, !tbaa !1607
  %28 = add i64 %23, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %28, metadata !1871, metadata !DIExpression()), !dbg !1874
  %29 = getelementptr inbounds i8*, i8** %1, i64 %23, !dbg !1896
  store i8* %27, i8** %29, align 8, !dbg !1897, !tbaa !682
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 1, !dbg !1898
  %31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8, !dbg !1898, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %31, metadata !1873, metadata !DIExpression()), !dbg !1874
  %32 = icmp eq %struct.hash_entry* %31, null, !dbg !1886
  br i1 %32, label %33, label %21, !dbg !1886, !llvm.loop !1899

33:                                               ; preds = %25
  %34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1877, !tbaa !1603
  br label %35, !dbg !1901

35:                                               ; preds = %33, %9
  %36 = phi %struct.hash_entry* [ %10, %9 ], [ %34, %33 ], !dbg !1877
  %37 = phi i64 [ %12, %9 ], [ %28, %33 ], !dbg !1902
  call void @llvm.dbg.value(metadata i64 %37, metadata !1871, metadata !DIExpression()), !dbg !1874
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 1, !dbg !1901
  call void @llvm.dbg.value(metadata %struct.hash_entry* %38, metadata !1872, metadata !DIExpression()), !dbg !1874
  %39 = icmp ult %struct.hash_entry* %38, %36, !dbg !1879
  br i1 %39, label %9, label %40, !dbg !1880, !llvm.loop !1903

40:                                               ; preds = %35, %21, %3
  %41 = phi i64 [ 0, %3 ], [ %20, %21 ], [ %37, %35 ], !dbg !1874
  ret i64 %41, !dbg !1905
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @hash_do_for_each(%struct.hash_table* nocapture readonly %0, i1 (i8*, i8*)* nocapture %1, i8* %2) local_unnamed_addr #8 !dbg !1906 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1914, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i1 (i8*, i8*)* %1, metadata !1915, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8* %2, metadata !1916, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1920
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1921
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1921, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %5, metadata !1918, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1920
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1923
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1923, !tbaa !1603
  %8 = icmp ult %struct.hash_entry* %5, %7, !dbg !1925
  br i1 %8, label %9, label %38, !dbg !1926

9:                                                ; preds = %3, %33
  %10 = phi %struct.hash_entry* [ %34, %33 ], [ %7, %3 ]
  %11 = phi %struct.hash_entry* [ %36, %33 ], [ %5, %3 ]
  %12 = phi i64 [ %35, %33 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %11, metadata !1918, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %12, metadata !1917, metadata !DIExpression()), !dbg !1920
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 0, i32 0, !dbg !1927
  %14 = load i8*, i8** %13, align 8, !dbg !1927, !tbaa !1607
  %15 = icmp eq i8* %14, null, !dbg !1930
  %16 = icmp eq %struct.hash_entry* %11, null
  %17 = or i1 %15, %16, !dbg !1931
  call void @llvm.dbg.value(metadata %struct.hash_entry* %11, metadata !1919, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %12, metadata !1917, metadata !DIExpression()), !dbg !1920
  br i1 %17, label %33, label %18, !dbg !1931

18:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %struct.hash_entry* %11, metadata !1919, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %12, metadata !1917, metadata !DIExpression()), !dbg !1920
  %19 = tail call zeroext i1 %1(i8* %14, i8* %2) #29, !dbg !1932
  br i1 %19, label %20, label %38, !dbg !1938

20:                                               ; preds = %18, %27
  %21 = phi i64 [ %23, %27 ], [ %12, %18 ]
  %22 = phi %struct.hash_entry* [ %25, %27 ], [ %11, %18 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1917, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata %struct.hash_entry* %22, metadata !1919, metadata !DIExpression()), !dbg !1920
  %23 = add i64 %21, 1, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %23, metadata !1917, metadata !DIExpression()), !dbg !1920
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 1, !dbg !1940
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !dbg !1940, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %25, metadata !1919, metadata !DIExpression()), !dbg !1920
  %26 = icmp eq %struct.hash_entry* %25, null, !dbg !1941
  br i1 %26, label %31, label %27, !dbg !1941, !llvm.loop !1942

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8, !dbg !1944, !tbaa !1607
  call void @llvm.dbg.value(metadata %struct.hash_entry* %25, metadata !1919, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %23, metadata !1917, metadata !DIExpression()), !dbg !1920
  %30 = tail call zeroext i1 %1(i8* %29, i8* %2) #29, !dbg !1932
  br i1 %30, label %20, label %38, !dbg !1938

31:                                               ; preds = %20
  %32 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1923, !tbaa !1603
  br label %33, !dbg !1945

33:                                               ; preds = %31, %9
  %34 = phi %struct.hash_entry* [ %10, %9 ], [ %32, %31 ], !dbg !1923
  %35 = phi i64 [ %12, %9 ], [ %23, %31 ], !dbg !1946
  call void @llvm.dbg.value(metadata i64 %35, metadata !1917, metadata !DIExpression()), !dbg !1920
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 1, !dbg !1945
  call void @llvm.dbg.value(metadata %struct.hash_entry* %36, metadata !1918, metadata !DIExpression()), !dbg !1920
  %37 = icmp ult %struct.hash_entry* %36, %34, !dbg !1925
  br i1 %37, label %9, label %38, !dbg !1926, !llvm.loop !1947

38:                                               ; preds = %33, %18, %27, %3
  %39 = phi i64 [ 0, %3 ], [ %23, %27 ], [ %35, %33 ], [ %12, %18 ], !dbg !1920
  ret i64 %39, !dbg !1949
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @hash_string(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #14 !dbg !1950 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1954, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %1, metadata !1955, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 0, metadata !1956, metadata !DIExpression()), !dbg !1958
  %3 = load i8, i8* %0, align 1, !dbg !1959, !tbaa !901
  call void @llvm.dbg.value(metadata i8 %3, metadata !1957, metadata !DIExpression()), !dbg !1958
  %4 = icmp eq i8 %3, 0, !dbg !1962
  br i1 %4, label %16, label %5, !dbg !1962

5:                                                ; preds = %2, %5
  %6 = phi i8 [ %14, %5 ], [ %3, %2 ]
  %7 = phi i8* [ %13, %5 ], [ %0, %2 ]
  %8 = phi i64 [ %12, %5 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !1954, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %8, metadata !1956, metadata !DIExpression()), !dbg !1958
  %9 = mul i64 %8, 31, !dbg !1963
  %10 = zext i8 %6 to i64, !dbg !1964
  %11 = add i64 %9, %10, !dbg !1965
  %12 = urem i64 %11, %1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %12, metadata !1956, metadata !DIExpression()), !dbg !1958
  %13 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1967
  call void @llvm.dbg.value(metadata i8* %13, metadata !1954, metadata !DIExpression()), !dbg !1958
  %14 = load i8, i8* %13, align 1, !dbg !1959, !tbaa !901
  call void @llvm.dbg.value(metadata i8 %14, metadata !1957, metadata !DIExpression()), !dbg !1958
  %15 = icmp eq i8 %14, 0, !dbg !1962
  br i1 %15, label %16, label %5, !dbg !1962, !llvm.loop !1968

16:                                               ; preds = %5, %2
  %17 = phi i64 [ 0, %2 ], [ %12, %5 ], !dbg !1958
  ret i64 %17, !dbg !1970
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local void @hash_reset_tuning(%struct.hash_tuning* nocapture %0) local_unnamed_addr #17 !dbg !1971 {
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %0, metadata !1976, metadata !DIExpression()), !dbg !1977
  %2 = bitcast %struct.hash_tuning* %0 to i8*, !dbg !1978
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %2, i8* nonnull align 4 dereferenceable(20) bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i1 false), !dbg !1978, !tbaa.struct !1979
  ret void, !dbg !1982
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.hash_table* @hash_initialize(i64 %0, %struct.hash_tuning* %1, i64 (i8*, i64)* %2, i1 (i8*, i8*)* %3, void (i8*)* %4) local_unnamed_addr #8 !dbg !1983 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1988, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %1, metadata !1989, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i64 (i8*, i64)* %2, metadata !1990, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i1 (i8*, i8*)* %3, metadata !1991, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !1992, metadata !DIExpression()), !dbg !1995
  %6 = icmp eq i64 (i8*, i64)* %2, null, !dbg !1996
  %7 = select i1 %6, i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)* %2, !dbg !1998
  call void @llvm.dbg.value(metadata i64 (i8*, i64)* %7, metadata !1990, metadata !DIExpression()), !dbg !1995
  %8 = icmp eq i1 (i8*, i8*)* %3, null, !dbg !1999
  %9 = select i1 %8, i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)* %3, !dbg !2001
  call void @llvm.dbg.value(metadata i1 (i8*, i8*)* %9, metadata !1991, metadata !DIExpression()), !dbg !1995
  %10 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 80) #29, !dbg !2002
  %11 = bitcast i8* %10 to %struct.hash_table*, !dbg !2002
  call void @llvm.dbg.value(metadata %struct.hash_table* %11, metadata !1993, metadata !DIExpression()), !dbg !1995
  %12 = icmp eq i8* %10, null, !dbg !2003
  br i1 %12, label %105, label %13, !dbg !2005

13:                                               ; preds = %5
  %14 = icmp eq %struct.hash_tuning* %1, null, !dbg !2006
  %15 = select i1 %14, %struct.hash_tuning* @default_tuning, %struct.hash_tuning* %1, !dbg !2008
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %15, metadata !1989, metadata !DIExpression()), !dbg !1995
  %16 = getelementptr inbounds i8, i8* %10, i64 40, !dbg !2009
  %17 = bitcast i8* %16 to %struct.hash_tuning**, !dbg !2009
  store %struct.hash_tuning* %15, %struct.hash_tuning** %17, align 8, !dbg !2010, !tbaa !2011
  call void @llvm.dbg.value(metadata %struct.hash_table* %11, metadata !2012, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %15, metadata !2017, metadata !DIExpression()), !dbg !2019
  %18 = icmp eq %struct.hash_tuning* %15, @default_tuning, !dbg !2022
  br i1 %18, label %42, label %19, !dbg !2024

19:                                               ; preds = %13
  call void @llvm.dbg.value(metadata float 0x3FB99999A0000000, metadata !2018, metadata !DIExpression()), !dbg !2019
  %20 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2, !dbg !2025
  %21 = load float, float* %20, align 4, !dbg !2025, !tbaa !2027
  %22 = fcmp ogt float %21, 0x3FB99999A0000000, !dbg !2029
  %23 = fcmp olt float %21, 0x3FECCCCCC0000000
  %24 = and i1 %22, %23, !dbg !2030
  br i1 %24, label %25, label %104, !dbg !2030

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 3, !dbg !2031
  %27 = load float, float* %26, align 4, !dbg !2031, !tbaa !2032
  %28 = fcmp ogt float %27, 0x3FF19999A0000000, !dbg !2033
  br i1 %28, label %29, label %104, !dbg !2034

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 0, !dbg !2035
  %31 = load float, float* %30, align 4, !dbg !2035, !tbaa !2036
  %32 = fcmp ult float %31, 0.000000e+00, !dbg !2037
  br i1 %32, label %104, label %33, !dbg !2038

33:                                               ; preds = %29
  %34 = fadd float %31, 0x3FB99999A0000000, !dbg !2039
  %35 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 1, !dbg !2040
  %36 = load float, float* %35, align 4, !dbg !2040, !tbaa !2041
  %37 = fcmp olt float %34, %36, !dbg !2042
  %38 = fcmp ole float %36, 1.000000e+00
  %39 = and i1 %37, %38, !dbg !2043
  %40 = fcmp olt float %34, %21
  %41 = and i1 %40, %39, !dbg !2043
  br i1 %41, label %42, label %104, !dbg !2043

42:                                               ; preds = %13, %33
  call void @llvm.dbg.value(metadata i64 %0, metadata !2044, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %15, metadata !2049, metadata !DIExpression()), !dbg !2053
  %43 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 4, !dbg !2055
  %44 = load i8, i8* %43, align 4, !dbg !2055, !tbaa !2056, !range !1409
  %45 = icmp eq i8 %44, 0, !dbg !2055
  br i1 %45, label %46, label %53, !dbg !2057

46:                                               ; preds = %42
  %47 = uitofp i64 %0 to float, !dbg !2058
  %48 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2, !dbg !2059
  %49 = load float, float* %48, align 4, !dbg !2059, !tbaa !2027
  %50 = fdiv float %47, %49, !dbg !2060
  call void @llvm.dbg.value(metadata float %50, metadata !2050, metadata !DIExpression()), !dbg !2061
  %51 = fcmp ult float %50, 0x43F0000000000000, !dbg !2062
  %52 = fptoui float %50 to i64, !dbg !2064
  call void @llvm.dbg.value(metadata i64 undef, metadata !2044, metadata !DIExpression()), !dbg !2053
  br i1 %51, label %53, label %104

53:                                               ; preds = %46, %42
  %54 = phi i64 [ %0, %42 ], [ %52, %46 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !2044, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %54, metadata !2065, metadata !DIExpression()), !dbg !2070
  %55 = icmp ugt i64 %54, 10, !dbg !2072
  %56 = select i1 %55, i64 %54, i64 10, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %56, metadata !2065, metadata !DIExpression()), !dbg !2070
  %57 = or i64 %56, 1, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %57, metadata !2065, metadata !DIExpression()), !dbg !2070
  %58 = icmp eq i64 %57, -1, !dbg !2074
  br i1 %58, label %104, label %59, !dbg !2075

59:                                               ; preds = %53, %77
  %60 = phi i64 [ %78, %77 ], [ %57, %53 ]
  call void @llvm.dbg.value(metadata i64 %60, metadata !2065, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %60, metadata !2076, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 3, metadata !2081, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 9, metadata !2082, metadata !DIExpression()), !dbg !2083
  %61 = icmp ugt i64 %60, 9, !dbg !2085
  br i1 %61, label %62, label %73, !dbg !2086

62:                                               ; preds = %59, %67
  %63 = phi i64 [ %70, %67 ], [ 9, %59 ]
  %64 = phi i64 [ %71, %67 ], [ 3, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !2082, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %64, metadata !2081, metadata !DIExpression()), !dbg !2083
  %65 = urem i64 %60, %64, !dbg !2087
  %66 = icmp eq i64 %65, 0, !dbg !2086
  br i1 %66, label %73, label %67, !dbg !2088

67:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 %64, metadata !2081, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2083
  %68 = shl i64 %64, 2, !dbg !2089
  %69 = add i64 %63, 4, !dbg !2089
  %70 = add i64 %69, %68, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %70, metadata !2082, metadata !DIExpression()), !dbg !2083
  %71 = add i64 %64, 2, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %71, metadata !2081, metadata !DIExpression()), !dbg !2083
  %72 = icmp ult i64 %70, %60, !dbg !2085
  br i1 %72, label %62, label %73, !dbg !2086, !llvm.loop !2093

73:                                               ; preds = %67, %62, %59
  %74 = phi i64 [ 3, %59 ], [ %64, %62 ], [ %71, %67 ], !dbg !2083
  %75 = urem i64 %60, %74, !dbg !2095
  %76 = icmp eq i64 %75, 0, !dbg !2096
  br i1 %76, label %77, label %80, !dbg !2097

77:                                               ; preds = %73
  %78 = add i64 %60, 2, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %78, metadata !2065, metadata !DIExpression()), !dbg !2070
  %79 = icmp eq i64 %78, -1, !dbg !2074
  br i1 %79, label %104, label %59, !dbg !2075, !llvm.loop !2099

80:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i64 %60, metadata !2044, metadata !DIExpression()), !dbg !2053
  %81 = icmp ugt i64 %60, 1152921504606846975, !dbg !2101
  br i1 %81, label %104, label %82, !dbg !2103

82:                                               ; preds = %80
  %83 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !2104
  %84 = bitcast i8* %83 to i64*, !dbg !2104
  store i64 %60, i64* %84, align 8, !dbg !2105, !tbaa !1570
  %85 = icmp eq i64 %60, 0, !dbg !2106
  br i1 %85, label %104, label %86, !dbg !2108

86:                                               ; preds = %82
  %87 = tail call i8* @rpl_calloc(i64 %60, i64 16) #29, !dbg !2109
  %88 = bitcast i8* %10 to i8**, !dbg !2110
  store i8* %87, i8** %88, align 8, !dbg !2110, !tbaa !1601
  %89 = icmp eq i8* %87, null, !dbg !2111
  br i1 %89, label %104, label %90, !dbg !2113

90:                                               ; preds = %86
  %91 = bitcast i8* %87 to %struct.hash_entry*, !dbg !2109
  %92 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %91, i64 %60, !dbg !2114
  %93 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !2115
  %94 = bitcast i8* %93 to %struct.hash_entry**, !dbg !2115
  store %struct.hash_entry* %92, %struct.hash_entry** %94, align 8, !dbg !2116, !tbaa !1603
  %95 = getelementptr inbounds i8, i8* %10, i64 24, !dbg !2117
  %96 = getelementptr inbounds i8, i8* %10, i64 48, !dbg !2118
  %97 = bitcast i8* %96 to i64 (i8*, i64)**, !dbg !2118
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %95, i8 0, i64 16, i1 false), !dbg !2119
  store i64 (i8*, i64)* %7, i64 (i8*, i64)** %97, align 8, !dbg !2120, !tbaa !1764
  %98 = getelementptr inbounds i8, i8* %10, i64 56, !dbg !2121
  %99 = bitcast i8* %98 to i1 (i8*, i8*)**, !dbg !2121
  store i1 (i8*, i8*)* %9, i1 (i8*, i8*)** %99, align 8, !dbg !2122, !tbaa !1784
  %100 = getelementptr inbounds i8, i8* %10, i64 64, !dbg !2123
  %101 = bitcast i8* %100 to void (i8*)**, !dbg !2123
  store void (i8*)* %4, void (i8*)** %101, align 8, !dbg !2124, !tbaa !2125
  %102 = getelementptr inbounds i8, i8* %10, i64 72, !dbg !2126
  %103 = bitcast i8* %102 to %struct.hash_entry**, !dbg !2126
  store %struct.hash_entry* null, %struct.hash_entry** %103, align 8, !dbg !2127, !tbaa !2128
  br label %105, !dbg !2129

104:                                              ; preds = %77, %53, %80, %46, %33, %29, %25, %19, %86, %82
  call void @llvm.dbg.label(metadata !1994), !dbg !2130
  tail call void @free(i8* nonnull %10) #29, !dbg !2131
  br label %105, !dbg !2132

105:                                              ; preds = %5, %104, %90
  %106 = phi %struct.hash_table* [ null, %104 ], [ %11, %90 ], [ null, %5 ], !dbg !1995
  ret %struct.hash_table* %106, !dbg !2133
}

; Function Attrs: norecurse nounwind readnone sspstrong uwtable willreturn
define internal i64 @raw_hasher(i8* %0, i64 %1) #18 !dbg !2134 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %1, metadata !2137, metadata !DIExpression()), !dbg !2139
  %3 = ptrtoint i8* %0 to i64, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %3, metadata !2141, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i32 3, metadata !2147, metadata !DIExpression()), !dbg !2148
  %4 = tail call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 61), !dbg !2150
  call void @llvm.dbg.value(metadata i64 %4, metadata !2138, metadata !DIExpression()), !dbg !2139
  %5 = urem i64 %4, %1, !dbg !2151
  ret i64 %5, !dbg !2152
}

; Function Attrs: norecurse nounwind readnone sspstrong uwtable willreturn
define internal zeroext i1 @raw_comparator(i8* readnone %0, i8* readnone %1) #18 !dbg !2153 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2155, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8* %1, metadata !2156, metadata !DIExpression()), !dbg !2157
  %3 = icmp eq i8* %0, %1, !dbg !2158
  ret i1 %3, !dbg !2159
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hash_clear(%struct.hash_table* nocapture %0) local_unnamed_addr #8 !dbg !2160 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2164, metadata !DIExpression()), !dbg !2173
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2174
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !dbg !2174, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %3, metadata !2165, metadata !DIExpression()), !dbg !2173
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !2175
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !2175, !tbaa !1603
  %6 = icmp ult %struct.hash_entry* %3, %5, !dbg !2176
  br i1 %6, label %7, label %45, !dbg !2177

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  br label %10, !dbg !2177

10:                                               ; preds = %7, %41
  %11 = phi %struct.hash_entry* [ %5, %7 ], [ %42, %41 ]
  %12 = phi %struct.hash_entry* [ %3, %7 ], [ %43, %41 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %12, metadata !2165, metadata !DIExpression()), !dbg !2173
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 0, !dbg !2178
  %14 = load i8*, i8** %13, align 8, !dbg !2178, !tbaa !1607
  %15 = icmp eq i8* %14, null, !dbg !2179
  br i1 %15, label %41, label %16, !dbg !2180

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 1, !dbg !2181
  %18 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8, !dbg !2181, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %18, metadata !2166, metadata !DIExpression()), !dbg !2183
  %19 = icmp eq %struct.hash_entry* %18, null, !dbg !2184
  br i1 %19, label %33, label %20, !dbg !2184

20:                                               ; preds = %16, %27
  %21 = phi %struct.hash_entry* [ %30, %27 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %21, metadata !2166, metadata !DIExpression()), !dbg !2183
  %22 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !2185, !tbaa !2125
  %23 = icmp eq void (i8*)* %22, null, !dbg !2189
  br i1 %23, label %27, label %24, !dbg !2190

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0, !dbg !2191
  %26 = load i8*, i8** %25, align 8, !dbg !2191, !tbaa !1607
  tail call void %22(i8* %26) #29, !dbg !2192
  br label %27, !dbg !2192

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0, !dbg !2193
  store i8* null, i8** %28, align 8, !dbg !2194, !tbaa !1607
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1, !dbg !2195
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !dbg !2195, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %30, metadata !2172, metadata !DIExpression()), !dbg !2183
  %31 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !dbg !2196, !tbaa !2128
  store %struct.hash_entry* %31, %struct.hash_entry** %29, align 8, !dbg !2197, !tbaa !1613
  store %struct.hash_entry* %21, %struct.hash_entry** %9, align 8, !dbg !2198, !tbaa !2128
  call void @llvm.dbg.value(metadata %struct.hash_entry* %30, metadata !2166, metadata !DIExpression()), !dbg !2183
  %32 = icmp eq %struct.hash_entry* %30, null, !dbg !2184
  br i1 %32, label %33, label %20, !dbg !2184, !llvm.loop !2199

33:                                               ; preds = %27, %16
  %34 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !2201, !tbaa !2125
  %35 = icmp eq void (i8*)* %34, null, !dbg !2203
  br i1 %35, label %38, label %36, !dbg !2204

36:                                               ; preds = %33
  %37 = load i8*, i8** %13, align 8, !dbg !2205, !tbaa !1607
  tail call void %34(i8* %37) #29, !dbg !2206
  br label %38, !dbg !2206

38:                                               ; preds = %36, %33
  %39 = bitcast %struct.hash_entry* %12 to i8*, !dbg !2175
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false), !dbg !2207
  %40 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !2175, !tbaa !1603
  br label %41, !dbg !2208

41:                                               ; preds = %10, %38
  %42 = phi %struct.hash_entry* [ %11, %10 ], [ %40, %38 ], !dbg !2175
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 1, !dbg !2209
  call void @llvm.dbg.value(metadata %struct.hash_entry* %43, metadata !2165, metadata !DIExpression()), !dbg !2173
  %44 = icmp ult %struct.hash_entry* %43, %42, !dbg !2176
  br i1 %44, label %10, label %45, !dbg !2177, !llvm.loop !2210

45:                                               ; preds = %41, %1
  %46 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !2212
  %47 = bitcast i64* %46 to i8*, !dbg !2213
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false), !dbg !2214
  ret void, !dbg !2213
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hash_free(%struct.hash_table* nocapture %0) local_unnamed_addr #8 !dbg !2215 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2217, metadata !DIExpression()), !dbg !2221
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8, !dbg !2222
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !2222, !tbaa !2125
  %4 = icmp eq void (i8*)* %3, null, !dbg !2224
  br i1 %4, label %42, label %5, !dbg !2225

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !2226
  %7 = load i64, i64* %6, align 8, !dbg !2226, !tbaa !1585
  %8 = icmp eq i64 %7, 0, !dbg !2227
  br i1 %8, label %42, label %9, !dbg !2228

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2229
  %11 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8, !dbg !2229, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %11, metadata !2218, metadata !DIExpression()), !dbg !2221
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !2232
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2232, !tbaa !1603
  %14 = icmp ult %struct.hash_entry* %11, %13, !dbg !2234
  br i1 %14, label %15, label %42, !dbg !2235

15:                                               ; preds = %9, %38
  %16 = phi %struct.hash_entry* [ %39, %38 ], [ %13, %9 ]
  %17 = phi %struct.hash_entry* [ %40, %38 ], [ %11, %9 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %17, metadata !2218, metadata !DIExpression()), !dbg !2221
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 0, i32 0, !dbg !2236
  %19 = load i8*, i8** %18, align 8, !dbg !2236, !tbaa !1607
  %20 = icmp eq i8* %19, null, !dbg !2239
  %21 = icmp eq %struct.hash_entry* %17, null
  %22 = or i1 %20, %21, !dbg !2240
  call void @llvm.dbg.value(metadata %struct.hash_entry* %17, metadata !2219, metadata !DIExpression()), !dbg !2221
  br i1 %22, label %38, label %23, !dbg !2240

23:                                               ; preds = %15
  call void @llvm.dbg.value(metadata %struct.hash_entry* %17, metadata !2219, metadata !DIExpression()), !dbg !2221
  %24 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !2241, !tbaa !2125
  tail call void %24(i8* %19) #29, !dbg !2245
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 0, i32 1, !dbg !2246
  %26 = load %struct.hash_entry*, %struct.hash_entry** %25, align 8, !dbg !2246, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %26, metadata !2219, metadata !DIExpression()), !dbg !2221
  %27 = icmp eq %struct.hash_entry* %26, null, !dbg !2247
  br i1 %27, label %36, label %28, !dbg !2247, !llvm.loop !2248

28:                                               ; preds = %23, %28
  %29 = phi %struct.hash_entry* [ %34, %28 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %29, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8, !dbg !2250, !tbaa !1607
  call void @llvm.dbg.value(metadata %struct.hash_entry* %29, metadata !2219, metadata !DIExpression()), !dbg !2221
  %32 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !2241, !tbaa !2125
  tail call void %32(i8* %31) #29, !dbg !2245
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %29, i64 0, i32 1, !dbg !2246
  %34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8, !dbg !2246, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %34, metadata !2219, metadata !DIExpression()), !dbg !2221
  %35 = icmp eq %struct.hash_entry* %34, null, !dbg !2247
  br i1 %35, label %36, label %28, !dbg !2247, !llvm.loop !2248

36:                                               ; preds = %28, %23
  %37 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2232, !tbaa !1603
  br label %38, !dbg !2251

38:                                               ; preds = %36, %15
  %39 = phi %struct.hash_entry* [ %37, %36 ], [ %16, %15 ], !dbg !2232
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 1, !dbg !2251
  call void @llvm.dbg.value(metadata %struct.hash_entry* %40, metadata !2218, metadata !DIExpression()), !dbg !2221
  %41 = icmp ult %struct.hash_entry* %40, %39, !dbg !2234
  br i1 %41, label %15, label %42, !dbg !2235, !llvm.loop !2252

42:                                               ; preds = %38, %9, %5, %1
  %43 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2254
  %44 = load %struct.hash_entry*, %struct.hash_entry** %43, align 8, !dbg !2254, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %44, metadata !2218, metadata !DIExpression()), !dbg !2221
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !2256
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !dbg !2256, !tbaa !1603
  %47 = icmp ult %struct.hash_entry* %44, %46, !dbg !2258
  br i1 %47, label %48, label %66, !dbg !2259

48:                                               ; preds = %42, %62
  %49 = phi %struct.hash_entry* [ %63, %62 ], [ %46, %42 ]
  %50 = phi %struct.hash_entry* [ %64, %62 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %50, metadata !2218, metadata !DIExpression()), !dbg !2221
  %51 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %50, i64 0, i32 1, !dbg !2260
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !dbg !2260, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %52, metadata !2219, metadata !DIExpression()), !dbg !2221
  %53 = icmp eq %struct.hash_entry* %52, null, !dbg !2263
  br i1 %53, label %62, label %54, !dbg !2263

54:                                               ; preds = %48, %54
  %55 = phi %struct.hash_entry* [ %57, %54 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %55, metadata !2219, metadata !DIExpression()), !dbg !2221
  %56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 1, !dbg !2264
  %57 = load %struct.hash_entry*, %struct.hash_entry** %56, align 8, !dbg !2264, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %57, metadata !2220, metadata !DIExpression()), !dbg !2221
  %58 = bitcast %struct.hash_entry* %55 to i8*, !dbg !2267
  tail call void @free(i8* %58) #29, !dbg !2268
  call void @llvm.dbg.value(metadata %struct.hash_entry* %57, metadata !2219, metadata !DIExpression()), !dbg !2221
  %59 = icmp eq %struct.hash_entry* %57, null, !dbg !2263
  br i1 %59, label %60, label %54, !dbg !2263, !llvm.loop !2269

60:                                               ; preds = %54
  %61 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !dbg !2256, !tbaa !1603
  br label %62, !dbg !2271

62:                                               ; preds = %60, %48
  %63 = phi %struct.hash_entry* [ %61, %60 ], [ %49, %48 ], !dbg !2256
  %64 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %50, i64 1, !dbg !2271
  call void @llvm.dbg.value(metadata %struct.hash_entry* %64, metadata !2218, metadata !DIExpression()), !dbg !2221
  %65 = icmp ult %struct.hash_entry* %64, %63, !dbg !2258
  br i1 %65, label %48, label %66, !dbg !2259, !llvm.loop !2272

66:                                               ; preds = %62, %42
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2274
  %68 = load %struct.hash_entry*, %struct.hash_entry** %67, align 8, !dbg !2274, !tbaa !2128
  call void @llvm.dbg.value(metadata %struct.hash_entry* %68, metadata !2219, metadata !DIExpression()), !dbg !2221
  %69 = icmp eq %struct.hash_entry* %68, null, !dbg !2276
  br i1 %69, label %76, label %70, !dbg !2276

70:                                               ; preds = %66, %70
  %71 = phi %struct.hash_entry* [ %73, %70 ], [ %68, %66 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %71, metadata !2219, metadata !DIExpression()), !dbg !2221
  %72 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %71, i64 0, i32 1, !dbg !2277
  %73 = load %struct.hash_entry*, %struct.hash_entry** %72, align 8, !dbg !2277, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %73, metadata !2220, metadata !DIExpression()), !dbg !2221
  %74 = bitcast %struct.hash_entry* %71 to i8*, !dbg !2280
  tail call void @free(i8* %74) #29, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.hash_entry* %73, metadata !2219, metadata !DIExpression()), !dbg !2221
  %75 = icmp eq %struct.hash_entry* %73, null, !dbg !2276
  br i1 %75, label %76, label %70, !dbg !2276, !llvm.loop !2282

76:                                               ; preds = %70, %66
  %77 = bitcast %struct.hash_table* %0 to i8**, !dbg !2284
  %78 = load i8*, i8** %77, align 8, !dbg !2284, !tbaa !1601
  tail call void @free(i8* %78) #29, !dbg !2285
  %79 = bitcast %struct.hash_table* %0 to i8*, !dbg !2286
  tail call void @free(i8* %79) #29, !dbg !2287
  ret void, !dbg !2288
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hash_rehash(%struct.hash_table* nocapture %0, i64 %1) local_unnamed_addr #8 !dbg !2289 {
  %3 = alloca %struct.hash_table, align 16
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2293, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %1, metadata !2294, metadata !DIExpression()), !dbg !2298
  %4 = bitcast %struct.hash_table* %3 to i8*, !dbg !2299
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #29, !dbg !2299
  call void @llvm.dbg.declare(metadata %struct.hash_table* %3, metadata !2295, metadata !DIExpression()), !dbg !2300
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5, !dbg !2301
  %6 = load %struct.hash_tuning*, %struct.hash_tuning** %5, align 8, !dbg !2301, !tbaa !2011
  call void @llvm.dbg.value(metadata i64 %1, metadata !2044, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %6, metadata !2049, metadata !DIExpression()), !dbg !2302
  %7 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 4, !dbg !2304
  %8 = load i8, i8* %7, align 4, !dbg !2304, !tbaa !2056, !range !1409
  %9 = icmp eq i8 %8, 0, !dbg !2304
  br i1 %9, label %10, label %17, !dbg !2305

10:                                               ; preds = %2
  %11 = uitofp i64 %1 to float, !dbg !2306
  %12 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 2, !dbg !2307
  %13 = load float, float* %12, align 4, !dbg !2307, !tbaa !2027
  %14 = fdiv float %11, %13, !dbg !2308
  call void @llvm.dbg.value(metadata float %14, metadata !2050, metadata !DIExpression()), !dbg !2309
  %15 = fcmp ult float %14, 0x43F0000000000000, !dbg !2310
  %16 = fptoui float %14 to i64, !dbg !2311
  call void @llvm.dbg.value(metadata i64 undef, metadata !2044, metadata !DIExpression()), !dbg !2302
  br i1 %15, label %17, label %142

17:                                               ; preds = %10, %2
  %18 = phi i64 [ %1, %2 ], [ %16, %10 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !2044, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %18, metadata !2065, metadata !DIExpression()), !dbg !2312
  %19 = icmp ugt i64 %18, 10, !dbg !2314
  %20 = select i1 %19, i64 %18, i64 10, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %20, metadata !2065, metadata !DIExpression()), !dbg !2312
  %21 = or i64 %20, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %21, metadata !2065, metadata !DIExpression()), !dbg !2312
  %22 = icmp eq i64 %21, -1, !dbg !2316
  br i1 %22, label %142, label %23, !dbg !2317

23:                                               ; preds = %17, %41
  %24 = phi i64 [ %42, %41 ], [ %21, %17 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !2065, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %24, metadata !2076, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 3, metadata !2081, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 9, metadata !2082, metadata !DIExpression()), !dbg !2318
  %25 = icmp ugt i64 %24, 9, !dbg !2320
  br i1 %25, label %26, label %37, !dbg !2321

26:                                               ; preds = %23, %31
  %27 = phi i64 [ %34, %31 ], [ 9, %23 ]
  %28 = phi i64 [ %35, %31 ], [ 3, %23 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !2082, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %28, metadata !2081, metadata !DIExpression()), !dbg !2318
  %29 = urem i64 %24, %28, !dbg !2322
  %30 = icmp eq i64 %29, 0, !dbg !2321
  br i1 %30, label %37, label %31, !dbg !2323

31:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 %28, metadata !2081, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2318
  %32 = shl i64 %28, 2, !dbg !2324
  %33 = add i64 %27, 4, !dbg !2324
  %34 = add i64 %33, %32, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %34, metadata !2082, metadata !DIExpression()), !dbg !2318
  %35 = add i64 %28, 2, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %35, metadata !2081, metadata !DIExpression()), !dbg !2318
  %36 = icmp ult i64 %34, %24, !dbg !2320
  br i1 %36, label %26, label %37, !dbg !2321, !llvm.loop !2327

37:                                               ; preds = %31, %26, %23
  %38 = phi i64 [ 3, %23 ], [ %28, %26 ], [ %35, %31 ], !dbg !2318
  %39 = urem i64 %24, %38, !dbg !2329
  %40 = icmp eq i64 %39, 0, !dbg !2330
  br i1 %40, label %41, label %44, !dbg !2331

41:                                               ; preds = %37
  %42 = add i64 %24, 2, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %42, metadata !2065, metadata !DIExpression()), !dbg !2312
  %43 = icmp eq i64 %42, -1, !dbg !2316
  br i1 %43, label %142, label %23, !dbg !2317, !llvm.loop !2333

44:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i64 %24, metadata !2044, metadata !DIExpression()), !dbg !2302
  %45 = add i64 %24, -1, !dbg !2335
  %46 = icmp ugt i64 %45, 1152921504606846974, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %24, metadata !2297, metadata !DIExpression()), !dbg !2298
  br i1 %46, label %142, label %47, !dbg !2335

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !2336
  %49 = load i64, i64* %48, align 8, !dbg !2336, !tbaa !1570
  %50 = icmp eq i64 %24, %49, !dbg !2338
  br i1 %50, label %142, label %51, !dbg !2339

51:                                               ; preds = %47
  call void @llvm.dbg.value(metadata %struct.hash_table* %3, metadata !2296, metadata !DIExpression()), !dbg !2298
  %52 = tail call i8* @rpl_calloc(i64 %24, i64 16) #29, !dbg !2340
  %53 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 0, !dbg !2341
  %54 = bitcast %struct.hash_table* %3 to i8**, !dbg !2342
  store i8* %52, i8** %54, align 16, !dbg !2342, !tbaa !1601
  %55 = icmp eq i8* %52, null, !dbg !2343
  br i1 %55, label %142, label %56, !dbg !2345

56:                                               ; preds = %51
  %57 = bitcast i8* %52 to %struct.hash_entry*, !dbg !2345
  %58 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 2, !dbg !2346
  store i64 %24, i64* %58, align 16, !dbg !2347, !tbaa !1570
  %59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %57, i64 %24, !dbg !2348
  %60 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 1, !dbg !2349
  store %struct.hash_entry* %59, %struct.hash_entry** %60, align 8, !dbg !2350, !tbaa !1603
  %61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 3, !dbg !2351
  %62 = bitcast i64* %61 to i8*, !dbg !2352
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false), !dbg !2353
  %63 = load %struct.hash_tuning*, %struct.hash_tuning** %5, align 8, !dbg !2352, !tbaa !2011
  %64 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 5, !dbg !2354
  store %struct.hash_tuning* %63, %struct.hash_tuning** %64, align 8, !dbg !2355, !tbaa !2011
  %65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !2356
  %66 = load i64 (i8*, i64)*, i64 (i8*, i64)** %65, align 8, !dbg !2356, !tbaa !1764
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 6, !dbg !2357
  store i64 (i8*, i64)* %66, i64 (i8*, i64)** %67, align 16, !dbg !2358, !tbaa !1764
  %68 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2359
  %69 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %68, align 8, !dbg !2359, !tbaa !1784
  %70 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 7, !dbg !2360
  store i1 (i8*, i8*)* %69, i1 (i8*, i8*)** %70, align 8, !dbg !2361, !tbaa !1784
  %71 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8, !dbg !2362
  %72 = load void (i8*)*, void (i8*)** %71, align 8, !dbg !2362, !tbaa !2125
  %73 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 8, !dbg !2363
  store void (i8*)* %72, void (i8*)** %73, align 16, !dbg !2364, !tbaa !2125
  %74 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2365
  %75 = load %struct.hash_entry*, %struct.hash_entry** %74, align 8, !dbg !2365, !tbaa !2128
  %76 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 9, !dbg !2366
  store %struct.hash_entry* %75, %struct.hash_entry** %76, align 8, !dbg !2367, !tbaa !2128
  %77 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* nonnull %3, %struct.hash_table* nonnull %0, i1 zeroext false), !dbg !2368
  br i1 %77, label %78, label %88, !dbg !2370

78:                                               ; preds = %56
  %79 = bitcast %struct.hash_table* %0 to i8**, !dbg !2371
  %80 = load i8*, i8** %79, align 8, !dbg !2371, !tbaa !1601
  tail call void @free(i8* %80) #29, !dbg !2373
  %81 = bitcast %struct.hash_table* %3 to <2 x %struct.hash_entry*>*, !dbg !2374
  %82 = load <2 x %struct.hash_entry*>, <2 x %struct.hash_entry*>* %81, align 16, !dbg !2374, !tbaa !682
  %83 = bitcast %struct.hash_table* %0 to <2 x %struct.hash_entry*>*, !dbg !2375
  store <2 x %struct.hash_entry*> %82, <2 x %struct.hash_entry*>* %83, align 8, !dbg !2375, !tbaa !682
  %84 = bitcast i64* %58 to <2 x i64>*, !dbg !2376
  %85 = load <2 x i64>, <2 x i64>* %84, align 16, !dbg !2376, !tbaa !1487
  %86 = bitcast i64* %48 to <2 x i64>*, !dbg !2377
  store <2 x i64> %85, <2 x i64>* %86, align 8, !dbg !2377, !tbaa !1487
  %87 = load %struct.hash_entry*, %struct.hash_entry** %76, align 8, !dbg !2378, !tbaa !2128
  store %struct.hash_entry* %87, %struct.hash_entry** %74, align 8, !dbg !2379, !tbaa !2128
  br label %142, !dbg !2380

88:                                               ; preds = %56
  %89 = load %struct.hash_entry*, %struct.hash_entry** %76, align 8, !dbg !2381, !tbaa !2128
  store %struct.hash_entry* %89, %struct.hash_entry** %74, align 8, !dbg !2382, !tbaa !2128
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2383, metadata !DIExpression()) #29, !dbg !2402
  call void @llvm.dbg.value(metadata %struct.hash_table* %3, metadata !2388, metadata !DIExpression()) #29, !dbg !2402
  call void @llvm.dbg.value(metadata i1 true, metadata !2389, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !2402
  %90 = load %struct.hash_entry*, %struct.hash_entry** %53, align 16, !dbg !2405, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %90, metadata !2390, metadata !DIExpression()) #29, !dbg !2402
  %91 = load %struct.hash_entry*, %struct.hash_entry** %60, align 8, !dbg !2406, !tbaa !1603
  %92 = icmp ult %struct.hash_entry* %90, %91, !dbg !2407
  br i1 %92, label %93, label %137, !dbg !2408

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %95 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  br label %96, !dbg !2408

96:                                               ; preds = %134, %93
  %97 = phi %struct.hash_entry* [ %90, %93 ], [ %135, %134 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %97, metadata !2390, metadata !DIExpression()) #29, !dbg !2402
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i64 0, i32 0, !dbg !2409
  %99 = load i8*, i8** %98, align 8, !dbg !2409, !tbaa !1607
  %100 = icmp eq i8* %99, null, !dbg !2410
  br i1 %100, label %134, label %101, !dbg !2411

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i64 0, i32 1, !dbg !2412
  %103 = load %struct.hash_entry*, %struct.hash_entry** %102, align 8, !dbg !2412, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %103, metadata !2391, metadata !DIExpression()) #29, !dbg !2402
  %104 = icmp eq %struct.hash_entry* %103, null, !dbg !2414
  br i1 %104, label %133, label %105, !dbg !2414

105:                                              ; preds = %101
  %106 = load i64, i64* %48, align 8, !dbg !2415, !tbaa !1570
  br label %107, !dbg !2414

107:                                              ; preds = %129, %105
  %108 = phi i64 [ %114, %129 ], [ %106, %105 ], !dbg !2415
  %109 = phi %struct.hash_entry* [ %120, %129 ], [ %103, %105 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %109, metadata !2391, metadata !DIExpression()) #29, !dbg !2402
  %110 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %109, i64 0, i32 0, !dbg !2419
  %111 = load i8*, i8** %110, align 8, !dbg !2419, !tbaa !1607
  call void @llvm.dbg.value(metadata i8* %111, metadata !2393, metadata !DIExpression()) #29, !dbg !2420
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1754, metadata !DIExpression()) #29, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %111, metadata !1759, metadata !DIExpression()) #29, !dbg !2421
  %112 = load i64 (i8*, i64)*, i64 (i8*, i64)** %65, align 8, !dbg !2422, !tbaa !1764
  %113 = tail call i64 %112(i8* %111, i64 %108) #29, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %113, metadata !1760, metadata !DIExpression()) #29, !dbg !2421
  %114 = load i64, i64* %48, align 8, !dbg !2424, !tbaa !1570
  %115 = icmp ult i64 %113, %114, !dbg !2425
  br i1 %115, label %117, label %116, !dbg !2426

116:                                              ; preds = %107
  tail call void @abort() #31, !dbg !2427
  unreachable, !dbg !2427

117:                                              ; preds = %107
  %118 = load %struct.hash_entry*, %struct.hash_entry** %94, align 8, !dbg !2428, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* undef, metadata !2398, metadata !DIExpression()) #29, !dbg !2420
  %119 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %109, i64 0, i32 1, !dbg !2429
  %120 = load %struct.hash_entry*, %struct.hash_entry** %119, align 8, !dbg !2429, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %120, metadata !2392, metadata !DIExpression()) #29, !dbg !2402
  %121 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %118, i64 %113, i32 0, !dbg !2430
  %122 = load i8*, i8** %121, align 8, !dbg !2430, !tbaa !1607
  %123 = icmp eq i8* %122, null, !dbg !2432
  br i1 %123, label %126, label %124, !dbg !2433

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %118, i64 %113, i32 1, !dbg !2434
  br label %129, !dbg !2436

126:                                              ; preds = %117
  store i8* %111, i8** %121, align 8, !dbg !2437, !tbaa !1607
  %127 = load i64, i64* %95, align 8, !dbg !2439, !tbaa !1578
  %128 = add i64 %127, 1, !dbg !2439
  store i64 %128, i64* %95, align 8, !dbg !2439, !tbaa !1578
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2440, metadata !DIExpression()) #29, !dbg !2446
  call void @llvm.dbg.value(metadata %struct.hash_entry* %109, metadata !2445, metadata !DIExpression()) #29, !dbg !2446
  store i8* null, i8** %110, align 8, !dbg !2448, !tbaa !1607
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi %struct.hash_entry** [ %74, %126 ], [ %125, %124 ]
  %131 = load %struct.hash_entry*, %struct.hash_entry** %130, align 8, !dbg !2449, !tbaa !682
  store %struct.hash_entry* %131, %struct.hash_entry** %119, align 8, !dbg !2449, !tbaa !1613
  store %struct.hash_entry* %109, %struct.hash_entry** %130, align 8, !dbg !2449, !tbaa !682
  call void @llvm.dbg.value(metadata %struct.hash_entry* %120, metadata !2391, metadata !DIExpression()) #29, !dbg !2402
  %132 = icmp eq %struct.hash_entry* %120, null, !dbg !2414
  br i1 %132, label %133, label %107, !dbg !2414, !llvm.loop !2450

133:                                              ; preds = %129, %101
  call void @llvm.dbg.value(metadata i8* undef, metadata !2393, metadata !DIExpression()) #29, !dbg !2420
  store %struct.hash_entry* null, %struct.hash_entry** %102, align 8, !dbg !2452, !tbaa !1613
  br label %134

134:                                              ; preds = %133, %96
  %135 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i64 1, !dbg !2453
  call void @llvm.dbg.value(metadata %struct.hash_entry* %135, metadata !2390, metadata !DIExpression()) #29, !dbg !2402
  %136 = icmp ult %struct.hash_entry* %135, %91, !dbg !2407
  br i1 %136, label %96, label %137, !dbg !2408, !llvm.loop !2454

137:                                              ; preds = %134, %88
  %138 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* %0, %struct.hash_table* nonnull %3, i1 zeroext false), !dbg !2456
  br i1 %138, label %140, label %139, !dbg !2457

139:                                              ; preds = %137
  tail call void @abort() #31, !dbg !2458
  unreachable, !dbg !2458

140:                                              ; preds = %137
  %141 = load i8*, i8** %54, align 16, !dbg !2459, !tbaa !1601
  tail call void @free(i8* %141) #29, !dbg !2460
  br label %142, !dbg !2461

142:                                              ; preds = %41, %17, %44, %10, %51, %47, %140, %78
  %143 = phi i1 [ true, %78 ], [ false, %140 ], [ true, %47 ], [ false, %51 ], [ false, %10 ], [ false, %44 ], [ false, %17 ], [ false, %41 ], !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #29, !dbg !2462
  ret i1 %143, !dbg !2462
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @transfer_entries(%struct.hash_table* nocapture %0, %struct.hash_table* nocapture %1, i1 zeroext %2) unnamed_addr #8 !dbg !2384 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2383, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %struct.hash_table* %1, metadata !2388, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i1 %2, metadata !2389, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2463
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 0, !dbg !2464
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !2464, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* %5, metadata !2390, metadata !DIExpression()), !dbg !2463
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 1, !dbg !2465
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !2465, !tbaa !1603
  %8 = icmp ult %struct.hash_entry* %5, %7, !dbg !2466
  br i1 %8, label %9, label %95, !dbg !2467

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 3
  br label %16, !dbg !2467

16:                                               ; preds = %9, %91
  %17 = phi %struct.hash_entry* [ %5, %9 ], [ %92, %91 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %17, metadata !2390, metadata !DIExpression()), !dbg !2463
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 0, i32 0, !dbg !2468
  %19 = load i8*, i8** %18, align 8, !dbg !2468, !tbaa !1607
  %20 = icmp eq i8* %19, null, !dbg !2469
  br i1 %20, label %91, label %21, !dbg !2470

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 0, i32 1, !dbg !2471
  %23 = load %struct.hash_entry*, %struct.hash_entry** %22, align 8, !dbg !2471, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %23, metadata !2391, metadata !DIExpression()), !dbg !2463
  %24 = icmp eq %struct.hash_entry* %23, null, !dbg !2472
  br i1 %24, label %55, label %25, !dbg !2472

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8, !dbg !2473, !tbaa !1570
  br label %27, !dbg !2472

27:                                               ; preds = %25, %49
  %28 = phi i64 [ %34, %49 ], [ %26, %25 ], !dbg !2473
  %29 = phi %struct.hash_entry* [ %40, %49 ], [ %23, %25 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %29, metadata !2391, metadata !DIExpression()), !dbg !2463
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %29, i64 0, i32 0, !dbg !2475
  %31 = load i8*, i8** %30, align 8, !dbg !2475, !tbaa !1607
  call void @llvm.dbg.value(metadata i8* %31, metadata !2393, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1754, metadata !DIExpression()) #29, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %31, metadata !1759, metadata !DIExpression()) #29, !dbg !2477
  %32 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !dbg !2478, !tbaa !1764
  %33 = tail call i64 %32(i8* %31, i64 %28) #29, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %33, metadata !1760, metadata !DIExpression()) #29, !dbg !2477
  %34 = load i64, i64* %11, align 8, !dbg !2480, !tbaa !1570
  %35 = icmp ult i64 %33, %34, !dbg !2481
  br i1 %35, label %37, label %36, !dbg !2482

36:                                               ; preds = %27
  tail call void @abort() #31, !dbg !2483
  unreachable, !dbg !2483

37:                                               ; preds = %27
  %38 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2484, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* undef, metadata !2398, metadata !DIExpression()), !dbg !2476
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %29, i64 0, i32 1, !dbg !2485
  %40 = load %struct.hash_entry*, %struct.hash_entry** %39, align 8, !dbg !2485, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %40, metadata !2392, metadata !DIExpression()), !dbg !2463
  %41 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %38, i64 %33, i32 0, !dbg !2486
  %42 = load i8*, i8** %41, align 8, !dbg !2486, !tbaa !1607
  %43 = icmp eq i8* %42, null, !dbg !2487
  br i1 %43, label %46, label %44, !dbg !2488

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %38, i64 %33, i32 1, !dbg !2489
  br label %49, !dbg !2490

46:                                               ; preds = %37
  store i8* %31, i8** %41, align 8, !dbg !2491, !tbaa !1607
  %47 = load i64, i64* %13, align 8, !dbg !2492, !tbaa !1578
  %48 = add i64 %47, 1, !dbg !2492
  store i64 %48, i64* %13, align 8, !dbg !2492, !tbaa !1578
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2440, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata %struct.hash_entry* %29, metadata !2445, metadata !DIExpression()), !dbg !2493
  store i8* null, i8** %30, align 8, !dbg !2495, !tbaa !1607
  br label %49

49:                                               ; preds = %44, %46
  %50 = phi %struct.hash_entry** [ %45, %44 ], [ %14, %46 ]
  %51 = load %struct.hash_entry*, %struct.hash_entry** %50, align 8, !dbg !2496, !tbaa !682
  store %struct.hash_entry* %51, %struct.hash_entry** %39, align 8, !dbg !2496, !tbaa !1613
  store %struct.hash_entry* %29, %struct.hash_entry** %50, align 8, !dbg !2496, !tbaa !682
  call void @llvm.dbg.value(metadata %struct.hash_entry* %40, metadata !2391, metadata !DIExpression()), !dbg !2463
  %52 = icmp eq %struct.hash_entry* %40, null, !dbg !2472
  br i1 %52, label %53, label %27, !dbg !2472, !llvm.loop !2497

53:                                               ; preds = %49
  %54 = load i8*, i8** %18, align 8, !dbg !2499, !tbaa !1607
  br label %55, !dbg !2499

55:                                               ; preds = %53, %21
  %56 = phi i8* [ %54, %53 ], [ %19, %21 ], !dbg !2499
  call void @llvm.dbg.value(metadata i8* %56, metadata !2393, metadata !DIExpression()), !dbg !2476
  store %struct.hash_entry* null, %struct.hash_entry** %22, align 8, !dbg !2500, !tbaa !1613
  br i1 %2, label %91, label %57, !dbg !2501

57:                                               ; preds = %55
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1754, metadata !DIExpression()) #29, !dbg !2502
  call void @llvm.dbg.value(metadata i8* %56, metadata !1759, metadata !DIExpression()) #29, !dbg !2502
  %58 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !dbg !2504, !tbaa !1764
  %59 = load i64, i64* %11, align 8, !dbg !2505, !tbaa !1570
  %60 = tail call i64 %58(i8* %56, i64 %59) #29, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %60, metadata !1760, metadata !DIExpression()) #29, !dbg !2502
  %61 = load i64, i64* %11, align 8, !dbg !2507, !tbaa !1570
  %62 = icmp ult i64 %60, %61, !dbg !2508
  br i1 %62, label %64, label %63, !dbg !2509

63:                                               ; preds = %57
  tail call void @abort() #31, !dbg !2510
  unreachable, !dbg !2510

64:                                               ; preds = %57
  %65 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2511, !tbaa !1601
  call void @llvm.dbg.value(metadata %struct.hash_entry* undef, metadata !2398, metadata !DIExpression()), !dbg !2476
  %66 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 %60, i32 0, !dbg !2512
  %67 = load i8*, i8** %66, align 8, !dbg !2512, !tbaa !1607
  %68 = icmp eq i8* %67, null, !dbg !2513
  br i1 %68, label %85, label %69, !dbg !2514

69:                                               ; preds = %64
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2515, metadata !DIExpression()) #29, !dbg !2521
  %70 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !dbg !2523, !tbaa !2128
  %71 = icmp eq %struct.hash_entry* %70, null, !dbg !2525
  br i1 %71, label %75, label %72, !dbg !2526

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata %struct.hash_entry* %70, metadata !2520, metadata !DIExpression()) #29, !dbg !2521
  %73 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %70, i64 0, i32 1, !dbg !2527
  %74 = load %struct.hash_entry*, %struct.hash_entry** %73, align 8, !dbg !2527, !tbaa !1613
  store %struct.hash_entry* %74, %struct.hash_entry** %14, align 8, !dbg !2529, !tbaa !2128
  call void @llvm.dbg.value(metadata %struct.hash_entry* %77, metadata !2520, metadata !DIExpression()) #29, !dbg !2521
  call void @llvm.dbg.value(metadata %struct.hash_entry* %77, metadata !2399, metadata !DIExpression()), !dbg !2530
  br label %79, !dbg !2531

75:                                               ; preds = %69
  %76 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 16) #29, !dbg !2532
  %77 = bitcast i8* %76 to %struct.hash_entry*, !dbg !2532
  call void @llvm.dbg.value(metadata %struct.hash_entry* %77, metadata !2520, metadata !DIExpression()) #29, !dbg !2521
  call void @llvm.dbg.value(metadata %struct.hash_entry* %77, metadata !2399, metadata !DIExpression()), !dbg !2530
  %78 = icmp eq i8* %76, null, !dbg !2534
  br i1 %78, label %95, label %79, !dbg !2531

79:                                               ; preds = %72, %75
  %80 = phi %struct.hash_entry* [ %70, %72 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %80, i64 0, i32 0, !dbg !2536
  store i8* %56, i8** %81, align 8, !dbg !2537, !tbaa !1607
  %82 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 %60, i32 1, !dbg !2538
  %83 = load %struct.hash_entry*, %struct.hash_entry** %82, align 8, !dbg !2538, !tbaa !1613
  %84 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %80, i64 0, i32 1, !dbg !2539
  store %struct.hash_entry* %83, %struct.hash_entry** %84, align 8, !dbg !2540, !tbaa !1613
  store %struct.hash_entry* %80, %struct.hash_entry** %82, align 8, !dbg !2541, !tbaa !1613
  br label %88

85:                                               ; preds = %64
  store i8* %56, i8** %66, align 8, !dbg !2542, !tbaa !1607
  %86 = load i64, i64* %13, align 8, !dbg !2544, !tbaa !1578
  %87 = add i64 %86, 1, !dbg !2544
  store i64 %87, i64* %13, align 8, !dbg !2544, !tbaa !1578
  br label %88

88:                                               ; preds = %79, %85
  store i8* null, i8** %18, align 8, !dbg !2545, !tbaa !1607
  %89 = load i64, i64* %15, align 8, !dbg !2546, !tbaa !1578
  %90 = add i64 %89, -1, !dbg !2546
  store i64 %90, i64* %15, align 8, !dbg !2546, !tbaa !1578
  br label %91, !dbg !2547

91:                                               ; preds = %55, %88, %16
  %92 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 1, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.hash_entry* %92, metadata !2390, metadata !DIExpression()), !dbg !2463
  %93 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !2465, !tbaa !1603
  %94 = icmp ult %struct.hash_entry* %92, %93, !dbg !2466
  br i1 %94, label %16, label %95, !dbg !2467, !llvm.loop !2549

95:                                               ; preds = %91, %75, %3
  %96 = phi i1 [ true, %3 ], [ false, %75 ], [ true, %91 ]
  ret i1 %96, !dbg !2551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @hash_insert_if_absent(%struct.hash_table* nocapture %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !2552 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2557, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %1, metadata !2558, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8** %2, metadata !2559, metadata !DIExpression()), !dbg !2571
  %4 = icmp eq i8* %1, null, !dbg !2572
  br i1 %4, label %5, label %6, !dbg !2574

5:                                                ; preds = %3
  tail call void @abort() #31, !dbg !2575
  unreachable, !dbg !2575

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2576, metadata !DIExpression()) #29, !dbg !2604
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()) #29, !dbg !2604
  call void @llvm.dbg.value(metadata %struct.hash_entry** undef, metadata !2583, metadata !DIExpression()) #29, !dbg !2604
  call void @llvm.dbg.value(metadata i1 false, metadata !2584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !2604
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1754, metadata !DIExpression()) #29, !dbg !2607
  call void @llvm.dbg.value(metadata i8* %1, metadata !1759, metadata !DIExpression()) #29, !dbg !2607
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !2609
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !dbg !2609, !tbaa !1764
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !2610
  %10 = load i64, i64* %9, align 8, !dbg !2610, !tbaa !1570
  %11 = tail call i64 %8(i8* nonnull %1, i64 %10) #29, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %11, metadata !1760, metadata !DIExpression()) #29, !dbg !2607
  %12 = load i64, i64* %9, align 8, !dbg !2612, !tbaa !1570
  %13 = icmp ult i64 %11, %12, !dbg !2613
  br i1 %13, label %15, label %14, !dbg !2614

14:                                               ; preds = %6
  tail call void @abort() #31, !dbg !2615
  unreachable, !dbg !2615

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2616
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !dbg !2616, !tbaa !1601
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, !dbg !2617
  call void @llvm.dbg.value(metadata %struct.hash_entry* %18, metadata !2585, metadata !DIExpression()) #29, !dbg !2604
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0, !dbg !2618
  %20 = load i8*, i8** %19, align 8, !dbg !2618, !tbaa !1607
  %21 = icmp eq i8* %20, null, !dbg !2620
  br i1 %21, label %58, label %22, !dbg !2621

22:                                               ; preds = %15
  %23 = icmp eq i8* %20, %1, !dbg !2622
  br i1 %23, label %54, label %24, !dbg !2623

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2624
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !dbg !2624, !tbaa !1784
  %27 = tail call zeroext i1 %26(i8* nonnull %1, i8* nonnull %20) #29, !dbg !2625
  br i1 %27, label %48, label %28, !dbg !2626

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %struct.hash_entry* %18, metadata !2586, metadata !DIExpression()) #29, !dbg !2604
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, i32 1, !dbg !2627
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !dbg !2627, !tbaa !1613
  %31 = icmp eq %struct.hash_entry* %30, null, !dbg !2628
  br i1 %31, label %58, label %32, !dbg !2628

32:                                               ; preds = %28, %44
  %33 = phi %struct.hash_entry* [ %46, %44 ], [ %30, %28 ]
  %34 = phi %struct.hash_entry** [ %45, %44 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0, !dbg !2629
  %36 = load i8*, i8** %35, align 8, !dbg !2629, !tbaa !1607
  %37 = icmp eq i8* %36, %1, !dbg !2630
  br i1 %37, label %51, label %38, !dbg !2631

38:                                               ; preds = %32
  %39 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !dbg !2632, !tbaa !1784
  %40 = tail call zeroext i1 %39(i8* nonnull %1, i8* %36) #29, !dbg !2633
  %41 = load %struct.hash_entry*, %struct.hash_entry** %34, align 8, !dbg !2634, !tbaa !1613
  br i1 %40, label %42, label %44, !dbg !2635

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  br label %48, !dbg !2635

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %struct.hash_entry* %41, metadata !2586, metadata !DIExpression()) #29, !dbg !2604
  %45 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 1, !dbg !2627
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !dbg !2627, !tbaa !1613
  %47 = icmp eq %struct.hash_entry* %46, null, !dbg !2628
  br i1 %47, label %58, label %32, !dbg !2628, !llvm.loop !2636

48:                                               ; preds = %24, %42
  %49 = phi i8** [ %43, %42 ], [ %19, %24 ]
  %50 = load i8*, i8** %49, align 8, !dbg !2604, !tbaa !1607
  br label %51, !dbg !2638

51:                                               ; preds = %32, %48
  %52 = phi i8* [ %50, %48 ], [ %1, %32 ], !dbg !2604
  call void @llvm.dbg.value(metadata i8* %52, metadata !2560, metadata !DIExpression()), !dbg !2571
  %53 = icmp eq i8* %52, null, !dbg !2638
  br i1 %53, label %58, label %54, !dbg !2639

54:                                               ; preds = %22, %51
  %55 = phi i8* [ %52, %51 ], [ %1, %22 ]
  %56 = icmp eq i8** %2, null, !dbg !2640
  br i1 %56, label %188, label %57, !dbg !2643

57:                                               ; preds = %54
  store i8* %55, i8** %2, align 8, !dbg !2644, !tbaa !682
  br label %188, !dbg !2645

58:                                               ; preds = %44, %28, %15, %51
  %59 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !2646
  %60 = load i64, i64* %59, align 8, !dbg !2646, !tbaa !1578
  %61 = uitofp i64 %60 to float, !dbg !2647
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5, !dbg !2648
  %63 = load %struct.hash_tuning*, %struct.hash_tuning** %62, align 8, !dbg !2648, !tbaa !2011
  %64 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 2, !dbg !2649
  %65 = load float, float* %64, align 4, !dbg !2649, !tbaa !2027
  %66 = load i64, i64* %9, align 8, !dbg !2650, !tbaa !1570
  %67 = uitofp i64 %66 to float, !dbg !2651
  %68 = fmul float %65, %67, !dbg !2652
  %69 = fcmp olt float %68, %61, !dbg !2653
  br i1 %69, label %70, label %158, !dbg !2654

70:                                               ; preds = %58
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2012, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %63, metadata !2017, metadata !DIExpression()), !dbg !2655
  %71 = icmp eq %struct.hash_tuning* %63, @default_tuning, !dbg !2657
  br i1 %71, label %94, label %72, !dbg !2658

72:                                               ; preds = %70
  call void @llvm.dbg.value(metadata float 0x3FB99999A0000000, metadata !2018, metadata !DIExpression()), !dbg !2655
  %73 = fcmp ogt float %65, 0x3FB99999A0000000, !dbg !2659
  %74 = fcmp olt float %65, 0x3FECCCCCC0000000
  %75 = and i1 %73, %74, !dbg !2660
  br i1 %75, label %76, label %93, !dbg !2660

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 3, !dbg !2661
  %78 = load float, float* %77, align 4, !dbg !2661, !tbaa !2032
  %79 = fcmp ogt float %78, 0x3FF19999A0000000, !dbg !2662
  br i1 %79, label %80, label %93, !dbg !2663

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 0, !dbg !2664
  %82 = load float, float* %81, align 4, !dbg !2664, !tbaa !2036
  %83 = fcmp ult float %82, 0.000000e+00, !dbg !2665
  br i1 %83, label %93, label %84, !dbg !2666

84:                                               ; preds = %80
  %85 = fadd float %82, 0x3FB99999A0000000, !dbg !2667
  %86 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 1, !dbg !2668
  %87 = load float, float* %86, align 4, !dbg !2668, !tbaa !2041
  %88 = fcmp olt float %85, %87, !dbg !2669
  %89 = fcmp ole float %87, 1.000000e+00
  %90 = and i1 %88, %89, !dbg !2670
  %91 = fcmp olt float %85, %65
  %92 = and i1 %91, %90, !dbg !2670
  br i1 %92, label %94, label %93, !dbg !2670

93:                                               ; preds = %84, %80, %76, %72
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %62, align 8, !dbg !2671, !tbaa !2011
  br label %94, !dbg !2672

94:                                               ; preds = %70, %84, %93
  %95 = phi float [ %65, %70 ], [ %65, %84 ], [ 0x3FE99999A0000000, %93 ], !dbg !2673
  %96 = phi %struct.hash_tuning* [ @default_tuning, %70 ], [ %63, %84 ], [ @default_tuning, %93 ], !dbg !2674
  %97 = fmul float %95, %67, !dbg !2675
  %98 = fcmp olt float %97, %61, !dbg !2676
  br i1 %98, label %99, label %158, !dbg !2677

99:                                               ; preds = %94
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %96, metadata !2562, metadata !DIExpression()), !dbg !2678
  %100 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %96, i64 0, i32 4, !dbg !2679
  %101 = load i8, i8* %100, align 4, !dbg !2679, !tbaa !2056, !range !1409
  %102 = icmp eq i8 %101, 0, !dbg !2679
  %103 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %96, i64 0, i32 3, !dbg !2678
  %104 = load float, float* %103, align 4, !dbg !2678, !tbaa !2032
  %105 = fmul float %104, %67, !dbg !2678
  %106 = fmul float %95, %105, !dbg !2680
  %107 = select i1 %102, float %106, float %105, !dbg !2680
  call void @llvm.dbg.value(metadata float %107, metadata !2567, metadata !DIExpression()), !dbg !2678
  %108 = fcmp ult float %107, 0x43F0000000000000, !dbg !2681
  br i1 %108, label %109, label %188, !dbg !2683

109:                                              ; preds = %99
  %110 = fptoui float %107 to i64, !dbg !2684
  %111 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %110), !dbg !2686
  br i1 %111, label %112, label %188, !dbg !2687

112:                                              ; preds = %109
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2576, metadata !DIExpression()) #29, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()) #29, !dbg !2688
  call void @llvm.dbg.value(metadata %struct.hash_entry** undef, metadata !2583, metadata !DIExpression()) #29, !dbg !2688
  call void @llvm.dbg.value(metadata i1 false, metadata !2584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !2688
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1754, metadata !DIExpression()) #29, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !1759, metadata !DIExpression()) #29, !dbg !2691
  %113 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !dbg !2693, !tbaa !1764
  %114 = load i64, i64* %9, align 8, !dbg !2694, !tbaa !1570
  %115 = tail call i64 %113(i8* nonnull %1, i64 %114) #29, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %115, metadata !1760, metadata !DIExpression()) #29, !dbg !2691
  %116 = load i64, i64* %9, align 8, !dbg !2696, !tbaa !1570
  %117 = icmp ult i64 %115, %116, !dbg !2697
  br i1 %117, label %119, label %118, !dbg !2698

118:                                              ; preds = %112
  tail call void @abort() #31, !dbg !2699
  unreachable, !dbg !2699

119:                                              ; preds = %112
  %120 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !dbg !2700, !tbaa !1601
  %121 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %120, i64 %115, !dbg !2701
  call void @llvm.dbg.value(metadata %struct.hash_entry* %121, metadata !2585, metadata !DIExpression()) #29, !dbg !2688
  %122 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %121, i64 0, i32 0, !dbg !2702
  %123 = load i8*, i8** %122, align 8, !dbg !2702, !tbaa !1607
  %124 = icmp eq i8* %123, null, !dbg !2703
  br i1 %124, label %158, label %125, !dbg !2704

125:                                              ; preds = %119
  %126 = icmp eq i8* %123, %1, !dbg !2705
  br i1 %126, label %154, label %127, !dbg !2706

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2707
  %129 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %128, align 8, !dbg !2707, !tbaa !1784
  %130 = tail call zeroext i1 %129(i8* nonnull %1, i8* nonnull %123) #29, !dbg !2708
  br i1 %130, label %131, label %133, !dbg !2709

131:                                              ; preds = %127
  %132 = load i8*, i8** %122, align 8, !dbg !2710, !tbaa !1607
  br label %154, !dbg !2709

133:                                              ; preds = %127
  call void @llvm.dbg.value(metadata %struct.hash_entry* %121, metadata !2586, metadata !DIExpression()) #29, !dbg !2688
  %134 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %120, i64 %115, i32 1, !dbg !2711
  %135 = load %struct.hash_entry*, %struct.hash_entry** %134, align 8, !dbg !2711, !tbaa !1613
  %136 = icmp eq %struct.hash_entry* %135, null, !dbg !2712
  br i1 %136, label %158, label %137, !dbg !2712

137:                                              ; preds = %133, %150
  %138 = phi %struct.hash_entry* [ %152, %150 ], [ %135, %133 ]
  %139 = phi %struct.hash_entry** [ %151, %150 ], [ %134, %133 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %138, i64 0, i32 0, !dbg !2713
  %141 = load i8*, i8** %140, align 8, !dbg !2713, !tbaa !1607
  %142 = icmp eq i8* %141, %1, !dbg !2714
  br i1 %142, label %154, label %143, !dbg !2715

143:                                              ; preds = %137
  %144 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %128, align 8, !dbg !2716, !tbaa !1784
  %145 = tail call zeroext i1 %144(i8* nonnull %1, i8* %141) #29, !dbg !2717
  %146 = load %struct.hash_entry*, %struct.hash_entry** %139, align 8, !dbg !2718, !tbaa !1613
  br i1 %145, label %147, label %150, !dbg !2719

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %146, i64 0, i32 0
  %149 = load i8*, i8** %148, align 8, !dbg !2720, !tbaa !1607
  br label %154, !dbg !2719

150:                                              ; preds = %143
  call void @llvm.dbg.value(metadata %struct.hash_entry* %146, metadata !2586, metadata !DIExpression()) #29, !dbg !2688
  %151 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %146, i64 0, i32 1, !dbg !2711
  %152 = load %struct.hash_entry*, %struct.hash_entry** %151, align 8, !dbg !2711, !tbaa !1613
  %153 = icmp eq %struct.hash_entry* %152, null, !dbg !2712
  br i1 %153, label %158, label %137, !dbg !2712, !llvm.loop !2721

154:                                              ; preds = %137, %147, %125, %131
  %155 = phi i8* [ %132, %131 ], [ %1, %125 ], [ %149, %147 ], [ %1, %137 ], !dbg !2688
  %156 = icmp eq i8* %155, null, !dbg !2723
  br i1 %156, label %158, label %157, !dbg !2724

157:                                              ; preds = %154
  tail call void @abort() #31, !dbg !2725
  unreachable, !dbg !2725

158:                                              ; preds = %150, %133, %119, %154, %94, %58
  %159 = phi %struct.hash_entry* [ %121, %154 ], [ %18, %94 ], [ %18, %58 ], [ %121, %119 ], [ %121, %133 ], [ %121, %150 ], !dbg !2571
  call void @llvm.dbg.value(metadata %struct.hash_entry* %159, metadata !2561, metadata !DIExpression()), !dbg !2571
  %160 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %159, i64 0, i32 0, !dbg !2726
  %161 = load i8*, i8** %160, align 8, !dbg !2726, !tbaa !1607
  %162 = icmp eq i8* %161, null, !dbg !2727
  br i1 %162, label %183, label %163, !dbg !2728

163:                                              ; preds = %158
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2515, metadata !DIExpression()) #29, !dbg !2729
  %164 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2731
  %165 = load %struct.hash_entry*, %struct.hash_entry** %164, align 8, !dbg !2731, !tbaa !2128
  %166 = icmp eq %struct.hash_entry* %165, null, !dbg !2732
  br i1 %166, label %170, label %167, !dbg !2733

167:                                              ; preds = %163
  call void @llvm.dbg.value(metadata %struct.hash_entry* %165, metadata !2520, metadata !DIExpression()) #29, !dbg !2729
  %168 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %165, i64 0, i32 1, !dbg !2734
  %169 = load %struct.hash_entry*, %struct.hash_entry** %168, align 8, !dbg !2734, !tbaa !1613
  store %struct.hash_entry* %169, %struct.hash_entry** %164, align 8, !dbg !2735, !tbaa !2128
  call void @llvm.dbg.value(metadata %struct.hash_entry* %172, metadata !2520, metadata !DIExpression()) #29, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.hash_entry* %172, metadata !2568, metadata !DIExpression()), !dbg !2736
  br label %174, !dbg !2737

170:                                              ; preds = %163
  %171 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 16) #29, !dbg !2738
  %172 = bitcast i8* %171 to %struct.hash_entry*, !dbg !2738
  call void @llvm.dbg.value(metadata %struct.hash_entry* %172, metadata !2520, metadata !DIExpression()) #29, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.hash_entry* %172, metadata !2568, metadata !DIExpression()), !dbg !2736
  %173 = icmp eq i8* %171, null, !dbg !2739
  br i1 %173, label %188, label %174, !dbg !2737

174:                                              ; preds = %167, %170
  %175 = phi %struct.hash_entry* [ %165, %167 ], [ %172, %170 ]
  %176 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %175, i64 0, i32 0, !dbg !2741
  store i8* %1, i8** %176, align 8, !dbg !2742, !tbaa !1607
  call void @llvm.dbg.value(metadata %struct.hash_entry* %159, metadata !2561, metadata !DIExpression()), !dbg !2571
  %177 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %159, i64 0, i32 1, !dbg !2743
  %178 = load %struct.hash_entry*, %struct.hash_entry** %177, align 8, !dbg !2743, !tbaa !1613
  %179 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %175, i64 0, i32 1, !dbg !2744
  store %struct.hash_entry* %178, %struct.hash_entry** %179, align 8, !dbg !2745, !tbaa !1613
  store %struct.hash_entry* %175, %struct.hash_entry** %177, align 8, !dbg !2746, !tbaa !1613
  %180 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !2747
  %181 = load i64, i64* %180, align 8, !dbg !2748, !tbaa !1585
  %182 = add i64 %181, 1, !dbg !2748
  store i64 %182, i64* %180, align 8, !dbg !2748, !tbaa !1585
  br label %188, !dbg !2749

183:                                              ; preds = %158
  store i8* %1, i8** %160, align 8, !dbg !2750, !tbaa !1607
  %184 = bitcast i64* %59 to <2 x i64>*, !dbg !2751
  %185 = load <2 x i64>, <2 x i64>* %184, align 8, !dbg !2751, !tbaa !1487
  %186 = add <2 x i64> %185, <i64 1, i64 1>, !dbg !2751
  %187 = bitcast i64* %59 to <2 x i64>*, !dbg !2751
  store <2 x i64> %186, <2 x i64>* %187, align 8, !dbg !2751, !tbaa !1487
  br label %188, !dbg !2752

188:                                              ; preds = %109, %99, %174, %170, %54, %57, %183
  %189 = phi i32 [ 1, %183 ], [ 0, %57 ], [ 0, %54 ], [ 1, %174 ], [ -1, %170 ], [ -1, %99 ], [ -1, %109 ], !dbg !2571
  ret i32 %189, !dbg !2753
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @hash_insert(%struct.hash_table* nocapture %0, i8* %1) local_unnamed_addr #8 !dbg !2754 {
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2758, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()), !dbg !2762
  %4 = bitcast i8** %3 to i8*, !dbg !2763
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #29, !dbg !2763
  call void @llvm.dbg.value(metadata i8** %3, metadata !2760, metadata !DIExpression(DW_OP_deref)), !dbg !2762
  %5 = call i32 @hash_insert_if_absent(%struct.hash_table* %0, i8* %1, i8** nonnull %3), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %5, metadata !2761, metadata !DIExpression()), !dbg !2762
  %6 = icmp eq i32 %5, -1, !dbg !2765
  %7 = icmp eq i32 %5, 0, !dbg !2766
  %8 = load i8*, i8** %3, align 8, !dbg !2766
  %9 = select i1 %7, i8* %8, i8* %1, !dbg !2766
  %10 = select i1 %6, i8* null, i8* %9, !dbg !2766
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #29, !dbg !2767
  ret i8* %10, !dbg !2768
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @hash_delete(%struct.hash_table* nocapture %0, i8* %1) local_unnamed_addr #8 !dbg !2769 {
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2771, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %1, metadata !2772, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2576, metadata !DIExpression()) #29, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()) #29, !dbg !2788
  call void @llvm.dbg.value(metadata %struct.hash_entry** undef, metadata !2583, metadata !DIExpression()) #29, !dbg !2788
  call void @llvm.dbg.value(metadata i1 true, metadata !2584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !2788
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !1754, metadata !DIExpression()) #29, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %1, metadata !1759, metadata !DIExpression()) #29, !dbg !2790
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !2792
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !dbg !2792, !tbaa !1764
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !2793
  %6 = load i64, i64* %5, align 8, !dbg !2793, !tbaa !1570
  %7 = tail call i64 %4(i8* %1, i64 %6) #29, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %7, metadata !1760, metadata !DIExpression()) #29, !dbg !2790
  %8 = load i64, i64* %5, align 8, !dbg !2795, !tbaa !1570
  %9 = icmp ult i64 %7, %8, !dbg !2796
  br i1 %9, label %11, label %10, !dbg !2797

10:                                               ; preds = %2
  tail call void @abort() #31, !dbg !2798
  unreachable, !dbg !2798

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2799
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2799, !tbaa !1601
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, !dbg !2800
  call void @llvm.dbg.value(metadata %struct.hash_entry* %14, metadata !2585, metadata !DIExpression()) #29, !dbg !2788
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0, !dbg !2801
  %16 = load i8*, i8** %15, align 8, !dbg !2801, !tbaa !1607
  %17 = icmp eq i8* %16, null, !dbg !2802
  br i1 %17, label %145, label %18, !dbg !2803

18:                                               ; preds = %11
  %19 = icmp eq i8* %16, %1, !dbg !2804
  br i1 %19, label %30, label %20, !dbg !2805

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2806
  %22 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !dbg !2806, !tbaa !1784
  %23 = tail call zeroext i1 %22(i8* %1, i8* nonnull %16) #29, !dbg !2807
  br i1 %23, label %24, label %26, !dbg !2808

24:                                               ; preds = %20
  %25 = load i8*, i8** %15, align 8, !dbg !2809, !tbaa !1607
  br label %30, !dbg !2808

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %struct.hash_entry* %14, metadata !2586, metadata !DIExpression()) #29, !dbg !2788
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1, !dbg !2810
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8, !dbg !2810, !tbaa !1613
  %29 = icmp eq %struct.hash_entry* %28, null, !dbg !2811
  br i1 %29, label %145, label %43, !dbg !2811

30:                                               ; preds = %24, %18
  %31 = phi i8* [ %25, %24 ], [ %1, %18 ], !dbg !2809
  call void @llvm.dbg.value(metadata i8* %31, metadata !2587, metadata !DIExpression()) #29, !dbg !2812
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1, !dbg !2813
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !dbg !2813, !tbaa !1613
  %34 = icmp eq %struct.hash_entry* %33, null, !dbg !2814
  br i1 %34, label %42, label %35, !dbg !2815

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata %struct.hash_entry* %33, metadata !2590, metadata !DIExpression()) #29, !dbg !2816
  %36 = bitcast %struct.hash_entry* %14 to i8*, !dbg !2817
  %37 = bitcast %struct.hash_entry* %33 to i8*, !dbg !2817
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %36, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #29, !dbg !2817, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2440, metadata !DIExpression()) #29, !dbg !2819
  call void @llvm.dbg.value(metadata %struct.hash_entry* %33, metadata !2445, metadata !DIExpression()) #29, !dbg !2819
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0, !dbg !2821
  store i8* null, i8** %38, align 8, !dbg !2822, !tbaa !1607
  %39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2823
  %40 = load %struct.hash_entry*, %struct.hash_entry** %39, align 8, !dbg !2823, !tbaa !2128
  %41 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 1, !dbg !2824
  store %struct.hash_entry* %40, %struct.hash_entry** %41, align 8, !dbg !2825, !tbaa !1613
  store %struct.hash_entry* %33, %struct.hash_entry** %39, align 8, !dbg !2826, !tbaa !2128
  br label %68, !dbg !2827

42:                                               ; preds = %30
  store i8* null, i8** %15, align 8, !dbg !2828, !tbaa !1607
  br label %68

43:                                               ; preds = %26, %64
  %44 = phi %struct.hash_entry* [ %66, %64 ], [ %28, %26 ]
  %45 = phi %struct.hash_entry** [ %65, %64 ], [ %27, %26 ]
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %44, i64 0, i32 0, !dbg !2830
  %47 = load i8*, i8** %46, align 8, !dbg !2830, !tbaa !1607
  %48 = icmp eq i8* %47, %1, !dbg !2831
  br i1 %48, label %56, label %49, !dbg !2832

49:                                               ; preds = %43
  %50 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !dbg !2833, !tbaa !1784
  %51 = tail call zeroext i1 %50(i8* %1, i8* %47) #29, !dbg !2834
  %52 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !dbg !2835, !tbaa !1613
  br i1 %51, label %53, label %64, !dbg !2836

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 0
  %55 = load i8*, i8** %54, align 8, !dbg !2837, !tbaa !1607
  br label %56, !dbg !2836

56:                                               ; preds = %43, %53
  %57 = phi i8* [ %55, %53 ], [ %1, %43 ], !dbg !2837
  %58 = phi %struct.hash_entry* [ %52, %53 ], [ %44, %43 ], !dbg !2838
  call void @llvm.dbg.value(metadata i8* %57, metadata !2595, metadata !DIExpression()) #29, !dbg !2839
  %59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 0, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.hash_entry* %58, metadata !2601, metadata !DIExpression()) #29, !dbg !2840
  %60 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 1, !dbg !2841
  %61 = load %struct.hash_entry*, %struct.hash_entry** %60, align 8, !dbg !2841, !tbaa !1613
  store %struct.hash_entry* %61, %struct.hash_entry** %45, align 8, !dbg !2842, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2440, metadata !DIExpression()) #29, !dbg !2843
  call void @llvm.dbg.value(metadata %struct.hash_entry* %58, metadata !2445, metadata !DIExpression()) #29, !dbg !2843
  store i8* null, i8** %59, align 8, !dbg !2845, !tbaa !1607
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2846
  %63 = load %struct.hash_entry*, %struct.hash_entry** %62, align 8, !dbg !2846, !tbaa !2128
  store %struct.hash_entry* %63, %struct.hash_entry** %60, align 8, !dbg !2847, !tbaa !1613
  store %struct.hash_entry* %58, %struct.hash_entry** %62, align 8, !dbg !2848, !tbaa !2128
  br label %68, !dbg !2849

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata %struct.hash_entry* %52, metadata !2586, metadata !DIExpression()) #29, !dbg !2788
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 1, !dbg !2810
  %66 = load %struct.hash_entry*, %struct.hash_entry** %65, align 8, !dbg !2810, !tbaa !1613
  %67 = icmp eq %struct.hash_entry* %66, null, !dbg !2811
  br i1 %67, label %145, label %43, !dbg !2811, !llvm.loop !2850

68:                                               ; preds = %35, %42, %56
  %69 = phi i8* [ %31, %35 ], [ %31, %42 ], [ %57, %56 ], !dbg !2788
  call void @llvm.dbg.value(metadata i8* %69, metadata !2773, metadata !DIExpression()), !dbg !2787
  %70 = icmp eq i8* %69, null, !dbg !2852
  br i1 %70, label %145, label %71, !dbg !2854

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !2855
  %73 = load i64, i64* %72, align 8, !dbg !2856, !tbaa !1585
  %74 = add i64 %73, -1, !dbg !2856
  store i64 %74, i64* %72, align 8, !dbg !2856, !tbaa !1585
  call void @llvm.dbg.value(metadata %struct.hash_entry* %14, metadata !2774, metadata !DIExpression()), !dbg !2787
  %75 = load i8*, i8** %15, align 8, !dbg !2857, !tbaa !1607
  %76 = icmp eq i8* %75, null, !dbg !2858
  br i1 %76, label %77, label %145, !dbg !2859

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !2860
  %79 = load i64, i64* %78, align 8, !dbg !2861, !tbaa !1578
  %80 = add i64 %79, -1, !dbg !2861
  store i64 %80, i64* %78, align 8, !dbg !2861, !tbaa !1578
  %81 = uitofp i64 %80 to float, !dbg !2862
  %82 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5, !dbg !2863
  %83 = load %struct.hash_tuning*, %struct.hash_tuning** %82, align 8, !dbg !2863, !tbaa !2011
  %84 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 0, !dbg !2864
  %85 = load float, float* %84, align 4, !dbg !2864, !tbaa !2036
  %86 = load i64, i64* %5, align 8, !dbg !2865, !tbaa !1570
  %87 = uitofp i64 %86 to float, !dbg !2866
  %88 = fmul float %85, %87, !dbg !2867
  %89 = fcmp ogt float %88, %81, !dbg !2868
  br i1 %89, label %90, label %145, !dbg !2869

90:                                               ; preds = %77
  call void @llvm.dbg.value(metadata %struct.hash_table* %0, metadata !2012, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %83, metadata !2017, metadata !DIExpression()), !dbg !2870
  %91 = icmp eq %struct.hash_tuning* %83, @default_tuning, !dbg !2872
  br i1 %91, label %114, label %92, !dbg !2873

92:                                               ; preds = %90
  call void @llvm.dbg.value(metadata float 0x3FB99999A0000000, metadata !2018, metadata !DIExpression()), !dbg !2870
  %93 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 2, !dbg !2874
  %94 = load float, float* %93, align 4, !dbg !2874, !tbaa !2027
  %95 = fcmp ogt float %94, 0x3FB99999A0000000, !dbg !2875
  %96 = fcmp olt float %94, 0x3FECCCCCC0000000
  %97 = and i1 %95, %96, !dbg !2876
  br i1 %97, label %98, label %113, !dbg !2876

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 3, !dbg !2877
  %100 = load float, float* %99, align 4, !dbg !2877, !tbaa !2032
  %101 = fcmp ule float %100, 0x3FF19999A0000000, !dbg !2878
  %102 = fcmp ult float %85, 0.000000e+00
  %103 = or i1 %102, %101, !dbg !2879
  br i1 %103, label %113, label %104, !dbg !2879

104:                                              ; preds = %98
  %105 = fadd float %85, 0x3FB99999A0000000, !dbg !2880
  %106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 1, !dbg !2881
  %107 = load float, float* %106, align 4, !dbg !2881, !tbaa !2041
  %108 = fcmp olt float %105, %107, !dbg !2882
  %109 = fcmp ole float %107, 1.000000e+00
  %110 = and i1 %108, %109, !dbg !2883
  %111 = fcmp olt float %105, %94
  %112 = and i1 %111, %110, !dbg !2883
  br i1 %112, label %114, label %113, !dbg !2883

113:                                              ; preds = %104, %98, %92
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %82, align 8, !dbg !2884, !tbaa !2011
  br label %114, !dbg !2885

114:                                              ; preds = %90, %104, %113
  %115 = phi float [ %85, %90 ], [ %85, %104 ], [ 0.000000e+00, %113 ], !dbg !2886
  %116 = phi %struct.hash_tuning* [ @default_tuning, %90 ], [ %83, %104 ], [ @default_tuning, %113 ], !dbg !2887
  %117 = fmul float %115, %87, !dbg !2888
  %118 = fcmp ogt float %117, %81, !dbg !2889
  br i1 %118, label %119, label %145, !dbg !2890

119:                                              ; preds = %114
  call void @llvm.dbg.value(metadata %struct.hash_tuning* %116, metadata !2775, metadata !DIExpression()), !dbg !2891
  %120 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 4, !dbg !2892
  %121 = load i8, i8* %120, align 4, !dbg !2892, !tbaa !2056, !range !1409
  %122 = icmp eq i8 %121, 0, !dbg !2892
  %123 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 1, !dbg !2891
  %124 = load float, float* %123, align 4, !dbg !2891, !tbaa !2041
  %125 = fmul float %124, %87, !dbg !2891
  br i1 %122, label %126, label %130, !dbg !2893

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 2, !dbg !2894
  %128 = load float, float* %127, align 4, !dbg !2894, !tbaa !2027
  %129 = fmul float %125, %128, !dbg !2895
  br label %130, !dbg !2893

130:                                              ; preds = %119, %126
  %131 = phi float [ %129, %126 ], [ %125, %119 ], !dbg !2893
  %132 = fptoui float %131 to i64, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %132, metadata !2782, metadata !DIExpression()), !dbg !2891
  %133 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %132), !dbg !2897
  br i1 %133, label %145, label %134, !dbg !2898

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2899
  %136 = load %struct.hash_entry*, %struct.hash_entry** %135, align 8, !dbg !2899, !tbaa !2128
  call void @llvm.dbg.value(metadata %struct.hash_entry* %136, metadata !2783, metadata !DIExpression()), !dbg !2900
  %137 = icmp eq %struct.hash_entry* %136, null, !dbg !2901
  br i1 %137, label %144, label %138, !dbg !2901

138:                                              ; preds = %134, %138
  %139 = phi %struct.hash_entry* [ %141, %138 ], [ %136, %134 ]
  call void @llvm.dbg.value(metadata %struct.hash_entry* %139, metadata !2783, metadata !DIExpression()), !dbg !2900
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %139, i64 0, i32 1, !dbg !2902
  %141 = load %struct.hash_entry*, %struct.hash_entry** %140, align 8, !dbg !2902, !tbaa !1613
  call void @llvm.dbg.value(metadata %struct.hash_entry* %141, metadata !2786, metadata !DIExpression()), !dbg !2900
  %142 = bitcast %struct.hash_entry* %139 to i8*, !dbg !2904
  tail call void @free(i8* %142) #29, !dbg !2905
  call void @llvm.dbg.value(metadata %struct.hash_entry* %141, metadata !2783, metadata !DIExpression()), !dbg !2900
  %143 = icmp eq %struct.hash_entry* %141, null, !dbg !2901
  br i1 %143, label %144, label %138, !dbg !2901, !llvm.loop !2906

144:                                              ; preds = %138, %134
  store %struct.hash_entry* null, %struct.hash_entry** %135, align 8, !dbg !2908, !tbaa !2128
  br label %145, !dbg !2909

145:                                              ; preds = %64, %26, %11, %71, %114, %77, %144, %130, %68
  %146 = phi i8* [ null, %68 ], [ %69, %130 ], [ %69, %144 ], [ %69, %77 ], [ %69, %114 ], [ %69, %71 ], [ null, %11 ], [ null, %26 ], [ null, %64 ], !dbg !2787
  ret i8* %146, !dbg !2910
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @triple_hash(i8* nocapture readonly %0, i64 %1) #15 !dbg !2911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2913, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64 %1, metadata !2914, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2924
  %3 = bitcast i8* %0 to i8**, !dbg !2925
  %4 = load i8*, i8** %3, align 8, !dbg !2925, !tbaa !1483
  %5 = tail call i64 @hash_pjw(i8* %4, i64 %1) #30, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %5, metadata !2923, metadata !DIExpression()), !dbg !2924
  %6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2927
  %7 = bitcast i8* %6 to i64*, !dbg !2927
  %8 = load i64, i64* %7, align 8, !dbg !2927, !tbaa !2928
  %9 = xor i64 %8, %5, !dbg !2929
  %10 = urem i64 %9, %1, !dbg !2930
  ret i64 %10, !dbg !2931
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @triple_hash_no_name(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #14 !dbg !2932 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2934, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2935, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %0, metadata !2936, metadata !DIExpression()), !dbg !2937
  %3 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2938
  %4 = bitcast i8* %3 to i64*, !dbg !2938
  %5 = load i64, i64* %4, align 8, !dbg !2938, !tbaa !2928
  %6 = urem i64 %5, %1, !dbg !2939
  ret i64 %6, !dbg !2940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @triple_compare(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !2941 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %1, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %1, metadata !2946, metadata !DIExpression()), !dbg !2947
  %3 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2948
  %4 = bitcast i8* %3 to i64*, !dbg !2948
  %5 = load i64, i64* %4, align 8, !dbg !2948, !tbaa !2928
  %6 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2948
  %7 = bitcast i8* %6 to i64*, !dbg !2948
  %8 = load i64, i64* %7, align 8, !dbg !2948, !tbaa !2928
  %9 = icmp eq i64 %5, %8, !dbg !2948
  br i1 %9, label %10, label %24, !dbg !2948

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2948
  %12 = bitcast i8* %11 to i64*, !dbg !2948
  %13 = load i64, i64* %12, align 8, !dbg !2948, !tbaa !2949
  %14 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !2948
  %15 = bitcast i8* %14 to i64*, !dbg !2948
  %16 = load i64, i64* %15, align 8, !dbg !2948, !tbaa !2949
  %17 = icmp eq i64 %13, %16, !dbg !2948
  br i1 %17, label %18, label %24, !dbg !2950

18:                                               ; preds = %10
  %19 = bitcast i8* %0 to i8**, !dbg !2951
  %20 = load i8*, i8** %19, align 8, !dbg !2951, !tbaa !1483
  %21 = bitcast i8* %1 to i8**, !dbg !2952
  %22 = load i8*, i8** %21, align 8, !dbg !2952, !tbaa !1483
  %23 = tail call zeroext i1 @same_name(i8* %20, i8* %22) #29, !dbg !2953
  br label %24

24:                                               ; preds = %18, %10, %2
  %25 = phi i1 [ false, %10 ], [ false, %2 ], [ %23, %18 ], !dbg !2947
  ret i1 %25, !dbg !2954
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local zeroext i1 @triple_compare_ino_str(i8* nocapture readonly %0, i8* nocapture readonly %1) #15 !dbg !2955 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2957, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %1, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %1, metadata !2960, metadata !DIExpression()), !dbg !2961
  %3 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2962
  %4 = bitcast i8* %3 to i64*, !dbg !2962
  %5 = load i64, i64* %4, align 8, !dbg !2962, !tbaa !2928
  %6 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2962
  %7 = bitcast i8* %6 to i64*, !dbg !2962
  %8 = load i64, i64* %7, align 8, !dbg !2962, !tbaa !2928
  %9 = icmp eq i64 %5, %8, !dbg !2962
  br i1 %9, label %10, label %25, !dbg !2962

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2962
  %12 = bitcast i8* %11 to i64*, !dbg !2962
  %13 = load i64, i64* %12, align 8, !dbg !2962, !tbaa !2949
  %14 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !2962
  %15 = bitcast i8* %14 to i64*, !dbg !2962
  %16 = load i64, i64* %15, align 8, !dbg !2962, !tbaa !2949
  %17 = icmp eq i64 %13, %16, !dbg !2962
  br i1 %17, label %18, label %25, !dbg !2963

18:                                               ; preds = %10
  %19 = bitcast i8* %0 to i8**, !dbg !2964
  %20 = load i8*, i8** %19, align 8, !dbg !2964, !tbaa !1483
  %21 = bitcast i8* %1 to i8**, !dbg !2964
  %22 = load i8*, i8** %21, align 8, !dbg !2964, !tbaa !1483
  %23 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %20, i8* nonnull dereferenceable(1) %22) #30, !dbg !2964
  %24 = icmp eq i32 %23, 0, !dbg !2964
  br label %25

25:                                               ; preds = %18, %10, %2
  %26 = phi i1 [ false, %10 ], [ false, %2 ], [ %24, %18 ], !dbg !2961
  ret i1 %26, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable willreturn
define dso_local void @triple_free(i8* nocapture %0) #20 !dbg !2966 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2968, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %0, metadata !2969, metadata !DIExpression()), !dbg !2971
  %2 = bitcast i8* %0 to i8**, !dbg !2972
  %3 = load i8*, i8** %2, align 8, !dbg !2972, !tbaa !1483
  tail call void @free(i8* %3) #29, !dbg !2973
  tail call void @free(i8* %0) #29, !dbg !2974
  ret void, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()), !dbg !2981
  %2 = icmp eq i8* %0, null, !dbg !2982
  br i1 %2, label %3, label %6, !dbg !2984

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2985, !tbaa !682
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #34, !dbg !2987
  tail call void @abort() #31, !dbg !2988
  unreachable, !dbg !2988

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #30, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %7, metadata !2979, metadata !DIExpression()), !dbg !2981
  %8 = icmp eq i8* %7, null, !dbg !2990
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2991
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %10, metadata !2980, metadata !DIExpression()), !dbg !2981
  %11 = ptrtoint i8* %10 to i64, !dbg !2992
  %12 = ptrtoint i8* %0 to i64, !dbg !2992
  %13 = sub i64 %11, %12, !dbg !2992
  %14 = icmp sgt i64 %13, 6, !dbg !2994
  br i1 %14, label %15, label %24, !dbg !2995

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2996
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.82, i64 0, i64 0), i64 7) #30, !dbg !2997
  %18 = icmp eq i32 %17, 0, !dbg !2998
  br i1 %18, label %19, label %24, !dbg !2999

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2978, metadata !DIExpression()), !dbg !2981
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i64 3) #30, !dbg !3000
  %21 = icmp eq i32 %20, 0, !dbg !3003
  br i1 %21, label %22, label %24, !dbg !3004

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %23, metadata !2978, metadata !DIExpression()), !dbg !2981
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !3007, !tbaa !682
  br label %24, !dbg !3008

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2978, metadata !DIExpression()), !dbg !2981
  store i8* %25, i8** @program_name, align 8, !dbg !3009, !tbaa !682
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !3010, !tbaa !682
  ret void, !dbg !3011
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #21

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !3012 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3017, metadata !DIExpression()), !dbg !3020
  %2 = tail call i32* @__errno_location() #33, !dbg !3021
  %3 = load i32, i32* %2, align 4, !dbg !3021, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %3, metadata !3018, metadata !DIExpression()), !dbg !3020
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3022
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3022
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3022
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #29, !dbg !3023
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !3023
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !3019, metadata !DIExpression()), !dbg !3020
  store i32 %3, i32* %2, align 4, !dbg !3024, !tbaa !850
  ret %struct.quoting_options* %8, !dbg !3025
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !3026 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3032, metadata !DIExpression()), !dbg !3033
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !3034
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3034
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3035
  %5 = load i32, i32* %4, align 8, !dbg !3035, !tbaa !3036
  ret i32 %5, !dbg !3038
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !3039 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %1, metadata !3044, metadata !DIExpression()), !dbg !3045
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3046
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3046
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3047
  store i32 %1, i32* %5, align 8, !dbg !3048, !tbaa !3036
  ret void, !dbg !3049
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #22 !dbg !3050 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3054, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8 %1, metadata !3055, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i32 %2, metadata !3056, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8 %1, metadata !3057, metadata !DIExpression()), !dbg !3062
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3063
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3063
  %6 = lshr i8 %1, 5, !dbg !3064
  %7 = zext i8 %6 to i64, !dbg !3064
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !3065
  call void @llvm.dbg.value(metadata i32* %8, metadata !3058, metadata !DIExpression()), !dbg !3062
  %9 = and i8 %1, 31, !dbg !3066
  %10 = zext i8 %9 to i32, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %10, metadata !3060, metadata !DIExpression()), !dbg !3062
  %11 = load i32, i32* %8, align 4, !dbg !3067, !tbaa !850
  %12 = lshr i32 %11, %10, !dbg !3068
  %13 = and i32 %12, 1, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %13, metadata !3061, metadata !DIExpression()), !dbg !3062
  %14 = and i32 %2, 1, !dbg !3070
  %15 = xor i32 %13, %14, !dbg !3071
  %16 = shl i32 %15, %10, !dbg !3072
  %17 = xor i32 %16, %11, !dbg !3073
  store i32 %17, i32* %8, align 4, !dbg !3073, !tbaa !850
  ret i32 %13, !dbg !3074
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #22 !dbg !3075 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3079, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 %1, metadata !3080, metadata !DIExpression()), !dbg !3082
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3083
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3079, metadata !DIExpression()), !dbg !3082
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3086
  %6 = load i32, i32* %5, align 4, !dbg !3086, !tbaa !3087
  call void @llvm.dbg.value(metadata i32 %6, metadata !3081, metadata !DIExpression()), !dbg !3082
  store i32 %1, i32* %5, align 4, !dbg !3088, !tbaa !3087
  ret i32 %6, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3090 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3094, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i8* %1, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i8* %2, metadata !3096, metadata !DIExpression()), !dbg !3097
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3098
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3100
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3094, metadata !DIExpression()), !dbg !3097
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3101
  store i32 10, i32* %6, align 8, !dbg !3102, !tbaa !3036
  %7 = icmp ne i8* %1, null, !dbg !3103
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !3105
  br i1 %9, label %11, label %10, !dbg !3105

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !3106
  unreachable, !dbg !3106

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3107
  store i8* %1, i8** %12, align 8, !dbg !3108, !tbaa !3109
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3110
  store i8* %2, i8** %13, align 8, !dbg !3111, !tbaa !3112
  ret void, !dbg !3113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !3114 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3118, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %1, metadata !3119, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %2, metadata !3120, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %3, metadata !3121, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3122, metadata !DIExpression()), !dbg !3126
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !3127
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !3127
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !3123, metadata !DIExpression()), !dbg !3126
  %8 = tail call i32* @__errno_location() #33, !dbg !3128
  %9 = load i32, i32* %8, align 4, !dbg !3128, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %9, metadata !3124, metadata !DIExpression()), !dbg !3126
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3129
  %11 = load i32, i32* %10, align 8, !dbg !3129, !tbaa !3036
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3130
  %13 = load i32, i32* %12, align 4, !dbg !3130, !tbaa !3087
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3131
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3132
  %16 = load i8*, i8** %15, align 8, !dbg !3132, !tbaa !3109
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3133
  %18 = load i8*, i8** %17, align 8, !dbg !3133, !tbaa !3112
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %19, metadata !3125, metadata !DIExpression()), !dbg !3126
  store i32 %9, i32* %8, align 4, !dbg !3135, !tbaa !850
  ret i64 %19, !dbg !3136
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !3137 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3143, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %1, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %2, metadata !3145, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %3, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %4, metadata !3147, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %5, metadata !3148, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32* %6, metadata !3149, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %7, metadata !3150, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %8, metadata !3151, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 0, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 0, metadata !3154, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* null, metadata !3155, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 0, metadata !3156, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 0, metadata !3157, metadata !DIExpression()), !dbg !3213
  %13 = tail call i64 @__ctype_get_mb_cur_max() #29, !dbg !3214
  %14 = icmp eq i64 %13, 1, !dbg !3215
  call void @llvm.dbg.value(metadata i1 %14, metadata !3158, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3213
  %15 = lshr i32 %5, 1, !dbg !3216
  %16 = trunc i32 %15 to i8, !dbg !3216
  %17 = and i8 %16, 1, !dbg !3216
  call void @llvm.dbg.value(metadata i8 %17, metadata !3159, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 0, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 0, metadata !3161, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 1, metadata !3162, metadata !DIExpression()), !dbg !3213
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !3217

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !3218
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !3219
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !3220
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !3221
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !3213
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !3222
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !3223
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !3224
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %38, metadata !3162, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %37, metadata !3161, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %36, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %35, metadata !3159, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %34, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %33, metadata !3157, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %32, metadata !3156, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %31, metadata !3155, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %30, metadata !3154, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 0, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %29, metadata !3151, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %28, metadata !3150, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %27, metadata !3147, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.label(metadata !3207), !dbg !3225
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
  ], !dbg !3226

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !3159, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 5, metadata !3147, metadata !DIExpression()), !dbg !3213
  br label %92, !dbg !3227

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !3159, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 5, metadata !3147, metadata !DIExpression()), !dbg !3213
  %42 = and i8 %35, 1, !dbg !3229
  %43 = icmp eq i8 %42, 0, !dbg !3229
  br i1 %43, label %44, label %92, !dbg !3227

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !3231
  br i1 %45, label %92, label %46, !dbg !3234

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !3231, !tbaa !901
  br label %92, !dbg !3231

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 %27), !dbg !3235
  call void @llvm.dbg.value(metadata i8* %48, metadata !3150, metadata !DIExpression()), !dbg !3213
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 %27), !dbg !3239
  call void @llvm.dbg.value(metadata i8* %49, metadata !3151, metadata !DIExpression()), !dbg !3213
  br label %50, !dbg !3240

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !3151, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %51, metadata !3150, metadata !DIExpression()), !dbg !3213
  %53 = and i8 %35, 1, !dbg !3241
  %54 = icmp eq i8 %53, 0, !dbg !3241
  br i1 %54, label %55, label %70, !dbg !3243

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !3155, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 0, metadata !3153, metadata !DIExpression()), !dbg !3213
  %56 = load i8, i8* %51, align 1, !dbg !3244, !tbaa !901
  %57 = icmp eq i8 %56, 0, !dbg !3247
  br i1 %57, label %70, label %58, !dbg !3247

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !3155, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %61, metadata !3153, metadata !DIExpression()), !dbg !3213
  %62 = icmp ult i64 %61, %39, !dbg !3248
  br i1 %62, label %63, label %65, !dbg !3251

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !3248
  store i8 %59, i8* %64, align 1, !dbg !3248, !tbaa !901
  br label %65, !dbg !3248

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %66, metadata !3153, metadata !DIExpression()), !dbg !3213
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %67, metadata !3155, metadata !DIExpression()), !dbg !3213
  %68 = load i8, i8* %67, align 1, !dbg !3244, !tbaa !901
  %69 = icmp eq i8 %68, 0, !dbg !3247
  br i1 %69, label %70, label %58, !dbg !3247, !llvm.loop !3253

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !3255
  call void @llvm.dbg.value(metadata i64 %71, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 1, metadata !3157, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %52, metadata !3155, metadata !DIExpression()), !dbg !3213
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #30, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %72, metadata !3156, metadata !DIExpression()), !dbg !3213
  br label %92, !dbg !3257

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !3157, metadata !DIExpression()), !dbg !3213
  br label %74, !dbg !3258

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !3213
  call void @llvm.dbg.value(metadata i8 %75, metadata !3157, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 1, metadata !3159, metadata !DIExpression()), !dbg !3213
  br label %76, !dbg !3259

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !3221
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !3213
  call void @llvm.dbg.value(metadata i8 %78, metadata !3159, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %77, metadata !3157, metadata !DIExpression()), !dbg !3213
  %79 = and i8 %78, 1, !dbg !3260
  %80 = icmp eq i8 %79, 0, !dbg !3260
  %81 = select i1 %80, i8 1, i8 %77, !dbg !3262
  br label %82, !dbg !3262

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !3213
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !3216
  call void @llvm.dbg.value(metadata i8 %84, metadata !3159, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %83, metadata !3157, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 2, metadata !3147, metadata !DIExpression()), !dbg !3213
  %85 = and i8 %84, 1, !dbg !3263
  %86 = icmp eq i8 %85, 0, !dbg !3263
  br i1 %86, label %87, label %92, !dbg !3265

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !3266
  br i1 %88, label %92, label %89, !dbg !3269

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !3266, !tbaa !901
  br label %92, !dbg !3266

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !3159, metadata !DIExpression()), !dbg !3213
  br label %92, !dbg !3270

91:                                               ; preds = %26
  call void @abort() #31, !dbg !3271
  unreachable, !dbg !3271

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !3255
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %40 ], !dbg !3213
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !3213
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !3213
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !3213
  call void @llvm.dbg.value(metadata i8 %100, metadata !3159, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %99, metadata !3157, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %98, metadata !3156, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %97, metadata !3155, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %96, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %95, metadata !3151, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %94, metadata !3150, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %93, metadata !3147, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 0, metadata !3152, metadata !DIExpression()), !dbg !3213
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
  br label %121, !dbg !3272

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !3273
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !3255
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !3218
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !3222
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !3223
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !3224
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %128, metadata !3162, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %127, metadata !3161, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %126, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %125, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %124, metadata !3154, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %123, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %122, metadata !3152, metadata !DIExpression()), !dbg !3213
  %130 = icmp eq i64 %125, -1, !dbg !3274
  br i1 %130, label %131, label %135, !dbg !3275

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !3276
  %133 = load i8, i8* %132, align 1, !dbg !3276, !tbaa !901
  %134 = icmp eq i8 %133, 0, !dbg !3277
  br i1 %134, label %587, label %137, !dbg !3278

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !3279
  br i1 %136, label %587, label %137, !dbg !3278

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !3168, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 0, metadata !3169, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 0, metadata !3170, metadata !DIExpression()), !dbg !3280
  br i1 %106, label %138, label %153, !dbg !3281

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !3283
  %140 = and i1 %107, %130, !dbg !3284
  br i1 %140, label %141, label %143, !dbg !3284

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %142, metadata !3146, metadata !DIExpression()), !dbg !3213
  br label %143, !dbg !3286

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !3286
  call void @llvm.dbg.value(metadata i64 %144, metadata !3146, metadata !DIExpression()), !dbg !3213
  %145 = icmp ugt i64 %139, %144, !dbg !3287
  br i1 %145, label %153, label %146, !dbg !3288

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !3289
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !3290
  %149 = icmp ne i32 %148, 0, !dbg !3291
  %150 = or i1 %149, %109, !dbg !3292
  %151 = xor i1 %149, true, !dbg !3292
  %152 = zext i1 %151 to i8, !dbg !3292
  br i1 %150, label %153, label %646, !dbg !3292

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !3280
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !3280
  call void @llvm.dbg.value(metadata i8 %156, metadata !3168, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %154, metadata !3146, metadata !DIExpression()), !dbg !3213
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !3293
  %158 = load i8, i8* %157, align 1, !dbg !3293, !tbaa !901
  call void @llvm.dbg.value(metadata i8 %158, metadata !3163, metadata !DIExpression()), !dbg !3280
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
  ], !dbg !3294

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !3295

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !3296

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !3169, metadata !DIExpression()), !dbg !3280
  %162 = and i8 %126, 1, !dbg !3300
  %163 = icmp eq i8 %162, 0, !dbg !3300
  %164 = and i1 %110, %163, !dbg !3300
  br i1 %164, label %165, label %181, !dbg !3300

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !3302
  br i1 %166, label %167, label %169, !dbg !3306

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3302
  store i8 39, i8* %168, align 1, !dbg !3302, !tbaa !901
  br label %169, !dbg !3302

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %170, metadata !3153, metadata !DIExpression()), !dbg !3213
  %171 = icmp ult i64 %170, %129, !dbg !3307
  br i1 %171, label %172, label %174, !dbg !3310

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !3307
  store i8 36, i8* %173, align 1, !dbg !3307, !tbaa !901
  br label %174, !dbg !3307

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !3310
  call void @llvm.dbg.value(metadata i64 %175, metadata !3153, metadata !DIExpression()), !dbg !3213
  %176 = icmp ult i64 %175, %129, !dbg !3311
  br i1 %176, label %177, label %179, !dbg !3314

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !3311
  store i8 39, i8* %178, align 1, !dbg !3311, !tbaa !901
  br label %179, !dbg !3311

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !3314
  call void @llvm.dbg.value(metadata i64 %180, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 1, metadata !3160, metadata !DIExpression()), !dbg !3213
  br label %181, !dbg !3315

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !3213
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !3213
  call void @llvm.dbg.value(metadata i8 %183, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %182, metadata !3153, metadata !DIExpression()), !dbg !3213
  %184 = icmp ult i64 %182, %129, !dbg !3316
  br i1 %184, label %185, label %187, !dbg !3319

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !3316
  store i8 92, i8* %186, align 1, !dbg !3316, !tbaa !901
  br label %187, !dbg !3316

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %188, metadata !3153, metadata !DIExpression()), !dbg !3213
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !3320
  br i1 %191, label %192, label %473, !dbg !3320

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !3322
  %194 = load i8, i8* %193, align 1, !dbg !3322, !tbaa !901
  %195 = add i8 %194, -48, !dbg !3323
  %196 = icmp ult i8 %195, 10, !dbg !3323
  br i1 %196, label %197, label %473, !dbg !3323

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !3324
  br i1 %198, label %199, label %201, !dbg !3328

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !3324
  store i8 48, i8* %200, align 1, !dbg !3324, !tbaa !901
  br label %201, !dbg !3324

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %202, metadata !3153, metadata !DIExpression()), !dbg !3213
  %203 = icmp ult i64 %202, %129, !dbg !3329
  br i1 %203, label %204, label %206, !dbg !3332

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !3329
  store i8 48, i8* %205, align 1, !dbg !3329, !tbaa !901
  br label %206, !dbg !3329

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %207, metadata !3153, metadata !DIExpression()), !dbg !3213
  br label %473, !dbg !3333

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !3334

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !3335

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !3336

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !3338
  br i1 %214, label %215, label %473, !dbg !3338

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !3340
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !3341
  %218 = load i8, i8* %217, align 1, !dbg !3341, !tbaa !901
  %219 = icmp eq i8 %218, 63, !dbg !3342
  br i1 %219, label %220, label %473, !dbg !3343

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !3344
  %222 = load i8, i8* %221, align 1, !dbg !3344, !tbaa !901
  %223 = sext i8 %222 to i32, !dbg !3344
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
  ], !dbg !3345

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !3346

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !3163, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 undef, metadata !3152, metadata !DIExpression()), !dbg !3213
  %226 = icmp ult i64 %123, %129, !dbg !3348
  br i1 %226, label %227, label %229, !dbg !3351

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3348
  store i8 63, i8* %228, align 1, !dbg !3348, !tbaa !901
  br label %229, !dbg !3348

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %230, metadata !3153, metadata !DIExpression()), !dbg !3213
  %231 = icmp ult i64 %230, %129, !dbg !3352
  br i1 %231, label %232, label %234, !dbg !3355

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !3352
  store i8 34, i8* %233, align 1, !dbg !3352, !tbaa !901
  br label %234, !dbg !3352

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %235, metadata !3153, metadata !DIExpression()), !dbg !3213
  %236 = icmp ult i64 %235, %129, !dbg !3356
  br i1 %236, label %237, label %239, !dbg !3359

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !3356
  store i8 34, i8* %238, align 1, !dbg !3356, !tbaa !901
  br label %239, !dbg !3356

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %240, metadata !3153, metadata !DIExpression()), !dbg !3213
  %241 = icmp ult i64 %240, %129, !dbg !3360
  br i1 %241, label %242, label %244, !dbg !3363

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !3360
  store i8 63, i8* %243, align 1, !dbg !3360, !tbaa !901
  br label %244, !dbg !3360

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %245, metadata !3153, metadata !DIExpression()), !dbg !3213
  br label %473, !dbg !3364

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !3167, metadata !DIExpression()), !dbg !3280
  br label %256, !dbg !3365

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !3167, metadata !DIExpression()), !dbg !3280
  br label %256, !dbg !3366

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !3167, metadata !DIExpression()), !dbg !3280
  br label %254, !dbg !3367

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !3167, metadata !DIExpression()), !dbg !3280
  br label %254, !dbg !3368

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !3167, metadata !DIExpression()), !dbg !3280
  br label %256, !dbg !3369

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !3167, metadata !DIExpression()), !dbg !3280
  br i1 %110, label %252, label %253, !dbg !3370

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !3371

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !3374

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !3376
  call void @llvm.dbg.value(metadata i8 %255, metadata !3167, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.label(metadata !3208), !dbg !3377
  br i1 %111, label %256, label %631, !dbg !3378

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !3376
  call void @llvm.dbg.value(metadata i8 %257, metadata !3167, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.label(metadata !3209), !dbg !3380
  br i1 %102, label %495, label %473, !dbg !3381

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !3382

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !3383, !tbaa !901
  %261 = icmp eq i8 %260, 0, !dbg !3385
  br i1 %261, label %262, label %473, !dbg !3386

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !3387
  br i1 %263, label %264, label %473, !dbg !3389

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !3170, metadata !DIExpression()), !dbg !3280
  br label %265, !dbg !3390

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !3280
  call void @llvm.dbg.value(metadata i8 %266, metadata !3170, metadata !DIExpression()), !dbg !3280
  br i1 %111, label %473, label %631, !dbg !3391

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !3161, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 1, metadata !3170, metadata !DIExpression()), !dbg !3280
  br i1 %110, label %268, label %473, !dbg !3393

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !3394

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !3397
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !3399
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !3399
  %274 = select i1 %272, i64 %129, i64 0, !dbg !3399
  call void @llvm.dbg.value(metadata i64 %274, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %273, metadata !3154, metadata !DIExpression()), !dbg !3213
  %275 = icmp ult i64 %123, %274, !dbg !3400
  br i1 %275, label %276, label %278, !dbg !3403

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3400
  store i8 39, i8* %277, align 1, !dbg !3400, !tbaa !901
  br label %278, !dbg !3400

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %279, metadata !3153, metadata !DIExpression()), !dbg !3213
  %280 = icmp ult i64 %279, %274, !dbg !3404
  br i1 %280, label %281, label %283, !dbg !3407

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !3404
  store i8 92, i8* %282, align 1, !dbg !3404, !tbaa !901
  br label %283, !dbg !3404

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %284, metadata !3153, metadata !DIExpression()), !dbg !3213
  %285 = icmp ult i64 %284, %274, !dbg !3408
  br i1 %285, label %286, label %288, !dbg !3411

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !3408
  store i8 39, i8* %287, align 1, !dbg !3408, !tbaa !901
  br label %288, !dbg !3408

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %289, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 0, metadata !3160, metadata !DIExpression()), !dbg !3213
  br label %473, !dbg !3412

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !3413

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !3171, metadata !DIExpression()), !dbg !3414
  %292 = tail call i16** @__ctype_b_loc() #33, !dbg !3415
  %293 = load i16*, i16** %292, align 8, !dbg !3415, !tbaa !682
  %294 = zext i8 %158 to i64, !dbg !3415
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !3415
  %296 = load i16, i16* %295, align 2, !dbg !3415, !tbaa !3417
  %297 = lshr i16 %296, 14, !dbg !3418
  %298 = trunc i16 %297 to i8, !dbg !3418
  %299 = and i8 %298, 1, !dbg !3418
  call void @llvm.dbg.value(metadata i8 %354, metadata !3174, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %355, metadata !3171, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %306, metadata !3146, metadata !DIExpression()), !dbg !3213
  %300 = icmp eq i8 %299, 0, !dbg !3419
  call void @llvm.dbg.value(metadata i1 %357, metadata !3170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3280
  br label %359, !dbg !3420

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #29, !dbg !3421
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !3175, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i8* %23, metadata !3423, metadata !DIExpression()) #29, !dbg !3430
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()) #29, !dbg !3430
  call void @llvm.dbg.value(metadata i64 8, metadata !3429, metadata !DIExpression()) #29, !dbg !3430
  store i64 0, i64* %10, align 8, !dbg !3432
  call void @llvm.dbg.value(metadata i64 0, metadata !3171, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 1, metadata !3174, metadata !DIExpression()), !dbg !3414
  %302 = icmp eq i64 %154, -1, !dbg !3433
  br i1 %302, label %303, label %305, !dbg !3435

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %304, metadata !3146, metadata !DIExpression()), !dbg !3213
  br label %305, !dbg !3437

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !3280
  call void @llvm.dbg.value(metadata i64 %306, metadata !3146, metadata !DIExpression()), !dbg !3213
  br label %307, !dbg !3438

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !3439
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !3440
  call void @llvm.dbg.value(metadata i8 %309, metadata !3174, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %308, metadata !3171, metadata !DIExpression()), !dbg !3414
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #29, !dbg !3441
  %310 = add i64 %308, %122, !dbg !3442
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !3443
  %312 = sub i64 %306, %310, !dbg !3444
  call void @llvm.dbg.value(metadata i32* %12, metadata !3193, metadata !DIExpression(DW_OP_deref)), !dbg !3445
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #29, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %313, metadata !3196, metadata !DIExpression()), !dbg !3445
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !3447

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !3171, metadata !DIExpression()), !dbg !3414
  %315 = icmp ugt i64 %306, %310, !dbg !3448
  br i1 %315, label %316, label %341, !dbg !3450

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !3451
  br label %318, !dbg !3451

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !3171, metadata !DIExpression()), !dbg !3414
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !3452
  %322 = load i8, i8* %321, align 1, !dbg !3452, !tbaa !901
  %323 = icmp eq i8 %322, 0, !dbg !3450
  br i1 %323, label %341, label %324, !dbg !3451

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %325, metadata !3171, metadata !DIExpression()), !dbg !3414
  %326 = add i64 %325, %122, !dbg !3454
  %327 = icmp ult i64 %326, %306, !dbg !3448
  br i1 %327, label %318, label %341, !dbg !3450, !llvm.loop !3455

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !3456
  call void @llvm.dbg.value(metadata i64 1, metadata !3197, metadata !DIExpression()), !dbg !3457
  br i1 %330, label %331, label %344, !dbg !3456

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !3197, metadata !DIExpression()), !dbg !3457
  %333 = add i64 %332, %310, !dbg !3458
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !3461
  %335 = load i8, i8* %334, align 1, !dbg !3461, !tbaa !901
  %336 = sext i8 %335 to i32, !dbg !3461
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !3462

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !3463
  call void @llvm.dbg.value(metadata i64 %338, metadata !3197, metadata !DIExpression()), !dbg !3457
  %339 = icmp eq i64 %338, %313, !dbg !3464
  br i1 %339, label %344, label %331, !dbg !3465, !llvm.loop !3466

340:                                              ; preds = %307
  br label %341, !dbg !3468

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !3174, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 undef, metadata !3171, metadata !DIExpression()), !dbg !3414
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !3468
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !3469, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %345, metadata !3193, metadata !DIExpression()), !dbg !3445
  %346 = call i32 @iswprint(i32 %345) #29, !dbg !3471
  %347 = icmp eq i32 %346, 0, !dbg !3471
  %348 = select i1 %347, i8 0, i8 %309, !dbg !3472
  call void @llvm.dbg.value(metadata i8 %348, metadata !3174, metadata !DIExpression()), !dbg !3414
  %349 = add i64 %313, %308, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %349, metadata !3171, metadata !DIExpression()), !dbg !3414
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !3468
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #30, !dbg !3474
  %351 = icmp eq i32 %350, 0, !dbg !3475
  br i1 %351, label %307, label %353, !dbg !3476, !llvm.loop !3477

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !3174, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 undef, metadata !3171, metadata !DIExpression()), !dbg !3414
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !3468
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !3479
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !3479
  call void @llvm.dbg.value(metadata i8 %354, metadata !3174, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %355, metadata !3171, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %306, metadata !3146, metadata !DIExpression()), !dbg !3213
  %356 = and i8 %354, 1, !dbg !3419
  %357 = icmp eq i8 %356, 0, !dbg !3419
  call void @llvm.dbg.value(metadata i1 %357, metadata !3170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3280
  %358 = icmp ugt i64 %355, 1, !dbg !3480
  br i1 %358, label %367, label %359, !dbg !3420

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !3481
  br i1 %364, label %367, label %365, !dbg !3481

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !3280
  call void @llvm.dbg.value(metadata i8 %472, metadata !3170, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %441, metadata !3169, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %440, metadata !3168, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %439, metadata !3163, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %438, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %371, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %437, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %375, metadata !3152, metadata !DIExpression()), !dbg !3213
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %372, metadata !3204, metadata !DIExpression()), !dbg !3483
  %373 = and i1 %102, %368
  br label %374, !dbg !3484

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !3273
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !3213
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !3222
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !3280
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !3280
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !3485
  call void @llvm.dbg.value(metadata i8 %380, metadata !3169, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %379, metadata !3168, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %378, metadata !3163, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %377, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %376, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %375, metadata !3152, metadata !DIExpression()), !dbg !3213
  br i1 %373, label %381, label %427, !dbg !3486

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !3491

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !3169, metadata !DIExpression()), !dbg !3280
  %383 = and i8 %377, 1, !dbg !3494
  %384 = icmp eq i8 %383, 0, !dbg !3494
  %385 = and i1 %110, %384, !dbg !3494
  br i1 %385, label %386, label %402, !dbg !3494

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !3496
  br i1 %387, label %388, label %390, !dbg !3500

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !3496
  store i8 39, i8* %389, align 1, !dbg !3496, !tbaa !901
  br label %390, !dbg !3496

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !3500
  call void @llvm.dbg.value(metadata i64 %391, metadata !3153, metadata !DIExpression()), !dbg !3213
  %392 = icmp ult i64 %391, %129, !dbg !3501
  br i1 %392, label %393, label %395, !dbg !3504

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !3501
  store i8 36, i8* %394, align 1, !dbg !3501, !tbaa !901
  br label %395, !dbg !3501

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !3504
  call void @llvm.dbg.value(metadata i64 %396, metadata !3153, metadata !DIExpression()), !dbg !3213
  %397 = icmp ult i64 %396, %129, !dbg !3505
  br i1 %397, label %398, label %400, !dbg !3508

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3505
  store i8 39, i8* %399, align 1, !dbg !3505, !tbaa !901
  br label %400, !dbg !3505

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %401, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 1, metadata !3160, metadata !DIExpression()), !dbg !3213
  br label %402, !dbg !3509

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !3213
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !3213
  call void @llvm.dbg.value(metadata i8 %404, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %403, metadata !3153, metadata !DIExpression()), !dbg !3213
  %405 = icmp ult i64 %403, %129, !dbg !3510
  br i1 %405, label %406, label %408, !dbg !3513

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !3510
  store i8 92, i8* %407, align 1, !dbg !3510, !tbaa !901
  br label %408, !dbg !3510

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %409, metadata !3153, metadata !DIExpression()), !dbg !3213
  %410 = icmp ult i64 %409, %129, !dbg !3514
  br i1 %410, label %411, label %415, !dbg !3517

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !3514
  %413 = or i8 %412, 48, !dbg !3514
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !3514
  store i8 %413, i8* %414, align 1, !dbg !3514, !tbaa !901
  br label %415, !dbg !3514

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !3517
  call void @llvm.dbg.value(metadata i64 %416, metadata !3153, metadata !DIExpression()), !dbg !3213
  %417 = icmp ult i64 %416, %129, !dbg !3518
  br i1 %417, label %418, label %423, !dbg !3521

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !3518
  %420 = and i8 %419, 7, !dbg !3518
  %421 = or i8 %420, 48, !dbg !3518
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !3518
  store i8 %421, i8* %422, align 1, !dbg !3518, !tbaa !901
  br label %423, !dbg !3518

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !3521
  call void @llvm.dbg.value(metadata i64 %424, metadata !3153, metadata !DIExpression()), !dbg !3213
  %425 = and i8 %378, 7, !dbg !3522
  %426 = or i8 %425, 48, !dbg !3523
  call void @llvm.dbg.value(metadata i8 %426, metadata !3163, metadata !DIExpression()), !dbg !3280
  br label %436, !dbg !3524

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !3525
  %429 = icmp eq i8 %428, 0, !dbg !3525
  br i1 %429, label %436, label %430, !dbg !3527

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !3528
  br i1 %431, label %432, label %434, !dbg !3532

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !3528
  store i8 92, i8* %433, align 1, !dbg !3528, !tbaa !901
  br label %434, !dbg !3528

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %435, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 0, metadata !3168, metadata !DIExpression()), !dbg !3280
  br label %436, !dbg !3533

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !3213
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !3222
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !3280
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !3280
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !3280
  call void @llvm.dbg.value(metadata i8 %441, metadata !3169, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %440, metadata !3168, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %439, metadata !3163, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %438, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %437, metadata !3153, metadata !DIExpression()), !dbg !3213
  %442 = add i64 %375, 1, !dbg !3534
  %443 = icmp ugt i64 %372, %442, !dbg !3536
  br i1 %443, label %444, label %471, !dbg !3537

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !3538
  %446 = icmp ne i8 %445, 0, !dbg !3538
  %447 = and i8 %441, 1, !dbg !3538
  %448 = icmp eq i8 %447, 0, !dbg !3538
  %449 = and i1 %446, %448, !dbg !3538
  br i1 %449, label %450, label %461, !dbg !3538

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !3541
  br i1 %451, label %452, label %454, !dbg !3545

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !3541
  store i8 39, i8* %453, align 1, !dbg !3541, !tbaa !901
  br label %454, !dbg !3541

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !3545
  call void @llvm.dbg.value(metadata i64 %455, metadata !3153, metadata !DIExpression()), !dbg !3213
  %456 = icmp ult i64 %455, %129, !dbg !3546
  br i1 %456, label %457, label %459, !dbg !3549

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !3546
  store i8 39, i8* %458, align 1, !dbg !3546, !tbaa !901
  br label %459, !dbg !3546

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !3549
  call void @llvm.dbg.value(metadata i64 %460, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 0, metadata !3160, metadata !DIExpression()), !dbg !3213
  br label %461, !dbg !3550

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !3551
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !3213
  call void @llvm.dbg.value(metadata i8 %463, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %462, metadata !3153, metadata !DIExpression()), !dbg !3213
  %464 = icmp ult i64 %462, %129, !dbg !3552
  br i1 %464, label %465, label %467, !dbg !3555

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !3552
  store i8 %439, i8* %466, align 1, !dbg !3552, !tbaa !901
  br label %467, !dbg !3552

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %468, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %442, metadata !3152, metadata !DIExpression()), !dbg !3213
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !3556
  %470 = load i8, i8* %469, align 1, !dbg !3556, !tbaa !901
  call void @llvm.dbg.value(metadata i8 %470, metadata !3163, metadata !DIExpression()), !dbg !3280
  br label %374, !dbg !3557, !llvm.loop !3558

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !3280
  call void @llvm.dbg.value(metadata i8 %472, metadata !3170, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %441, metadata !3169, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %440, metadata !3168, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %439, metadata !3163, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %438, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %371, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %437, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %375, metadata !3152, metadata !DIExpression()), !dbg !3213
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !3273
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !3213
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !3218
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !3561
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !3213
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !3213
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !3280
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !3280
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !3280
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %482, metadata !3170, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %481, metadata !3169, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %156, metadata !3168, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %480, metadata !3163, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %479, metadata !3161, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %478, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %477, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %476, metadata !3154, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %475, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %474, metadata !3152, metadata !DIExpression()), !dbg !3213
  br i1 %116, label %494, label %484, !dbg !3562

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !3564
  %486 = zext i8 %485 to i64, !dbg !3564
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !3565
  %488 = load i32, i32* %487, align 4, !dbg !3565, !tbaa !850
  %489 = and i8 %480, 31, !dbg !3566
  %490 = zext i8 %489 to i32, !dbg !3566
  %491 = shl nuw i32 1, %490, !dbg !3567
  %492 = and i32 %488, %491, !dbg !3567
  %493 = icmp eq i32 %492, 0, !dbg !3567
  br i1 %493, label %494, label %495, !dbg !3568

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !3569

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !3570
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !3213
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !3218
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !3561
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !3222
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !3223
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !3280
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !3280
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %503, metadata !3170, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %502, metadata !3163, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %501, metadata !3161, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %500, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %499, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %498, metadata !3154, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %497, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %496, metadata !3152, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.label(metadata !3210), !dbg !3571
  br i1 %109, label %505, label %635, !dbg !3572

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !3169, metadata !DIExpression()), !dbg !3280
  %506 = and i8 %500, 1, !dbg !3574
  %507 = icmp eq i8 %506, 0, !dbg !3574
  %508 = and i1 %110, %507, !dbg !3574
  br i1 %508, label %509, label %525, !dbg !3574

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !3576
  br i1 %510, label %511, label %513, !dbg !3580

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !3576
  store i8 39, i8* %512, align 1, !dbg !3576, !tbaa !901
  br label %513, !dbg !3576

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %514, metadata !3153, metadata !DIExpression()), !dbg !3213
  %515 = icmp ult i64 %514, %504, !dbg !3581
  br i1 %515, label %516, label %518, !dbg !3584

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !3581
  store i8 36, i8* %517, align 1, !dbg !3581, !tbaa !901
  br label %518, !dbg !3581

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %519, metadata !3153, metadata !DIExpression()), !dbg !3213
  %520 = icmp ult i64 %519, %504, !dbg !3585
  br i1 %520, label %521, label %523, !dbg !3588

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3585
  store i8 39, i8* %522, align 1, !dbg !3585, !tbaa !901
  br label %523, !dbg !3585

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !3588
  call void @llvm.dbg.value(metadata i64 %524, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 1, metadata !3160, metadata !DIExpression()), !dbg !3213
  br label %525, !dbg !3589

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !3280
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !3213
  call void @llvm.dbg.value(metadata i8 %527, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %526, metadata !3153, metadata !DIExpression()), !dbg !3213
  %528 = icmp ult i64 %526, %504, !dbg !3590
  br i1 %528, label %529, label %531, !dbg !3593

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3590
  store i8 92, i8* %530, align 1, !dbg !3590, !tbaa !901
  br label %531, !dbg !3590

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %543, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %542, metadata !3170, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %541, metadata !3169, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %540, metadata !3163, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %539, metadata !3161, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %538, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %537, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %536, metadata !3154, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %535, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %534, metadata !3152, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.label(metadata !3211), !dbg !3594
  br label %560, !dbg !3595

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !3570
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !3213
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !3218
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !3561
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !3222
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !3223
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !3598
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !3280
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !3280
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %542, metadata !3170, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %541, metadata !3169, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %540, metadata !3163, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %539, metadata !3161, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %538, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %537, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %536, metadata !3154, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %535, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %534, metadata !3152, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.label(metadata !3211), !dbg !3594
  %544 = and i8 %538, 1, !dbg !3595
  %545 = icmp ne i8 %544, 0, !dbg !3595
  %546 = and i8 %541, 1, !dbg !3595
  %547 = icmp eq i8 %546, 0, !dbg !3595
  %548 = and i1 %545, %547, !dbg !3595
  br i1 %548, label %549, label %560, !dbg !3595

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !3599
  br i1 %550, label %551, label %553, !dbg !3603

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !3599
  store i8 39, i8* %552, align 1, !dbg !3599, !tbaa !901
  br label %553, !dbg !3599

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %554, metadata !3153, metadata !DIExpression()), !dbg !3213
  %555 = icmp ult i64 %554, %543, !dbg !3604
  br i1 %555, label %556, label %558, !dbg !3607

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !3604
  store i8 39, i8* %557, align 1, !dbg !3604, !tbaa !901
  br label %558, !dbg !3604

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %559, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 0, metadata !3160, metadata !DIExpression()), !dbg !3213
  br label %560, !dbg !3608

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !3280
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !3213
  call void @llvm.dbg.value(metadata i8 %569, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %568, metadata !3153, metadata !DIExpression()), !dbg !3213
  %570 = icmp ult i64 %568, %561, !dbg !3609
  br i1 %570, label %571, label %573, !dbg !3612

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !3609
  store i8 %563, i8* %572, align 1, !dbg !3609, !tbaa !901
  br label %573, !dbg !3609

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 %574, metadata !3153, metadata !DIExpression()), !dbg !3213
  %575 = icmp eq i8 %562, 0, !dbg !3613
  %576 = select i1 %575, i8 0, i8 %128, !dbg !3615
  call void @llvm.dbg.value(metadata i8 %576, metadata !3162, metadata !DIExpression()), !dbg !3213
  br label %577, !dbg !3616

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !3570
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !3213
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !3218
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !3561
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !3222
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !3213
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !3224
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %584, metadata !3162, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %583, metadata !3161, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8 %582, metadata !3160, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %581, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %580, metadata !3154, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %579, metadata !3153, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %578, metadata !3152, metadata !DIExpression()), !dbg !3213
  %586 = add i64 %578, 1, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %586, metadata !3152, metadata !DIExpression()), !dbg !3213
  br label %121, !dbg !3618, !llvm.loop !3619

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !3621
  %590 = and i1 %110, %589, !dbg !3623
  %591 = xor i1 %590, true, !dbg !3623
  %592 = or i1 %109, %591, !dbg !3623
  br i1 %592, label %593, label %635, !dbg !3623

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !3624
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !3624
  br i1 %597, label %598, label %607, !dbg !3624

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !3626
  %600 = icmp eq i8 %599, 0, !dbg !3626
  br i1 %600, label %603, label %601, !dbg !3629

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3630
  br label %652, !dbg !3631

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !3632
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !3634
  br i1 %606, label %26, label %607, !dbg !3634

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !3635
  %610 = and i1 %609, %608, !dbg !3637
  br i1 %610, label %611, label %626, !dbg !3637

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !3155, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %123, metadata !3153, metadata !DIExpression()), !dbg !3213
  %612 = load i8, i8* %97, align 1, !dbg !3638, !tbaa !901
  %613 = icmp eq i8 %612, 0, !dbg !3641
  br i1 %613, label %626, label %614, !dbg !3641

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !3155, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %617, metadata !3153, metadata !DIExpression()), !dbg !3213
  %618 = icmp ult i64 %617, %129, !dbg !3642
  br i1 %618, label %619, label %621, !dbg !3645

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !3642
  store i8 %615, i8* %620, align 1, !dbg !3642, !tbaa !901
  br label %621, !dbg !3642

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %622, metadata !3153, metadata !DIExpression()), !dbg !3213
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %623, metadata !3155, metadata !DIExpression()), !dbg !3213
  %624 = load i8, i8* %623, align 1, !dbg !3638, !tbaa !901
  %625 = icmp eq i8 %624, 0, !dbg !3641
  br i1 %625, label %626, label %614, !dbg !3641, !llvm.loop !3647

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !3255
  call void @llvm.dbg.value(metadata i64 %627, metadata !3153, metadata !DIExpression()), !dbg !3213
  %628 = icmp ult i64 %627, %129, !dbg !3649
  br i1 %628, label %629, label %652, !dbg !3651

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !3652
  store i8 0, i8* %630, align 1, !dbg !3653, !tbaa !901
  br label %652, !dbg !3652

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %637, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.label(metadata !3212), !dbg !3654
  %633 = icmp eq i8 %101, 0, !dbg !3655
  %634 = select i1 %633, i32 2, i32 4, !dbg !3655
  br label %642, !dbg !3655

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !3144, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %637, metadata !3146, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.label(metadata !3212), !dbg !3654
  %639 = icmp eq i32 %93, 2, !dbg !3657
  %640 = icmp eq i8 %636, 0, !dbg !3655
  %641 = select i1 %640, i32 2, i32 4, !dbg !3655
  br i1 %639, label %642, label %646, !dbg !3655

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !3655

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !3147, metadata !DIExpression()), !dbg !3213
  %650 = and i32 %5, -3, !dbg !3658
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !3659
  br label %652, !dbg !3660

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !3661
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3662 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3666, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %1, metadata !3667, metadata !DIExpression()), !dbg !3670
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #29, !dbg !3671
  call void @llvm.dbg.value(metadata i8* %3, metadata !3668, metadata !DIExpression()), !dbg !3670
  %4 = icmp eq i8* %3, %0, !dbg !3672
  br i1 %4, label %5, label %72, !dbg !3674

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #29, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %6, metadata !3669, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8* %6, metadata !3676, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8* undef, metadata !3682, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 85, metadata !3683, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 84, metadata !3684, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 70, metadata !3685, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 45, metadata !3686, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 56, metadata !3687, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 0, metadata !3688, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 0, metadata !3689, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 0, metadata !3690, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 0, metadata !3691, metadata !DIExpression()), !dbg !3692
  %7 = load i8, i8* %6, align 1, !dbg !3695, !tbaa !901
  %8 = and i8 %7, -33, !dbg !3695
  %9 = sext i8 %8 to i32, !dbg !3695
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !3695

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3697, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8* undef, metadata !3702, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8 84, metadata !3703, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8 70, metadata !3704, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8 45, metadata !3705, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8 56, metadata !3706, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8 0, metadata !3707, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8 0, metadata !3708, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8 0, metadata !3709, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8 0, metadata !3710, metadata !DIExpression()), !dbg !3711
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3715
  %12 = load i8, i8* %11, align 1, !dbg !3715, !tbaa !901
  %13 = and i8 %12, -33, !dbg !3715
  %14 = icmp eq i8 %13, 84, !dbg !3715
  br i1 %14, label %15, label %69, !dbg !3715

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !3717, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8* undef, metadata !3722, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 70, metadata !3723, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 45, metadata !3724, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 56, metadata !3725, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 0, metadata !3726, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 0, metadata !3727, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 0, metadata !3728, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 0, metadata !3729, metadata !DIExpression()), !dbg !3730
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3734
  %17 = load i8, i8* %16, align 1, !dbg !3734, !tbaa !901
  %18 = and i8 %17, -33, !dbg !3734
  %19 = icmp eq i8 %18, 70, !dbg !3734
  br i1 %19, label %20, label %69, !dbg !3734

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !3736, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8* undef, metadata !3741, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8 45, metadata !3742, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8 56, metadata !3743, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8 0, metadata !3744, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8 0, metadata !3745, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8 0, metadata !3746, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8 0, metadata !3747, metadata !DIExpression()), !dbg !3748
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3752
  %22 = load i8, i8* %21, align 1, !dbg !3752, !tbaa !901
  %23 = icmp eq i8 %22, 45, !dbg !3752
  br i1 %23, label %24, label %69, !dbg !3754

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !3755, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8* undef, metadata !3760, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8 56, metadata !3761, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8 0, metadata !3762, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8 0, metadata !3763, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8 0, metadata !3764, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8 0, metadata !3765, metadata !DIExpression()), !dbg !3766
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3770
  %26 = load i8, i8* %25, align 1, !dbg !3770, !tbaa !901
  %27 = icmp eq i8 %26, 56, !dbg !3770
  br i1 %27, label %28, label %69, !dbg !3772

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !3773, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8* undef, metadata !3778, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8 0, metadata !3779, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8 0, metadata !3780, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8 0, metadata !3781, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8 0, metadata !3782, metadata !DIExpression()), !dbg !3783
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3787
  %30 = load i8, i8* %29, align 1, !dbg !3787, !tbaa !901
  %31 = icmp eq i8 %30, 0, !dbg !3787
  br i1 %31, label %32, label %69, !dbg !3789

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !3790, !tbaa !901
  %34 = icmp eq i8 %33, 96, !dbg !3791
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.97, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.98, i64 0, i64 0), !dbg !3790
  br label %72, !dbg !3792

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3697, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8* undef, metadata !3702, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 66, metadata !3703, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 49, metadata !3704, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 56, metadata !3705, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 48, metadata !3706, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 51, metadata !3707, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 48, metadata !3708, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 0, metadata !3709, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 0, metadata !3710, metadata !DIExpression()), !dbg !3793
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3797
  %38 = load i8, i8* %37, align 1, !dbg !3797, !tbaa !901
  %39 = and i8 %38, -33, !dbg !3797
  %40 = icmp eq i8 %39, 66, !dbg !3797
  br i1 %40, label %41, label %69, !dbg !3797

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !3717, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8* undef, metadata !3722, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 49, metadata !3723, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 56, metadata !3724, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 48, metadata !3725, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 51, metadata !3726, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 48, metadata !3727, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 0, metadata !3728, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 0, metadata !3729, metadata !DIExpression()), !dbg !3798
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3800
  %43 = load i8, i8* %42, align 1, !dbg !3800, !tbaa !901
  %44 = icmp eq i8 %43, 49, !dbg !3800
  br i1 %44, label %45, label %69, !dbg !3801

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !3736, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8* undef, metadata !3741, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8 56, metadata !3742, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8 48, metadata !3743, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8 51, metadata !3744, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8 48, metadata !3745, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8 0, metadata !3746, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8 0, metadata !3747, metadata !DIExpression()), !dbg !3802
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3804
  %47 = load i8, i8* %46, align 1, !dbg !3804, !tbaa !901
  %48 = icmp eq i8 %47, 56, !dbg !3804
  br i1 %48, label %49, label %69, !dbg !3805

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !3755, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8* undef, metadata !3760, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8 48, metadata !3761, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8 51, metadata !3762, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8 48, metadata !3763, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8 0, metadata !3764, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8 0, metadata !3765, metadata !DIExpression()), !dbg !3806
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3808
  %51 = load i8, i8* %50, align 1, !dbg !3808, !tbaa !901
  %52 = icmp eq i8 %51, 48, !dbg !3808
  br i1 %52, label %53, label %69, !dbg !3809

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !3773, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8* undef, metadata !3778, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 51, metadata !3779, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 48, metadata !3780, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 0, metadata !3781, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 0, metadata !3782, metadata !DIExpression()), !dbg !3810
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3812
  %55 = load i8, i8* %54, align 1, !dbg !3812, !tbaa !901
  %56 = icmp eq i8 %55, 51, !dbg !3812
  br i1 %56, label %57, label %69, !dbg !3813

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !3814, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8* undef, metadata !3819, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8 48, metadata !3820, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8 0, metadata !3821, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8 0, metadata !3822, metadata !DIExpression()), !dbg !3823
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3827
  %59 = load i8, i8* %58, align 1, !dbg !3827, !tbaa !901
  %60 = icmp eq i8 %59, 48, !dbg !3827
  br i1 %60, label %61, label %69, !dbg !3829

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !3830, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8* undef, metadata !3835, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 0, metadata !3836, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 0, metadata !3837, metadata !DIExpression()), !dbg !3838
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3842
  %63 = load i8, i8* %62, align 1, !dbg !3842, !tbaa !901
  %64 = icmp eq i8 %63, 0, !dbg !3842
  br i1 %64, label %65, label %69, !dbg !3844

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !3845, !tbaa !901
  %67 = icmp eq i8 %66, 96, !dbg !3846
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.100, i64 0, i64 0), !dbg !3845
  br label %72, !dbg !3847

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !3848
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !3849
  br label %72, !dbg !3850

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !3670
  ret i8* %73, !dbg !3851
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !3852 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !3856 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3866, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 %1, metadata !3867, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3868, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i8* %0, metadata !3870, metadata !DIExpression()) #29, !dbg !3883
  call void @llvm.dbg.value(metadata i64 %1, metadata !3875, metadata !DIExpression()) #29, !dbg !3883
  call void @llvm.dbg.value(metadata i64* null, metadata !3876, metadata !DIExpression()) #29, !dbg !3883
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3877, metadata !DIExpression()) #29, !dbg !3883
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3885
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3885
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3878, metadata !DIExpression()) #29, !dbg !3883
  %6 = tail call i32* @__errno_location() #33, !dbg !3886
  %7 = load i32, i32* %6, align 4, !dbg !3886, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %7, metadata !3879, metadata !DIExpression()) #29, !dbg !3883
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3887
  %9 = load i32, i32* %8, align 4, !dbg !3887, !tbaa !3087
  %10 = or i32 %9, 1, !dbg !3888
  call void @llvm.dbg.value(metadata i32 %10, metadata !3880, metadata !DIExpression()) #29, !dbg !3883
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3889
  %12 = load i32, i32* %11, align 8, !dbg !3889, !tbaa !3036
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3890
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3891
  %15 = load i8*, i8** %14, align 8, !dbg !3891, !tbaa !3109
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3892
  %17 = load i8*, i8** %16, align 8, !dbg !3892, !tbaa !3112
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #29, !dbg !3893
  %19 = add i64 %18, 1, !dbg !3894
  call void @llvm.dbg.value(metadata i64 %19, metadata !3881, metadata !DIExpression()) #29, !dbg !3883
  call void @llvm.dbg.value(metadata i64 %19, metadata !3895, metadata !DIExpression()) #29, !dbg !3900
  %20 = tail call noalias i8* @xmalloc(i64 %19) #29, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %20, metadata !3882, metadata !DIExpression()) #29, !dbg !3883
  %21 = load i32, i32* %11, align 8, !dbg !3903, !tbaa !3036
  %22 = load i8*, i8** %14, align 8, !dbg !3904, !tbaa !3109
  %23 = load i8*, i8** %16, align 8, !dbg !3905, !tbaa !3112
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #29, !dbg !3906
  store i32 %7, i32* %6, align 4, !dbg !3907, !tbaa !850
  ret i8* %20, !dbg !3908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3870, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %1, metadata !3875, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64* %2, metadata !3876, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3877, metadata !DIExpression()), !dbg !3909
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3910
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3910
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3878, metadata !DIExpression()), !dbg !3909
  %7 = tail call i32* @__errno_location() #33, !dbg !3911
  %8 = load i32, i32* %7, align 4, !dbg !3911, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %8, metadata !3879, metadata !DIExpression()), !dbg !3909
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3912
  %10 = load i32, i32* %9, align 4, !dbg !3912, !tbaa !3087
  %11 = icmp eq i64* %2, null, !dbg !3913
  %12 = zext i1 %11 to i32, !dbg !3913
  %13 = or i32 %10, %12, !dbg !3914
  call void @llvm.dbg.value(metadata i32 %13, metadata !3880, metadata !DIExpression()), !dbg !3909
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3915
  %15 = load i32, i32* %14, align 8, !dbg !3915, !tbaa !3036
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3916
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3917
  %18 = load i8*, i8** %17, align 8, !dbg !3917, !tbaa !3109
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3918
  %20 = load i8*, i8** %19, align 8, !dbg !3918, !tbaa !3112
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3919
  %22 = add i64 %21, 1, !dbg !3920
  call void @llvm.dbg.value(metadata i64 %22, metadata !3881, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %22, metadata !3895, metadata !DIExpression()) #29, !dbg !3921
  %23 = tail call noalias i8* @xmalloc(i64 %22) #29, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %23, metadata !3882, metadata !DIExpression()), !dbg !3909
  %24 = load i32, i32* %14, align 8, !dbg !3924, !tbaa !3036
  %25 = load i8*, i8** %17, align 8, !dbg !3925, !tbaa !3109
  %26 = load i8*, i8** %19, align 8, !dbg !3926, !tbaa !3112
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3927
  store i32 %8, i32* %7, align 4, !dbg !3928, !tbaa !850
  br i1 %11, label %29, label %28, !dbg !3929

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3930, !tbaa !1487
  br label %29, !dbg !3932

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3933
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3934 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3938, !tbaa !682
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3936, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i32 1, metadata !3937, metadata !DIExpression()), !dbg !3939
  %2 = load i32, i32* @nslots, align 4, !dbg !3940, !tbaa !850
  %3 = icmp sgt i32 %2, 1, !dbg !3943
  br i1 %3, label %4, label %12, !dbg !3944

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3943
  br label %6, !dbg !3944

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3937, metadata !DIExpression()), !dbg !3939
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3945
  %9 = load i8*, i8** %8, align 8, !dbg !3945, !tbaa !3946
  tail call void @free(i8* %9) #29, !dbg !3948
  %10 = add nuw nsw i64 %7, 1, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %10, metadata !3937, metadata !DIExpression()), !dbg !3939
  %11 = icmp eq i64 %10, %5, !dbg !3943
  br i1 %11, label %12, label %6, !dbg !3944, !llvm.loop !3950

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3952
  %14 = load i8*, i8** %13, align 8, !dbg !3952, !tbaa !3946
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3954
  br i1 %15, label %17, label %16, !dbg !3955

16:                                               ; preds = %12
  tail call void @free(i8* %14) #29, !dbg !3956
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3958, !tbaa !3959
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3960, !tbaa !3946
  br label %17, !dbg !3961

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3962
  br i1 %18, label %21, label %19, !dbg !3964

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3965
  tail call void @free(i8* %20) #29, !dbg !3967
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3968, !tbaa !682
  br label %21, !dbg !3969

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3970, !tbaa !850
  ret void, !dbg !3971
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3972 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3974, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8* %1, metadata !3975, metadata !DIExpression()), !dbg !3976
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3977
  ret i8* %3, !dbg !3978
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3979 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3983, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i8* %1, metadata !3984, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i64 %2, metadata !3985, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3986, metadata !DIExpression()), !dbg !3998
  %5 = tail call i32* @__errno_location() #33, !dbg !3999
  %6 = load i32, i32* %5, align 4, !dbg !3999, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %6, metadata !3987, metadata !DIExpression()), !dbg !3998
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4000, !tbaa !682
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3988, metadata !DIExpression()), !dbg !3998
  %8 = icmp slt i32 %0, 0, !dbg !4001
  br i1 %8, label %9, label %10, !dbg !4003

9:                                                ; preds = %4
  tail call void @abort() #31, !dbg !4004
  unreachable, !dbg !4004

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4005, !tbaa !850
  %12 = icmp sgt i32 %11, %0, !dbg !4006
  br i1 %12, label %34, label %13, !dbg !4007

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4008
  call void @llvm.dbg.value(metadata i1 %14, metadata !3989, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4009
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3992, metadata !DIExpression()), !dbg !4009
  %15 = icmp eq i32 %0, 2147483647, !dbg !4010
  br i1 %15, label %16, label %17, !dbg !4012

16:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !4013
  unreachable, !dbg !4013

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !4014
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !4014
  %20 = add nuw nsw i32 %0, 1, !dbg !4015
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !4016
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #29, !dbg !4017
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4017
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3988, metadata !DIExpression()), !dbg !3998
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4018, !tbaa !682
  br i1 %14, label %25, label %26, !dbg !4019

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !4020, !tbaa.struct !4022
  br label %26, !dbg !4023

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4024, !tbaa !850
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4025
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4026
  %31 = sub nsw i32 %20, %27, !dbg !4027
  %32 = sext i32 %31 to i64, !dbg !4028
  %33 = shl nsw i64 %32, 4, !dbg !4029
  call void @llvm.dbg.value(metadata i8* %30, metadata !3423, metadata !DIExpression()) #29, !dbg !4030
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()) #29, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %33, metadata !3429, metadata !DIExpression()) #29, !dbg !4030
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #29, !dbg !4032
  store i32 %20, i32* @nslots, align 4, !dbg !4033, !tbaa !850
  br label %34, !dbg !4034

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3998
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3988, metadata !DIExpression()), !dbg !3998
  %36 = zext i32 %0 to i64, !dbg !4035
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4036
  %38 = load i64, i64* %37, align 8, !dbg !4036, !tbaa !3959
  call void @llvm.dbg.value(metadata i64 %38, metadata !3993, metadata !DIExpression()), !dbg !4037
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4038
  %40 = load i8*, i8** %39, align 8, !dbg !4038, !tbaa !3946
  call void @llvm.dbg.value(metadata i8* %40, metadata !3995, metadata !DIExpression()), !dbg !4037
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4039
  %42 = load i32, i32* %41, align 4, !dbg !4039, !tbaa !3087
  %43 = or i32 %42, 1, !dbg !4040
  call void @llvm.dbg.value(metadata i32 %43, metadata !3996, metadata !DIExpression()), !dbg !4037
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4041
  %45 = load i32, i32* %44, align 8, !dbg !4041, !tbaa !3036
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4042
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4043
  %48 = load i8*, i8** %47, align 8, !dbg !4043, !tbaa !3109
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4044
  %50 = load i8*, i8** %49, align 8, !dbg !4044, !tbaa !3112
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !4045
  call void @llvm.dbg.value(metadata i64 %51, metadata !3997, metadata !DIExpression()), !dbg !4037
  %52 = icmp ugt i64 %38, %51, !dbg !4046
  br i1 %52, label %63, label %53, !dbg !4048

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %54, metadata !3993, metadata !DIExpression()), !dbg !4037
  store i64 %54, i64* %37, align 8, !dbg !4051, !tbaa !3959
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4052
  br i1 %55, label %57, label %56, !dbg !4054

56:                                               ; preds = %53
  tail call void @free(i8* %40) #29, !dbg !4055
  br label %57, !dbg !4055

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3895, metadata !DIExpression()) #29, !dbg !4056
  %58 = tail call noalias i8* @xmalloc(i64 %54) #29, !dbg !4058
  call void @llvm.dbg.value(metadata i8* %58, metadata !3995, metadata !DIExpression()), !dbg !4037
  store i8* %58, i8** %39, align 8, !dbg !4059, !tbaa !3946
  %59 = load i32, i32* %44, align 8, !dbg !4060, !tbaa !3036
  %60 = load i8*, i8** %47, align 8, !dbg !4061, !tbaa !3109
  %61 = load i8*, i8** %49, align 8, !dbg !4062, !tbaa !3112
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !4063
  br label %63, !dbg !4064

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !4037
  call void @llvm.dbg.value(metadata i8* %64, metadata !3995, metadata !DIExpression()), !dbg !4037
  store i32 %6, i32* %5, align 4, !dbg !4065, !tbaa !850
  ret i8* %64, !dbg !4066
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4067 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4071, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i8* %1, metadata !4072, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i64 %2, metadata !4073, metadata !DIExpression()), !dbg !4074
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4075
  ret i8* %4, !dbg !4076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !4077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4079, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 0, metadata !3974, metadata !DIExpression()) #29, !dbg !4081
  call void @llvm.dbg.value(metadata i8* %0, metadata !3975, metadata !DIExpression()) #29, !dbg !4081
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !4083
  ret i8* %2, !dbg !4084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4085 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4087, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %1, metadata !4088, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 0, metadata !4071, metadata !DIExpression()) #29, !dbg !4090
  call void @llvm.dbg.value(metadata i8* %0, metadata !4072, metadata !DIExpression()) #29, !dbg !4090
  call void @llvm.dbg.value(metadata i64 %1, metadata !4073, metadata !DIExpression()) #29, !dbg !4090
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !4092
  ret i8* %3, !dbg !4093
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !4094 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4098, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i32 %1, metadata !4099, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i8* %2, metadata !4100, metadata !DIExpression()), !dbg !4102
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4103
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !4103
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4101, metadata !DIExpression()), !dbg !4104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4105), !dbg !4108
  call void @llvm.dbg.value(metadata i32 %1, metadata !4109, metadata !DIExpression()) #29, !dbg !4115
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4114, metadata !DIExpression()) #29, !dbg !4117
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !4117, !alias.scope !4105
  %6 = icmp eq i32 %1, 10, !dbg !4118
  br i1 %6, label %7, label %8, !dbg !4120

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !4121, !noalias !4105
  unreachable, !dbg !4121

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4122
  store i32 %1, i32* %9, align 8, !dbg !4123, !tbaa !3036, !alias.scope !4105
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4124
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !4125
  ret i8* %10, !dbg !4126
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4127 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i32 %1, metadata !4132, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i8* %2, metadata !4133, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i64 %3, metadata !4134, metadata !DIExpression()), !dbg !4136
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4137
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !4137
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4135, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4139), !dbg !4142
  call void @llvm.dbg.value(metadata i32 %1, metadata !4109, metadata !DIExpression()) #29, !dbg !4143
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4114, metadata !DIExpression()) #29, !dbg !4145
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #29, !dbg !4145, !alias.scope !4139
  %7 = icmp eq i32 %1, 10, !dbg !4146
  br i1 %7, label %8, label %9, !dbg !4147

8:                                                ; preds = %4
  tail call void @abort() #31, !dbg !4148, !noalias !4139
  unreachable, !dbg !4148

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4149
  store i32 %1, i32* %10, align 8, !dbg !4150, !tbaa !3036, !alias.scope !4139
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !4151
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !4152
  ret i8* %11, !dbg !4153
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4154 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4158, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i8* %1, metadata !4159, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i32 0, metadata !4098, metadata !DIExpression()) #29, !dbg !4161
  call void @llvm.dbg.value(metadata i32 %0, metadata !4099, metadata !DIExpression()) #29, !dbg !4161
  call void @llvm.dbg.value(metadata i8* %1, metadata !4100, metadata !DIExpression()) #29, !dbg !4161
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4163
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !4163
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4101, metadata !DIExpression()) #29, !dbg !4164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4165) #29, !dbg !4168
  call void @llvm.dbg.value(metadata i32 %0, metadata !4109, metadata !DIExpression()) #29, !dbg !4169
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4114, metadata !DIExpression()) #29, !dbg !4171
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #29, !dbg !4171, !alias.scope !4165
  %5 = icmp eq i32 %0, 10, !dbg !4172
  br i1 %5, label %6, label %7, !dbg !4173

6:                                                ; preds = %2
  tail call void @abort() #31, !dbg !4174, !noalias !4165
  unreachable, !dbg !4174

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4175
  store i32 %0, i32* %8, align 8, !dbg !4176, !tbaa !3036, !alias.scope !4165
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !4177
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !4178
  ret i8* %9, !dbg !4179
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4180 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4184, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i8* %1, metadata !4185, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %2, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i32 0, metadata !4131, metadata !DIExpression()) #29, !dbg !4188
  call void @llvm.dbg.value(metadata i32 %0, metadata !4132, metadata !DIExpression()) #29, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %1, metadata !4133, metadata !DIExpression()) #29, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %2, metadata !4134, metadata !DIExpression()) #29, !dbg !4188
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4190
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !4190
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4135, metadata !DIExpression()) #29, !dbg !4191
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4192) #29, !dbg !4195
  call void @llvm.dbg.value(metadata i32 %0, metadata !4109, metadata !DIExpression()) #29, !dbg !4196
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4114, metadata !DIExpression()) #29, !dbg !4198
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !4198, !alias.scope !4192
  %6 = icmp eq i32 %0, 10, !dbg !4199
  br i1 %6, label %7, label %8, !dbg !4200

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !4201, !noalias !4192
  unreachable, !dbg !4201

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4202
  store i32 %0, i32* %9, align 8, !dbg !4203, !tbaa !3036, !alias.scope !4192
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #29, !dbg !4204
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !4205
  ret i8* %10, !dbg !4206
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !4207 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4211, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %1, metadata !4212, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i8 %2, metadata !4213, metadata !DIExpression()), !dbg !4215
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4216
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !4216
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4214, metadata !DIExpression()), !dbg !4217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4218, !tbaa.struct !4219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3054, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i8 %2, metadata !3055, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 1, metadata !3056, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i8 %2, metadata !3057, metadata !DIExpression()), !dbg !4220
  %6 = lshr i8 %2, 5, !dbg !4222
  %7 = zext i8 %6 to i64, !dbg !4222
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4223
  call void @llvm.dbg.value(metadata i32* %8, metadata !3058, metadata !DIExpression()), !dbg !4220
  %9 = and i8 %2, 31, !dbg !4224
  %10 = zext i8 %9 to i32, !dbg !4224
  call void @llvm.dbg.value(metadata i32 %10, metadata !3060, metadata !DIExpression()), !dbg !4220
  %11 = load i32, i32* %8, align 4, !dbg !4225, !tbaa !850
  %12 = lshr i32 %11, %10, !dbg !4226
  %13 = and i32 %12, 1, !dbg !4227
  call void @llvm.dbg.value(metadata i32 %13, metadata !3061, metadata !DIExpression()), !dbg !4220
  %14 = xor i32 %13, 1, !dbg !4228
  %15 = shl i32 %14, %10, !dbg !4229
  %16 = xor i32 %15, %11, !dbg !4230
  store i32 %16, i32* %8, align 4, !dbg !4230, !tbaa !850
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4231
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !4232
  ret i8* %17, !dbg !4233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !4234 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4238, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i8 %1, metadata !4239, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i8* %0, metadata !4211, metadata !DIExpression()) #29, !dbg !4241
  call void @llvm.dbg.value(metadata i64 -1, metadata !4212, metadata !DIExpression()) #29, !dbg !4241
  call void @llvm.dbg.value(metadata i8 %1, metadata !4213, metadata !DIExpression()) #29, !dbg !4241
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4243
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !4243
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4214, metadata !DIExpression()) #29, !dbg !4244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !4245, !tbaa.struct !4219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3054, metadata !DIExpression()) #29, !dbg !4246
  call void @llvm.dbg.value(metadata i8 %1, metadata !3055, metadata !DIExpression()) #29, !dbg !4246
  call void @llvm.dbg.value(metadata i32 1, metadata !3056, metadata !DIExpression()) #29, !dbg !4246
  call void @llvm.dbg.value(metadata i8 %1, metadata !3057, metadata !DIExpression()) #29, !dbg !4246
  %5 = lshr i8 %1, 5, !dbg !4248
  %6 = zext i8 %5 to i64, !dbg !4248
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4249
  call void @llvm.dbg.value(metadata i32* %7, metadata !3058, metadata !DIExpression()) #29, !dbg !4246
  %8 = and i8 %1, 31, !dbg !4250
  %9 = zext i8 %8 to i32, !dbg !4250
  call void @llvm.dbg.value(metadata i32 %9, metadata !3060, metadata !DIExpression()) #29, !dbg !4246
  %10 = load i32, i32* %7, align 4, !dbg !4251, !tbaa !850
  %11 = lshr i32 %10, %9, !dbg !4252
  %12 = and i32 %11, 1, !dbg !4253
  call void @llvm.dbg.value(metadata i32 %12, metadata !3061, metadata !DIExpression()) #29, !dbg !4246
  %13 = xor i32 %12, 1, !dbg !4254
  %14 = shl i32 %13, %9, !dbg !4255
  %15 = xor i32 %14, %10, !dbg !4256
  store i32 %15, i32* %7, align 4, !dbg !4256, !tbaa !850
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !4257
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !4258
  ret i8* %16, !dbg !4259
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !4260 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4262, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i8* %0, metadata !4238, metadata !DIExpression()) #29, !dbg !4264
  call void @llvm.dbg.value(metadata i8 58, metadata !4239, metadata !DIExpression()) #29, !dbg !4264
  call void @llvm.dbg.value(metadata i8* %0, metadata !4211, metadata !DIExpression()) #29, !dbg !4266
  call void @llvm.dbg.value(metadata i64 -1, metadata !4212, metadata !DIExpression()) #29, !dbg !4266
  call void @llvm.dbg.value(metadata i8 58, metadata !4213, metadata !DIExpression()) #29, !dbg !4266
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4268
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #29, !dbg !4268
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !4214, metadata !DIExpression()) #29, !dbg !4269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !4270, !tbaa.struct !4219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3054, metadata !DIExpression()) #29, !dbg !4271
  call void @llvm.dbg.value(metadata i8 58, metadata !3055, metadata !DIExpression()) #29, !dbg !4271
  call void @llvm.dbg.value(metadata i32 1, metadata !3056, metadata !DIExpression()) #29, !dbg !4271
  call void @llvm.dbg.value(metadata i8 58, metadata !3057, metadata !DIExpression()) #29, !dbg !4271
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4273
  call void @llvm.dbg.value(metadata i32* %4, metadata !3058, metadata !DIExpression()) #29, !dbg !4271
  call void @llvm.dbg.value(metadata i32 26, metadata !3060, metadata !DIExpression()) #29, !dbg !4271
  %5 = load i32, i32* %4, align 4, !dbg !4274, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %5, metadata !3061, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !4271
  %6 = or i32 %5, 67108864, !dbg !4275
  store i32 %6, i32* %4, align 4, !dbg !4275, !tbaa !850
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #29, !dbg !4276
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #29, !dbg !4277
  ret i8* %7, !dbg !4278
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4279 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4281, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 %1, metadata !4282, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i8* %0, metadata !4211, metadata !DIExpression()) #29, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %1, metadata !4212, metadata !DIExpression()) #29, !dbg !4284
  call void @llvm.dbg.value(metadata i8 58, metadata !4213, metadata !DIExpression()) #29, !dbg !4284
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4286
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !4286
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4214, metadata !DIExpression()) #29, !dbg !4287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !4288, !tbaa.struct !4219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3054, metadata !DIExpression()) #29, !dbg !4289
  call void @llvm.dbg.value(metadata i8 58, metadata !3055, metadata !DIExpression()) #29, !dbg !4289
  call void @llvm.dbg.value(metadata i32 1, metadata !3056, metadata !DIExpression()) #29, !dbg !4289
  call void @llvm.dbg.value(metadata i8 58, metadata !3057, metadata !DIExpression()) #29, !dbg !4289
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4291
  call void @llvm.dbg.value(metadata i32* %5, metadata !3058, metadata !DIExpression()) #29, !dbg !4289
  call void @llvm.dbg.value(metadata i32 26, metadata !3060, metadata !DIExpression()) #29, !dbg !4289
  %6 = load i32, i32* %5, align 4, !dbg !4292, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %6, metadata !3061, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !4289
  %7 = or i32 %6, 67108864, !dbg !4293
  store i32 %7, i32* %5, align 4, !dbg !4293, !tbaa !850
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #29, !dbg !4294
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !4295
  ret i8* %8, !dbg !4296
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !4297 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4114, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4303
  call void @llvm.dbg.value(metadata i32 %0, metadata !4299, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i32 %1, metadata !4300, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i8* %2, metadata !4301, metadata !DIExpression()), !dbg !4305
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4306
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !4306
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4302, metadata !DIExpression()), !dbg !4307
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4308
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4308
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4309), !dbg !4308
  call void @llvm.dbg.value(metadata i32 %1, metadata !4109, metadata !DIExpression()) #29, !dbg !4312
  call void @llvm.dbg.value(metadata i32 0, metadata !4114, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4312
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !4303, !alias.scope !4309
  %8 = icmp eq i32 %1, 10, !dbg !4313
  br i1 %8, label %9, label %10, !dbg !4314

9:                                                ; preds = %3
  tail call void @abort() #31, !dbg !4315, !noalias !4309
  unreachable, !dbg !4315

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !4114, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4312
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4308
  store i32 %1, i32* %11, align 8, !dbg !4308, !tbaa.struct !4219
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4308
  %13 = bitcast i32* %12 to i8*, !dbg !4308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !4308, !tbaa.struct !4316
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3054, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i8 58, metadata !3055, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 1, metadata !3056, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i8 58, metadata !3057, metadata !DIExpression()), !dbg !4317
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4319
  call void @llvm.dbg.value(metadata i32* %14, metadata !3058, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i32 26, metadata !3060, metadata !DIExpression()), !dbg !4317
  %15 = load i32, i32* %14, align 4, !dbg !4320, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %15, metadata !3061, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !4317
  %16 = or i32 %15, 67108864, !dbg !4321
  store i32 %16, i32* %14, align 4, !dbg !4321, !tbaa !850
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !4323
  ret i8* %17, !dbg !4324
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !4325 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4329, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i8* %1, metadata !4330, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i8* %2, metadata !4331, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i8* %3, metadata !4332, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 %0, metadata !4334, metadata !DIExpression()) #29, !dbg !4344
  call void @llvm.dbg.value(metadata i8* %1, metadata !4339, metadata !DIExpression()) #29, !dbg !4344
  call void @llvm.dbg.value(metadata i8* %2, metadata !4340, metadata !DIExpression()) #29, !dbg !4344
  call void @llvm.dbg.value(metadata i8* %3, metadata !4341, metadata !DIExpression()) #29, !dbg !4344
  call void @llvm.dbg.value(metadata i64 -1, metadata !4342, metadata !DIExpression()) #29, !dbg !4344
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4346
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !4346
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4343, metadata !DIExpression()) #29, !dbg !4347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !4348, !tbaa.struct !4219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3094, metadata !DIExpression()) #29, !dbg !4349
  call void @llvm.dbg.value(metadata i8* %1, metadata !3095, metadata !DIExpression()) #29, !dbg !4349
  call void @llvm.dbg.value(metadata i8* %2, metadata !3096, metadata !DIExpression()) #29, !dbg !4349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3094, metadata !DIExpression()) #29, !dbg !4349
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4351
  store i32 10, i32* %7, align 8, !dbg !4352, !tbaa !3036
  %8 = icmp ne i8* %1, null, !dbg !4353
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !4354
  br i1 %10, label %12, label %11, !dbg !4354

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !4355
  unreachable, !dbg !4355

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4356
  store i8* %1, i8** %13, align 8, !dbg !4357, !tbaa !3109
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4358
  store i8* %2, i8** %14, align 8, !dbg !4359, !tbaa !3112
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #29, !dbg !4360
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !4361
  ret i8* %15, !dbg !4362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !4335 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4334, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i8* %1, metadata !4339, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i8* %2, metadata !4340, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i8* %3, metadata !4341, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 %4, metadata !4342, metadata !DIExpression()), !dbg !4363
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4364
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #29, !dbg !4364
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !4343, metadata !DIExpression()), !dbg !4365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !4366, !tbaa.struct !4219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3094, metadata !DIExpression()) #29, !dbg !4367
  call void @llvm.dbg.value(metadata i8* %1, metadata !3095, metadata !DIExpression()) #29, !dbg !4367
  call void @llvm.dbg.value(metadata i8* %2, metadata !3096, metadata !DIExpression()) #29, !dbg !4367
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3094, metadata !DIExpression()) #29, !dbg !4367
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4369
  store i32 10, i32* %8, align 8, !dbg !4370, !tbaa !3036
  %9 = icmp ne i8* %1, null, !dbg !4371
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !4372
  br i1 %11, label %13, label %12, !dbg !4372

12:                                               ; preds = %5
  tail call void @abort() #31, !dbg !4373
  unreachable, !dbg !4373

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4374
  store i8* %1, i8** %14, align 8, !dbg !4375, !tbaa !3109
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4376
  store i8* %2, i8** %15, align 8, !dbg !4377, !tbaa !3112
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4378
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #29, !dbg !4379
  ret i8* %16, !dbg !4380
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !4381 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4385, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i8* %1, metadata !4386, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i8* %2, metadata !4387, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i32 0, metadata !4329, metadata !DIExpression()) #29, !dbg !4389
  call void @llvm.dbg.value(metadata i8* %0, metadata !4330, metadata !DIExpression()) #29, !dbg !4389
  call void @llvm.dbg.value(metadata i8* %1, metadata !4331, metadata !DIExpression()) #29, !dbg !4389
  call void @llvm.dbg.value(metadata i8* %2, metadata !4332, metadata !DIExpression()) #29, !dbg !4389
  call void @llvm.dbg.value(metadata i32 0, metadata !4334, metadata !DIExpression()) #29, !dbg !4391
  call void @llvm.dbg.value(metadata i8* %0, metadata !4339, metadata !DIExpression()) #29, !dbg !4391
  call void @llvm.dbg.value(metadata i8* %1, metadata !4340, metadata !DIExpression()) #29, !dbg !4391
  call void @llvm.dbg.value(metadata i8* %2, metadata !4341, metadata !DIExpression()) #29, !dbg !4391
  call void @llvm.dbg.value(metadata i64 -1, metadata !4342, metadata !DIExpression()) #29, !dbg !4391
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4393
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !4393
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4343, metadata !DIExpression()) #29, !dbg !4394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !4395, !tbaa.struct !4219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3094, metadata !DIExpression()) #29, !dbg !4396
  call void @llvm.dbg.value(metadata i8* %0, metadata !3095, metadata !DIExpression()) #29, !dbg !4396
  call void @llvm.dbg.value(metadata i8* %1, metadata !3096, metadata !DIExpression()) #29, !dbg !4396
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3094, metadata !DIExpression()) #29, !dbg !4396
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4398
  store i32 10, i32* %6, align 8, !dbg !4399, !tbaa !3036
  %7 = icmp ne i8* %0, null, !dbg !4400
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !4401
  br i1 %9, label %11, label %10, !dbg !4401

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !4402
  unreachable, !dbg !4402

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4403
  store i8* %0, i8** %12, align 8, !dbg !4404, !tbaa !3109
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4405
  store i8* %1, i8** %13, align 8, !dbg !4406, !tbaa !3112
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #29, !dbg !4407
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !4408
  ret i8* %14, !dbg !4409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4410 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4414, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i8* %1, metadata !4415, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i8* %2, metadata !4416, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 %3, metadata !4417, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 0, metadata !4334, metadata !DIExpression()) #29, !dbg !4419
  call void @llvm.dbg.value(metadata i8* %0, metadata !4339, metadata !DIExpression()) #29, !dbg !4419
  call void @llvm.dbg.value(metadata i8* %1, metadata !4340, metadata !DIExpression()) #29, !dbg !4419
  call void @llvm.dbg.value(metadata i8* %2, metadata !4341, metadata !DIExpression()) #29, !dbg !4419
  call void @llvm.dbg.value(metadata i64 %3, metadata !4342, metadata !DIExpression()) #29, !dbg !4419
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4421
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !4421
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4343, metadata !DIExpression()) #29, !dbg !4422
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !4423, !tbaa.struct !4219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3094, metadata !DIExpression()) #29, !dbg !4424
  call void @llvm.dbg.value(metadata i8* %0, metadata !3095, metadata !DIExpression()) #29, !dbg !4424
  call void @llvm.dbg.value(metadata i8* %1, metadata !3096, metadata !DIExpression()) #29, !dbg !4424
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3094, metadata !DIExpression()) #29, !dbg !4424
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4426
  store i32 10, i32* %7, align 8, !dbg !4427, !tbaa !3036
  %8 = icmp ne i8* %0, null, !dbg !4428
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !4429
  br i1 %10, label %12, label %11, !dbg !4429

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !4430
  unreachable, !dbg !4430

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4431
  store i8* %0, i8** %13, align 8, !dbg !4432, !tbaa !3109
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4433
  store i8* %1, i8** %14, align 8, !dbg !4434, !tbaa !3112
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #29, !dbg !4435
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !4436
  ret i8* %15, !dbg !4437
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4442, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i8* %1, metadata !4443, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64 %2, metadata !4444, metadata !DIExpression()), !dbg !4445
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4446
  ret i8* %4, !dbg !4447
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4448 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4452, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4453, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32 0, metadata !4442, metadata !DIExpression()) #29, !dbg !4455
  call void @llvm.dbg.value(metadata i8* %0, metadata !4443, metadata !DIExpression()) #29, !dbg !4455
  call void @llvm.dbg.value(metadata i64 %1, metadata !4444, metadata !DIExpression()) #29, !dbg !4455
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !4457
  ret i8* %3, !dbg !4458
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4459 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4463, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i8* %1, metadata !4464, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i32 %0, metadata !4442, metadata !DIExpression()) #29, !dbg !4466
  call void @llvm.dbg.value(metadata i8* %1, metadata !4443, metadata !DIExpression()) #29, !dbg !4466
  call void @llvm.dbg.value(metadata i64 -1, metadata !4444, metadata !DIExpression()) #29, !dbg !4466
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !4468
  ret i8* %3, !dbg !4469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4470 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4474, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i32 0, metadata !4463, metadata !DIExpression()) #29, !dbg !4476
  call void @llvm.dbg.value(metadata i8* %0, metadata !4464, metadata !DIExpression()) #29, !dbg !4476
  call void @llvm.dbg.value(metadata i32 0, metadata !4442, metadata !DIExpression()) #29, !dbg !4478
  call void @llvm.dbg.value(metadata i8* %0, metadata !4443, metadata !DIExpression()) #29, !dbg !4478
  call void @llvm.dbg.value(metadata i64 -1, metadata !4444, metadata !DIExpression()) #29, !dbg !4478
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !4480
  ret i8* %2, !dbg !4481
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @same_name(i8* %0, i8* %1) local_unnamed_addr #8 !dbg !4482 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4486, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i8* %1, metadata !4487, metadata !DIExpression()), !dbg !4488
  %3 = tail call zeroext i1 @same_nameat(i32 -100, i8* %0, i32 -100, i8* %1), !dbg !4489
  ret i1 %3, !dbg !4490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @same_nameat(i32 %0, i8* %1, i32 %2, i8* %3) local_unnamed_addr #8 !dbg !4491 {
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4495, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i8* %1, metadata !4496, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 %2, metadata !4497, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i8* %3, metadata !4498, metadata !DIExpression()), !dbg !4534
  %7 = tail call i8* @last_component(i8* %1) #30, !dbg !4535
  call void @llvm.dbg.value(metadata i8* %7, metadata !4499, metadata !DIExpression()), !dbg !4534
  %8 = tail call i8* @last_component(i8* %3) #30, !dbg !4536
  call void @llvm.dbg.value(metadata i8* %8, metadata !4500, metadata !DIExpression()), !dbg !4534
  %9 = tail call i64 @base_len(i8* %7) #30, !dbg !4537
  call void @llvm.dbg.value(metadata i64 %9, metadata !4501, metadata !DIExpression()), !dbg !4534
  %10 = tail call i64 @base_len(i8* %8) #30, !dbg !4538
  call void @llvm.dbg.value(metadata i64 %10, metadata !4502, metadata !DIExpression()), !dbg !4534
  %11 = icmp eq i64 %9, %10, !dbg !4539
  br i1 %11, label %12, label %43, !dbg !4540

12:                                               ; preds = %4
  %13 = tail call i32 @bcmp(i8* %7, i8* %8, i64 %9), !dbg !4541
  %14 = icmp eq i32 %13, 0, !dbg !4542
  call void @llvm.dbg.value(metadata i1 %14, metadata !4503, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4534
  call void @llvm.dbg.value(metadata i1 %14, metadata !4504, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4534
  call void @llvm.dbg.value(metadata i8 0, metadata !4505, metadata !DIExpression()), !dbg !4534
  br i1 %14, label %15, label %43, !dbg !4543

15:                                               ; preds = %12
  %16 = bitcast %struct.stat* %5 to i8*, !dbg !4544
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %16) #29, !dbg !4544
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !4506, metadata !DIExpression()), !dbg !4545
  %17 = bitcast %struct.stat* %6 to i8*, !dbg !4546
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %17) #29, !dbg !4546
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !4530, metadata !DIExpression()), !dbg !4547
  %18 = tail call i8* @dir_name(i8* %1) #29, !dbg !4548
  call void @llvm.dbg.value(metadata i8* %18, metadata !4531, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 256, metadata !4532, metadata !DIExpression()), !dbg !4549
  %19 = call i32 @fstatat(i32 %0, i8* %18, %struct.stat* nonnull %5, i32 256) #29, !dbg !4550
  %20 = icmp eq i32 %19, 0, !dbg !4552
  br i1 %20, label %24, label %21, !dbg !4553

21:                                               ; preds = %15
  %22 = tail call i32* @__errno_location() #33, !dbg !4554
  %23 = load i32, i32* %22, align 4, !dbg !4554, !tbaa !850
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %18) #29, !dbg !4556
  br label %24, !dbg !4557

24:                                               ; preds = %21, %15
  call void @free(i8* %18) #29, !dbg !4558
  %25 = call i8* @dir_name(i8* %3) #29, !dbg !4559
  call void @llvm.dbg.value(metadata i8* %25, metadata !4533, metadata !DIExpression()), !dbg !4549
  %26 = call i32 @fstatat(i32 %2, i8* %25, %struct.stat* nonnull %6, i32 256) #29, !dbg !4560
  %27 = icmp eq i32 %26, 0, !dbg !4562
  br i1 %27, label %31, label %28, !dbg !4563

28:                                               ; preds = %24
  %29 = tail call i32* @__errno_location() #33, !dbg !4564
  %30 = load i32, i32* %29, align 4, !dbg !4564, !tbaa !850
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %25) #29, !dbg !4566
  br label %31, !dbg !4567

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 1, !dbg !4568
  %33 = load i64, i64* %32, align 8, !dbg !4568, !tbaa !4569
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !4568
  %35 = load i64, i64* %34, align 8, !dbg !4568, !tbaa !4569
  %36 = icmp eq i64 %33, %35, !dbg !4568
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 0, !dbg !4568
  %38 = load i64, i64* %37, align 8, !dbg !4568
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !4568
  %40 = load i64, i64* %39, align 8, !dbg !4568
  %41 = icmp eq i64 %38, %40, !dbg !4568
  %42 = and i1 %36, %41, !dbg !4568
  call void @llvm.dbg.value(metadata i1 %42, metadata !4505, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4534
  call void @free(i8* %25) #29, !dbg !4570
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %17) #29, !dbg !4571
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %16) #29, !dbg !4571
  br label %43, !dbg !4572

43:                                               ; preds = %4, %31, %12
  %44 = phi i1 [ %42, %31 ], [ false, %12 ], [ false, %4 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !4505, metadata !DIExpression()), !dbg !4534
  ret i1 %44, !dbg !4573
}

; Function Attrs: nounwind
declare !dbg !4574 i32 @fstatat(i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4578 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4617, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i8* %1, metadata !4618, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i8* %2, metadata !4619, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i8* %3, metadata !4620, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i8** %4, metadata !4621, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i64 %5, metadata !4622, metadata !DIExpression()), !dbg !4623
  %7 = icmp eq i8* %1, null, !dbg !4624
  br i1 %7, label %10, label %8, !dbg !4626

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #29, !dbg !4627
  br label %12, !dbg !4627

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.109, i64 0, i64 0), i8* %2, i8* %3) #29, !dbg !4628
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.110, i64 0, i64 0), i32 5) #29, !dbg !4629
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #29, !dbg !4629
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.111, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4630
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.112, i64 0, i64 0), i32 5) #29, !dbg !4631
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.113, i64 0, i64 0)) #29, !dbg !4631
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.111, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4632
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
  ], !dbg !4633

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.114, i64 0, i64 0), i32 5) #29, !dbg !4634
  %21 = load i8*, i8** %4, align 8, !dbg !4634, !tbaa !682
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #29, !dbg !4634
  br label %147, !dbg !4636

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.115, i64 0, i64 0), i32 5) #29, !dbg !4637
  %25 = load i8*, i8** %4, align 8, !dbg !4637, !tbaa !682
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4637
  %27 = load i8*, i8** %26, align 8, !dbg !4637, !tbaa !682
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #29, !dbg !4637
  br label %147, !dbg !4638

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.116, i64 0, i64 0), i32 5) #29, !dbg !4639
  %31 = load i8*, i8** %4, align 8, !dbg !4639, !tbaa !682
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4639
  %33 = load i8*, i8** %32, align 8, !dbg !4639, !tbaa !682
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4639
  %35 = load i8*, i8** %34, align 8, !dbg !4639, !tbaa !682
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #29, !dbg !4639
  br label %147, !dbg !4640

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.117, i64 0, i64 0), i32 5) #29, !dbg !4641
  %39 = load i8*, i8** %4, align 8, !dbg !4641, !tbaa !682
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4641
  %41 = load i8*, i8** %40, align 8, !dbg !4641, !tbaa !682
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4641
  %43 = load i8*, i8** %42, align 8, !dbg !4641, !tbaa !682
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4641
  %45 = load i8*, i8** %44, align 8, !dbg !4641, !tbaa !682
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #29, !dbg !4641
  br label %147, !dbg !4642

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.118, i64 0, i64 0), i32 5) #29, !dbg !4643
  %49 = load i8*, i8** %4, align 8, !dbg !4643, !tbaa !682
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4643
  %51 = load i8*, i8** %50, align 8, !dbg !4643, !tbaa !682
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4643
  %53 = load i8*, i8** %52, align 8, !dbg !4643, !tbaa !682
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4643
  %55 = load i8*, i8** %54, align 8, !dbg !4643, !tbaa !682
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4643
  %57 = load i8*, i8** %56, align 8, !dbg !4643, !tbaa !682
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #29, !dbg !4643
  br label %147, !dbg !4644

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.119, i64 0, i64 0), i32 5) #29, !dbg !4645
  %61 = load i8*, i8** %4, align 8, !dbg !4645, !tbaa !682
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4645
  %63 = load i8*, i8** %62, align 8, !dbg !4645, !tbaa !682
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4645
  %65 = load i8*, i8** %64, align 8, !dbg !4645, !tbaa !682
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4645
  %67 = load i8*, i8** %66, align 8, !dbg !4645, !tbaa !682
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4645
  %69 = load i8*, i8** %68, align 8, !dbg !4645, !tbaa !682
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4645
  %71 = load i8*, i8** %70, align 8, !dbg !4645, !tbaa !682
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #29, !dbg !4645
  br label %147, !dbg !4646

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.120, i64 0, i64 0), i32 5) #29, !dbg !4647
  %75 = load i8*, i8** %4, align 8, !dbg !4647, !tbaa !682
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4647
  %77 = load i8*, i8** %76, align 8, !dbg !4647, !tbaa !682
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4647
  %79 = load i8*, i8** %78, align 8, !dbg !4647, !tbaa !682
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4647
  %81 = load i8*, i8** %80, align 8, !dbg !4647, !tbaa !682
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4647
  %83 = load i8*, i8** %82, align 8, !dbg !4647, !tbaa !682
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4647
  %85 = load i8*, i8** %84, align 8, !dbg !4647, !tbaa !682
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4647
  %87 = load i8*, i8** %86, align 8, !dbg !4647, !tbaa !682
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #29, !dbg !4647
  br label %147, !dbg !4648

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.121, i64 0, i64 0), i32 5) #29, !dbg !4649
  %91 = load i8*, i8** %4, align 8, !dbg !4649, !tbaa !682
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4649
  %93 = load i8*, i8** %92, align 8, !dbg !4649, !tbaa !682
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4649
  %95 = load i8*, i8** %94, align 8, !dbg !4649, !tbaa !682
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4649
  %97 = load i8*, i8** %96, align 8, !dbg !4649, !tbaa !682
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4649
  %99 = load i8*, i8** %98, align 8, !dbg !4649, !tbaa !682
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4649
  %101 = load i8*, i8** %100, align 8, !dbg !4649, !tbaa !682
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4649
  %103 = load i8*, i8** %102, align 8, !dbg !4649, !tbaa !682
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4649
  %105 = load i8*, i8** %104, align 8, !dbg !4649, !tbaa !682
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #29, !dbg !4649
  br label %147, !dbg !4650

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.122, i64 0, i64 0), i32 5) #29, !dbg !4651
  %109 = load i8*, i8** %4, align 8, !dbg !4651, !tbaa !682
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4651
  %111 = load i8*, i8** %110, align 8, !dbg !4651, !tbaa !682
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4651
  %113 = load i8*, i8** %112, align 8, !dbg !4651, !tbaa !682
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4651
  %115 = load i8*, i8** %114, align 8, !dbg !4651, !tbaa !682
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4651
  %117 = load i8*, i8** %116, align 8, !dbg !4651, !tbaa !682
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4651
  %119 = load i8*, i8** %118, align 8, !dbg !4651, !tbaa !682
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4651
  %121 = load i8*, i8** %120, align 8, !dbg !4651, !tbaa !682
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4651
  %123 = load i8*, i8** %122, align 8, !dbg !4651, !tbaa !682
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4651
  %125 = load i8*, i8** %124, align 8, !dbg !4651, !tbaa !682
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #29, !dbg !4651
  br label %147, !dbg !4652

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.123, i64 0, i64 0), i32 5) #29, !dbg !4653
  %129 = load i8*, i8** %4, align 8, !dbg !4653, !tbaa !682
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4653
  %131 = load i8*, i8** %130, align 8, !dbg !4653, !tbaa !682
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4653
  %133 = load i8*, i8** %132, align 8, !dbg !4653, !tbaa !682
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4653
  %135 = load i8*, i8** %134, align 8, !dbg !4653, !tbaa !682
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4653
  %137 = load i8*, i8** %136, align 8, !dbg !4653, !tbaa !682
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4653
  %139 = load i8*, i8** %138, align 8, !dbg !4653, !tbaa !682
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4653
  %141 = load i8*, i8** %140, align 8, !dbg !4653, !tbaa !682
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4653
  %143 = load i8*, i8** %142, align 8, !dbg !4653, !tbaa !682
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4653
  %145 = load i8*, i8** %144, align 8, !dbg !4653, !tbaa !682
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #29, !dbg !4653
  br label %147, !dbg !4654

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4655
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4656 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4660, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i8* %1, metadata !4661, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i8* %2, metadata !4662, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i8* %3, metadata !4663, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i8** %4, metadata !4664, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 0, metadata !4665, metadata !DIExpression()), !dbg !4666
  br label %6, !dbg !4667

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4669
  call void @llvm.dbg.value(metadata i64 %7, metadata !4665, metadata !DIExpression()), !dbg !4666
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4670
  %9 = load i8*, i8** %8, align 8, !dbg !4670, !tbaa !682
  %10 = icmp eq i8* %9, null, !dbg !4672
  %11 = add i64 %7, 1, !dbg !4673
  call void @llvm.dbg.value(metadata i64 %11, metadata !4665, metadata !DIExpression()), !dbg !4666
  br i1 %10, label %12, label %6, !dbg !4672, !llvm.loop !4674

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4676
  ret void, !dbg !4677
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4678 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4689, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i8* %1, metadata !4690, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i8* %2, metadata !4691, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i8* %3, metadata !4692, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4693, metadata !DIExpression()), !dbg !4697
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4698
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #29, !dbg !4698
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4695, metadata !DIExpression()), !dbg !4699
  call void @llvm.dbg.value(metadata i64 0, metadata !4694, metadata !DIExpression()), !dbg !4697
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !4694, metadata !DIExpression()), !dbg !4697
  %11 = load i32, i32* %8, align 8, !dbg !4700
  %12 = icmp ult i32 %11, 41, !dbg !4700
  br i1 %12, label %13, label %18, !dbg !4700

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4700
  %15 = zext i32 %11 to i64, !dbg !4700
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4700
  %17 = add nuw nsw i32 %11, 8, !dbg !4700
  store i32 %17, i32* %8, align 8, !dbg !4700
  br label %21, !dbg !4700

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4700
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4700
  store i8* %20, i8** %9, align 8, !dbg !4700
  br label %21, !dbg !4700

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4700
  %25 = load i8*, i8** %24, align 8, !dbg !4700
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4703
  store i8* %25, i8** %26, align 16, !dbg !4704, !tbaa !682
  %27 = icmp eq i8* %25, null, !dbg !4705
  br i1 %27, label %30, label %28, !dbg !4706

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4694, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i64 1, metadata !4694, metadata !DIExpression()), !dbg !4697
  %29 = icmp ult i32 %22, 41, !dbg !4700
  br i1 %29, label %35, label %32, !dbg !4700

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4707
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4708
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #29, !dbg !4709
  ret void, !dbg !4709

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4700
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4700
  store i8* %34, i8** %9, align 8, !dbg !4700
  br label %40, !dbg !4700

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4700
  %37 = zext i32 %22 to i64, !dbg !4700
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4700
  %39 = add nuw nsw i32 %22, 8, !dbg !4700
  store i32 %39, i32* %8, align 8, !dbg !4700
  br label %40, !dbg !4700

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4700
  %44 = load i8*, i8** %43, align 8, !dbg !4700
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4703
  store i8* %44, i8** %45, align 8, !dbg !4704, !tbaa !682
  %46 = icmp eq i8* %44, null, !dbg !4705
  br i1 %46, label %30, label %47, !dbg !4706

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4694, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i64 2, metadata !4694, metadata !DIExpression()), !dbg !4697
  %48 = icmp ult i32 %41, 41, !dbg !4700
  br i1 %48, label %52, label %49, !dbg !4700

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4700
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4700
  store i8* %51, i8** %9, align 8, !dbg !4700
  br label %57, !dbg !4700

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4700
  %54 = zext i32 %41 to i64, !dbg !4700
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4700
  %56 = add nuw nsw i32 %41, 8, !dbg !4700
  store i32 %56, i32* %8, align 8, !dbg !4700
  br label %57, !dbg !4700

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4700
  %61 = load i8*, i8** %60, align 8, !dbg !4700
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4703
  store i8* %61, i8** %62, align 16, !dbg !4704, !tbaa !682
  %63 = icmp eq i8* %61, null, !dbg !4705
  br i1 %63, label %30, label %64, !dbg !4706

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4694, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i64 3, metadata !4694, metadata !DIExpression()), !dbg !4697
  %65 = icmp ult i32 %58, 41, !dbg !4700
  br i1 %65, label %69, label %66, !dbg !4700

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4700
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4700
  store i8* %68, i8** %9, align 8, !dbg !4700
  br label %74, !dbg !4700

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4700
  %71 = zext i32 %58 to i64, !dbg !4700
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4700
  %73 = add nuw nsw i32 %58, 8, !dbg !4700
  store i32 %73, i32* %8, align 8, !dbg !4700
  br label %74, !dbg !4700

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4700
  %78 = load i8*, i8** %77, align 8, !dbg !4700
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4703
  store i8* %78, i8** %79, align 8, !dbg !4704, !tbaa !682
  %80 = icmp eq i8* %78, null, !dbg !4705
  br i1 %80, label %30, label %81, !dbg !4706

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4694, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i64 4, metadata !4694, metadata !DIExpression()), !dbg !4697
  %82 = icmp ult i32 %75, 41, !dbg !4700
  br i1 %82, label %86, label %83, !dbg !4700

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4700
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4700
  store i8* %85, i8** %9, align 8, !dbg !4700
  br label %91, !dbg !4700

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4700
  %88 = zext i32 %75 to i64, !dbg !4700
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4700
  %90 = add nuw nsw i32 %75, 8, !dbg !4700
  store i32 %90, i32* %8, align 8, !dbg !4700
  br label %91, !dbg !4700

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4700
  %95 = load i8*, i8** %94, align 8, !dbg !4700
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4703
  store i8* %95, i8** %96, align 16, !dbg !4704, !tbaa !682
  %97 = icmp eq i8* %95, null, !dbg !4705
  br i1 %97, label %30, label %98, !dbg !4706

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4694, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i64 5, metadata !4694, metadata !DIExpression()), !dbg !4697
  %99 = icmp ult i32 %92, 41, !dbg !4700
  br i1 %99, label %103, label %100, !dbg !4700

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4700
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4700
  store i8* %102, i8** %9, align 8, !dbg !4700
  br label %108, !dbg !4700

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4700
  %105 = zext i32 %92 to i64, !dbg !4700
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4700
  %107 = add nuw nsw i32 %92, 8, !dbg !4700
  store i32 %107, i32* %8, align 8, !dbg !4700
  br label %108, !dbg !4700

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4700
  %111 = load i8*, i8** %110, align 8, !dbg !4700
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4703
  store i8* %111, i8** %112, align 8, !dbg !4704, !tbaa !682
  %113 = icmp eq i8* %111, null, !dbg !4705
  br i1 %113, label %30, label %114, !dbg !4706

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4694, metadata !DIExpression()), !dbg !4697
  %115 = load i8*, i8** %9, align 8, !dbg !4700
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4700
  store i8* %116, i8** %9, align 8, !dbg !4700
  %117 = bitcast i8* %115 to i8**, !dbg !4700
  %118 = load i8*, i8** %117, align 8, !dbg !4700
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4703
  store i8* %118, i8** %119, align 16, !dbg !4704, !tbaa !682
  %120 = icmp eq i8* %118, null, !dbg !4705
  br i1 %120, label %30, label %121, !dbg !4706

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4694, metadata !DIExpression()), !dbg !4697
  %122 = load i8*, i8** %9, align 8, !dbg !4700
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4700
  store i8* %123, i8** %9, align 8, !dbg !4700
  %124 = bitcast i8* %122 to i8**, !dbg !4700
  %125 = load i8*, i8** %124, align 8, !dbg !4700
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4703
  store i8* %125, i8** %126, align 8, !dbg !4704, !tbaa !682
  %127 = icmp eq i8* %125, null, !dbg !4705
  br i1 %127, label %30, label %128, !dbg !4706

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4694, metadata !DIExpression()), !dbg !4697
  %129 = load i8*, i8** %9, align 8, !dbg !4700
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4700
  store i8* %130, i8** %9, align 8, !dbg !4700
  %131 = bitcast i8* %129 to i8**, !dbg !4700
  %132 = load i8*, i8** %131, align 8, !dbg !4700
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4703
  store i8* %132, i8** %133, align 16, !dbg !4704, !tbaa !682
  %134 = icmp eq i8* %132, null, !dbg !4705
  br i1 %134, label %30, label %135, !dbg !4706

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4694, metadata !DIExpression()), !dbg !4697
  %136 = load i8*, i8** %9, align 8, !dbg !4700
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4700
  store i8* %137, i8** %9, align 8, !dbg !4700
  %138 = bitcast i8* %136 to i8**, !dbg !4700
  %139 = load i8*, i8** %138, align 8, !dbg !4700
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4703
  store i8* %139, i8** %140, align 8, !dbg !4704, !tbaa !682
  %141 = icmp eq i8* %139, null, !dbg !4705
  %142 = select i1 %141, i64 9, i64 10, !dbg !4706
  br label %30, !dbg !4706
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4710 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4714, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata i8* %1, metadata !4715, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata i8* %2, metadata !4716, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata i8* %3, metadata !4717, metadata !DIExpression()), !dbg !4724
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4725
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #29, !dbg !4725
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4718, metadata !DIExpression()), !dbg !4726
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4727
  call void @llvm.va_start(i8* nonnull %6), !dbg !4727
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4728
  call void @llvm.va_end(i8* nonnull %6), !dbg !4729
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #29, !dbg !4730
  ret void, !dbg !4730
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #26

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4731 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4732, !tbaa !682
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.111, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4732
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.126, i64 0, i64 0), i32 5) #29, !dbg !4733
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.127, i64 0, i64 0)) #29, !dbg !4733
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.128, i64 0, i64 0), i32 5) #29, !dbg !4734
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.129, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.130, i64 0, i64 0)) #29, !dbg !4734
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.131, i64 0, i64 0), i32 5) #29, !dbg !4735
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.132, i64 0, i64 0)) #29, !dbg !4735
  ret void, !dbg !4736
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !4737 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4741, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i64 %1, metadata !4742, metadata !DIExpression()), !dbg !4743
  %3 = udiv i64 9223372036854775807, %1, !dbg !4744
  %4 = icmp ult i64 %3, %0, !dbg !4744
  br i1 %4, label %5, label %6, !dbg !4746

5:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !4747
  unreachable, !dbg !4747

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %7, metadata !4749, metadata !DIExpression()) #29, !dbg !4755
  %8 = tail call noalias i8* @malloc(i64 %7) #29, !dbg !4757
  call void @llvm.dbg.value(metadata i8* %8, metadata !4754, metadata !DIExpression()) #29, !dbg !4755
  %9 = icmp eq i8* %8, null, !dbg !4758
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !4760
  br i1 %11, label %12, label %13, !dbg !4760

12:                                               ; preds = %6
  tail call void @xalloc_die() #31, !dbg !4761
  unreachable, !dbg !4761

13:                                               ; preds = %6
  ret i8* %8, !dbg !4762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4750 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4749, metadata !DIExpression()), !dbg !4763
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !4764
  call void @llvm.dbg.value(metadata i8* %2, metadata !4754, metadata !DIExpression()), !dbg !4763
  %3 = icmp eq i8* %2, null, !dbg !4765
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4766
  br i1 %5, label %6, label %7, !dbg !4766

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !4767
  unreachable, !dbg !4767

7:                                                ; preds = %1
  ret i8* %2, !dbg !4768
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #27 !dbg !4769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4773, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.value(metadata i64 %1, metadata !4774, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.value(metadata i64 %2, metadata !4775, metadata !DIExpression()), !dbg !4776
  %4 = udiv i64 9223372036854775807, %2, !dbg !4777
  %5 = icmp ult i64 %4, %1, !dbg !4777
  br i1 %5, label %6, label %7, !dbg !4779

6:                                                ; preds = %3
  tail call void @xalloc_die() #31, !dbg !4780
  unreachable, !dbg !4780

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4781
  call void @llvm.dbg.value(metadata i8* %0, metadata !4782, metadata !DIExpression()) #29, !dbg !4788
  call void @llvm.dbg.value(metadata i64 %8, metadata !4787, metadata !DIExpression()) #29, !dbg !4788
  %9 = icmp eq i64 %8, 0, !dbg !4790
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !4792
  br i1 %11, label %12, label %13, !dbg !4792

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #29, !dbg !4793
  br label %19, !dbg !4795

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #29, !dbg !4796
  call void @llvm.dbg.value(metadata i8* %14, metadata !4782, metadata !DIExpression()) #29, !dbg !4788
  %15 = icmp eq i8* %14, null, !dbg !4797
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !4799
  br i1 %17, label %18, label %19, !dbg !4799

18:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !4800
  unreachable, !dbg !4800

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4788
  ret i8* %20, !dbg !4801
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4783 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4782, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %1, metadata !4787, metadata !DIExpression()), !dbg !4802
  %3 = icmp eq i64 %1, 0, !dbg !4803
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !4804
  br i1 %5, label %6, label %7, !dbg !4804

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #29, !dbg !4805
  br label %13, !dbg !4806

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #29, !dbg !4807
  call void @llvm.dbg.value(metadata i8* %8, metadata !4782, metadata !DIExpression()), !dbg !4802
  %9 = icmp eq i8* %8, null, !dbg !4808
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !4809
  br i1 %11, label %12, label %13, !dbg !4809

12:                                               ; preds = %7
  tail call void @xalloc_die() #31, !dbg !4810
  unreachable, !dbg !4810

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4802
  ret i8* %14, !dbg !4811
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #27 !dbg !234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !239, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64* %1, metadata !240, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %2, metadata !241, metadata !DIExpression()), !dbg !4812
  %4 = load i64, i64* %1, align 8, !dbg !4813, !tbaa !1487
  call void @llvm.dbg.value(metadata i64 %4, metadata !242, metadata !DIExpression()), !dbg !4812
  %5 = icmp eq i8* %0, null, !dbg !4814
  br i1 %5, label %6, label %20, !dbg !4816

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4817
  br i1 %7, label %8, label %13, !dbg !4820

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4821
  call void @llvm.dbg.value(metadata i64 %9, metadata !242, metadata !DIExpression()), !dbg !4812
  %10 = icmp ugt i64 %2, 128, !dbg !4823
  %11 = zext i1 %10 to i64, !dbg !4823
  %12 = add nuw nsw i64 %9, %11, !dbg !4824
  call void @llvm.dbg.value(metadata i64 %12, metadata !242, metadata !DIExpression()), !dbg !4812
  br label %13, !dbg !4825

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4812
  call void @llvm.dbg.value(metadata i64 %14, metadata !242, metadata !DIExpression()), !dbg !4812
  %15 = udiv i64 9223372036854775807, %2, !dbg !4826
  %16 = icmp ult i64 %15, %14, !dbg !4826
  br i1 %16, label %19, label %17, !dbg !4828

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !242, metadata !DIExpression()), !dbg !4812
  store i64 %14, i64* %1, align 8, !dbg !4829, !tbaa !1487
  %18 = mul i64 %14, %2, !dbg !4830
  call void @llvm.dbg.value(metadata i8* %0, metadata !4782, metadata !DIExpression()) #29, !dbg !4831
  call void @llvm.dbg.value(metadata i64 %28, metadata !4787, metadata !DIExpression()) #29, !dbg !4831
  br label %31, !dbg !4833

19:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !4834
  unreachable, !dbg !4834

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4835
  %22 = icmp ugt i64 %21, %4, !dbg !4838
  br i1 %22, label %24, label %23, !dbg !4839

23:                                               ; preds = %20
  tail call void @xalloc_die() #31, !dbg !4840
  unreachable, !dbg !4840

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4841
  %26 = add nuw i64 %4, 1, !dbg !4842
  %27 = add i64 %26, %25, !dbg !4843
  call void @llvm.dbg.value(metadata i64 %27, metadata !242, metadata !DIExpression()), !dbg !4812
  store i64 %27, i64* %1, align 8, !dbg !4829, !tbaa !1487
  %28 = mul i64 %27, %2, !dbg !4830
  call void @llvm.dbg.value(metadata i8* %0, metadata !4782, metadata !DIExpression()) #29, !dbg !4831
  call void @llvm.dbg.value(metadata i64 %28, metadata !4787, metadata !DIExpression()) #29, !dbg !4831
  %29 = icmp eq i64 %28, 0, !dbg !4844
  br i1 %29, label %30, label %31, !dbg !4833

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #29, !dbg !4845
  br label %38, !dbg !4846

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #29, !dbg !4847
  call void @llvm.dbg.value(metadata i8* %33, metadata !4782, metadata !DIExpression()) #29, !dbg !4831
  %34 = icmp eq i8* %33, null, !dbg !4848
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !4849
  br i1 %36, label %37, label %38, !dbg !4849

37:                                               ; preds = %31
  tail call void @xalloc_die() #31, !dbg !4850
  unreachable, !dbg !4850

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4831
  ret i8* %39, !dbg !4851
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #27 !dbg !4852 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4854, metadata !DIExpression()), !dbg !4855
  call void @llvm.dbg.value(metadata i64 %0, metadata !4749, metadata !DIExpression()) #29, !dbg !4856
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !4858
  call void @llvm.dbg.value(metadata i8* %2, metadata !4754, metadata !DIExpression()) #29, !dbg !4856
  %3 = icmp eq i8* %2, null, !dbg !4859
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4860
  br i1 %5, label %6, label %7, !dbg !4860

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !4861
  unreachable, !dbg !4861

7:                                                ; preds = %1
  ret i8* %2, !dbg !4862
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4863 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4867, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64* %1, metadata !4868, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i8* %0, metadata !239, metadata !DIExpression()) #29, !dbg !4870
  call void @llvm.dbg.value(metadata i64* %1, metadata !240, metadata !DIExpression()) #29, !dbg !4870
  call void @llvm.dbg.value(metadata i64 1, metadata !241, metadata !DIExpression()) #29, !dbg !4870
  %3 = load i64, i64* %1, align 8, !dbg !4872, !tbaa !1487
  call void @llvm.dbg.value(metadata i64 %3, metadata !242, metadata !DIExpression()) #29, !dbg !4870
  %4 = icmp eq i8* %0, null, !dbg !4873
  br i1 %4, label %5, label %10, !dbg !4874

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4875
  br i1 %6, label %17, label %7, !dbg !4876

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !242, metadata !DIExpression()) #29, !dbg !4870
  %8 = icmp slt i64 %3, 0, !dbg !4877
  br i1 %8, label %9, label %17, !dbg !4878

9:                                                ; preds = %7
  tail call void @xalloc_die() #31, !dbg !4879
  unreachable, !dbg !4879

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !4880
  br i1 %11, label %13, label %12, !dbg !4881

12:                                               ; preds = %10
  tail call void @xalloc_die() #31, !dbg !4882
  unreachable, !dbg !4882

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !4883
  %15 = add nuw nsw i64 %3, 1, !dbg !4884
  %16 = add nuw nsw i64 %15, %14, !dbg !4885
  call void @llvm.dbg.value(metadata i64 %16, metadata !242, metadata !DIExpression()) #29, !dbg !4870
  call void @llvm.dbg.value(metadata i8* %0, metadata !4782, metadata !DIExpression()) #29, !dbg !4886
  call void @llvm.dbg.value(metadata i64 %16, metadata !4787, metadata !DIExpression()) #29, !dbg !4886
  br label %17, !dbg !4888

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !4889
  store i64 %18, i64* %1, align 8, !dbg !4889, !tbaa !1487
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #29, !dbg !4890
  call void @llvm.dbg.value(metadata i8* %19, metadata !4782, metadata !DIExpression()) #29, !dbg !4886
  %20 = icmp eq i8* %19, null, !dbg !4891
  br i1 %20, label %21, label %22, !dbg !4892

21:                                               ; preds = %17
  tail call void @xalloc_die() #31, !dbg !4893
  unreachable, !dbg !4893

22:                                               ; preds = %17
  ret i8* %19, !dbg !4894
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4895 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4897, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i64 %0, metadata !4899, metadata !DIExpression()) #29, !dbg !4904
  call void @llvm.dbg.value(metadata i64 1, metadata !4902, metadata !DIExpression()) #29, !dbg !4904
  %2 = icmp slt i64 %0, 0, !dbg !4906
  br i1 %2, label %6, label %3, !dbg !4908

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #29, !dbg !4909
  call void @llvm.dbg.value(metadata i8* %4, metadata !4903, metadata !DIExpression()) #29, !dbg !4904
  %5 = icmp eq i8* %4, null, !dbg !4910
  br i1 %5, label %6, label %7, !dbg !4911

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #31, !dbg !4912
  unreachable, !dbg !4912

7:                                                ; preds = %3
  ret i8* %4, !dbg !4913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4900 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4899, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i64 %1, metadata !4902, metadata !DIExpression()), !dbg !4914
  %3 = udiv i64 9223372036854775807, %1, !dbg !4915
  %4 = icmp ult i64 %3, %0, !dbg !4915
  br i1 %4, label %8, label %5, !dbg !4916

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #29, !dbg !4917
  call void @llvm.dbg.value(metadata i8* %6, metadata !4903, metadata !DIExpression()), !dbg !4914
  %7 = icmp eq i8* %6, null, !dbg !4918
  br i1 %7, label %8, label %9, !dbg !4919

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #31, !dbg !4920
  unreachable, !dbg !4920

9:                                                ; preds = %5
  ret i8* %6, !dbg !4921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4922 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4926, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i64 %1, metadata !4927, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i64 %1, metadata !4749, metadata !DIExpression()) #29, !dbg !4929
  %3 = tail call noalias i8* @malloc(i64 %1) #29, !dbg !4931
  call void @llvm.dbg.value(metadata i8* %3, metadata !4754, metadata !DIExpression()) #29, !dbg !4929
  %4 = icmp eq i8* %3, null, !dbg !4932
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4933
  br i1 %6, label %7, label %8, !dbg !4933

7:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !4934
  unreachable, !dbg !4934

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4935, metadata !DIExpression()) #29, !dbg !4940
  call void @llvm.dbg.value(metadata i8* %0, metadata !4938, metadata !DIExpression()) #29, !dbg !4940
  call void @llvm.dbg.value(metadata i64 %1, metadata !4939, metadata !DIExpression()) #29, !dbg !4940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #29, !dbg !4942
  ret i8* %3, !dbg !4943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4944 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4946, metadata !DIExpression()), !dbg !4947
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !4948
  %3 = add i64 %2, 1, !dbg !4949
  call void @llvm.dbg.value(metadata i8* %0, metadata !4926, metadata !DIExpression()) #29, !dbg !4950
  call void @llvm.dbg.value(metadata i64 %3, metadata !4927, metadata !DIExpression()) #29, !dbg !4950
  call void @llvm.dbg.value(metadata i64 %3, metadata !4749, metadata !DIExpression()) #29, !dbg !4952
  %4 = tail call noalias i8* @malloc(i64 %3) #29, !dbg !4954
  call void @llvm.dbg.value(metadata i8* %4, metadata !4754, metadata !DIExpression()) #29, !dbg !4952
  %5 = icmp eq i8* %4, null, !dbg !4955
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4956
  br i1 %7, label %8, label %9, !dbg !4956

8:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !4957
  unreachable, !dbg !4957

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4935, metadata !DIExpression()) #29, !dbg !4958
  call void @llvm.dbg.value(metadata i8* %0, metadata !4938, metadata !DIExpression()) #29, !dbg !4958
  call void @llvm.dbg.value(metadata i64 %3, metadata !4939, metadata !DIExpression()) #29, !dbg !4958
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #29, !dbg !4960
  ret i8* %4, !dbg !4961
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4962 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4963, !tbaa !850
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.145, i64 0, i64 0), i32 5) #29, !dbg !4964
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i64 0, i64 0), i8* %2) #29, !dbg !4965
  tail call void @abort() #31, !dbg !4966
  unreachable, !dbg !4966
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xgetcwd() local_unnamed_addr #8 !dbg !4967 {
  %1 = tail call i8* @getcwd(i8* null, i64 0) #29, !dbg !4971
  call void @llvm.dbg.value(metadata i8* %1, metadata !4970, metadata !DIExpression()), !dbg !4972
  %2 = icmp eq i8* %1, null, !dbg !4973
  br i1 %2, label %3, label %8, !dbg !4975

3:                                                ; preds = %0
  %4 = tail call i32* @__errno_location() #33, !dbg !4976
  %5 = load i32, i32* %4, align 4, !dbg !4976, !tbaa !850
  %6 = icmp eq i32 %5, 12, !dbg !4977
  br i1 %6, label %7, label %8, !dbg !4978

7:                                                ; preds = %3
  tail call void @xalloc_die() #31, !dbg !4979
  unreachable, !dbg !4979

8:                                                ; preds = %3, %0
  ret i8* %1, !dbg !4980
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #17 !dbg !4981 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4983, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.value(metadata i64 %1, metadata !4984, metadata !DIExpression()), !dbg !4989
  %3 = icmp eq i64 %0, 0, !dbg !4990
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4991
  br i1 %5, label %11, label %6, !dbg !4991

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4986, metadata !DIExpression()), !dbg !4992
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4993
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4993
  br i1 %8, label %9, label %11, !dbg !4995

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #33, !dbg !4996
  store i32 12, i32* %10, align 4, !dbg !4998, !tbaa !850
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4983, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.value(metadata i64 %12, metadata !4984, metadata !DIExpression()), !dbg !4989
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #29, !dbg !4999
  call void @llvm.dbg.value(metadata i8* %14, metadata !4985, metadata !DIExpression()), !dbg !4989
  br label %15, !dbg !5000

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4989
  ret i8* %16, !dbg !5001
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !5002 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5018, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i8* %1, metadata !5019, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %2, metadata !5020, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5021, metadata !DIExpression()), !dbg !5027
  %6 = bitcast i32* %5 to i8*, !dbg !5028
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #29, !dbg !5028
  %7 = icmp eq i32* %0, null, !dbg !5029
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5031
  call void @llvm.dbg.value(metadata i32* %8, metadata !5018, metadata !DIExpression()), !dbg !5027
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #29, !dbg !5032
  call void @llvm.dbg.value(metadata i64 %9, metadata !5022, metadata !DIExpression()), !dbg !5027
  %10 = icmp ugt i64 %9, -3, !dbg !5033
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !5034
  br i1 %12, label %13, label %18, !dbg !5034

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #29, !dbg !5035
  br i1 %14, label %18, label %15, !dbg !5036

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5037, !tbaa !901
  call void @llvm.dbg.value(metadata i8 %16, metadata !5024, metadata !DIExpression()), !dbg !5038
  %17 = zext i8 %16 to i32, !dbg !5039
  store i32 %17, i32* %8, align 4, !dbg !5040, !tbaa !850
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5027
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #29, !dbg !5041
  ret i64 %19, !dbg !5041
}

; Function Attrs: nounwind
declare !dbg !5042 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5046 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5084, metadata !DIExpression()), !dbg !5089
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #29, !dbg !5090
  call void @llvm.dbg.value(metadata i1 undef, metadata !5085, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5091, metadata !DIExpression()), !dbg !5094
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5096
  %4 = load i32, i32* %3, align 8, !dbg !5096, !tbaa !5097
  %5 = and i32 %4, 32, !dbg !5098
  %6 = icmp eq i32 %5, 0, !dbg !5098
  call void @llvm.dbg.value(metadata i1 %6, metadata !5087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #29, !dbg !5099
  %8 = icmp eq i32 %7, 0, !dbg !5100
  call void @llvm.dbg.value(metadata i1 %8, metadata !5088, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  br i1 %6, label %9, label %19, !dbg !5101

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5103
  call void @llvm.dbg.value(metadata i1 %10, metadata !5085, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  %11 = or i1 %10, %8, !dbg !5104
  %12 = xor i1 %8, true, !dbg !5104
  %13 = sext i1 %12 to i32, !dbg !5104
  br i1 %11, label %22, label %14, !dbg !5104

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #33, !dbg !5105
  %16 = load i32, i32* %15, align 4, !dbg !5105, !tbaa !850
  %17 = icmp ne i32 %16, 9, !dbg !5106
  %18 = sext i1 %17 to i32, !dbg !5107
  br label %22, !dbg !5107

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !5108

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #33, !dbg !5110
  store i32 0, i32* %21, align 4, !dbg !5112, !tbaa !850
  br label %22, !dbg !5110

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5089
  ret i32 %23, !dbg !5113
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @dir_name(i8* %0) local_unnamed_addr #8 !dbg !5114 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5116, metadata !DIExpression()), !dbg !5118
  %2 = tail call i8* @mdir_name(i8* %0) #29, !dbg !5119
  call void @llvm.dbg.value(metadata i8* %2, metadata !5117, metadata !DIExpression()), !dbg !5118
  %3 = icmp eq i8* %2, null, !dbg !5120
  br i1 %3, label %4, label %5, !dbg !5122

4:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !5123
  unreachable, !dbg !5123

5:                                                ; preds = %1
  ret i8* %2, !dbg !5124
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @dir_len(i8* %0) local_unnamed_addr #15 !dbg !5125 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5129, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.value(metadata i64 0, metadata !5130, metadata !DIExpression()), !dbg !5132
  %2 = load i8, i8* %0, align 1, !dbg !5133, !tbaa !901
  %3 = icmp eq i8 %2, 47, !dbg !5133
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !5130, metadata !DIExpression()), !dbg !5132
  %5 = tail call i8* @last_component(i8* nonnull %0) #30, !dbg !5134
  %6 = ptrtoint i8* %5 to i64, !dbg !5136
  %7 = ptrtoint i8* %0 to i64, !dbg !5136
  %8 = sub i64 %6, %7, !dbg !5136
  call void @llvm.dbg.value(metadata i64 %8, metadata !5131, metadata !DIExpression()), !dbg !5132
  %9 = icmp ult i64 %8, %4, !dbg !5137
  %10 = select i1 %9, i64 %8, i64 %4, !dbg !5137
  br label %11, !dbg !5137

11:                                               ; preds = %14, %1
  %12 = phi i64 [ %8, %1 ], [ %15, %14 ], !dbg !5138
  call void @llvm.dbg.value(metadata i64 %12, metadata !5131, metadata !DIExpression()), !dbg !5132
  %13 = icmp ugt i64 %12, %4, !dbg !5139
  br i1 %13, label %14, label %19, !dbg !5141

14:                                               ; preds = %11
  %15 = add i64 %12, -1, !dbg !5142
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !5142
  %17 = load i8, i8* %16, align 1, !dbg !5142, !tbaa !901
  %18 = icmp eq i8 %17, 47, !dbg !5142
  br i1 %18, label %11, label %19, !dbg !5144, !llvm.loop !5145

19:                                               ; preds = %14, %11
  %20 = phi i64 [ %12, %14 ], [ %10, %11 ], !dbg !5138
  ret i64 %20, !dbg !5147
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @mdir_name(i8* %0) local_unnamed_addr #28 !dbg !5148 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5150, metadata !DIExpression()), !dbg !5154
  call void @llvm.dbg.value(metadata i8* %0, metadata !5129, metadata !DIExpression()) #29, !dbg !5155
  call void @llvm.dbg.value(metadata i64 0, metadata !5130, metadata !DIExpression()) #29, !dbg !5155
  %2 = load i8, i8* %0, align 1, !dbg !5157, !tbaa !901
  %3 = icmp eq i8 %2, 47, !dbg !5157
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !5130, metadata !DIExpression()) #29, !dbg !5155
  %5 = tail call i8* @last_component(i8* nonnull %0) #30, !dbg !5158
  %6 = ptrtoint i8* %5 to i64, !dbg !5159
  %7 = ptrtoint i8* %0 to i64, !dbg !5159
  %8 = sub i64 %6, %7, !dbg !5159
  call void @llvm.dbg.value(metadata i64 %8, metadata !5131, metadata !DIExpression()) #29, !dbg !5155
  %9 = icmp ult i64 %8, %4, !dbg !5160
  %10 = select i1 %9, i64 %8, i64 %4, !dbg !5160
  br label %11, !dbg !5160

11:                                               ; preds = %14, %1
  %12 = phi i64 [ %8, %1 ], [ %15, %14 ], !dbg !5161
  call void @llvm.dbg.value(metadata i64 %12, metadata !5131, metadata !DIExpression()) #29, !dbg !5155
  %13 = icmp ugt i64 %12, %4, !dbg !5162
  br i1 %13, label %14, label %19, !dbg !5163

14:                                               ; preds = %11
  %15 = add i64 %12, -1, !dbg !5164
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !5164
  %17 = load i8, i8* %16, align 1, !dbg !5164, !tbaa !901
  %18 = icmp eq i8 %17, 47, !dbg !5164
  br i1 %18, label %11, label %19, !dbg !5165, !llvm.loop !5166

19:                                               ; preds = %11, %14
  %20 = phi i64 [ %12, %14 ], [ %10, %11 ], !dbg !5161
  call void @llvm.dbg.value(metadata i64 %20, metadata !5151, metadata !DIExpression()), !dbg !5154
  %21 = icmp eq i64 %20, 0, !dbg !5168
  call void @llvm.dbg.value(metadata i1 %21, metadata !5152, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5154
  %22 = zext i1 %21 to i64, !dbg !5169
  %23 = add i64 %20, 1, !dbg !5170
  %24 = add i64 %23, %22, !dbg !5171
  %25 = tail call noalias i8* @malloc(i64 %24) #29, !dbg !5172
  call void @llvm.dbg.value(metadata i8* %25, metadata !5153, metadata !DIExpression()), !dbg !5154
  %26 = icmp eq i8* %25, null, !dbg !5173
  br i1 %26, label %32, label %27, !dbg !5175

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %25, metadata !5176, metadata !DIExpression()) #29, !dbg !5181
  call void @llvm.dbg.value(metadata i8* %0, metadata !5179, metadata !DIExpression()) #29, !dbg !5181
  call void @llvm.dbg.value(metadata i64 %20, metadata !5180, metadata !DIExpression()) #29, !dbg !5181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %25, i8* nonnull align 1 %0, i64 %20, i1 false) #29, !dbg !5183
  br i1 %21, label %28, label %29, !dbg !5184

28:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 1, metadata !5151, metadata !DIExpression()), !dbg !5154
  store i8 46, i8* %25, align 1, !dbg !5185, !tbaa !901
  br label %29, !dbg !5187

29:                                               ; preds = %28, %27
  %30 = phi i64 [ 1, %28 ], [ %20, %27 ], !dbg !5154
  call void @llvm.dbg.value(metadata i64 %30, metadata !5151, metadata !DIExpression()), !dbg !5154
  %31 = getelementptr inbounds i8, i8* %25, i64 %30, !dbg !5188
  store i8 0, i8* %31, align 1, !dbg !5189, !tbaa !901
  br label %32, !dbg !5190

32:                                               ; preds = %19, %29
  ret i8* %25, !dbg !5191
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #14 !dbg !5192 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5194, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.value(metadata i8* %0, metadata !5195, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.value(metadata i8 0, metadata !5197, metadata !DIExpression()), !dbg !5198
  br label %2, !dbg !5199

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !5198
  call void @llvm.dbg.value(metadata i8* %3, metadata !5195, metadata !DIExpression()), !dbg !5198
  %4 = load i8, i8* %3, align 1, !dbg !5200, !tbaa !901
  %5 = icmp eq i8 %4, 47, !dbg !5200
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !5201
  call void @llvm.dbg.value(metadata i8* %6, metadata !5195, metadata !DIExpression()), !dbg !5198
  br i1 %5, label %2, label %7, !dbg !5199, !llvm.loop !5202

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !5203
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !5206
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !5207
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !5198
  call void @llvm.dbg.value(metadata i8 %11, metadata !5197, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.value(metadata i8* %10, metadata !5196, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.value(metadata i8* %9, metadata !5195, metadata !DIExpression()), !dbg !5198
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !5208

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !5209
  %14 = icmp eq i8 %13, 0, !dbg !5209
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !5213
  %16 = select i1 %14, i8 %11, i8 0, !dbg !5213
  br label %17, !dbg !5213

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !5198
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !5198
  call void @llvm.dbg.value(metadata i8 %19, metadata !5197, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.value(metadata i8* %18, metadata !5195, metadata !DIExpression()), !dbg !5198
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !5214
  call void @llvm.dbg.value(metadata i8* %20, metadata !5196, metadata !DIExpression()), !dbg !5198
  %21 = load i8, i8* %20, align 1, !dbg !5203, !tbaa !901
  br label %7, !dbg !5215, !llvm.loop !5216

22:                                               ; preds = %7
  ret i8* %9, !dbg !5218
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #15 !dbg !5219 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5221, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata i64 0, metadata !5223, metadata !DIExpression()), !dbg !5224
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !5225
  call void @llvm.dbg.value(metadata i64 %2, metadata !5222, metadata !DIExpression()), !dbg !5224
  %3 = icmp ne i64 %2, 0, !dbg !5227
  %4 = zext i1 %3 to i64, !dbg !5227
  br label %5, !dbg !5227

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !5228
  call void @llvm.dbg.value(metadata i64 %6, metadata !5222, metadata !DIExpression()), !dbg !5224
  %7 = icmp ugt i64 %6, 1, !dbg !5229
  br i1 %7, label %8, label %13, !dbg !5231

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !5232
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !5232
  %11 = load i8, i8* %10, align 1, !dbg !5232, !tbaa !901
  %12 = icmp eq i8 %11, 47, !dbg !5232
  br i1 %12, label %5, label %13, !dbg !5233, !llvm.loop !5234

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !5228
  ret i64 %14, !dbg !5236
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !5237 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5241, metadata !DIExpression()), !dbg !5246
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !5247
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #29, !dbg !5247
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !5242, metadata !DIExpression()), !dbg !5248
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #29, !dbg !5249
  %5 = icmp eq i32 %4, 0, !dbg !5249
  br i1 %5, label %6, label %13, !dbg !5251

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !5252
  %8 = load i16, i16* %7, align 16, !dbg !5252
  %9 = icmp eq i16 %8, 67, !dbg !5252
  br i1 %9, label %13, label %10, !dbg !5253

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.165, i64 0, i64 0), i64 6), !dbg !5254
  %12 = icmp ne i32 %11, 0, !dbg !5255
  br label %13, !dbg !5253

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !5246
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #29, !dbg !5256
  ret i1 %14, !dbg !5256
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @hash_pjw(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #15 !dbg !5257 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5259, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i64 %1, metadata !5260, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i64 0, metadata !5262, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i8* %0, metadata !5261, metadata !DIExpression()), !dbg !5263
  %3 = load i8, i8* %0, align 1, !dbg !5264, !tbaa !901
  %4 = icmp eq i8 %3, 0, !dbg !5267
  br i1 %4, label %15, label %5, !dbg !5267

5:                                                ; preds = %2, %5
  %6 = phi i8 [ %13, %5 ], [ %3, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = phi i8* [ %12, %5 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !5262, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i8* %8, metadata !5261, metadata !DIExpression()), !dbg !5263
  %9 = sext i8 %6 to i64, !dbg !5268
  %10 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 9), !dbg !5269
  %11 = add i64 %10, %9, !dbg !5270
  call void @llvm.dbg.value(metadata i64 %11, metadata !5262, metadata !DIExpression()), !dbg !5263
  %12 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !5271
  call void @llvm.dbg.value(metadata i8* %12, metadata !5261, metadata !DIExpression()), !dbg !5263
  %13 = load i8, i8* %12, align 1, !dbg !5264, !tbaa !901
  %14 = icmp eq i8 %13, 0, !dbg !5267
  br i1 %14, label %15, label %5, !dbg !5267, !llvm.loop !5272

15:                                               ; preds = %5, %2
  %16 = phi i64 [ 0, %2 ], [ %11, %5 ], !dbg !5263
  %17 = urem i64 %16, %1, !dbg !5274
  ret i64 %17, !dbg !5275
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !5276 {
  %1 = tail call i8* @nl_langinfo(i32 14) #29, !dbg !5281
  call void @llvm.dbg.value(metadata i8* %1, metadata !5280, metadata !DIExpression()), !dbg !5282
  %2 = icmp eq i8* %1, null, !dbg !5283
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.170, i64 0, i64 0), i8* %1, !dbg !5285
  call void @llvm.dbg.value(metadata i8* %3, metadata !5280, metadata !DIExpression()), !dbg !5282
  %4 = load i8, i8* %3, align 1, !dbg !5286, !tbaa !901
  %5 = icmp eq i8 %4, 0, !dbg !5290
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.171, i64 0, i64 0), i8* %3, !dbg !5291
  call void @llvm.dbg.value(metadata i8* %6, metadata !5280, metadata !DIExpression()), !dbg !5282
  ret i8* %6, !dbg !5292
}

; Function Attrs: nounwind
declare !dbg !5293 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !5296 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5300, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.value(metadata i8* %1, metadata !5301, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.value(metadata i64 %2, metadata !5302, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.value(metadata i32 %0, metadata !5304, metadata !DIExpression()) #29, !dbg !5313
  call void @llvm.dbg.value(metadata i8* %1, metadata !5307, metadata !DIExpression()) #29, !dbg !5313
  call void @llvm.dbg.value(metadata i64 %2, metadata !5308, metadata !DIExpression()) #29, !dbg !5313
  call void @llvm.dbg.value(metadata i32 %0, metadata !5315, metadata !DIExpression()) #29, !dbg !5321
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !5323
  call void @llvm.dbg.value(metadata i8* %4, metadata !5320, metadata !DIExpression()) #29, !dbg !5321
  call void @llvm.dbg.value(metadata i8* %4, metadata !5309, metadata !DIExpression()) #29, !dbg !5313
  %5 = icmp eq i8* %4, null, !dbg !5324
  br i1 %5, label %6, label %9, !dbg !5325

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5326
  br i1 %7, label %19, label %8, !dbg !5329

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !5330, !tbaa !901
  br label %19, !dbg !5331

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #30, !dbg !5332
  call void @llvm.dbg.value(metadata i64 %10, metadata !5310, metadata !DIExpression()) #29, !dbg !5333
  %11 = icmp ult i64 %10, %2, !dbg !5334
  br i1 %11, label %12, label %14, !dbg !5336

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5337
  call void @llvm.dbg.value(metadata i8* %1, metadata !5339, metadata !DIExpression()) #29, !dbg !5344
  call void @llvm.dbg.value(metadata i8* %4, metadata !5342, metadata !DIExpression()) #29, !dbg !5344
  call void @llvm.dbg.value(metadata i64 %13, metadata !5343, metadata !DIExpression()) #29, !dbg !5344
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #29, !dbg !5346
  br label %19, !dbg !5347

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5348
  br i1 %15, label %19, label %16, !dbg !5351

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5352
  call void @llvm.dbg.value(metadata i8* %1, metadata !5339, metadata !DIExpression()) #29, !dbg !5354
  call void @llvm.dbg.value(metadata i8* %4, metadata !5342, metadata !DIExpression()) #29, !dbg !5354
  call void @llvm.dbg.value(metadata i64 %17, metadata !5343, metadata !DIExpression()) #29, !dbg !5354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #29, !dbg !5356
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5357
  store i8 0, i8* %18, align 1, !dbg !5358, !tbaa !901
  br label %19, !dbg !5359

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5360
  ret i32 %20, !dbg !5361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5362 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5364, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.value(metadata i32 %0, metadata !5315, metadata !DIExpression()) #29, !dbg !5366
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !5368
  call void @llvm.dbg.value(metadata i8* %2, metadata !5320, metadata !DIExpression()) #29, !dbg !5366
  ret i8* %2, !dbg !5369
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !5370 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5408, metadata !DIExpression()), !dbg !5412
  call void @llvm.dbg.value(metadata i32 0, metadata !5409, metadata !DIExpression()), !dbg !5412
  call void @llvm.dbg.value(metadata i32 0, metadata !5411, metadata !DIExpression()), !dbg !5412
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !5413
  call void @llvm.dbg.value(metadata i32 %2, metadata !5410, metadata !DIExpression()), !dbg !5412
  %3 = icmp slt i32 %2, 0, !dbg !5414
  br i1 %3, label %4, label %6, !dbg !5416

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5417
  br label %24, !dbg !5418

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !5419
  %8 = icmp eq i32 %7, 0, !dbg !5419
  br i1 %8, label %13, label %9, !dbg !5421

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !5422
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #29, !dbg !5423
  %12 = icmp eq i64 %11, -1, !dbg !5424
  br i1 %12, label %16, label %13, !dbg !5425

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #29, !dbg !5426
  %15 = icmp eq i32 %14, 0, !dbg !5426
  br i1 %15, label %16, label %18, !dbg !5427

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !5409, metadata !DIExpression()), !dbg !5412
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5428
  call void @llvm.dbg.value(metadata i32 %21, metadata !5411, metadata !DIExpression()), !dbg !5412
  br label %24, !dbg !5429

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #33, !dbg !5430
  %20 = load i32, i32* %19, align 4, !dbg !5430, !tbaa !850
  call void @llvm.dbg.value(metadata i32 %20, metadata !5409, metadata !DIExpression()), !dbg !5412
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5428
  call void @llvm.dbg.value(metadata i32 %21, metadata !5411, metadata !DIExpression()), !dbg !5412
  %22 = icmp eq i32 %20, 0, !dbg !5431
  br i1 %22, label %24, label %23, !dbg !5429

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5433, !tbaa !850
  call void @llvm.dbg.value(metadata i32 -1, metadata !5411, metadata !DIExpression()), !dbg !5412
  br label %24, !dbg !5435

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5412
  ret i32 %25, !dbg !5436
}

; Function Attrs: nofree nounwind
declare !dbg !5437 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5440 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5441 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5445 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5483, metadata !DIExpression()), !dbg !5484
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5485
  br i1 %2, label %6, label %3, !dbg !5487

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !5488
  %5 = icmp eq i32 %4, 0, !dbg !5488
  br i1 %5, label %6, label %8, !dbg !5489

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5490
  br label %17, !dbg !5491

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5492, metadata !DIExpression()) #29, !dbg !5497
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5499
  %10 = load i32, i32* %9, align 8, !dbg !5499, !tbaa !5097
  %11 = and i32 %10, 256, !dbg !5501
  %12 = icmp eq i32 %11, 0, !dbg !5501
  br i1 %12, label %15, label %13, !dbg !5502

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #29, !dbg !5503
  br label %15, !dbg !5503

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5504
  br label %17, !dbg !5505

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5484
  ret i32 %18, !dbg !5506
}

; Function Attrs: nofree nounwind
declare !dbg !5507 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !5510 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5549, metadata !DIExpression()), !dbg !5555
  call void @llvm.dbg.value(metadata i64 %1, metadata !5550, metadata !DIExpression()), !dbg !5555
  call void @llvm.dbg.value(metadata i32 %2, metadata !5551, metadata !DIExpression()), !dbg !5555
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5556
  %5 = load i8*, i8** %4, align 8, !dbg !5556, !tbaa !5557
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5558
  %7 = load i8*, i8** %6, align 8, !dbg !5558, !tbaa !5559
  %8 = icmp eq i8* %5, %7, !dbg !5560
  br i1 %8, label %9, label %28, !dbg !5561

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5562
  %11 = load i8*, i8** %10, align 8, !dbg !5562, !tbaa !895
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5563
  %13 = load i8*, i8** %12, align 8, !dbg !5563, !tbaa !5564
  %14 = icmp eq i8* %11, %13, !dbg !5565
  br i1 %14, label %15, label %28, !dbg !5566

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5567
  %17 = load i8*, i8** %16, align 8, !dbg !5567, !tbaa !5568
  %18 = icmp eq i8* %17, null, !dbg !5569
  br i1 %18, label %19, label %28, !dbg !5570

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !5571
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #29, !dbg !5572
  call void @llvm.dbg.value(metadata i64 %21, metadata !5552, metadata !DIExpression()), !dbg !5573
  %22 = icmp eq i64 %21, -1, !dbg !5574
  br i1 %22, label %30, label %23, !dbg !5576

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5577
  %25 = load i32, i32* %24, align 8, !dbg !5578, !tbaa !5097
  %26 = and i32 %25, -17, !dbg !5578
  store i32 %26, i32* %24, align 8, !dbg !5578, !tbaa !5097
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5579
  store i64 %21, i64* %27, align 8, !dbg !5580, !tbaa !5581
  br label %30, !dbg !5582

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5583
  br label %30, !dbg !5584

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5555
  ret i32 %31, !dbg !5585
}

; Function Attrs: nofree nounwind
declare !dbg !5586 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #11 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { norecurse nounwind readnone sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind }
attributes #22 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #26 = { nofree nosync nounwind willreturn }
attributes #27 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #29 = { nounwind }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind readnone willreturn }
attributes #34 = { cold }

!llvm.dbg.cu = !{!2, !57, !174, !214, !63, !70, !217, !76, !219, !96, !102, !221, !223, !168, !229, !246, !248, !250, !252, !255, !257, !259, !261, !264, !266, !268, !657, !659, !661, !663}
!llvm.ident = !{!665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665, !665}
!llvm.module.flags = !{!666, !667, !668, !669, !670}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/readlink.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "canonicalize_mode_t", file: !6, line: 28, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/canonicalize.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "CAN_EXISTING", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "CAN_ALL_BUT_LAST", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CAN_MISSING", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CAN_NOLINKS", value: 4, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!27 = !{!28, !30, !31}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !{!33, !36, !0}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "no_newline", scope: !2, file: !3, line: 35, type: !35, isLocal: true, isDefinition: true)
!35 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 38, type: !35, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2816, elements: !51)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !41, line: 50, size: 256, elements: !42)
!41 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!42 = !{!43, !46, !48, !50}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 52, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !40, file: !41, line: 55, baseType: !47, size: 32, offset: 64)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !40, file: !41, line: 56, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !40, file: !41, line: 57, baseType: !47, size: 32, offset: 192)
!51 = !{!52}
!52 = !DISubrange(count: 11)
!53 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!54 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "Version", scope: !57, file: !58, line: 2, type: !44, isLocal: false, isDefinition: true)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, globals: !60, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!59 = !{}
!60 = !{!55}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "file_name", scope: !63, file: !64, line: 46, type: !44, isLocal: true, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, globals: !65, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!65 = !{!61, !66}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !63, file: !64, line: 56, type: !35, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "exit_failure", scope: !70, file: !71, line: 24, type: !73, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, globals: !72, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!72 = !{!68}
!73 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "default_tuning", scope: !76, file: !77, line: 130, type: !83, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !78, globals: !82, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "lib/hash.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !{!79, !30, !80}
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 46, baseType: !79)
!81 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!82 = !{!74}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_tuning", file: !85, line: 65, baseType: !86)
!85 = !DIFile(filename: "./lib/hash.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_tuning", file: !85, line: 53, size: 160, elements: !87)
!87 = !{!88, !90, !91, !92, !93}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "shrink_threshold", scope: !86, file: !85, line: 58, baseType: !89, size: 32)
!89 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "shrink_factor", scope: !86, file: !85, line: 59, baseType: !89, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "growth_threshold", scope: !86, file: !85, line: 60, baseType: !89, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "growth_factor", scope: !86, file: !85, line: 61, baseType: !89, size: 32, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "is_n_buckets", scope: !86, file: !85, line: 62, baseType: !35, size: 8, offset: 128)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "program_name", scope: !96, file: !97, line: 33, type: !44, isLocal: false, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !98, globals: !99, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!98 = !{!30, !28}
!99 = !{!94}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !102, file: !103, line: 85, type: !164, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !104, retainedTypes: !125, globals: !127, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!104 = !{!13, !105, !110}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !14, line: 242, baseType: !7, size: 32, elements: !106)
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!109 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 46, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!113 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!117 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!120 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!121 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!123 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!124 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!125 = !{!47, !126, !80, !28}
!126 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!127 = !{!100, !128, !134, !146, !148, !153, !160, !162}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !102, file: !103, line: 101, type: !130, isLocal: false, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 320, elements: !132)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!132 = !{!133}
!133 = !DISubrange(count: 10)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !102, file: !103, line: 1052, type: !136, isLocal: false, isDefinition: true)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !103, line: 65, size: 448, elements: !137)
!137 = !{!138, !139, !140, !144, !145}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !136, file: !103, line: 68, baseType: !13, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !103, line: 71, baseType: !47, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !136, file: !103, line: 75, baseType: !141, size: 256, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !136, file: !103, line: 78, baseType: !44, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !136, file: !103, line: 81, baseType: !44, size: 64, offset: 384)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !102, file: !103, line: 116, type: !136, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "slot0", scope: !102, file: !103, line: 842, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 256)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "slotvec", scope: !102, file: !103, line: 845, type: !155, isLocal: true, isDefinition: true)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !103, line: 834, size: 128, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !156, file: !103, line: 836, baseType: !80, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !156, file: !103, line: 837, baseType: !28, size: 64, offset: 64)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "nslots", scope: !102, file: !103, line: 843, type: !47, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "slotvec0", scope: !102, file: !103, line: 844, type: !156, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 704, elements: !51)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !168, file: !169, line: 26, type: !171, isLocal: false, isDefinition: true)
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, globals: !170, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !{!166}
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 47)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !176, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/areadlink-with-size.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !{!177}
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !178, file: !175, line: 64, baseType: !7, size: 32, elements: !211)
!178 = distinct !DISubprogram(name: "areadlink_with_size", scope: !175, file: !175, line: 53, type: !179, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{!28, !44, !80}
!181 = !{!182, !183, !184, !185, !186, !187, !188, !195, !196, !200, !201, !202, !205}
!182 = !DILocalVariable(name: "file", arg: 1, scope: !178, file: !175, line: 53, type: !44)
!183 = !DILocalVariable(name: "size", arg: 2, scope: !178, file: !175, line: 53, type: !80)
!184 = !DILocalVariable(name: "symlink_max", scope: !178, file: !175, line: 58, type: !80)
!185 = !DILocalVariable(name: "INITIAL_LIMIT_BOUND", scope: !178, file: !175, line: 59, type: !80)
!186 = !DILocalVariable(name: "initial_limit", scope: !178, file: !175, line: 60, type: !80)
!187 = !DILocalVariable(name: "buf_size", scope: !178, file: !175, line: 67, type: !80)
!188 = !DILocalVariable(name: "r", scope: !189, file: !175, line: 72, type: !190)
!189 = distinct !DILexicalBlock(scope: !178, file: !175, line: 71, column: 5)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !191, line: 108, baseType: !192)
!191 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !193, line: 194, baseType: !194)
!193 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!194 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!195 = !DILocalVariable(name: "link_length", scope: !189, file: !175, line: 73, type: !80)
!196 = !DILocalVariable(name: "stackbuf", scope: !189, file: !175, line: 74, type: !197)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1024, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 128)
!200 = !DILocalVariable(name: "buf", scope: !189, file: !175, line: 75, type: !28)
!201 = !DILocalVariable(name: "buffer", scope: !189, file: !175, line: 76, type: !28)
!202 = !DILocalVariable(name: "saved_errno", scope: !203, file: !175, line: 92, type: !47)
!203 = distinct !DILexicalBlock(scope: !204, file: !175, line: 91, column: 9)
!204 = distinct !DILexicalBlock(scope: !189, file: !175, line: 90, column: 11)
!205 = !DILocalVariable(name: "shrinked_buffer", scope: !206, file: !175, line: 110, type: !28)
!206 = distinct !DILexicalBlock(scope: !207, file: !175, line: 108, column: 13)
!207 = distinct !DILexicalBlock(scope: !208, file: !175, line: 107, column: 20)
!208 = distinct !DILexicalBlock(scope: !209, file: !175, line: 101, column: 15)
!209 = distinct !DILexicalBlock(scope: !210, file: !175, line: 99, column: 9)
!210 = distinct !DILexicalBlock(scope: !189, file: !175, line: 98, column: 11)
!211 = !{!212}
!212 = !DIEnumerator(name: "stackbuf_size", value: 128, isUnsigned: true)
!213 = !{!30}
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !216, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/canonicalize.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!216 = !{!5}
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !98, splitDebugInlining: false, nameTableKind: None)
!218 = !DIFile(filename: "lib/file-set.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/hash-triple.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "lib/same.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !225, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!224 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!225 = !{!226}
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !224, line: 40, baseType: !7, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !231, retainedTypes: !245, splitDebugInlining: false, nameTableKind: None)
!230 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!231 = !{!232}
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !234, file: !233, line: 186, baseType: !7, size: 32, elements: !243)
!233 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = distinct !DISubprogram(name: "x2nrealloc", scope: !233, file: !233, line: 174, type: !235, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !238)
!235 = !DISubroutineType(types: !236)
!236 = !{!30, !30, !237, !80}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!238 = !{!239, !240, !241, !242}
!239 = !DILocalVariable(name: "p", arg: 1, scope: !234, file: !233, line: 174, type: !30)
!240 = !DILocalVariable(name: "pn", arg: 2, scope: !234, file: !233, line: 174, type: !237)
!241 = !DILocalVariable(name: "s", arg: 3, scope: !234, file: !233, line: 174, type: !80)
!242 = !DILocalVariable(name: "n", scope: !234, file: !233, line: 176, type: !80)
!243 = !{!244}
!244 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!245 = !{!80, !28, !30}
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "lib/xgetcwd.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !254, splitDebugInlining: false, nameTableKind: None)
!253 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!254 = !{!80}
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/dirname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !263, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!263 = !{!28}
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/hash-pjw.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !270, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!270 = !{!271}
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !272, line: 41, baseType: !7, size: 32, elements: !273)
!272 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!274 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!275 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!276 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!277 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!278 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!279 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!280 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!281 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!282 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!283 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!284 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!285 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!286 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!287 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!288 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!289 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!290 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!291 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!292 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!293 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!294 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!295 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!296 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!297 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!298 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!299 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!300 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!301 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!302 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!303 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!304 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!305 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!306 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!307 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!308 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!309 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!310 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!311 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!312 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!313 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!314 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!315 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!316 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!317 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!318 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!319 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!320 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!321 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!322 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!323 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!382 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!385 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!386 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!387 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!388 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!389 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!390 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!391 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!392 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!393 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!394 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!395 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!396 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!469 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!542 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!543 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!544 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!545 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!546 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!547 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!548 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!549 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!550 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!551 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!552 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!553 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!554 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!555 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!556 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!558 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!559 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!560 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!561 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!562 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!563 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!589 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!590 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!591 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!592 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!593 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!598 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!599 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!600 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!601 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!657 = distinct !DICompileUnit(language: DW_LANG_C99, file: !658, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!658 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, splitDebugInlining: false, nameTableKind: None)
!660 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !213, splitDebugInlining: false, nameTableKind: None)
!664 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!665 = !{!"clang version 12.0.1"}
!666 = !{i32 7, !"Dwarf Version", i32 4}
!667 = !{i32 2, !"Debug Info Version", i32 3}
!668 = !{i32 1, !"wchar_size", i32 4}
!669 = !{i32 7, !"PIC Level", i32 2}
!670 = !{i32 7, !"PIE Level", i32 2}
!671 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !672, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !47}
!674 = !{!675}
!675 = !DILocalVariable(name: "status", arg: 1, scope: !671, file: !3, line: 56, type: !47)
!676 = !DILocation(line: 0, scope: !671)
!677 = !DILocation(line: 58, column: 14, scope: !678)
!678 = distinct !DILexicalBlock(scope: !671, file: !3, line: 58, column: 7)
!679 = !DILocation(line: 58, column: 7, scope: !671)
!680 = !DILocation(line: 59, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !3, line: 59, column: 5)
!682 = !{!683, !683, i64 0}
!683 = !{!"any pointer", !684, i64 0}
!684 = !{!"omnipotent char", !685, i64 0}
!685 = !{!"Simple C/C++ TBAA"}
!686 = !DILocation(line: 62, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !678, file: !3, line: 61, column: 5)
!688 = !DILocation(line: 63, column: 7, scope: !687)
!689 = !DILocation(line: 65, column: 7, scope: !687)
!690 = !DILocation(line: 75, column: 7, scope: !687)
!691 = !DILocation(line: 86, column: 7, scope: !687)
!692 = !DILocation(line: 87, column: 7, scope: !687)
!693 = !DILocalVariable(name: "program", arg: 1, scope: !694, file: !695, line: 634, type: !44)
!694 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !695, file: !695, line: 634, type: !696, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !698)
!695 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!696 = !DISubroutineType(types: !697)
!697 = !{null, !44}
!698 = !{!693, !699, !708, !709, !711}
!699 = !DILocalVariable(name: "infomap", scope: !694, file: !695, line: 636, type: !700)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 896, elements: !706)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !694, file: !695, line: 636, size: 128, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !702, file: !695, line: 636, baseType: !44, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !702, file: !695, line: 636, baseType: !44, size: 64, offset: 64)
!706 = !{!707}
!707 = !DISubrange(count: 7)
!708 = !DILocalVariable(name: "node", scope: !694, file: !695, line: 646, type: !44)
!709 = !DILocalVariable(name: "map_prog", scope: !694, file: !695, line: 647, type: !710)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!711 = !DILocalVariable(name: "lc_messages", scope: !694, file: !695, line: 659, type: !44)
!712 = !DILocation(line: 0, scope: !694, inlinedAt: !713)
!713 = distinct !DILocation(line: 88, column: 7, scope: !687)
!714 = !DILocation(line: 636, column: 3, scope: !694, inlinedAt: !713)
!715 = !DILocation(line: 636, column: 67, scope: !694, inlinedAt: !713)
!716 = !DILocation(line: 647, column: 36, scope: !694, inlinedAt: !713)
!717 = !DILocation(line: 649, column: 3, scope: !694, inlinedAt: !713)
!718 = !DILocation(line: 649, column: 33, scope: !694, inlinedAt: !713)
!719 = !DILocation(line: 650, column: 13, scope: !694, inlinedAt: !713)
!720 = !DILocation(line: 649, column: 20, scope: !694, inlinedAt: !713)
!721 = !{!722, !683, i64 0}
!722 = !{!"infomap", !683, i64 0, !683, i64 8}
!723 = !DILocation(line: 649, column: 10, scope: !694, inlinedAt: !713)
!724 = !DILocation(line: 649, column: 28, scope: !694, inlinedAt: !713)
!725 = distinct !{!725, !717, !719, !726}
!726 = !{!"llvm.loop.mustprogress"}
!727 = !DILocation(line: 652, column: 17, scope: !728, inlinedAt: !713)
!728 = distinct !DILexicalBlock(scope: !694, file: !695, line: 652, column: 7)
!729 = !{!722, !683, i64 8}
!730 = !DILocation(line: 652, column: 7, scope: !728, inlinedAt: !713)
!731 = !DILocation(line: 652, column: 7, scope: !694, inlinedAt: !713)
!732 = !DILocation(line: 655, column: 3, scope: !694, inlinedAt: !713)
!733 = !DILocation(line: 659, column: 29, scope: !694, inlinedAt: !713)
!734 = !DILocation(line: 660, column: 7, scope: !735, inlinedAt: !713)
!735 = distinct !DILexicalBlock(scope: !694, file: !695, line: 660, column: 7)
!736 = !DILocation(line: 660, column: 19, scope: !735, inlinedAt: !713)
!737 = !DILocation(line: 660, column: 22, scope: !735, inlinedAt: !713)
!738 = !DILocation(line: 660, column: 7, scope: !694, inlinedAt: !713)
!739 = !DILocation(line: 666, column: 7, scope: !740, inlinedAt: !713)
!740 = distinct !DILexicalBlock(scope: !735, file: !695, line: 661, column: 5)
!741 = !DILocation(line: 668, column: 5, scope: !740, inlinedAt: !713)
!742 = !DILocation(line: 669, column: 3, scope: !694, inlinedAt: !713)
!743 = !DILocation(line: 671, column: 3, scope: !694, inlinedAt: !713)
!744 = !DILocation(line: 673, column: 1, scope: !694, inlinedAt: !713)
!745 = !DILocation(line: 90, column: 3, scope: !671)
!746 = !DISubprogram(name: "dcgettext", scope: !747, file: !747, line: 51, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!747 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!748 = !DISubroutineType(types: !749)
!749 = !{!28, !44, !44, !47}
!750 = !DISubprogram(name: "fputs_unlocked", scope: !751, file: !751, line: 667, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!751 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!752 = !DISubroutineType(types: !753)
!753 = !{!47, !44, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 49, size: 1728, elements: !757)
!756 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !773, !774, !775, !776, !778, !779, !781, !785, !788, !790, !793, !796, !797, !798, !799, !800}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !755, file: !756, line: 51, baseType: !47, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !755, file: !756, line: 54, baseType: !28, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !755, file: !756, line: 55, baseType: !28, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !755, file: !756, line: 56, baseType: !28, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !755, file: !756, line: 57, baseType: !28, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !755, file: !756, line: 58, baseType: !28, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !755, file: !756, line: 59, baseType: !28, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !755, file: !756, line: 60, baseType: !28, size: 64, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !755, file: !756, line: 61, baseType: !28, size: 64, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !755, file: !756, line: 64, baseType: !28, size: 64, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !755, file: !756, line: 65, baseType: !28, size: 64, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !755, file: !756, line: 66, baseType: !28, size: 64, offset: 704)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !755, file: !756, line: 68, baseType: !771, size: 64, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !756, line: 36, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !755, file: !756, line: 70, baseType: !754, size: 64, offset: 832)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !755, file: !756, line: 72, baseType: !47, size: 32, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !755, file: !756, line: 73, baseType: !47, size: 32, offset: 928)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !755, file: !756, line: 74, baseType: !777, size: 64, offset: 960)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !193, line: 152, baseType: !194)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !755, file: !756, line: 77, baseType: !126, size: 16, offset: 1024)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !755, file: !756, line: 78, baseType: !780, size: 8, offset: 1040)
!780 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !755, file: !756, line: 79, baseType: !782, size: 8, offset: 1048)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 1)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !755, file: !756, line: 81, baseType: !786, size: 64, offset: 1088)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !756, line: 43, baseType: null)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !755, file: !756, line: 89, baseType: !789, size: 64, offset: 1152)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !193, line: 153, baseType: !194)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !755, file: !756, line: 91, baseType: !791, size: 64, offset: 1216)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !756, line: 37, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !755, file: !756, line: 92, baseType: !794, size: 64, offset: 1280)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !756, line: 38, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !755, file: !756, line: 93, baseType: !754, size: 64, offset: 1344)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !755, file: !756, line: 94, baseType: !30, size: 64, offset: 1408)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !755, file: !756, line: 95, baseType: !80, size: 64, offset: 1472)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !755, file: !756, line: 96, baseType: !47, size: 32, offset: 1536)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !755, file: !756, line: 98, baseType: !801, size: 160, offset: 1568)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 20)
!804 = !DISubprogram(name: "setlocale", scope: !805, file: !805, line: 122, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!805 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!806 = !DISubroutineType(types: !807)
!807 = !{!28, !47, !44}
!808 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 94, type: !809, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!809 = !DISubroutineType(types: !810)
!810 = !{!47, !47, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!812 = !{!813, !814, !815, !816, !817, !818, !819, !823}
!813 = !DILocalVariable(name: "argc", arg: 1, scope: !808, file: !3, line: 94, type: !47)
!814 = !DILocalVariable(name: "argv", arg: 2, scope: !808, file: !3, line: 94, type: !811)
!815 = !DILocalVariable(name: "can_mode", scope: !808, file: !3, line: 97, type: !47)
!816 = !DILocalVariable(name: "status", scope: !808, file: !3, line: 98, type: !47)
!817 = !DILocalVariable(name: "optc", scope: !808, file: !3, line: 99, type: !47)
!818 = !DILocalVariable(name: "use_nuls", scope: !808, file: !3, line: 100, type: !35)
!819 = !DILocalVariable(name: "fname", scope: !820, file: !3, line: 158, type: !44)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 157, column: 5)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 156, column: 3)
!822 = distinct !DILexicalBlock(scope: !808, file: !3, line: 156, column: 3)
!823 = !DILocalVariable(name: "value", scope: !820, file: !3, line: 159, type: !28)
!824 = !DILocation(line: 0, scope: !808)
!825 = !DILocation(line: 103, column: 21, scope: !808)
!826 = !DILocation(line: 103, column: 3, scope: !808)
!827 = !DILocation(line: 104, column: 3, scope: !808)
!828 = !DILocation(line: 105, column: 3, scope: !808)
!829 = !DILocation(line: 106, column: 3, scope: !808)
!830 = !DILocation(line: 108, column: 3, scope: !808)
!831 = !DILocation(line: 110, column: 3, scope: !808)
!832 = !DILocation(line: 110, column: 18, scope: !808)
!833 = distinct !{!833, !831, !834, !726}
!834 = !DILocation(line: 141, column: 5, scope: !808)
!835 = !DILocation(line: 119, column: 11, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 113, column: 9)
!837 = distinct !DILexicalBlock(scope: !808, file: !3, line: 111, column: 5)
!838 = !DILocation(line: 122, column: 11, scope: !836)
!839 = !DILocation(line: 124, column: 22, scope: !836)
!840 = !DILocation(line: 125, column: 11, scope: !836)
!841 = !DILocation(line: 128, column: 19, scope: !836)
!842 = !DILocation(line: 129, column: 11, scope: !836)
!843 = !DILocation(line: 131, column: 19, scope: !836)
!844 = !DILocation(line: 132, column: 11, scope: !836)
!845 = !DILocation(line: 136, column: 9, scope: !836)
!846 = !DILocation(line: 137, column: 9, scope: !836)
!847 = !DILocation(line: 139, column: 11, scope: !836)
!848 = !DILocation(line: 143, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !808, file: !3, line: 143, column: 7)
!850 = !{!851, !851, i64 0}
!851 = !{!"int", !684, i64 0}
!852 = !DILocation(line: 143, column: 14, scope: !849)
!853 = !DILocation(line: 143, column: 7, scope: !808)
!854 = !DILocation(line: 145, column: 20, scope: !855)
!855 = distinct !DILexicalBlock(scope: !849, file: !3, line: 144, column: 5)
!856 = !DILocation(line: 145, column: 7, scope: !855)
!857 = !DILocation(line: 146, column: 7, scope: !855)
!858 = !DILocation(line: 149, column: 12, scope: !859)
!859 = distinct !DILexicalBlock(scope: !808, file: !3, line: 149, column: 7)
!860 = !DILocation(line: 149, column: 21, scope: !859)
!861 = !DILocation(line: 149, column: 7, scope: !808)
!862 = !DILocation(line: 151, column: 11, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 151, column: 11)
!864 = distinct !DILexicalBlock(scope: !859, file: !3, line: 150, column: 5)
!865 = !DILocation(line: 151, column: 11, scope: !864)
!866 = !DILocation(line: 152, column: 22, scope: !863)
!867 = !DILocation(line: 152, column: 9, scope: !863)
!868 = !DILocation(line: 156, column: 10, scope: !821)
!869 = !DILocation(line: 153, column: 18, scope: !864)
!870 = !DILocation(line: 154, column: 5, scope: !864)
!871 = !DILocation(line: 156, column: 17, scope: !821)
!872 = !DILocation(line: 156, column: 3, scope: !822)
!873 = !DILocation(line: 158, column: 27, scope: !820)
!874 = !DILocation(line: 0, scope: !820)
!875 = !DILocation(line: 159, column: 22, scope: !820)
!876 = !DILocation(line: 160, column: 24, scope: !820)
!877 = !DILocation(line: 161, column: 24, scope: !820)
!878 = !DILocation(line: 162, column: 11, scope: !879)
!879 = distinct !DILexicalBlock(scope: !820, file: !3, line: 162, column: 11)
!880 = !DILocation(line: 162, column: 11, scope: !820)
!881 = !DILocation(line: 164, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 163, column: 9)
!883 = !DILocation(line: 165, column: 17, scope: !884)
!884 = distinct !DILexicalBlock(scope: !882, file: !3, line: 165, column: 15)
!885 = !DILocation(line: 165, column: 15, scope: !882)
!886 = !DILocalVariable(name: "__c", arg: 1, scope: !887, file: !888, line: 108, type: !47)
!887 = distinct !DISubprogram(name: "putchar_unlocked", scope: !888, file: !888, line: 108, type: !889, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !891)
!888 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!889 = !DISubroutineType(types: !890)
!890 = !{!47, !47}
!891 = !{!886}
!892 = !DILocation(line: 0, scope: !887, inlinedAt: !893)
!893 = distinct !DILocation(line: 166, column: 13, scope: !884)
!894 = !DILocation(line: 110, column: 10, scope: !887, inlinedAt: !893)
!895 = !{!896, !683, i64 40}
!896 = !{!"_IO_FILE", !851, i64 0, !683, i64 8, !683, i64 16, !683, i64 24, !683, i64 32, !683, i64 40, !683, i64 48, !683, i64 56, !683, i64 64, !683, i64 72, !683, i64 80, !683, i64 88, !683, i64 96, !683, i64 104, !851, i64 112, !851, i64 116, !897, i64 120, !898, i64 128, !684, i64 130, !684, i64 131, !683, i64 136, !897, i64 144, !683, i64 152, !683, i64 160, !683, i64 168, !683, i64 176, !897, i64 184, !851, i64 192, !684, i64 196}
!897 = !{!"long", !684, i64 0}
!898 = !{!"short", !684, i64 0}
!899 = !{!896, !683, i64 48}
!900 = !{!"branch_weights", i32 2000, i32 1}
!901 = !{!684, !684, i64 0}
!902 = !DILocation(line: 167, column: 11, scope: !882)
!903 = !DILocation(line: 168, column: 9, scope: !882)
!904 = !DILocation(line: 172, column: 15, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 172, column: 15)
!906 = distinct !DILexicalBlock(scope: !879, file: !3, line: 170, column: 9)
!907 = !DILocation(line: 172, column: 15, scope: !906)
!908 = !DILocation(line: 173, column: 23, scope: !905)
!909 = !DILocation(line: 173, column: 36, scope: !905)
!910 = !DILocation(line: 173, column: 13, scope: !905)
!911 = !DILocation(line: 156, column: 25, scope: !821)
!912 = distinct !{!912, !872, !913, !726}
!913 = !DILocation(line: 175, column: 5, scope: !822)
!914 = !DILocation(line: 98, column: 7, scope: !808)
!915 = !DILocation(line: 177, column: 3, scope: !808)
!916 = !DISubprogram(name: "bindtextdomain", scope: !747, file: !747, line: 86, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!917 = !DISubroutineType(types: !918)
!918 = !{!28, !44, !44}
!919 = !DISubprogram(name: "textdomain", scope: !747, file: !747, line: 82, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!920 = !DISubroutineType(types: !921)
!921 = !{!28, !44}
!922 = !DISubprogram(name: "atexit", scope: !923, file: !923, line: 595, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!923 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!924 = !DISubroutineType(types: !925)
!925 = !{!47, !926}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null}
!929 = !DISubprogram(name: "getopt_long", scope: !41, file: !41, line: 66, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!930 = !DISubroutineType(types: !931)
!931 = !{!47, !47, !932, !44, !934, !49}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!935 = !DISubprogram(name: "error", scope: !936, file: !936, line: 52, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!936 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!937 = !DISubroutineType(types: !938)
!938 = !{null, !47, !47, !44, null}
!939 = !DILocation(line: 0, scope: !178)
!940 = !DILocation(line: 67, column: 27, scope: !178)
!941 = !DILocation(line: 67, column: 22, scope: !178)
!942 = !DILocation(line: 70, column: 3, scope: !178)
!943 = !DILocation(line: 67, column: 10, scope: !178)
!944 = !DILocation(line: 74, column: 7, scope: !189)
!945 = !DILocation(line: 74, column: 12, scope: !189)
!946 = !DILocation(line: 0, scope: !189)
!947 = !DILocation(line: 78, column: 24, scope: !948)
!948 = distinct !DILexicalBlock(scope: !189, file: !175, line: 78, column: 11)
!949 = !DILocation(line: 80, column: 26, scope: !950)
!950 = distinct !DILexicalBlock(scope: !948, file: !175, line: 79, column: 9)
!951 = !DILocation(line: 81, column: 16, scope: !952)
!952 = distinct !DILexicalBlock(scope: !950, file: !175, line: 81, column: 15)
!953 = !DILocation(line: 81, column: 15, scope: !950)
!954 = !DILocation(line: 85, column: 11, scope: !189)
!955 = !DILocation(line: 90, column: 13, scope: !204)
!956 = !DILocation(line: 90, column: 17, scope: !204)
!957 = !DILocation(line: 90, column: 20, scope: !204)
!958 = !DILocation(line: 90, column: 26, scope: !204)
!959 = !DILocation(line: 90, column: 11, scope: !189)
!960 = !DILocation(line: 0, scope: !203)
!961 = !DILocation(line: 93, column: 11, scope: !203)
!962 = !DILocation(line: 94, column: 17, scope: !203)
!963 = !DILocation(line: 98, column: 23, scope: !210)
!964 = !DILocation(line: 98, column: 11, scope: !189)
!965 = !DILocation(line: 100, column: 11, scope: !209)
!966 = !DILocation(line: 100, column: 28, scope: !209)
!967 = !DILocation(line: 101, column: 16, scope: !208)
!968 = !DILocation(line: 0, scope: !208)
!969 = !DILocation(line: 101, column: 15, scope: !209)
!970 = !DILocation(line: 103, column: 24, scope: !971)
!971 = distinct !DILexicalBlock(scope: !208, file: !175, line: 102, column: 13)
!972 = !DILocation(line: 104, column: 19, scope: !973)
!973 = distinct !DILexicalBlock(scope: !971, file: !175, line: 104, column: 19)
!974 = !DILocation(line: 104, column: 19, scope: !971)
!975 = !DILocalVariable(name: "__dest", arg: 1, scope: !976, file: !977, line: 26, type: !980)
!976 = distinct !DISubprogram(name: "memcpy", scope: !977, file: !977, line: 26, type: !978, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !984)
!977 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!978 = !DISubroutineType(types: !979)
!979 = !{!30, !980, !981, !80}
!980 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!981 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !982)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!984 = !{!975, !985, !986}
!985 = !DILocalVariable(name: "__src", arg: 2, scope: !976, file: !977, line: 26, type: !981)
!986 = !DILocalVariable(name: "__len", arg: 3, scope: !976, file: !977, line: 26, type: !80)
!987 = !DILocation(line: 0, scope: !976, inlinedAt: !988)
!988 = distinct !DILocation(line: 105, column: 24, scope: !973)
!989 = !DILocation(line: 29, column: 10, scope: !976, inlinedAt: !988)
!990 = !DILocation(line: 105, column: 17, scope: !973)
!991 = !DILocation(line: 107, column: 36, scope: !207)
!992 = !DILocation(line: 107, column: 20, scope: !208)
!993 = !DILocation(line: 110, column: 39, scope: !206)
!994 = !DILocation(line: 0, scope: !206)
!995 = !DILocation(line: 111, column: 35, scope: !996)
!996 = distinct !DILexicalBlock(scope: !206, file: !175, line: 111, column: 19)
!997 = !DILocation(line: 111, column: 19, scope: !206)
!998 = !DILocation(line: 113, column: 13, scope: !206)
!999 = !DILocation(line: 117, column: 7, scope: !189)
!1000 = !DILocation(line: 118, column: 20, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !189, file: !175, line: 118, column: 11)
!1002 = !DILocation(line: 118, column: 11, scope: !189)
!1003 = !DILocation(line: 119, column: 18, scope: !1001)
!1004 = !DILocation(line: 119, column: 9, scope: !1001)
!1005 = !DILocation(line: 120, column: 25, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !175, line: 120, column: 16)
!1007 = !DILocation(line: 120, column: 16, scope: !1001)
!1008 = !DILocation(line: 124, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !175, line: 123, column: 9)
!1010 = !DILocation(line: 124, column: 17, scope: !1009)
!1011 = !DILocation(line: 125, column: 11, scope: !1009)
!1012 = !DILocation(line: 127, column: 5, scope: !178)
!1013 = !DILocation(line: 128, column: 1, scope: !178)
!1014 = distinct !DISubprogram(name: "canonicalize_filename_mode", scope: !215, file: !215, line: 99, type: !1015, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1018)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!28, !44, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "canonicalize_mode_t", file: !6, line: 42, baseType: !5)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1032, !1033, !1034, !1035, !1036, !1041, !1085, !1089, !1090, !1093, !1094, !1095, !1098}
!1019 = !DILocalVariable(name: "name", arg: 1, scope: !1014, file: !215, line: 99, type: !44)
!1020 = !DILocalVariable(name: "can_mode", arg: 2, scope: !1014, file: !215, line: 99, type: !1017)
!1021 = !DILocalVariable(name: "rname", scope: !1014, file: !215, line: 101, type: !28)
!1022 = !DILocalVariable(name: "dest", scope: !1014, file: !215, line: 101, type: !28)
!1023 = !DILocalVariable(name: "extra_buf", scope: !1014, file: !215, line: 101, type: !28)
!1024 = !DILocalVariable(name: "start", scope: !1014, file: !215, line: 102, type: !44)
!1025 = !DILocalVariable(name: "end", scope: !1014, file: !215, line: 103, type: !44)
!1026 = !DILocalVariable(name: "rname_limit", scope: !1014, file: !215, line: 104, type: !44)
!1027 = !DILocalVariable(name: "extra_len", scope: !1014, file: !215, line: 105, type: !80)
!1028 = !DILocalVariable(name: "ht", scope: !1014, file: !215, line: 106, type: !1029)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_table", file: !85, line: 69, baseType: !1031)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", file: !85, line: 67, flags: DIFlagFwdDecl)
!1032 = !DILocalVariable(name: "saved_errno", scope: !1014, file: !215, line: 107, type: !47)
!1033 = !DILocalVariable(name: "can_flags", scope: !1014, file: !215, line: 108, type: !47)
!1034 = !DILocalVariable(name: "logical", scope: !1014, file: !215, line: 109, type: !35)
!1035 = !DILocalVariable(name: "prefix_len", scope: !1014, file: !215, line: 110, type: !80)
!1036 = !DILocalVariable(name: "p", scope: !1037, file: !215, line: 144, type: !28)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !215, line: 143, column: 9)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !215, line: 142, column: 11)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !215, line: 137, column: 5)
!1040 = distinct !DILexicalBlock(scope: !1014, file: !215, line: 136, column: 7)
!1041 = !DILocalVariable(name: "st", scope: !1042, file: !215, line: 202, type: !1049)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !215, line: 201, column: 9)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !215, line: 190, column: 16)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !215, line: 188, column: 16)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !215, line: 186, column: 11)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !215, line: 177, column: 5)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !215, line: 176, column: 3)
!1048 = distinct !DILexicalBlock(scope: !1014, file: !215, line: 176, column: 3)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1050, line: 26, size: 1152, elements: !1051)
!1050 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!1051 = !{!1052, !1054, !1056, !1058, !1060, !1062, !1064, !1065, !1066, !1067, !1069, !1071, !1079, !1080, !1081}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1049, file: !1050, line: 28, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !193, line: 145, baseType: !79)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1049, file: !1050, line: 33, baseType: !1055, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !193, line: 148, baseType: !79)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1049, file: !1050, line: 41, baseType: !1057, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !193, line: 151, baseType: !79)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1049, file: !1050, line: 42, baseType: !1059, size: 32, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !193, line: 150, baseType: !7)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1049, file: !1050, line: 44, baseType: !1061, size: 32, offset: 224)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !193, line: 146, baseType: !7)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1049, file: !1050, line: 45, baseType: !1063, size: 32, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !193, line: 147, baseType: !7)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1049, file: !1050, line: 47, baseType: !47, size: 32, offset: 288)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1049, file: !1050, line: 49, baseType: !1053, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1049, file: !1050, line: 54, baseType: !777, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1049, file: !1050, line: 58, baseType: !1068, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !193, line: 175, baseType: !194)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1049, file: !1050, line: 60, baseType: !1070, size: 64, offset: 512)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !193, line: 180, baseType: !194)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1049, file: !1050, line: 71, baseType: !1072, size: 128, offset: 576)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1073, line: 10, size: 128, elements: !1074)
!1073 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1074 = !{!1075, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1072, file: !1073, line: 12, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !193, line: 160, baseType: !194)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1072, file: !1073, line: 16, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !193, line: 197, baseType: !194)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1049, file: !1050, line: 72, baseType: !1072, size: 128, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1049, file: !1050, line: 73, baseType: !1072, size: 128, offset: 832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1049, file: !1050, line: 86, baseType: !1082, size: 192, offset: 960)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 192, elements: !1083)
!1083 = !{!1084}
!1084 = !DISubrange(count: 3)
!1085 = !DILocalVariable(name: "dest_offset", scope: !1086, file: !215, line: 209, type: !1088)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !215, line: 208, column: 13)
!1087 = distinct !DILexicalBlock(scope: !1042, file: !215, line: 207, column: 15)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !81, line: 35, baseType: !194)
!1089 = !DILocalVariable(name: "new_size", scope: !1086, file: !215, line: 210, type: !80)
!1090 = !DILocalVariable(name: "buf", scope: !1091, file: !215, line: 250, type: !28)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !215, line: 249, column: 13)
!1092 = distinct !DILexicalBlock(scope: !1042, file: !215, line: 248, column: 15)
!1093 = !DILocalVariable(name: "n", scope: !1091, file: !215, line: 251, type: !80)
!1094 = !DILocalVariable(name: "len", scope: !1091, file: !215, line: 251, type: !80)
!1095 = !DILocalVariable(name: "pfxlen", scope: !1096, file: !215, line: 295, type: !80)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !215, line: 294, column: 17)
!1097 = distinct !DILexicalBlock(scope: !1091, file: !215, line: 293, column: 19)
!1098 = !DILabel(scope: !1014, name: "error", file: !215, line: 348)
!1099 = !DILocation(line: 0, scope: !1014)
!1100 = !DILocation(line: 109, column: 28, scope: !1014)
!1101 = !DILocation(line: 109, column: 18, scope: !1014)
!1102 = !DILocation(line: 112, column: 12, scope: !1014)
!1103 = !DILocation(line: 114, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1014, file: !215, line: 114, column: 7)
!1105 = !{i32 0, i32 3}
!1106 = !DILocation(line: 114, column: 7, scope: !1014)
!1107 = !DILocation(line: 116, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !215, line: 115, column: 5)
!1109 = !DILocation(line: 116, column: 13, scope: !1108)
!1110 = !DILocation(line: 117, column: 7, scope: !1108)
!1111 = !DILocation(line: 120, column: 12, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1014, file: !215, line: 120, column: 7)
!1113 = !DILocation(line: 120, column: 7, scope: !1014)
!1114 = !DILocation(line: 122, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !215, line: 121, column: 5)
!1116 = !DILocation(line: 122, column: 13, scope: !1115)
!1117 = !DILocation(line: 123, column: 7, scope: !1115)
!1118 = !DILocation(line: 126, column: 7, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1014, file: !215, line: 126, column: 7)
!1120 = !DILocation(line: 126, column: 7, scope: !1014)
!1121 = !DILocation(line: 128, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !215, line: 127, column: 5)
!1123 = !DILocation(line: 128, column: 13, scope: !1122)
!1124 = !DILocation(line: 129, column: 7, scope: !1122)
!1125 = !DILocation(line: 138, column: 15, scope: !1039)
!1126 = !DILocation(line: 139, column: 12, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1039, file: !215, line: 139, column: 11)
!1128 = !DILocation(line: 139, column: 11, scope: !1039)
!1129 = !DILocation(line: 141, column: 14, scope: !1039)
!1130 = !DILocation(line: 142, column: 24, scope: !1038)
!1131 = !DILocation(line: 142, column: 11, scope: !1039)
!1132 = !DILocation(line: 144, column: 21, scope: !1037)
!1133 = !DILocation(line: 0, scope: !1037)
!1134 = !DILocation(line: 145, column: 20, scope: !1037)
!1135 = !DILocation(line: 147, column: 31, scope: !1037)
!1136 = !DILocation(line: 148, column: 9, scope: !1037)
!1137 = !DILocation(line: 158, column: 15, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1040, file: !215, line: 157, column: 5)
!1139 = !DILocation(line: 159, column: 27, scope: !1138)
!1140 = !DILocation(line: 166, column: 12, scope: !1138)
!1141 = !DILocation(line: 166, column: 15, scope: !1138)
!1142 = !DILocation(line: 0, scope: !1040)
!1143 = !DILocation(line: 176, column: 11, scope: !1047)
!1144 = !DILocation(line: 176, column: 3, scope: !1048)
!1145 = !DILocation(line: 179, column: 14, scope: !1046)
!1146 = !DILocation(line: 179, column: 7, scope: !1046)
!1147 = !DILocation(line: 183, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1046, file: !215, line: 183, column: 7)
!1149 = !DILocation(line: 180, column: 9, scope: !1046)
!1150 = distinct !{!1150, !1146, !1151, !726}
!1151 = !DILocation(line: 180, column: 11, scope: !1046)
!1152 = !DILocation(line: 183, column: 25, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !215, line: 183, column: 7)
!1154 = !DILocation(line: 0, scope: !1148)
!1155 = !DILocation(line: 183, column: 30, scope: !1153)
!1156 = !DILocation(line: 183, column: 50, scope: !1153)
!1157 = !DILocation(line: 183, column: 7, scope: !1153)
!1158 = distinct !{!1158, !1147, !1159, !726}
!1159 = !DILocation(line: 184, column: 24, scope: !1148)
!1160 = !DILocation(line: 186, column: 15, scope: !1045)
!1161 = !DILocation(line: 186, column: 11, scope: !1046)
!1162 = !DILocation(line: 188, column: 45, scope: !1044)
!1163 = !DILocation(line: 188, column: 16, scope: !1045)
!1164 = !DILocation(line: 190, column: 45, scope: !1043)
!1165 = !DILocation(line: 190, column: 52, scope: !1043)
!1166 = !DILocation(line: 190, column: 55, scope: !1043)
!1167 = !DILocation(line: 190, column: 64, scope: !1043)
!1168 = !DILocation(line: 190, column: 16, scope: !1044)
!1169 = !DILocation(line: 193, column: 41, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !215, line: 193, column: 15)
!1171 = distinct !DILexicalBlock(scope: !1043, file: !215, line: 191, column: 9)
!1172 = !DILocation(line: 193, column: 20, scope: !1170)
!1173 = !DILocation(line: 193, column: 15, scope: !1171)
!1174 = !DILocation(line: 0, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !215, line: 194, column: 13)
!1176 = !DILocation(line: 194, column: 31, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1175, file: !215, line: 194, column: 13)
!1178 = !DILocation(line: 194, column: 39, scope: !1177)
!1179 = !DILocation(line: 194, column: 43, scope: !1177)
!1180 = !DILocation(line: 194, column: 13, scope: !1175)
!1181 = distinct !{!1181, !1180, !1182, !726}
!1182 = !DILocation(line: 195, column: 15, scope: !1175)
!1183 = !DILocation(line: 202, column: 11, scope: !1042)
!1184 = !DILocation(line: 202, column: 23, scope: !1042)
!1185 = !DILocation(line: 204, column: 16, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1042, file: !215, line: 204, column: 15)
!1187 = !DILocation(line: 204, column: 15, scope: !1042)
!1188 = !DILocation(line: 205, column: 18, scope: !1186)
!1189 = !DILocation(line: 205, column: 21, scope: !1186)
!1190 = !DILocation(line: 205, column: 13, scope: !1186)
!1191 = !DILocation(line: 207, column: 20, scope: !1087)
!1192 = !DILocation(line: 207, column: 36, scope: !1087)
!1193 = !DILocation(line: 207, column: 15, scope: !1042)
!1194 = !DILocation(line: 209, column: 44, scope: !1086)
!1195 = !DILocation(line: 0, scope: !1086)
!1196 = !DILocation(line: 210, column: 45, scope: !1086)
!1197 = !DILocation(line: 212, column: 19, scope: !1086)
!1198 = !DILocation(line: 0, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1086, file: !215, line: 212, column: 19)
!1200 = !DILocation(line: 216, column: 23, scope: !1086)
!1201 = !DILocation(line: 217, column: 35, scope: !1086)
!1202 = !DILocation(line: 219, column: 28, scope: !1086)
!1203 = !DILocation(line: 220, column: 13, scope: !1086)
!1204 = !DILocalVariable(name: "__dest", arg: 1, scope: !1205, file: !977, line: 26, type: !980)
!1205 = distinct !DISubprogram(name: "memcpy", scope: !977, file: !977, line: 26, type: !978, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1206)
!1206 = !{!1204, !1207, !1208}
!1207 = !DILocalVariable(name: "__src", arg: 2, scope: !1205, file: !977, line: 26, type: !981)
!1208 = !DILocalVariable(name: "__len", arg: 3, scope: !1205, file: !977, line: 26, type: !80)
!1209 = !DILocation(line: 0, scope: !1205, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 222, column: 18, scope: !1042)
!1211 = !DILocation(line: 29, column: 10, scope: !1205, inlinedAt: !1210)
!1212 = !DILocation(line: 223, column: 16, scope: !1042)
!1213 = !DILocation(line: 224, column: 17, scope: !1042)
!1214 = !DILocation(line: 226, column: 23, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1042, file: !215, line: 226, column: 15)
!1216 = !DILocation(line: 233, column: 21, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1215, file: !215, line: 233, column: 20)
!1218 = !DILocation(line: 233, column: 31, scope: !1217)
!1219 = !DILocation(line: 233, column: 51, scope: !1217)
!1220 = !DILocation(line: 233, column: 71, scope: !1217)
!1221 = !DILocation(line: 233, column: 20, scope: !1215)
!1222 = !DILocation(line: 236, column: 29, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1217, file: !215, line: 234, column: 13)
!1224 = !DILocation(line: 237, column: 19, scope: !1223)
!1225 = !DILocation(line: 241, column: 27, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !215, line: 241, column: 23)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !215, line: 240, column: 17)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !215, line: 239, column: 19)
!1229 = !DILocation(line: 241, column: 23, scope: !1226)
!1230 = !DILocation(line: 241, column: 50, scope: !1226)
!1231 = !DILocation(line: 248, column: 15, scope: !1092)
!1232 = !{!1233, !851, i64 24}
!1233 = !{!"stat", !897, i64 0, !897, i64 8, !897, i64 16, !851, i64 24, !851, i64 28, !851, i64 32, !851, i64 36, !897, i64 40, !897, i64 48, !897, i64 56, !897, i64 64, !1234, i64 72, !1234, i64 88, !1234, i64 104, !684, i64 120}
!1234 = !{!"timespec", !897, i64 0, !897, i64 8}
!1235 = !DILocation(line: 248, column: 15, scope: !1042)
!1236 = !DILocalVariable(name: "ht", arg: 1, scope: !1237, file: !215, line: 70, type: !1240)
!1237 = distinct !DISubprogram(name: "seen_triple", scope: !215, file: !215, line: 70, type: !1238, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1243)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!35, !1240, !44, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1243 = !{!1236, !1244, !1245, !1246}
!1244 = !DILocalVariable(name: "filename", arg: 2, scope: !1237, file: !215, line: 70, type: !44)
!1245 = !DILocalVariable(name: "st", arg: 3, scope: !1237, file: !215, line: 70, type: !1241)
!1246 = !DILocalVariable(name: "initial_capacity", scope: !1247, file: !215, line: 74, type: !80)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !215, line: 73, column: 5)
!1248 = distinct !DILexicalBlock(scope: !1237, file: !215, line: 72, column: 7)
!1249 = !DILocation(line: 0, scope: !1237, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 257, column: 19, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1091, file: !215, line: 257, column: 19)
!1252 = !DILocation(line: 72, column: 11, scope: !1248, inlinedAt: !1250)
!1253 = !DILocation(line: 72, column: 7, scope: !1237, inlinedAt: !1250)
!1254 = !DILocation(line: 0, scope: !1247, inlinedAt: !1250)
!1255 = !DILocation(line: 75, column: 13, scope: !1247, inlinedAt: !1250)
!1256 = !DILocation(line: 80, column: 15, scope: !1257, inlinedAt: !1250)
!1257 = distinct !DILexicalBlock(scope: !1247, file: !215, line: 80, column: 11)
!1258 = !DILocation(line: 80, column: 11, scope: !1247, inlinedAt: !1250)
!1259 = !DILocation(line: 81, column: 9, scope: !1257, inlinedAt: !1250)
!1260 = !DILocation(line: 84, column: 7, scope: !1261, inlinedAt: !1250)
!1261 = distinct !DILexicalBlock(scope: !1237, file: !215, line: 84, column: 7)
!1262 = !DILocation(line: 84, column: 7, scope: !1237, inlinedAt: !1250)
!1263 = !DILocation(line: 87, column: 3, scope: !1237, inlinedAt: !1250)
!1264 = !DILocation(line: 265, column: 52, scope: !1091)
!1265 = !{!1233, !897, i64 48}
!1266 = !DILocation(line: 265, column: 21, scope: !1091)
!1267 = !DILocation(line: 0, scope: !1091)
!1268 = !DILocation(line: 266, column: 20, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1091, file: !215, line: 266, column: 19)
!1270 = !DILocation(line: 266, column: 19, scope: !1091)
!1271 = !DILocation(line: 0, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !215, line: 267, column: 17)
!1273 = !DILocation(line: 268, column: 47, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1272, file: !215, line: 268, column: 23)
!1275 = !DILocation(line: 268, column: 50, scope: !1274)
!1276 = !DILocation(line: 268, column: 56, scope: !1274)
!1277 = !DILocation(line: 268, column: 23, scope: !1272)
!1278 = !DILocation(line: 270, column: 33, scope: !1272)
!1279 = !DILocation(line: 271, column: 19, scope: !1272)
!1280 = !DILocation(line: 274, column: 19, scope: !1091)
!1281 = !DILocation(line: 275, column: 21, scope: !1091)
!1282 = !DILocation(line: 277, column: 20, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1091, file: !215, line: 277, column: 19)
!1284 = !DILocation(line: 0, scope: !1283)
!1285 = !DILocation(line: 277, column: 19, scope: !1091)
!1286 = !DILocation(line: 280, column: 36, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !215, line: 278, column: 17)
!1288 = !DILocation(line: 280, column: 21, scope: !1287)
!1289 = !DILocation(line: 281, column: 31, scope: !1287)
!1290 = !DILocation(line: 282, column: 17, scope: !1287)
!1291 = !DILocation(line: 283, column: 38, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1283, file: !215, line: 283, column: 24)
!1293 = !DILocation(line: 283, column: 24, scope: !1283)
!1294 = !DILocation(line: 286, column: 31, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !215, line: 284, column: 17)
!1296 = !DILocation(line: 287, column: 17, scope: !1295)
!1297 = !DILocation(line: 290, column: 25, scope: !1091)
!1298 = !DILocalVariable(name: "__dest", arg: 1, scope: !1299, file: !977, line: 34, type: !30)
!1299 = distinct !DISubprogram(name: "memmove", scope: !977, file: !977, line: 34, type: !1300, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!30, !30, !982, !80}
!1302 = !{!1298, !1303, !1304}
!1303 = !DILocalVariable(name: "__src", arg: 2, scope: !1299, file: !977, line: 34, type: !982)
!1304 = !DILocalVariable(name: "__len", arg: 3, scope: !1299, file: !977, line: 34, type: !80)
!1305 = !DILocation(line: 0, scope: !1299, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 290, column: 15, scope: !1091)
!1307 = !DILocation(line: 36, column: 10, scope: !1299, inlinedAt: !1306)
!1308 = !DILocation(line: 0, scope: !1205, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 291, column: 28, scope: !1091)
!1310 = !DILocation(line: 29, column: 10, scope: !1205, inlinedAt: !1309)
!1311 = !DILocation(line: 293, column: 19, scope: !1097)
!1312 = !DILocation(line: 0, scope: !1097)
!1313 = !DILocation(line: 293, column: 19, scope: !1091)
!1314 = !DILocation(line: 0, scope: !1096)
!1315 = !DILocation(line: 300, column: 27, scope: !1096)
!1316 = !DILocation(line: 309, column: 17, scope: !1096)
!1317 = !DILocation(line: 314, column: 28, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !215, line: 314, column: 23)
!1319 = distinct !DILexicalBlock(scope: !1097, file: !215, line: 311, column: 17)
!1320 = !DILocation(line: 314, column: 23, scope: !1319)
!1321 = !DILocation(line: 0, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !215, line: 315, column: 21)
!1323 = !DILocation(line: 315, column: 39, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1322, file: !215, line: 315, column: 21)
!1325 = !DILocation(line: 315, column: 47, scope: !1324)
!1326 = !DILocation(line: 315, column: 51, scope: !1324)
!1327 = !DILocation(line: 315, column: 21, scope: !1322)
!1328 = distinct !{!1328, !1327, !1329, !726}
!1329 = !DILocation(line: 316, column: 23, scope: !1322)
!1330 = !DILocation(line: 0, scope: !1042)
!1331 = !DILocation(line: 322, column: 15, scope: !1091)
!1332 = !DILocation(line: 0, scope: !1215)
!1333 = !DILocation(line: 326, column: 44, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !215, line: 326, column: 19)
!1335 = distinct !DILexicalBlock(scope: !1092, file: !215, line: 325, column: 13)
!1336 = !DILocation(line: 326, column: 49, scope: !1334)
!1337 = !DILocation(line: 332, column: 9, scope: !1043)
!1338 = !DILocation(line: 106, column: 15, scope: !1014)
!1339 = !DILocation(line: 105, column: 10, scope: !1014)
!1340 = !DILocation(line: 183, column: 16, scope: !1148)
!1341 = !DILocation(line: 101, column: 24, scope: !1014)
!1342 = distinct !{!1342, !1144, !1343, !726}
!1343 = !DILocation(line: 333, column: 5, scope: !1048)
!1344 = !DILocation(line: 159, column: 19, scope: !1138)
!1345 = !DILocation(line: 158, column: 13, scope: !1138)
!1346 = !DILocation(line: 334, column: 33, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1014, file: !215, line: 334, column: 7)
!1348 = !DILocation(line: 334, column: 12, scope: !1347)
!1349 = !DILocation(line: 334, column: 37, scope: !1347)
!1350 = !DILocation(line: 334, column: 40, scope: !1347)
!1351 = !DILocation(line: 334, column: 7, scope: !1014)
!1352 = !DILocation(line: 339, column: 9, scope: !1014)
!1353 = !DILocation(line: 340, column: 27, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1014, file: !215, line: 340, column: 7)
!1355 = !DILocation(line: 340, column: 19, scope: !1354)
!1356 = !DILocation(line: 340, column: 7, scope: !1014)
!1357 = !DILocation(line: 341, column: 35, scope: !1354)
!1358 = !DILocation(line: 341, column: 43, scope: !1354)
!1359 = !DILocation(line: 341, column: 13, scope: !1354)
!1360 = !DILocation(line: 341, column: 5, scope: !1354)
!1361 = !DILocation(line: 343, column: 3, scope: !1014)
!1362 = !DILocation(line: 344, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1014, file: !215, line: 344, column: 7)
!1364 = !DILocation(line: 344, column: 7, scope: !1014)
!1365 = !DILocation(line: 345, column: 5, scope: !1363)
!1366 = !DILocation(line: 348, column: 1, scope: !1014)
!1367 = !DILocation(line: 349, column: 3, scope: !1014)
!1368 = !DILocation(line: 350, column: 3, scope: !1014)
!1369 = !DILocation(line: 351, column: 7, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1014, file: !215, line: 351, column: 7)
!1371 = !DILocation(line: 351, column: 7, scope: !1014)
!1372 = !DILocation(line: 352, column: 5, scope: !1370)
!1373 = !DILocation(line: 353, column: 3, scope: !1014)
!1374 = !DILocation(line: 353, column: 9, scope: !1014)
!1375 = !DILocation(line: 354, column: 3, scope: !1014)
!1376 = !DILocation(line: 355, column: 1, scope: !1014)
!1377 = !DISubprogram(name: "stat", scope: !1378, file: !1378, line: 205, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!1378 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!47, !44, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1382 = !DISubprogram(name: "lstat", scope: !1378, file: !1378, line: 259, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!1383 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !64, file: !64, line: 51, type: !696, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !1384)
!1384 = !{!1385}
!1385 = !DILocalVariable(name: "file", arg: 1, scope: !1383, file: !64, line: 51, type: !44)
!1386 = !DILocation(line: 0, scope: !1383)
!1387 = !DILocation(line: 53, column: 13, scope: !1383)
!1388 = !DILocation(line: 54, column: 1, scope: !1383)
!1389 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !64, file: !64, line: 88, type: !1390, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !35}
!1392 = !{!1393}
!1393 = !DILocalVariable(name: "ignore", arg: 1, scope: !1389, file: !64, line: 88, type: !35)
!1394 = !DILocation(line: 0, scope: !1389)
!1395 = !DILocation(line: 90, column: 16, scope: !1389)
!1396 = !{!1397, !1397, i64 0}
!1397 = !{!"_Bool", !684, i64 0}
!1398 = !DILocation(line: 91, column: 1, scope: !1389)
!1399 = distinct !DISubprogram(name: "close_stdout", scope: !64, file: !64, line: 117, type: !927, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !1400)
!1400 = !{!1401}
!1401 = !DILocalVariable(name: "write_error", scope: !1402, file: !64, line: 122, type: !44)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !64, line: 121, column: 5)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !64, line: 119, column: 7)
!1404 = !DILocation(line: 119, column: 21, scope: !1403)
!1405 = !DILocation(line: 119, column: 7, scope: !1403)
!1406 = !DILocation(line: 119, column: 29, scope: !1403)
!1407 = !DILocation(line: 120, column: 7, scope: !1403)
!1408 = !DILocation(line: 120, column: 12, scope: !1403)
!1409 = !{i8 0, i8 2}
!1410 = !DILocation(line: 120, column: 25, scope: !1403)
!1411 = !DILocation(line: 120, column: 28, scope: !1403)
!1412 = !DILocation(line: 120, column: 34, scope: !1403)
!1413 = !DILocation(line: 119, column: 7, scope: !1399)
!1414 = !DILocation(line: 122, column: 33, scope: !1402)
!1415 = !DILocation(line: 0, scope: !1402)
!1416 = !DILocation(line: 123, column: 11, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1402, file: !64, line: 123, column: 11)
!1418 = !DILocation(line: 0, scope: !1417)
!1419 = !DILocation(line: 123, column: 11, scope: !1402)
!1420 = !DILocation(line: 124, column: 36, scope: !1417)
!1421 = !DILocation(line: 124, column: 9, scope: !1417)
!1422 = !DILocation(line: 127, column: 9, scope: !1417)
!1423 = !DILocation(line: 129, column: 14, scope: !1402)
!1424 = !DILocation(line: 129, column: 7, scope: !1402)
!1425 = !DILocation(line: 134, column: 42, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1399, file: !64, line: 134, column: 7)
!1427 = !DILocation(line: 134, column: 28, scope: !1426)
!1428 = !DILocation(line: 134, column: 50, scope: !1426)
!1429 = !DILocation(line: 134, column: 7, scope: !1399)
!1430 = !DILocation(line: 135, column: 12, scope: !1426)
!1431 = !DILocation(line: 135, column: 5, scope: !1426)
!1432 = !DILocation(line: 136, column: 1, scope: !1399)
!1433 = distinct !DISubprogram(name: "record_file", scope: !218, file: !218, line: 29, type: !1434, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1459)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1029, !44, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1050, line: 26, size: 1152, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1456, !1457, !1458}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1438, file: !1050, line: 28, baseType: !1053, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1438, file: !1050, line: 33, baseType: !1055, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1438, file: !1050, line: 41, baseType: !1057, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1438, file: !1050, line: 42, baseType: !1059, size: 32, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1438, file: !1050, line: 44, baseType: !1061, size: 32, offset: 224)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1438, file: !1050, line: 45, baseType: !1063, size: 32, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1438, file: !1050, line: 47, baseType: !47, size: 32, offset: 288)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1438, file: !1050, line: 49, baseType: !1053, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1438, file: !1050, line: 54, baseType: !777, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1438, file: !1050, line: 58, baseType: !1068, size: 64, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1438, file: !1050, line: 60, baseType: !1070, size: 64, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1438, file: !1050, line: 71, baseType: !1452, size: 128, offset: 576)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1073, line: 10, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1452, file: !1073, line: 12, baseType: !1076, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1452, file: !1073, line: 16, baseType: !1078, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1438, file: !1050, line: 72, baseType: !1452, size: 128, offset: 704)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1438, file: !1050, line: 73, baseType: !1452, size: 128, offset: 832)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1438, file: !1050, line: 86, baseType: !1082, size: 192, offset: 960)
!1459 = !{!1460, !1461, !1462, !1463, !1473}
!1460 = !DILocalVariable(name: "ht", arg: 1, scope: !1433, file: !218, line: 29, type: !1029)
!1461 = !DILocalVariable(name: "file", arg: 2, scope: !1433, file: !218, line: 29, type: !44)
!1462 = !DILocalVariable(name: "stats", arg: 3, scope: !1433, file: !218, line: 29, type: !1436)
!1463 = !DILocalVariable(name: "ent", scope: !1433, file: !218, line: 31, type: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "F_triple", file: !1466, line: 9, size: 192, elements: !1467)
!1466 = !DIFile(filename: "./lib/hash-triple.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1467 = !{!1468, !1469, !1471}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1465, file: !1466, line: 11, baseType: !28, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1465, file: !1466, line: 12, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !191, line: 47, baseType: !1055)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1465, file: !1466, line: 13, baseType: !1472, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !191, line: 59, baseType: !1053)
!1473 = !DILocalVariable(name: "ent_from_table", scope: !1474, file: !218, line: 42, type: !1464)
!1474 = distinct !DILexicalBlock(scope: !1433, file: !218, line: 41, column: 3)
!1475 = !DILocation(line: 0, scope: !1433)
!1476 = !DILocation(line: 33, column: 10, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1433, file: !218, line: 33, column: 7)
!1478 = !DILocation(line: 33, column: 7, scope: !1433)
!1479 = !DILocation(line: 36, column: 9, scope: !1433)
!1480 = !DILocation(line: 37, column: 15, scope: !1433)
!1481 = !DILocation(line: 37, column: 8, scope: !1433)
!1482 = !DILocation(line: 37, column: 13, scope: !1433)
!1483 = !{!1484, !683, i64 0}
!1484 = !{!"F_triple", !683, i64 0, !897, i64 8, !897, i64 16}
!1485 = !DILocation(line: 38, column: 8, scope: !1433)
!1486 = !DILocation(line: 39, column: 24, scope: !1433)
!1487 = !{!897, !897, i64 0}
!1488 = !DILocation(line: 38, column: 15, scope: !1433)
!1489 = !DILocation(line: 42, column: 39, scope: !1474)
!1490 = !DILocation(line: 0, scope: !1474)
!1491 = !DILocation(line: 43, column: 24, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1474, file: !218, line: 43, column: 9)
!1493 = !DILocation(line: 43, column: 9, scope: !1474)
!1494 = !DILocation(line: 46, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !218, line: 44, column: 7)
!1496 = !DILocation(line: 49, column: 24, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1474, file: !218, line: 49, column: 9)
!1498 = !DILocation(line: 49, column: 9, scope: !1474)
!1499 = !DILocation(line: 53, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !218, line: 50, column: 7)
!1501 = !DILocation(line: 54, column: 7, scope: !1500)
!1502 = !DILocation(line: 56, column: 1, scope: !1433)
!1503 = distinct !DISubprogram(name: "seen_file", scope: !218, file: !218, line: 61, type: !1504, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1508)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!35, !1506, !44, !1436}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1508 = !{!1509, !1510, !1511, !1512}
!1509 = !DILocalVariable(name: "ht", arg: 1, scope: !1503, file: !218, line: 61, type: !1506)
!1510 = !DILocalVariable(name: "file", arg: 2, scope: !1503, file: !218, line: 61, type: !44)
!1511 = !DILocalVariable(name: "stats", arg: 3, scope: !1503, file: !218, line: 62, type: !1436)
!1512 = !DILocalVariable(name: "new_ent", scope: !1503, file: !218, line: 64, type: !1465)
!1513 = !DILocation(line: 0, scope: !1503)
!1514 = !DILocation(line: 64, column: 3, scope: !1503)
!1515 = !DILocation(line: 64, column: 19, scope: !1503)
!1516 = !DILocation(line: 66, column: 10, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1503, file: !218, line: 66, column: 7)
!1518 = !DILocation(line: 66, column: 7, scope: !1503)
!1519 = !DILocation(line: 69, column: 11, scope: !1503)
!1520 = !DILocation(line: 69, column: 16, scope: !1503)
!1521 = !DILocation(line: 70, column: 11, scope: !1503)
!1522 = !DILocation(line: 71, column: 27, scope: !1503)
!1523 = !DILocation(line: 70, column: 18, scope: !1503)
!1524 = !DILocation(line: 73, column: 12, scope: !1503)
!1525 = !DILocation(line: 73, column: 11, scope: !1503)
!1526 = !DILocation(line: 73, column: 3, scope: !1503)
!1527 = !DILocation(line: 74, column: 1, scope: !1503)
!1528 = distinct !DISubprogram(name: "hash_get_n_buckets", scope: !77, file: !77, line: 150, type: !1529, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1566)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!80, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1533)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_table", file: !85, line: 69, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", file: !77, line: 52, size: 640, elements: !1535)
!1535 = !{!1536, !1542, !1545, !1546, !1547, !1548, !1550, !1555, !1560, !1565}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !1534, file: !77, line: 57, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_entry", file: !77, line: 46, size: 128, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1538, file: !77, line: 48, baseType: !30, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1538, file: !77, line: 49, baseType: !1537, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_limit", scope: !1534, file: !77, line: 58, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1534, file: !77, line: 59, baseType: !80, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets_used", scope: !1534, file: !77, line: 60, baseType: !80, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "n_entries", scope: !1534, file: !77, line: 61, baseType: !80, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "tuning", scope: !1534, file: !77, line: 64, baseType: !1549, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "hasher", scope: !1534, file: !77, line: 71, baseType: !1551, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_hasher", file: !85, line: 48, baseType: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!80, !982, !80}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "comparator", scope: !1534, file: !77, line: 72, baseType: !1556, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_comparator", file: !85, line: 49, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!35, !982, !982}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "data_freer", scope: !1534, file: !77, line: 73, baseType: !1561, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_data_freer", file: !85, line: 50, baseType: !1562)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !30}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "free_entry_list", scope: !1534, file: !77, line: 76, baseType: !1537, size: 64, offset: 576)
!1566 = !{!1567}
!1567 = !DILocalVariable(name: "table", arg: 1, scope: !1528, file: !77, line: 150, type: !1531)
!1568 = !DILocation(line: 0, scope: !1528)
!1569 = !DILocation(line: 152, column: 17, scope: !1528)
!1570 = !{!1571, !897, i64 16}
!1571 = !{!"hash_table", !683, i64 0, !683, i64 8, !897, i64 16, !897, i64 24, !897, i64 32, !683, i64 40, !683, i64 48, !683, i64 56, !683, i64 64, !683, i64 72}
!1572 = !DILocation(line: 152, column: 3, scope: !1528)
!1573 = distinct !DISubprogram(name: "hash_get_n_buckets_used", scope: !77, file: !77, line: 158, type: !1529, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1574)
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "table", arg: 1, scope: !1573, file: !77, line: 158, type: !1531)
!1576 = !DILocation(line: 0, scope: !1573)
!1577 = !DILocation(line: 160, column: 17, scope: !1573)
!1578 = !{!1571, !897, i64 24}
!1579 = !DILocation(line: 160, column: 3, scope: !1573)
!1580 = distinct !DISubprogram(name: "hash_get_n_entries", scope: !77, file: !77, line: 166, type: !1529, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1581)
!1581 = !{!1582}
!1582 = !DILocalVariable(name: "table", arg: 1, scope: !1580, file: !77, line: 166, type: !1531)
!1583 = !DILocation(line: 0, scope: !1580)
!1584 = !DILocation(line: 168, column: 17, scope: !1580)
!1585 = !{!1571, !897, i64 32}
!1586 = !DILocation(line: 168, column: 3, scope: !1580)
!1587 = distinct !DISubprogram(name: "hash_get_max_bucket_length", scope: !77, file: !77, line: 174, type: !1529, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1598}
!1589 = !DILocalVariable(name: "table", arg: 1, scope: !1587, file: !77, line: 174, type: !1531)
!1590 = !DILocalVariable(name: "bucket", scope: !1587, file: !77, line: 176, type: !1543)
!1591 = !DILocalVariable(name: "max_bucket_length", scope: !1587, file: !77, line: 177, type: !80)
!1592 = !DILocalVariable(name: "cursor", scope: !1593, file: !77, line: 183, type: !1543)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !77, line: 182, column: 9)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !77, line: 181, column: 11)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !77, line: 180, column: 5)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !77, line: 179, column: 3)
!1597 = distinct !DILexicalBlock(scope: !1587, file: !77, line: 179, column: 3)
!1598 = !DILocalVariable(name: "bucket_length", scope: !1593, file: !77, line: 184, type: !80)
!1599 = !DILocation(line: 0, scope: !1587)
!1600 = !DILocation(line: 179, column: 24, scope: !1597)
!1601 = !{!1571, !683, i64 0}
!1602 = !DILocation(line: 179, column: 48, scope: !1596)
!1603 = !{!1571, !683, i64 8}
!1604 = !DILocation(line: 179, column: 39, scope: !1596)
!1605 = !DILocation(line: 179, column: 3, scope: !1597)
!1606 = !DILocation(line: 181, column: 19, scope: !1594)
!1607 = !{!1608, !683, i64 0}
!1608 = !{!"hash_entry", !683, i64 0, !683, i64 8}
!1609 = !DILocation(line: 181, column: 11, scope: !1594)
!1610 = !DILocation(line: 181, column: 11, scope: !1595)
!1611 = !DILocation(line: 0, scope: !1593)
!1612 = !DILocation(line: 186, column: 35, scope: !1593)
!1613 = !{!1608, !683, i64 8}
!1614 = !DILocation(line: 186, column: 11, scope: !1593)
!1615 = !DILocation(line: 187, column: 26, scope: !1593)
!1616 = distinct !{!1616, !1614, !1615, !726}
!1617 = !DILocation(line: 189, column: 29, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1593, file: !77, line: 189, column: 15)
!1619 = !DILocation(line: 189, column: 15, scope: !1593)
!1620 = !DILocation(line: 191, column: 9, scope: !1593)
!1621 = !DILocation(line: 179, column: 68, scope: !1596)
!1622 = distinct !{!1622, !1605, !1623, !726}
!1623 = !DILocation(line: 192, column: 5, scope: !1597)
!1624 = !DILocation(line: 194, column: 3, scope: !1587)
!1625 = distinct !DISubprogram(name: "hash_table_ok", scope: !77, file: !77, line: 201, type: !1626, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1628)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!35, !1531}
!1628 = !{!1629, !1630, !1631, !1632, !1633}
!1629 = !DILocalVariable(name: "table", arg: 1, scope: !1625, file: !77, line: 201, type: !1531)
!1630 = !DILocalVariable(name: "bucket", scope: !1625, file: !77, line: 203, type: !1543)
!1631 = !DILocalVariable(name: "n_buckets_used", scope: !1625, file: !77, line: 204, type: !80)
!1632 = !DILocalVariable(name: "n_entries", scope: !1625, file: !77, line: 205, type: !80)
!1633 = !DILocalVariable(name: "cursor", scope: !1634, file: !77, line: 211, type: !1543)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !77, line: 210, column: 9)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !77, line: 209, column: 11)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !77, line: 208, column: 5)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !77, line: 207, column: 3)
!1638 = distinct !DILexicalBlock(scope: !1625, file: !77, line: 207, column: 3)
!1639 = !DILocation(line: 0, scope: !1625)
!1640 = !DILocation(line: 207, column: 24, scope: !1638)
!1641 = !DILocation(line: 207, column: 48, scope: !1637)
!1642 = !DILocation(line: 207, column: 39, scope: !1637)
!1643 = !DILocation(line: 207, column: 3, scope: !1638)
!1644 = !DILocation(line: 209, column: 19, scope: !1635)
!1645 = !DILocation(line: 209, column: 11, scope: !1635)
!1646 = !DILocation(line: 209, column: 11, scope: !1636)
!1647 = !DILocation(line: 0, scope: !1634)
!1648 = !DILocation(line: 218, column: 35, scope: !1634)
!1649 = !DILocation(line: 218, column: 11, scope: !1634)
!1650 = distinct !{!1650, !1649, !1651, !726}
!1651 = !DILocation(line: 219, column: 22, scope: !1634)
!1652 = !DILocation(line: 214, column: 25, scope: !1634)
!1653 = !DILocation(line: 207, column: 68, scope: !1637)
!1654 = distinct !{!1654, !1643, !1655, !726}
!1655 = !DILocation(line: 221, column: 5, scope: !1638)
!1656 = !DILocation(line: 223, column: 32, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1625, file: !77, line: 223, column: 7)
!1658 = !DILocation(line: 223, column: 22, scope: !1657)
!1659 = !DILocation(line: 223, column: 47, scope: !1657)
!1660 = !DILocation(line: 223, column: 70, scope: !1657)
!1661 = !DILocation(line: 223, column: 60, scope: !1657)
!1662 = !DILocation(line: 223, column: 7, scope: !1625)
!1663 = !DILocation(line: 226, column: 3, scope: !1625)
!1664 = !DILocation(line: 227, column: 1, scope: !1625)
!1665 = distinct !DISubprogram(name: "hash_print_statistics", scope: !77, file: !77, line: 230, type: !1666, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1703)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1531, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1670, line: 7, baseType: !1671)
!1670 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 49, size: 1728, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1671, file: !756, line: 51, baseType: !47, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1671, file: !756, line: 54, baseType: !28, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1671, file: !756, line: 55, baseType: !28, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1671, file: !756, line: 56, baseType: !28, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1671, file: !756, line: 57, baseType: !28, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1671, file: !756, line: 58, baseType: !28, size: 64, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1671, file: !756, line: 59, baseType: !28, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1671, file: !756, line: 60, baseType: !28, size: 64, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1671, file: !756, line: 61, baseType: !28, size: 64, offset: 512)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1671, file: !756, line: 64, baseType: !28, size: 64, offset: 576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1671, file: !756, line: 65, baseType: !28, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1671, file: !756, line: 66, baseType: !28, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1671, file: !756, line: 68, baseType: !771, size: 64, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1671, file: !756, line: 70, baseType: !1687, size: 64, offset: 832)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1671, file: !756, line: 72, baseType: !47, size: 32, offset: 896)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1671, file: !756, line: 73, baseType: !47, size: 32, offset: 928)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1671, file: !756, line: 74, baseType: !777, size: 64, offset: 960)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1671, file: !756, line: 77, baseType: !126, size: 16, offset: 1024)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1671, file: !756, line: 78, baseType: !780, size: 8, offset: 1040)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1671, file: !756, line: 79, baseType: !782, size: 8, offset: 1048)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1671, file: !756, line: 81, baseType: !786, size: 64, offset: 1088)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1671, file: !756, line: 89, baseType: !789, size: 64, offset: 1152)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1671, file: !756, line: 91, baseType: !791, size: 64, offset: 1216)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1671, file: !756, line: 92, baseType: !794, size: 64, offset: 1280)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1671, file: !756, line: 93, baseType: !1687, size: 64, offset: 1344)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1671, file: !756, line: 94, baseType: !30, size: 64, offset: 1408)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1671, file: !756, line: 95, baseType: !80, size: 64, offset: 1472)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1671, file: !756, line: 96, baseType: !47, size: 32, offset: 1536)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1671, file: !756, line: 98, baseType: !801, size: 160, offset: 1568)
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709}
!1704 = !DILocalVariable(name: "table", arg: 1, scope: !1665, file: !77, line: 230, type: !1531)
!1705 = !DILocalVariable(name: "stream", arg: 2, scope: !1665, file: !77, line: 230, type: !1668)
!1706 = !DILocalVariable(name: "n_entries", scope: !1665, file: !77, line: 232, type: !80)
!1707 = !DILocalVariable(name: "n_buckets", scope: !1665, file: !77, line: 233, type: !80)
!1708 = !DILocalVariable(name: "n_buckets_used", scope: !1665, file: !77, line: 234, type: !80)
!1709 = !DILocalVariable(name: "max_bucket_length", scope: !1665, file: !77, line: 235, type: !80)
!1710 = !DILocation(line: 0, scope: !1665)
!1711 = !DILocation(line: 0, scope: !1580, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 232, column: 22, scope: !1665)
!1713 = !DILocation(line: 168, column: 17, scope: !1580, inlinedAt: !1712)
!1714 = !DILocation(line: 0, scope: !1528, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 233, column: 22, scope: !1665)
!1716 = !DILocation(line: 152, column: 17, scope: !1528, inlinedAt: !1715)
!1717 = !DILocation(line: 0, scope: !1573, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 234, column: 27, scope: !1665)
!1719 = !DILocation(line: 160, column: 17, scope: !1573, inlinedAt: !1718)
!1720 = !DILocation(line: 0, scope: !1587, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 235, column: 30, scope: !1665)
!1722 = !DILocation(line: 179, column: 24, scope: !1597, inlinedAt: !1721)
!1723 = !DILocation(line: 179, column: 48, scope: !1596, inlinedAt: !1721)
!1724 = !DILocation(line: 179, column: 39, scope: !1596, inlinedAt: !1721)
!1725 = !DILocation(line: 179, column: 3, scope: !1597, inlinedAt: !1721)
!1726 = !DILocation(line: 181, column: 19, scope: !1594, inlinedAt: !1721)
!1727 = !DILocation(line: 181, column: 11, scope: !1594, inlinedAt: !1721)
!1728 = !DILocation(line: 181, column: 11, scope: !1595, inlinedAt: !1721)
!1729 = !DILocation(line: 0, scope: !1593, inlinedAt: !1721)
!1730 = !DILocation(line: 186, column: 35, scope: !1593, inlinedAt: !1721)
!1731 = !DILocation(line: 186, column: 11, scope: !1593, inlinedAt: !1721)
!1732 = !DILocation(line: 187, column: 26, scope: !1593, inlinedAt: !1721)
!1733 = distinct !{!1733, !1731, !1732, !726}
!1734 = !DILocation(line: 189, column: 29, scope: !1618, inlinedAt: !1721)
!1735 = !DILocation(line: 189, column: 15, scope: !1593, inlinedAt: !1721)
!1736 = !DILocation(line: 191, column: 9, scope: !1593, inlinedAt: !1721)
!1737 = !DILocation(line: 179, column: 68, scope: !1596, inlinedAt: !1721)
!1738 = distinct !{!1738, !1725, !1739, !726}
!1739 = !DILocation(line: 192, column: 5, scope: !1597, inlinedAt: !1721)
!1740 = !DILocation(line: 237, column: 3, scope: !1665)
!1741 = !DILocation(line: 238, column: 3, scope: !1665)
!1742 = !DILocation(line: 239, column: 3, scope: !1665)
!1743 = !DILocation(line: 242, column: 3, scope: !1665)
!1744 = !DILocation(line: 244, column: 1, scope: !1665)
!1745 = distinct !DISubprogram(name: "hash_lookup", scope: !77, file: !77, line: 261, type: !1746, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!30, !1531, !982}
!1748 = !{!1749, !1750, !1751, !1752}
!1749 = !DILocalVariable(name: "table", arg: 1, scope: !1745, file: !77, line: 261, type: !1531)
!1750 = !DILocalVariable(name: "entry", arg: 2, scope: !1745, file: !77, line: 261, type: !982)
!1751 = !DILocalVariable(name: "bucket", scope: !1745, file: !77, line: 263, type: !1543)
!1752 = !DILocalVariable(name: "cursor", scope: !1745, file: !77, line: 264, type: !1543)
!1753 = !DILocation(line: 0, scope: !1745)
!1754 = !DILocalVariable(name: "table", arg: 1, scope: !1755, file: !77, line: 249, type: !1531)
!1755 = distinct !DISubprogram(name: "safe_hasher", scope: !77, file: !77, line: 249, type: !1756, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!1537, !1531, !982}
!1758 = !{!1754, !1759, !1760}
!1759 = !DILocalVariable(name: "key", arg: 2, scope: !1755, file: !77, line: 249, type: !982)
!1760 = !DILocalVariable(name: "n", scope: !1755, file: !77, line: 251, type: !80)
!1761 = !DILocation(line: 0, scope: !1755, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 263, column: 37, scope: !1745)
!1763 = !DILocation(line: 251, column: 21, scope: !1755, inlinedAt: !1762)
!1764 = !{!1571, !683, i64 48}
!1765 = !DILocation(line: 251, column: 41, scope: !1755, inlinedAt: !1762)
!1766 = !DILocation(line: 251, column: 14, scope: !1755, inlinedAt: !1762)
!1767 = !DILocation(line: 252, column: 21, scope: !1768, inlinedAt: !1762)
!1768 = distinct !DILexicalBlock(scope: !1755, file: !77, line: 252, column: 7)
!1769 = !DILocation(line: 252, column: 12, scope: !1768, inlinedAt: !1762)
!1770 = !DILocation(line: 252, column: 7, scope: !1755, inlinedAt: !1762)
!1771 = !DILocation(line: 253, column: 5, scope: !1768, inlinedAt: !1762)
!1772 = !DILocation(line: 254, column: 17, scope: !1755, inlinedAt: !1762)
!1773 = !DILocation(line: 254, column: 24, scope: !1755, inlinedAt: !1762)
!1774 = !DILocation(line: 266, column: 15, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1745, file: !77, line: 266, column: 7)
!1776 = !DILocation(line: 266, column: 20, scope: !1775)
!1777 = !DILocation(line: 266, column: 7, scope: !1745)
!1778 = !DILocation(line: 270, column: 15, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !77, line: 270, column: 9)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !77, line: 269, column: 3)
!1781 = distinct !DILexicalBlock(scope: !1745, file: !77, line: 269, column: 3)
!1782 = !DILocation(line: 270, column: 31, scope: !1779)
!1783 = !DILocation(line: 270, column: 41, scope: !1779)
!1784 = !{!1571, !683, i64 56}
!1785 = !DILocation(line: 270, column: 34, scope: !1779)
!1786 = !DILocation(line: 270, column: 9, scope: !1780)
!1787 = !DILocation(line: 270, column: 26, scope: !1779)
!1788 = !DILocation(line: 271, column: 22, scope: !1779)
!1789 = !DILocation(line: 269, column: 50, scope: !1780)
!1790 = !DILocation(line: 269, column: 3, scope: !1781)
!1791 = distinct !{!1791, !1790, !1792, !726}
!1792 = !DILocation(line: 271, column: 22, scope: !1781)
!1793 = !DILocation(line: 274, column: 1, scope: !1745)
!1794 = distinct !DISubprogram(name: "hash_get_first", scope: !77, file: !77, line: 288, type: !1795, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!30, !1531}
!1797 = !{!1798, !1799}
!1798 = !DILocalVariable(name: "table", arg: 1, scope: !1794, file: !77, line: 288, type: !1531)
!1799 = !DILocalVariable(name: "bucket", scope: !1794, file: !77, line: 290, type: !1543)
!1800 = !DILocation(line: 0, scope: !1794)
!1801 = !DILocation(line: 292, column: 14, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1794, file: !77, line: 292, column: 7)
!1803 = !DILocation(line: 292, column: 24, scope: !1802)
!1804 = !DILocation(line: 292, column: 7, scope: !1794)
!1805 = !DILocation(line: 295, column: 24, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1794, file: !77, line: 295, column: 3)
!1807 = !DILocation(line: 296, column: 28, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !77, line: 296, column: 9)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !77, line: 295, column: 3)
!1810 = !DILocation(line: 296, column: 19, scope: !1808)
!1811 = !DILocation(line: 296, column: 9, scope: !1809)
!1812 = distinct !{!1812, !1813, !1814}
!1813 = !DILocation(line: 295, column: 3, scope: !1806)
!1814 = !DILocation(line: 299, column: 22, scope: !1806)
!1815 = !DILocation(line: 297, column: 7, scope: !1808)
!1816 = !DILocation(line: 298, column: 22, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1808, file: !77, line: 298, column: 14)
!1818 = !DILocation(line: 298, column: 14, scope: !1817)
!1819 = !DILocation(line: 295, column: 40, scope: !1809)
!1820 = !DILocation(line: 298, column: 14, scope: !1808)
!1821 = !DILocation(line: 300, column: 1, scope: !1794)
!1822 = distinct !DISubprogram(name: "hash_get_next", scope: !77, file: !77, line: 307, type: !1746, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1823)
!1823 = !{!1824, !1825, !1826, !1827}
!1824 = !DILocalVariable(name: "table", arg: 1, scope: !1822, file: !77, line: 307, type: !1531)
!1825 = !DILocalVariable(name: "entry", arg: 2, scope: !1822, file: !77, line: 307, type: !982)
!1826 = !DILocalVariable(name: "bucket", scope: !1822, file: !77, line: 309, type: !1543)
!1827 = !DILocalVariable(name: "cursor", scope: !1822, file: !77, line: 310, type: !1543)
!1828 = !DILocation(line: 0, scope: !1822)
!1829 = !DILocation(line: 0, scope: !1755, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 309, column: 37, scope: !1822)
!1831 = !DILocation(line: 251, column: 21, scope: !1755, inlinedAt: !1830)
!1832 = !DILocation(line: 251, column: 41, scope: !1755, inlinedAt: !1830)
!1833 = !DILocation(line: 251, column: 14, scope: !1755, inlinedAt: !1830)
!1834 = !DILocation(line: 252, column: 21, scope: !1768, inlinedAt: !1830)
!1835 = !DILocation(line: 252, column: 12, scope: !1768, inlinedAt: !1830)
!1836 = !DILocation(line: 252, column: 7, scope: !1755, inlinedAt: !1830)
!1837 = !DILocation(line: 253, column: 5, scope: !1768, inlinedAt: !1830)
!1838 = !DILocation(line: 254, column: 17, scope: !1755, inlinedAt: !1830)
!1839 = !DILocation(line: 254, column: 24, scope: !1755, inlinedAt: !1830)
!1840 = !DILocation(line: 314, column: 3, scope: !1822)
!1841 = !DILocation(line: 316, column: 19, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !77, line: 316, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1822, file: !77, line: 315, column: 5)
!1844 = !DILocation(line: 316, column: 24, scope: !1842)
!1845 = !DILocation(line: 0, scope: !1843)
!1846 = !DILocation(line: 316, column: 33, scope: !1842)
!1847 = !DILocation(line: 316, column: 11, scope: !1843)
!1848 = !DILocation(line: 317, column: 30, scope: !1842)
!1849 = !DILocation(line: 317, column: 9, scope: !1842)
!1850 = !DILocation(line: 319, column: 5, scope: !1843)
!1851 = distinct !{!1851, !1840, !1852, !726}
!1852 = !DILocation(line: 320, column: 24, scope: !1822)
!1853 = !DILocation(line: 323, column: 3, scope: !1822)
!1854 = !DILocation(line: 323, column: 10, scope: !1822)
!1855 = !DILocation(line: 323, column: 19, scope: !1822)
!1856 = !DILocation(line: 324, column: 17, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1822, file: !77, line: 324, column: 9)
!1858 = !DILocation(line: 324, column: 9, scope: !1857)
!1859 = !DILocation(line: 324, column: 9, scope: !1822)
!1860 = distinct !{!1860, !1853, !1861, !726}
!1861 = !DILocation(line: 325, column: 22, scope: !1822)
!1862 = !DILocation(line: 329, column: 1, scope: !1822)
!1863 = distinct !DISubprogram(name: "hash_get_entries", scope: !77, file: !77, line: 336, type: !1864, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1867)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!80, !1531, !1866, !80}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873}
!1868 = !DILocalVariable(name: "table", arg: 1, scope: !1863, file: !77, line: 336, type: !1531)
!1869 = !DILocalVariable(name: "buffer", arg: 2, scope: !1863, file: !77, line: 336, type: !1866)
!1870 = !DILocalVariable(name: "buffer_size", arg: 3, scope: !1863, file: !77, line: 337, type: !80)
!1871 = !DILocalVariable(name: "counter", scope: !1863, file: !77, line: 339, type: !80)
!1872 = !DILocalVariable(name: "bucket", scope: !1863, file: !77, line: 340, type: !1543)
!1873 = !DILocalVariable(name: "cursor", scope: !1863, file: !77, line: 341, type: !1543)
!1874 = !DILocation(line: 0, scope: !1863)
!1875 = !DILocation(line: 343, column: 24, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1863, file: !77, line: 343, column: 3)
!1877 = !DILocation(line: 343, column: 48, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1876, file: !77, line: 343, column: 3)
!1879 = !DILocation(line: 343, column: 39, scope: !1878)
!1880 = !DILocation(line: 343, column: 3, scope: !1876)
!1881 = !DILocation(line: 345, column: 19, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !77, line: 345, column: 11)
!1883 = distinct !DILexicalBlock(scope: !1878, file: !77, line: 344, column: 5)
!1884 = !DILocation(line: 345, column: 11, scope: !1882)
!1885 = !DILocation(line: 345, column: 11, scope: !1883)
!1886 = !DILocation(line: 347, column: 11, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !77, line: 347, column: 11)
!1888 = distinct !DILexicalBlock(scope: !1882, file: !77, line: 346, column: 9)
!1889 = !DILocation(line: 349, column: 27, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !77, line: 349, column: 19)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !77, line: 348, column: 13)
!1892 = distinct !DILexicalBlock(scope: !1887, file: !77, line: 347, column: 11)
!1893 = !DILocation(line: 349, column: 19, scope: !1891)
!1894 = !DILocation(line: 351, column: 43, scope: !1891)
!1895 = !DILocation(line: 351, column: 29, scope: !1891)
!1896 = !DILocation(line: 351, column: 15, scope: !1891)
!1897 = !DILocation(line: 351, column: 33, scope: !1891)
!1898 = !DILocation(line: 347, column: 58, scope: !1892)
!1899 = distinct !{!1899, !1886, !1900, !726}
!1900 = !DILocation(line: 352, column: 13, scope: !1887)
!1901 = !DILocation(line: 343, column: 68, scope: !1878)
!1902 = !DILocation(line: 339, column: 10, scope: !1863)
!1903 = distinct !{!1903, !1880, !1904, !726}
!1904 = !DILocation(line: 354, column: 5, scope: !1876)
!1905 = !DILocation(line: 357, column: 1, scope: !1863)
!1906 = distinct !DISubprogram(name: "hash_do_for_each", scope: !77, file: !77, line: 368, type: !1907, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1913)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!80, !1531, !1909, !30}
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_processor", file: !85, line: 51, baseType: !1910)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!35, !30, !30}
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919}
!1914 = !DILocalVariable(name: "table", arg: 1, scope: !1906, file: !77, line: 368, type: !1531)
!1915 = !DILocalVariable(name: "processor", arg: 2, scope: !1906, file: !77, line: 368, type: !1909)
!1916 = !DILocalVariable(name: "processor_data", arg: 3, scope: !1906, file: !77, line: 369, type: !30)
!1917 = !DILocalVariable(name: "counter", scope: !1906, file: !77, line: 371, type: !80)
!1918 = !DILocalVariable(name: "bucket", scope: !1906, file: !77, line: 372, type: !1543)
!1919 = !DILocalVariable(name: "cursor", scope: !1906, file: !77, line: 373, type: !1543)
!1920 = !DILocation(line: 0, scope: !1906)
!1921 = !DILocation(line: 375, column: 24, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1906, file: !77, line: 375, column: 3)
!1923 = !DILocation(line: 375, column: 48, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1922, file: !77, line: 375, column: 3)
!1925 = !DILocation(line: 375, column: 39, scope: !1924)
!1926 = !DILocation(line: 375, column: 3, scope: !1922)
!1927 = !DILocation(line: 377, column: 19, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !77, line: 377, column: 11)
!1929 = distinct !DILexicalBlock(scope: !1924, file: !77, line: 376, column: 5)
!1930 = !DILocation(line: 377, column: 11, scope: !1928)
!1931 = !DILocation(line: 377, column: 11, scope: !1929)
!1932 = !DILocation(line: 381, column: 21, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !77, line: 381, column: 19)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !77, line: 380, column: 13)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !77, line: 379, column: 11)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !77, line: 379, column: 11)
!1937 = distinct !DILexicalBlock(scope: !1928, file: !77, line: 378, column: 9)
!1938 = !DILocation(line: 381, column: 19, scope: !1934)
!1939 = !DILocation(line: 383, column: 22, scope: !1934)
!1940 = !DILocation(line: 379, column: 58, scope: !1935)
!1941 = !DILocation(line: 379, column: 11, scope: !1936)
!1942 = distinct !{!1942, !1941, !1943, !726}
!1943 = !DILocation(line: 384, column: 13, scope: !1936)
!1944 = !DILocation(line: 381, column: 40, scope: !1933)
!1945 = !DILocation(line: 375, column: 68, scope: !1924)
!1946 = !DILocation(line: 371, column: 10, scope: !1906)
!1947 = distinct !{!1947, !1926, !1948, !726}
!1948 = !DILocation(line: 386, column: 5, scope: !1922)
!1949 = !DILocation(line: 389, column: 1, scope: !1906)
!1950 = distinct !DISubprogram(name: "hash_string", scope: !77, file: !77, line: 428, type: !1951, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!80, !44, !80}
!1953 = !{!1954, !1955, !1956, !1957}
!1954 = !DILocalVariable(name: "string", arg: 1, scope: !1950, file: !77, line: 428, type: !44)
!1955 = !DILocalVariable(name: "n_buckets", arg: 2, scope: !1950, file: !77, line: 428, type: !80)
!1956 = !DILocalVariable(name: "value", scope: !1950, file: !77, line: 430, type: !80)
!1957 = !DILocalVariable(name: "ch", scope: !1950, file: !77, line: 431, type: !31)
!1958 = !DILocation(line: 0, scope: !1950)
!1959 = !DILocation(line: 433, column: 16, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !77, line: 433, column: 3)
!1961 = distinct !DILexicalBlock(scope: !1950, file: !77, line: 433, column: 3)
!1962 = !DILocation(line: 433, column: 3, scope: !1961)
!1963 = !DILocation(line: 434, column: 20, scope: !1960)
!1964 = !DILocation(line: 434, column: 27, scope: !1960)
!1965 = !DILocation(line: 434, column: 25, scope: !1960)
!1966 = !DILocation(line: 434, column: 31, scope: !1960)
!1967 = !DILocation(line: 433, column: 32, scope: !1960)
!1968 = distinct !{!1968, !1962, !1969, !726}
!1969 = !DILocation(line: 434, column: 33, scope: !1961)
!1970 = !DILocation(line: 435, column: 3, scope: !1950)
!1971 = distinct !DISubprogram(name: "hash_reset_tuning", scope: !77, file: !77, line: 479, type: !1972, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1975)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1975 = !{!1976}
!1976 = !DILocalVariable(name: "tuning", arg: 1, scope: !1971, file: !77, line: 479, type: !1974)
!1977 = !DILocation(line: 0, scope: !1971)
!1978 = !DILocation(line: 481, column: 13, scope: !1971)
!1979 = !{i64 0, i64 4, !1980, i64 4, i64 4, !1980, i64 8, i64 4, !1980, i64 12, i64 4, !1980, i64 16, i64 1, !1396}
!1980 = !{!1981, !1981, i64 0}
!1981 = !{!"float", !684, i64 0}
!1982 = !DILocation(line: 482, column: 1, scope: !1971)
!1983 = distinct !DISubprogram(name: "hash_initialize", scope: !77, file: !77, line: 594, type: !1984, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1987)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1986, !80, !1549, !1551, !1556, !1561}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1988 = !DILocalVariable(name: "candidate", arg: 1, scope: !1983, file: !77, line: 594, type: !80)
!1989 = !DILocalVariable(name: "tuning", arg: 2, scope: !1983, file: !77, line: 594, type: !1549)
!1990 = !DILocalVariable(name: "hasher", arg: 3, scope: !1983, file: !77, line: 595, type: !1551)
!1991 = !DILocalVariable(name: "comparator", arg: 4, scope: !1983, file: !77, line: 595, type: !1556)
!1992 = !DILocalVariable(name: "data_freer", arg: 5, scope: !1983, file: !77, line: 596, type: !1561)
!1993 = !DILocalVariable(name: "table", scope: !1983, file: !77, line: 598, type: !1986)
!1994 = !DILabel(scope: !1983, name: "fail", file: !77, line: 643)
!1995 = !DILocation(line: 0, scope: !1983)
!1996 = !DILocation(line: 600, column: 14, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1983, file: !77, line: 600, column: 7)
!1998 = !DILocation(line: 600, column: 7, scope: !1983)
!1999 = !DILocation(line: 602, column: 18, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1983, file: !77, line: 602, column: 7)
!2001 = !DILocation(line: 602, column: 7, scope: !1983)
!2002 = !DILocation(line: 605, column: 11, scope: !1983)
!2003 = !DILocation(line: 606, column: 13, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1983, file: !77, line: 606, column: 7)
!2005 = !DILocation(line: 606, column: 7, scope: !1983)
!2006 = !DILocation(line: 609, column: 8, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1983, file: !77, line: 609, column: 7)
!2008 = !DILocation(line: 609, column: 7, scope: !1983)
!2009 = !DILocation(line: 611, column: 10, scope: !1983)
!2010 = !DILocation(line: 611, column: 17, scope: !1983)
!2011 = !{!1571, !683, i64 40}
!2012 = !DILocalVariable(name: "table", arg: 1, scope: !2013, file: !77, line: 512, type: !1986)
!2013 = distinct !DISubprogram(name: "check_tuning", scope: !77, file: !77, line: 512, type: !2014, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2016)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!35, !1986}
!2016 = !{!2012, !2017, !2018}
!2017 = !DILocalVariable(name: "tuning", scope: !2013, file: !77, line: 514, type: !1549)
!2018 = !DILocalVariable(name: "epsilon", scope: !2013, file: !77, line: 515, type: !89)
!2019 = !DILocation(line: 0, scope: !2013, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 612, column: 8, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1983, file: !77, line: 612, column: 7)
!2022 = !DILocation(line: 516, column: 14, scope: !2023, inlinedAt: !2020)
!2023 = distinct !DILexicalBlock(scope: !2013, file: !77, line: 516, column: 7)
!2024 = !DILocation(line: 516, column: 7, scope: !2013, inlinedAt: !2020)
!2025 = !DILocation(line: 526, column: 25, scope: !2026, inlinedAt: !2020)
!2026 = distinct !DILexicalBlock(scope: !2013, file: !77, line: 526, column: 7)
!2027 = !{!2028, !1981, i64 8}
!2028 = !{!"hash_tuning", !1981, i64 0, !1981, i64 4, !1981, i64 8, !1981, i64 12, !1397, i64 16}
!2029 = !DILocation(line: 526, column: 15, scope: !2026, inlinedAt: !2020)
!2030 = !DILocation(line: 527, column: 7, scope: !2026, inlinedAt: !2020)
!2031 = !DILocation(line: 528, column: 32, scope: !2026, inlinedAt: !2020)
!2032 = !{!2028, !1981, i64 12}
!2033 = !DILocation(line: 528, column: 22, scope: !2026, inlinedAt: !2020)
!2034 = !DILocation(line: 529, column: 7, scope: !2026, inlinedAt: !2020)
!2035 = !DILocation(line: 529, column: 23, scope: !2026, inlinedAt: !2020)
!2036 = !{!2028, !1981, i64 0}
!2037 = !DILocation(line: 529, column: 12, scope: !2026, inlinedAt: !2020)
!2038 = !DILocation(line: 530, column: 7, scope: !2026, inlinedAt: !2020)
!2039 = !DILocation(line: 530, column: 35, scope: !2026, inlinedAt: !2020)
!2040 = !DILocation(line: 530, column: 55, scope: !2026, inlinedAt: !2020)
!2041 = !{!2028, !1981, i64 4}
!2042 = !DILocation(line: 530, column: 45, scope: !2026, inlinedAt: !2020)
!2043 = !DILocation(line: 531, column: 7, scope: !2026, inlinedAt: !2020)
!2044 = !DILocalVariable(name: "candidate", arg: 1, scope: !2045, file: !77, line: 544, type: !80)
!2045 = distinct !DISubprogram(name: "compute_bucket_size", scope: !77, file: !77, line: 544, type: !2046, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!80, !80, !1549}
!2048 = !{!2044, !2049, !2050}
!2049 = !DILocalVariable(name: "tuning", arg: 2, scope: !2045, file: !77, line: 544, type: !1549)
!2050 = !DILocalVariable(name: "new_candidate", scope: !2051, file: !77, line: 548, type: !89)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !77, line: 547, column: 5)
!2052 = distinct !DILexicalBlock(scope: !2045, file: !77, line: 546, column: 7)
!2053 = !DILocation(line: 0, scope: !2045, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 622, column: 22, scope: !1983)
!2055 = !DILocation(line: 546, column: 16, scope: !2052, inlinedAt: !2054)
!2056 = !{!2028, !1397, i64 16}
!2057 = !DILocation(line: 546, column: 7, scope: !2045, inlinedAt: !2054)
!2058 = !DILocation(line: 548, column: 29, scope: !2051, inlinedAt: !2054)
!2059 = !DILocation(line: 548, column: 49, scope: !2051, inlinedAt: !2054)
!2060 = !DILocation(line: 548, column: 39, scope: !2051, inlinedAt: !2054)
!2061 = !DILocation(line: 0, scope: !2051, inlinedAt: !2054)
!2062 = !DILocation(line: 549, column: 20, scope: !2063, inlinedAt: !2054)
!2063 = distinct !DILexicalBlock(scope: !2051, file: !77, line: 549, column: 11)
!2064 = !DILocation(line: 549, column: 11, scope: !2051, inlinedAt: !2054)
!2065 = !DILocalVariable(name: "candidate", arg: 1, scope: !2066, file: !77, line: 463, type: !80)
!2066 = distinct !DISubprogram(name: "next_prime", scope: !77, file: !77, line: 463, type: !2067, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!80, !80}
!2069 = !{!2065}
!2070 = !DILocation(line: 0, scope: !2066, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 553, column: 15, scope: !2045, inlinedAt: !2054)
!2072 = !DILocation(line: 466, column: 7, scope: !2066, inlinedAt: !2071)
!2073 = !DILocation(line: 470, column: 13, scope: !2066, inlinedAt: !2071)
!2074 = !DILocation(line: 472, column: 19, scope: !2066, inlinedAt: !2071)
!2075 = !DILocation(line: 472, column: 32, scope: !2066, inlinedAt: !2071)
!2076 = !DILocalVariable(name: "candidate", arg: 1, scope: !2077, file: !77, line: 444, type: !80)
!2077 = distinct !DISubprogram(name: "is_prime", scope: !77, file: !77, line: 444, type: !2078, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!35, !80}
!2080 = !{!2076, !2081, !2082}
!2081 = !DILocalVariable(name: "divisor", scope: !2077, file: !77, line: 446, type: !80)
!2082 = !DILocalVariable(name: "square", scope: !2077, file: !77, line: 447, type: !80)
!2083 = !DILocation(line: 0, scope: !2077, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 472, column: 36, scope: !2066, inlinedAt: !2071)
!2085 = !DILocation(line: 449, column: 17, scope: !2077, inlinedAt: !2084)
!2086 = !DILocation(line: 449, column: 29, scope: !2077, inlinedAt: !2084)
!2087 = !DILocation(line: 449, column: 43, scope: !2077, inlinedAt: !2084)
!2088 = !DILocation(line: 449, column: 3, scope: !2077, inlinedAt: !2084)
!2089 = !DILocation(line: 452, column: 19, scope: !2090, inlinedAt: !2084)
!2090 = distinct !DILexicalBlock(scope: !2077, file: !77, line: 450, column: 5)
!2091 = !DILocation(line: 452, column: 14, scope: !2090, inlinedAt: !2084)
!2092 = !DILocation(line: 453, column: 14, scope: !2090, inlinedAt: !2084)
!2093 = distinct !{!2093, !2088, !2094, !726}
!2094 = !DILocation(line: 454, column: 5, scope: !2077, inlinedAt: !2084)
!2095 = !DILocation(line: 456, column: 21, scope: !2077, inlinedAt: !2084)
!2096 = !DILocation(line: 456, column: 11, scope: !2077, inlinedAt: !2084)
!2097 = !DILocation(line: 472, column: 3, scope: !2066, inlinedAt: !2071)
!2098 = !DILocation(line: 473, column: 15, scope: !2066, inlinedAt: !2071)
!2099 = distinct !{!2099, !2097, !2100, !726}
!2100 = !DILocation(line: 473, column: 18, scope: !2066, inlinedAt: !2071)
!2101 = !DILocation(line: 554, column: 7, scope: !2102, inlinedAt: !2054)
!2102 = distinct !DILexicalBlock(scope: !2045, file: !77, line: 554, column: 7)
!2103 = !DILocation(line: 554, column: 7, scope: !2045, inlinedAt: !2054)
!2104 = !DILocation(line: 622, column: 10, scope: !1983)
!2105 = !DILocation(line: 622, column: 20, scope: !1983)
!2106 = !DILocation(line: 623, column: 8, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1983, file: !77, line: 623, column: 7)
!2108 = !DILocation(line: 623, column: 7, scope: !1983)
!2109 = !DILocation(line: 626, column: 19, scope: !1983)
!2110 = !DILocation(line: 626, column: 17, scope: !1983)
!2111 = !DILocation(line: 627, column: 21, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1983, file: !77, line: 627, column: 7)
!2113 = !DILocation(line: 627, column: 7, scope: !1983)
!2114 = !DILocation(line: 629, column: 39, scope: !1983)
!2115 = !DILocation(line: 629, column: 10, scope: !1983)
!2116 = !DILocation(line: 629, column: 23, scope: !1983)
!2117 = !DILocation(line: 630, column: 10, scope: !1983)
!2118 = !DILocation(line: 633, column: 10, scope: !1983)
!2119 = !DILocation(line: 631, column: 20, scope: !1983)
!2120 = !DILocation(line: 633, column: 17, scope: !1983)
!2121 = !DILocation(line: 634, column: 10, scope: !1983)
!2122 = !DILocation(line: 634, column: 21, scope: !1983)
!2123 = !DILocation(line: 635, column: 10, scope: !1983)
!2124 = !DILocation(line: 635, column: 21, scope: !1983)
!2125 = !{!1571, !683, i64 64}
!2126 = !DILocation(line: 637, column: 10, scope: !1983)
!2127 = !DILocation(line: 637, column: 26, scope: !1983)
!2128 = !{!1571, !683, i64 72}
!2129 = !DILocation(line: 641, column: 3, scope: !1983)
!2130 = !DILocation(line: 643, column: 2, scope: !1983)
!2131 = !DILocation(line: 644, column: 3, scope: !1983)
!2132 = !DILocation(line: 645, column: 3, scope: !1983)
!2133 = !DILocation(line: 646, column: 1, scope: !1983)
!2134 = distinct !DISubprogram(name: "raw_hasher", scope: !77, file: !77, line: 486, type: !1553, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2135)
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "data", arg: 1, scope: !2134, file: !77, line: 486, type: !982)
!2137 = !DILocalVariable(name: "n", arg: 2, scope: !2134, file: !77, line: 486, type: !80)
!2138 = !DILocalVariable(name: "val", scope: !2134, file: !77, line: 493, type: !80)
!2139 = !DILocation(line: 0, scope: !2134)
!2140 = !DILocation(line: 493, column: 25, scope: !2134)
!2141 = !DILocalVariable(name: "x", arg: 1, scope: !2142, file: !2143, line: 85, type: !80)
!2142 = distinct !DISubprogram(name: "rotr_sz", scope: !2143, file: !2143, line: 85, type: !2144, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2146)
!2143 = !DIFile(filename: "./lib/bitrotate.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!80, !80, !47}
!2146 = !{!2141, !2147}
!2147 = !DILocalVariable(name: "n", arg: 2, scope: !2142, file: !2143, line: 85, type: !47)
!2148 = !DILocation(line: 0, scope: !2142, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 493, column: 16, scope: !2134)
!2150 = !DILocation(line: 87, column: 20, scope: !2142, inlinedAt: !2149)
!2151 = !DILocation(line: 494, column: 14, scope: !2134)
!2152 = !DILocation(line: 494, column: 3, scope: !2134)
!2153 = distinct !DISubprogram(name: "raw_comparator", scope: !77, file: !77, line: 499, type: !1558, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2154)
!2154 = !{!2155, !2156}
!2155 = !DILocalVariable(name: "a", arg: 1, scope: !2153, file: !77, line: 499, type: !982)
!2156 = !DILocalVariable(name: "b", arg: 2, scope: !2153, file: !77, line: 499, type: !982)
!2157 = !DILocation(line: 0, scope: !2153)
!2158 = !DILocation(line: 501, column: 12, scope: !2153)
!2159 = !DILocation(line: 501, column: 3, scope: !2153)
!2160 = distinct !DISubprogram(name: "hash_clear", scope: !77, file: !77, line: 653, type: !2161, scopeLine: 654, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !1986}
!2163 = !{!2164, !2165, !2166, !2172}
!2164 = !DILocalVariable(name: "table", arg: 1, scope: !2160, file: !77, line: 653, type: !1986)
!2165 = !DILocalVariable(name: "bucket", scope: !2160, file: !77, line: 655, type: !1537)
!2166 = !DILocalVariable(name: "cursor", scope: !2167, file: !77, line: 661, type: !1537)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !77, line: 660, column: 9)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !77, line: 659, column: 11)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !77, line: 658, column: 5)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !77, line: 657, column: 3)
!2171 = distinct !DILexicalBlock(scope: !2160, file: !77, line: 657, column: 3)
!2172 = !DILocalVariable(name: "next", scope: !2167, file: !77, line: 662, type: !1537)
!2173 = !DILocation(line: 0, scope: !2160)
!2174 = !DILocation(line: 657, column: 24, scope: !2171)
!2175 = !DILocation(line: 657, column: 48, scope: !2170)
!2176 = !DILocation(line: 657, column: 39, scope: !2170)
!2177 = !DILocation(line: 657, column: 3, scope: !2171)
!2178 = !DILocation(line: 659, column: 19, scope: !2168)
!2179 = !DILocation(line: 659, column: 11, scope: !2168)
!2180 = !DILocation(line: 659, column: 11, scope: !2169)
!2181 = !DILocation(line: 665, column: 33, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2167, file: !77, line: 665, column: 11)
!2183 = !DILocation(line: 0, scope: !2167)
!2184 = !DILocation(line: 665, column: 11, scope: !2182)
!2185 = !DILocation(line: 667, column: 26, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !77, line: 667, column: 19)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !77, line: 666, column: 13)
!2188 = distinct !DILexicalBlock(scope: !2182, file: !77, line: 665, column: 11)
!2189 = !DILocation(line: 667, column: 19, scope: !2186)
!2190 = !DILocation(line: 667, column: 19, scope: !2187)
!2191 = !DILocation(line: 668, column: 44, scope: !2186)
!2192 = !DILocation(line: 668, column: 17, scope: !2186)
!2193 = !DILocation(line: 669, column: 23, scope: !2187)
!2194 = !DILocation(line: 669, column: 28, scope: !2187)
!2195 = !DILocation(line: 671, column: 30, scope: !2187)
!2196 = !DILocation(line: 674, column: 37, scope: !2187)
!2197 = !DILocation(line: 674, column: 28, scope: !2187)
!2198 = !DILocation(line: 675, column: 38, scope: !2187)
!2199 = distinct !{!2199, !2184, !2200, !726}
!2200 = !DILocation(line: 676, column: 13, scope: !2182)
!2201 = !DILocation(line: 679, column: 22, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2167, file: !77, line: 679, column: 15)
!2203 = !DILocation(line: 679, column: 15, scope: !2202)
!2204 = !DILocation(line: 679, column: 15, scope: !2167)
!2205 = !DILocation(line: 680, column: 40, scope: !2202)
!2206 = !DILocation(line: 680, column: 13, scope: !2202)
!2207 = !DILocation(line: 682, column: 24, scope: !2167)
!2208 = !DILocation(line: 683, column: 9, scope: !2167)
!2209 = !DILocation(line: 657, column: 68, scope: !2170)
!2210 = distinct !{!2210, !2177, !2211, !726}
!2211 = !DILocation(line: 684, column: 5, scope: !2171)
!2212 = !DILocation(line: 686, column: 10, scope: !2160)
!2213 = !DILocation(line: 688, column: 1, scope: !2160)
!2214 = !DILocation(line: 687, column: 20, scope: !2160)
!2215 = distinct !DISubprogram(name: "hash_free", scope: !77, file: !77, line: 696, type: !2161, scopeLine: 697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2216)
!2216 = !{!2217, !2218, !2219, !2220}
!2217 = !DILocalVariable(name: "table", arg: 1, scope: !2215, file: !77, line: 696, type: !1986)
!2218 = !DILocalVariable(name: "bucket", scope: !2215, file: !77, line: 698, type: !1537)
!2219 = !DILocalVariable(name: "cursor", scope: !2215, file: !77, line: 699, type: !1537)
!2220 = !DILocalVariable(name: "next", scope: !2215, file: !77, line: 700, type: !1537)
!2221 = !DILocation(line: 0, scope: !2215)
!2222 = !DILocation(line: 703, column: 14, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2215, file: !77, line: 703, column: 7)
!2224 = !DILocation(line: 703, column: 7, scope: !2223)
!2225 = !DILocation(line: 703, column: 25, scope: !2223)
!2226 = !DILocation(line: 703, column: 35, scope: !2223)
!2227 = !DILocation(line: 703, column: 28, scope: !2223)
!2228 = !DILocation(line: 703, column: 7, scope: !2215)
!2229 = !DILocation(line: 705, column: 28, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !77, line: 705, column: 7)
!2231 = distinct !DILexicalBlock(scope: !2223, file: !77, line: 704, column: 5)
!2232 = !DILocation(line: 705, column: 52, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2230, file: !77, line: 705, column: 7)
!2234 = !DILocation(line: 705, column: 43, scope: !2233)
!2235 = !DILocation(line: 705, column: 7, scope: !2230)
!2236 = !DILocation(line: 707, column: 23, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !77, line: 707, column: 15)
!2238 = distinct !DILexicalBlock(scope: !2233, file: !77, line: 706, column: 9)
!2239 = !DILocation(line: 707, column: 15, scope: !2237)
!2240 = !DILocation(line: 707, column: 15, scope: !2238)
!2241 = !DILocation(line: 710, column: 24, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !77, line: 709, column: 15)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !77, line: 709, column: 15)
!2244 = distinct !DILexicalBlock(scope: !2237, file: !77, line: 708, column: 13)
!2245 = !DILocation(line: 710, column: 17, scope: !2242)
!2246 = !DILocation(line: 709, column: 62, scope: !2242)
!2247 = !DILocation(line: 709, column: 15, scope: !2243)
!2248 = distinct !{!2248, !2247, !2249, !726}
!2249 = !DILocation(line: 710, column: 48, scope: !2243)
!2250 = !DILocation(line: 710, column: 44, scope: !2242)
!2251 = !DILocation(line: 705, column: 72, scope: !2233)
!2252 = distinct !{!2252, !2235, !2253, !726}
!2253 = !DILocation(line: 712, column: 9, scope: !2230)
!2254 = !DILocation(line: 722, column: 24, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2215, file: !77, line: 722, column: 3)
!2256 = !DILocation(line: 722, column: 48, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2255, file: !77, line: 722, column: 3)
!2258 = !DILocation(line: 722, column: 39, scope: !2257)
!2259 = !DILocation(line: 722, column: 3, scope: !2255)
!2260 = !DILocation(line: 724, column: 29, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !77, line: 724, column: 7)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !77, line: 723, column: 5)
!2263 = !DILocation(line: 724, column: 7, scope: !2261)
!2264 = !DILocation(line: 726, column: 26, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !77, line: 725, column: 9)
!2266 = distinct !DILexicalBlock(scope: !2261, file: !77, line: 724, column: 7)
!2267 = !DILocation(line: 727, column: 17, scope: !2265)
!2268 = !DILocation(line: 727, column: 11, scope: !2265)
!2269 = distinct !{!2269, !2263, !2270, !726}
!2270 = !DILocation(line: 728, column: 9, scope: !2261)
!2271 = !DILocation(line: 722, column: 68, scope: !2257)
!2272 = distinct !{!2272, !2259, !2273, !726}
!2273 = !DILocation(line: 729, column: 5, scope: !2255)
!2274 = !DILocation(line: 732, column: 24, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2215, file: !77, line: 732, column: 3)
!2276 = !DILocation(line: 732, column: 3, scope: !2275)
!2277 = !DILocation(line: 734, column: 22, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !77, line: 733, column: 5)
!2279 = distinct !DILexicalBlock(scope: !2275, file: !77, line: 732, column: 3)
!2280 = !DILocation(line: 735, column: 13, scope: !2278)
!2281 = !DILocation(line: 735, column: 7, scope: !2278)
!2282 = distinct !{!2282, !2276, !2283, !726}
!2283 = !DILocation(line: 736, column: 5, scope: !2275)
!2284 = !DILocation(line: 741, column: 16, scope: !2215)
!2285 = !DILocation(line: 741, column: 3, scope: !2215)
!2286 = !DILocation(line: 742, column: 9, scope: !2215)
!2287 = !DILocation(line: 742, column: 3, scope: !2215)
!2288 = !DILocation(line: 743, column: 1, scope: !2215)
!2289 = distinct !DISubprogram(name: "hash_rehash", scope: !77, file: !77, line: 943, type: !2290, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!35, !1986, !80}
!2292 = !{!2293, !2294, !2295, !2296, !2297}
!2293 = !DILocalVariable(name: "table", arg: 1, scope: !2289, file: !77, line: 943, type: !1986)
!2294 = !DILocalVariable(name: "candidate", arg: 2, scope: !2289, file: !77, line: 943, type: !80)
!2295 = !DILocalVariable(name: "storage", scope: !2289, file: !77, line: 945, type: !1533)
!2296 = !DILocalVariable(name: "new_table", scope: !2289, file: !77, line: 946, type: !1986)
!2297 = !DILocalVariable(name: "new_size", scope: !2289, file: !77, line: 947, type: !80)
!2298 = !DILocation(line: 0, scope: !2289)
!2299 = !DILocation(line: 945, column: 3, scope: !2289)
!2300 = !DILocation(line: 945, column: 14, scope: !2289)
!2301 = !DILocation(line: 947, column: 60, scope: !2289)
!2302 = !DILocation(line: 0, scope: !2045, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 947, column: 21, scope: !2289)
!2304 = !DILocation(line: 546, column: 16, scope: !2052, inlinedAt: !2303)
!2305 = !DILocation(line: 546, column: 7, scope: !2045, inlinedAt: !2303)
!2306 = !DILocation(line: 548, column: 29, scope: !2051, inlinedAt: !2303)
!2307 = !DILocation(line: 548, column: 49, scope: !2051, inlinedAt: !2303)
!2308 = !DILocation(line: 548, column: 39, scope: !2051, inlinedAt: !2303)
!2309 = !DILocation(line: 0, scope: !2051, inlinedAt: !2303)
!2310 = !DILocation(line: 549, column: 20, scope: !2063, inlinedAt: !2303)
!2311 = !DILocation(line: 549, column: 11, scope: !2051, inlinedAt: !2303)
!2312 = !DILocation(line: 0, scope: !2066, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 553, column: 15, scope: !2045, inlinedAt: !2303)
!2314 = !DILocation(line: 466, column: 7, scope: !2066, inlinedAt: !2313)
!2315 = !DILocation(line: 470, column: 13, scope: !2066, inlinedAt: !2313)
!2316 = !DILocation(line: 472, column: 19, scope: !2066, inlinedAt: !2313)
!2317 = !DILocation(line: 472, column: 32, scope: !2066, inlinedAt: !2313)
!2318 = !DILocation(line: 0, scope: !2077, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 472, column: 36, scope: !2066, inlinedAt: !2313)
!2320 = !DILocation(line: 449, column: 17, scope: !2077, inlinedAt: !2319)
!2321 = !DILocation(line: 449, column: 29, scope: !2077, inlinedAt: !2319)
!2322 = !DILocation(line: 449, column: 43, scope: !2077, inlinedAt: !2319)
!2323 = !DILocation(line: 449, column: 3, scope: !2077, inlinedAt: !2319)
!2324 = !DILocation(line: 452, column: 19, scope: !2090, inlinedAt: !2319)
!2325 = !DILocation(line: 452, column: 14, scope: !2090, inlinedAt: !2319)
!2326 = !DILocation(line: 453, column: 14, scope: !2090, inlinedAt: !2319)
!2327 = distinct !{!2327, !2323, !2328, !726}
!2328 = !DILocation(line: 454, column: 5, scope: !2077, inlinedAt: !2319)
!2329 = !DILocation(line: 456, column: 21, scope: !2077, inlinedAt: !2319)
!2330 = !DILocation(line: 456, column: 11, scope: !2077, inlinedAt: !2319)
!2331 = !DILocation(line: 472, column: 3, scope: !2066, inlinedAt: !2313)
!2332 = !DILocation(line: 473, column: 15, scope: !2066, inlinedAt: !2313)
!2333 = distinct !{!2333, !2331, !2334, !726}
!2334 = !DILocation(line: 473, column: 18, scope: !2066, inlinedAt: !2313)
!2335 = !DILocation(line: 554, column: 7, scope: !2045, inlinedAt: !2303)
!2336 = !DILocation(line: 951, column: 26, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2289, file: !77, line: 951, column: 7)
!2338 = !DILocation(line: 951, column: 16, scope: !2337)
!2339 = !DILocation(line: 951, column: 7, scope: !2289)
!2340 = !DILocation(line: 954, column: 23, scope: !2289)
!2341 = !DILocation(line: 954, column: 14, scope: !2289)
!2342 = !DILocation(line: 954, column: 21, scope: !2289)
!2343 = !DILocation(line: 955, column: 25, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2289, file: !77, line: 955, column: 7)
!2345 = !DILocation(line: 955, column: 7, scope: !2289)
!2346 = !DILocation(line: 957, column: 14, scope: !2289)
!2347 = !DILocation(line: 957, column: 24, scope: !2289)
!2348 = !DILocation(line: 958, column: 47, scope: !2289)
!2349 = !DILocation(line: 958, column: 14, scope: !2289)
!2350 = !DILocation(line: 958, column: 27, scope: !2289)
!2351 = !DILocation(line: 959, column: 14, scope: !2289)
!2352 = !DILocation(line: 961, column: 30, scope: !2289)
!2353 = !DILocation(line: 960, column: 24, scope: !2289)
!2354 = !DILocation(line: 961, column: 14, scope: !2289)
!2355 = !DILocation(line: 961, column: 21, scope: !2289)
!2356 = !DILocation(line: 962, column: 30, scope: !2289)
!2357 = !DILocation(line: 962, column: 14, scope: !2289)
!2358 = !DILocation(line: 962, column: 21, scope: !2289)
!2359 = !DILocation(line: 963, column: 34, scope: !2289)
!2360 = !DILocation(line: 963, column: 14, scope: !2289)
!2361 = !DILocation(line: 963, column: 25, scope: !2289)
!2362 = !DILocation(line: 964, column: 34, scope: !2289)
!2363 = !DILocation(line: 964, column: 14, scope: !2289)
!2364 = !DILocation(line: 964, column: 25, scope: !2289)
!2365 = !DILocation(line: 984, column: 39, scope: !2289)
!2366 = !DILocation(line: 984, column: 14, scope: !2289)
!2367 = !DILocation(line: 984, column: 30, scope: !2289)
!2368 = !DILocation(line: 986, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2289, file: !77, line: 986, column: 7)
!2370 = !DILocation(line: 986, column: 7, scope: !2289)
!2371 = !DILocation(line: 989, column: 20, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2369, file: !77, line: 987, column: 5)
!2373 = !DILocation(line: 989, column: 7, scope: !2372)
!2374 = !DILocation(line: 990, column: 34, scope: !2372)
!2375 = !DILocation(line: 990, column: 21, scope: !2372)
!2376 = !DILocation(line: 992, column: 37, scope: !2372)
!2377 = !DILocation(line: 992, column: 24, scope: !2372)
!2378 = !DILocation(line: 994, column: 43, scope: !2372)
!2379 = !DILocation(line: 994, column: 30, scope: !2372)
!2380 = !DILocation(line: 996, column: 7, scope: !2372)
!2381 = !DILocation(line: 1012, column: 39, scope: !2289)
!2382 = !DILocation(line: 1012, column: 26, scope: !2289)
!2383 = !DILocalVariable(name: "dst", arg: 1, scope: !2384, file: !77, line: 860, type: !1986)
!2384 = distinct !DISubprogram(name: "transfer_entries", scope: !77, file: !77, line: 860, type: !2385, scopeLine: 861, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!35, !1986, !1986, !35}
!2387 = !{!2383, !2388, !2389, !2390, !2391, !2392, !2393, !2398, !2399}
!2388 = !DILocalVariable(name: "src", arg: 2, scope: !2384, file: !77, line: 860, type: !1986)
!2389 = !DILocalVariable(name: "safe", arg: 3, scope: !2384, file: !77, line: 860, type: !35)
!2390 = !DILocalVariable(name: "bucket", scope: !2384, file: !77, line: 862, type: !1537)
!2391 = !DILocalVariable(name: "cursor", scope: !2384, file: !77, line: 863, type: !1537)
!2392 = !DILocalVariable(name: "next", scope: !2384, file: !77, line: 864, type: !1537)
!2393 = !DILocalVariable(name: "data", scope: !2394, file: !77, line: 868, type: !30)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !77, line: 867, column: 7)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !77, line: 866, column: 9)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !77, line: 865, column: 3)
!2397 = distinct !DILexicalBlock(scope: !2384, file: !77, line: 865, column: 3)
!2398 = !DILocalVariable(name: "new_bucket", scope: !2394, file: !77, line: 869, type: !1537)
!2399 = !DILocalVariable(name: "new_entry", scope: !2400, file: !77, line: 913, type: !1537)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !77, line: 910, column: 11)
!2401 = distinct !DILexicalBlock(scope: !2394, file: !77, line: 909, column: 13)
!2402 = !DILocation(line: 0, scope: !2384, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 1013, column: 10, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2289, file: !77, line: 1013, column: 7)
!2405 = !DILocation(line: 865, column: 22, scope: !2397, inlinedAt: !2403)
!2406 = !DILocation(line: 865, column: 44, scope: !2396, inlinedAt: !2403)
!2407 = !DILocation(line: 865, column: 37, scope: !2396, inlinedAt: !2403)
!2408 = !DILocation(line: 865, column: 3, scope: !2397, inlinedAt: !2403)
!2409 = !DILocation(line: 866, column: 17, scope: !2395, inlinedAt: !2403)
!2410 = !DILocation(line: 866, column: 9, scope: !2395, inlinedAt: !2403)
!2411 = !DILocation(line: 866, column: 9, scope: !2396, inlinedAt: !2403)
!2412 = !DILocation(line: 877, column: 31, scope: !2413, inlinedAt: !2403)
!2413 = distinct !DILexicalBlock(scope: !2394, file: !77, line: 877, column: 9)
!2414 = !DILocation(line: 877, column: 9, scope: !2413, inlinedAt: !2403)
!2415 = !DILocation(line: 251, column: 41, scope: !1755, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 880, column: 26, scope: !2417, inlinedAt: !2403)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !77, line: 878, column: 11)
!2418 = distinct !DILexicalBlock(scope: !2413, file: !77, line: 877, column: 9)
!2419 = !DILocation(line: 879, column: 28, scope: !2417, inlinedAt: !2403)
!2420 = !DILocation(line: 0, scope: !2394, inlinedAt: !2403)
!2421 = !DILocation(line: 0, scope: !1755, inlinedAt: !2416)
!2422 = !DILocation(line: 251, column: 21, scope: !1755, inlinedAt: !2416)
!2423 = !DILocation(line: 251, column: 14, scope: !1755, inlinedAt: !2416)
!2424 = !DILocation(line: 252, column: 21, scope: !1768, inlinedAt: !2416)
!2425 = !DILocation(line: 252, column: 12, scope: !1768, inlinedAt: !2416)
!2426 = !DILocation(line: 252, column: 7, scope: !1755, inlinedAt: !2416)
!2427 = !DILocation(line: 253, column: 5, scope: !1768, inlinedAt: !2416)
!2428 = !DILocation(line: 254, column: 17, scope: !1755, inlinedAt: !2416)
!2429 = !DILocation(line: 882, column: 28, scope: !2417, inlinedAt: !2403)
!2430 = !DILocation(line: 884, column: 29, scope: !2431, inlinedAt: !2403)
!2431 = distinct !DILexicalBlock(scope: !2417, file: !77, line: 884, column: 17)
!2432 = !DILocation(line: 884, column: 17, scope: !2431, inlinedAt: !2403)
!2433 = !DILocation(line: 884, column: 17, scope: !2417, inlinedAt: !2403)
!2434 = !DILocation(line: 888, column: 44, scope: !2435, inlinedAt: !2403)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !77, line: 885, column: 15)
!2436 = !DILocation(line: 890, column: 15, scope: !2435, inlinedAt: !2403)
!2437 = !DILocation(line: 895, column: 34, scope: !2438, inlinedAt: !2403)
!2438 = distinct !DILexicalBlock(scope: !2431, file: !77, line: 892, column: 15)
!2439 = !DILocation(line: 896, column: 36, scope: !2438, inlinedAt: !2403)
!2440 = !DILocalVariable(name: "table", arg: 1, scope: !2441, file: !77, line: 776, type: !1986)
!2441 = distinct !DISubprogram(name: "free_entry", scope: !77, file: !77, line: 776, type: !2442, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !1986, !1537}
!2444 = !{!2440, !2445}
!2445 = !DILocalVariable(name: "entry", arg: 2, scope: !2441, file: !77, line: 776, type: !1537)
!2446 = !DILocation(line: 0, scope: !2441, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 897, column: 17, scope: !2438, inlinedAt: !2403)
!2448 = !DILocation(line: 778, column: 15, scope: !2441, inlinedAt: !2447)
!2449 = !DILocation(line: 0, scope: !2431, inlinedAt: !2403)
!2450 = distinct !{!2450, !2414, !2451, !726}
!2451 = !DILocation(line: 899, column: 11, scope: !2413, inlinedAt: !2403)
!2452 = !DILocation(line: 904, column: 22, scope: !2394, inlinedAt: !2403)
!2453 = !DILocation(line: 865, column: 64, scope: !2396, inlinedAt: !2403)
!2454 = distinct !{!2454, !2408, !2455, !726}
!2455 = !DILocation(line: 930, column: 7, scope: !2397, inlinedAt: !2403)
!2456 = !DILocation(line: 1014, column: 13, scope: !2404)
!2457 = !DILocation(line: 1013, column: 7, scope: !2289)
!2458 = !DILocation(line: 1015, column: 5, scope: !2404)
!2459 = !DILocation(line: 1017, column: 20, scope: !2289)
!2460 = !DILocation(line: 1017, column: 3, scope: !2289)
!2461 = !DILocation(line: 1018, column: 3, scope: !2289)
!2462 = !DILocation(line: 1019, column: 1, scope: !2289)
!2463 = !DILocation(line: 0, scope: !2384)
!2464 = !DILocation(line: 865, column: 22, scope: !2397)
!2465 = !DILocation(line: 865, column: 44, scope: !2396)
!2466 = !DILocation(line: 865, column: 37, scope: !2396)
!2467 = !DILocation(line: 865, column: 3, scope: !2397)
!2468 = !DILocation(line: 866, column: 17, scope: !2395)
!2469 = !DILocation(line: 866, column: 9, scope: !2395)
!2470 = !DILocation(line: 866, column: 9, scope: !2396)
!2471 = !DILocation(line: 877, column: 31, scope: !2413)
!2472 = !DILocation(line: 877, column: 9, scope: !2413)
!2473 = !DILocation(line: 251, column: 41, scope: !1755, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 880, column: 26, scope: !2417)
!2475 = !DILocation(line: 879, column: 28, scope: !2417)
!2476 = !DILocation(line: 0, scope: !2394)
!2477 = !DILocation(line: 0, scope: !1755, inlinedAt: !2474)
!2478 = !DILocation(line: 251, column: 21, scope: !1755, inlinedAt: !2474)
!2479 = !DILocation(line: 251, column: 14, scope: !1755, inlinedAt: !2474)
!2480 = !DILocation(line: 252, column: 21, scope: !1768, inlinedAt: !2474)
!2481 = !DILocation(line: 252, column: 12, scope: !1768, inlinedAt: !2474)
!2482 = !DILocation(line: 252, column: 7, scope: !1755, inlinedAt: !2474)
!2483 = !DILocation(line: 253, column: 5, scope: !1768, inlinedAt: !2474)
!2484 = !DILocation(line: 254, column: 17, scope: !1755, inlinedAt: !2474)
!2485 = !DILocation(line: 882, column: 28, scope: !2417)
!2486 = !DILocation(line: 884, column: 29, scope: !2431)
!2487 = !DILocation(line: 884, column: 17, scope: !2431)
!2488 = !DILocation(line: 884, column: 17, scope: !2417)
!2489 = !DILocation(line: 888, column: 44, scope: !2435)
!2490 = !DILocation(line: 890, column: 15, scope: !2435)
!2491 = !DILocation(line: 895, column: 34, scope: !2438)
!2492 = !DILocation(line: 896, column: 36, scope: !2438)
!2493 = !DILocation(line: 0, scope: !2441, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 897, column: 17, scope: !2438)
!2495 = !DILocation(line: 778, column: 15, scope: !2441, inlinedAt: !2494)
!2496 = !DILocation(line: 0, scope: !2431)
!2497 = distinct !{!2497, !2472, !2498, !726}
!2498 = !DILocation(line: 899, column: 11, scope: !2413)
!2499 = !DILocation(line: 903, column: 24, scope: !2394)
!2500 = !DILocation(line: 904, column: 22, scope: !2394)
!2501 = !DILocation(line: 905, column: 13, scope: !2394)
!2502 = !DILocation(line: 0, scope: !1755, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 907, column: 22, scope: !2394)
!2504 = !DILocation(line: 251, column: 21, scope: !1755, inlinedAt: !2503)
!2505 = !DILocation(line: 251, column: 41, scope: !1755, inlinedAt: !2503)
!2506 = !DILocation(line: 251, column: 14, scope: !1755, inlinedAt: !2503)
!2507 = !DILocation(line: 252, column: 21, scope: !1768, inlinedAt: !2503)
!2508 = !DILocation(line: 252, column: 12, scope: !1768, inlinedAt: !2503)
!2509 = !DILocation(line: 252, column: 7, scope: !1755, inlinedAt: !2503)
!2510 = !DILocation(line: 253, column: 5, scope: !1768, inlinedAt: !2503)
!2511 = !DILocation(line: 254, column: 17, scope: !1755, inlinedAt: !2503)
!2512 = !DILocation(line: 909, column: 25, scope: !2401)
!2513 = !DILocation(line: 909, column: 13, scope: !2401)
!2514 = !DILocation(line: 909, column: 13, scope: !2394)
!2515 = !DILocalVariable(name: "table", arg: 1, scope: !2516, file: !77, line: 751, type: !1986)
!2516 = distinct !DISubprogram(name: "allocate_entry", scope: !77, file: !77, line: 751, type: !2517, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!1537, !1986}
!2519 = !{!2515, !2520}
!2520 = !DILocalVariable(name: "new", scope: !2516, file: !77, line: 753, type: !1537)
!2521 = !DILocation(line: 0, scope: !2516, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 913, column: 44, scope: !2400)
!2523 = !DILocation(line: 755, column: 14, scope: !2524, inlinedAt: !2522)
!2524 = distinct !DILexicalBlock(scope: !2516, file: !77, line: 755, column: 7)
!2525 = !DILocation(line: 755, column: 7, scope: !2524, inlinedAt: !2522)
!2526 = !DILocation(line: 755, column: 7, scope: !2516, inlinedAt: !2522)
!2527 = !DILocation(line: 758, column: 37, scope: !2528, inlinedAt: !2522)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !77, line: 756, column: 5)
!2529 = !DILocation(line: 758, column: 30, scope: !2528, inlinedAt: !2522)
!2530 = !DILocation(line: 0, scope: !2400)
!2531 = !DILocation(line: 915, column: 17, scope: !2400)
!2532 = !DILocation(line: 765, column: 13, scope: !2533, inlinedAt: !2522)
!2533 = distinct !DILexicalBlock(scope: !2524, file: !77, line: 761, column: 5)
!2534 = !DILocation(line: 915, column: 27, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2400, file: !77, line: 915, column: 17)
!2536 = !DILocation(line: 918, column: 24, scope: !2400)
!2537 = !DILocation(line: 918, column: 29, scope: !2400)
!2538 = !DILocation(line: 919, column: 43, scope: !2400)
!2539 = !DILocation(line: 919, column: 24, scope: !2400)
!2540 = !DILocation(line: 919, column: 29, scope: !2400)
!2541 = !DILocation(line: 920, column: 30, scope: !2400)
!2542 = !DILocation(line: 925, column: 30, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2401, file: !77, line: 923, column: 11)
!2544 = !DILocation(line: 926, column: 32, scope: !2543)
!2545 = !DILocation(line: 928, column: 22, scope: !2394)
!2546 = !DILocation(line: 929, column: 28, scope: !2394)
!2547 = !DILocation(line: 930, column: 7, scope: !2395)
!2548 = !DILocation(line: 865, column: 64, scope: !2396)
!2549 = distinct !{!2549, !2467, !2550, !726}
!2550 = !DILocation(line: 930, column: 7, scope: !2397)
!2551 = !DILocation(line: 932, column: 1, scope: !2384)
!2552 = distinct !DISubprogram(name: "hash_insert_if_absent", scope: !77, file: !77, line: 1038, type: !2553, scopeLine: 1040, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2556)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!47, !1986, !982, !2555}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2567, !2568}
!2557 = !DILocalVariable(name: "table", arg: 1, scope: !2552, file: !77, line: 1038, type: !1986)
!2558 = !DILocalVariable(name: "entry", arg: 2, scope: !2552, file: !77, line: 1038, type: !982)
!2559 = !DILocalVariable(name: "matched_ent", arg: 3, scope: !2552, file: !77, line: 1039, type: !2555)
!2560 = !DILocalVariable(name: "data", scope: !2552, file: !77, line: 1041, type: !30)
!2561 = !DILocalVariable(name: "bucket", scope: !2552, file: !77, line: 1042, type: !1537)
!2562 = !DILocalVariable(name: "tuning", scope: !2563, file: !77, line: 1072, type: !1549)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !77, line: 1071, column: 9)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !77, line: 1069, column: 11)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !77, line: 1065, column: 5)
!2566 = distinct !DILexicalBlock(scope: !2552, file: !77, line: 1063, column: 7)
!2567 = !DILocalVariable(name: "candidate", scope: !2563, file: !77, line: 1073, type: !89)
!2568 = !DILocalVariable(name: "new_entry", scope: !2569, file: !77, line: 1096, type: !1537)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !77, line: 1095, column: 5)
!2570 = distinct !DILexicalBlock(scope: !2552, file: !77, line: 1094, column: 7)
!2571 = !DILocation(line: 0, scope: !2552)
!2572 = !DILocation(line: 1047, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2552, file: !77, line: 1047, column: 7)
!2574 = !DILocation(line: 1047, column: 7, scope: !2552)
!2575 = !DILocation(line: 1048, column: 5, scope: !2573)
!2576 = !DILocalVariable(name: "table", arg: 1, scope: !2577, file: !77, line: 790, type: !1986)
!2577 = distinct !DISubprogram(name: "hash_find_entry", scope: !77, file: !77, line: 790, type: !2578, scopeLine: 792, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2581)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!30, !1986, !982, !2580, !35}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!2581 = !{!2576, !2582, !2583, !2584, !2585, !2586, !2587, !2590, !2595, !2601}
!2582 = !DILocalVariable(name: "entry", arg: 2, scope: !2577, file: !77, line: 790, type: !982)
!2583 = !DILocalVariable(name: "bucket_head", arg: 3, scope: !2577, file: !77, line: 791, type: !2580)
!2584 = !DILocalVariable(name: "delete", arg: 4, scope: !2577, file: !77, line: 791, type: !35)
!2585 = !DILocalVariable(name: "bucket", scope: !2577, file: !77, line: 793, type: !1537)
!2586 = !DILocalVariable(name: "cursor", scope: !2577, file: !77, line: 794, type: !1537)
!2587 = !DILocalVariable(name: "data", scope: !2588, file: !77, line: 805, type: !30)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !77, line: 804, column: 5)
!2589 = distinct !DILexicalBlock(scope: !2577, file: !77, line: 803, column: 7)
!2590 = !DILocalVariable(name: "next", scope: !2591, file: !77, line: 811, type: !1537)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !77, line: 810, column: 13)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !77, line: 809, column: 15)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !77, line: 808, column: 9)
!2594 = distinct !DILexicalBlock(scope: !2588, file: !77, line: 807, column: 11)
!2595 = !DILocalVariable(name: "data", scope: !2596, file: !77, line: 833, type: !30)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !77, line: 832, column: 9)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !77, line: 830, column: 11)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !77, line: 829, column: 5)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !77, line: 828, column: 3)
!2600 = distinct !DILexicalBlock(scope: !2577, file: !77, line: 828, column: 3)
!2601 = !DILocalVariable(name: "next", scope: !2602, file: !77, line: 837, type: !1537)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !77, line: 836, column: 13)
!2603 = distinct !DILexicalBlock(scope: !2596, file: !77, line: 835, column: 15)
!2604 = !DILocation(line: 0, scope: !2577, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 1051, column: 15, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2552, file: !77, line: 1051, column: 7)
!2607 = !DILocation(line: 0, scope: !1755, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 793, column: 31, scope: !2577, inlinedAt: !2605)
!2609 = !DILocation(line: 251, column: 21, scope: !1755, inlinedAt: !2608)
!2610 = !DILocation(line: 251, column: 41, scope: !1755, inlinedAt: !2608)
!2611 = !DILocation(line: 251, column: 14, scope: !1755, inlinedAt: !2608)
!2612 = !DILocation(line: 252, column: 21, scope: !1768, inlinedAt: !2608)
!2613 = !DILocation(line: 252, column: 12, scope: !1768, inlinedAt: !2608)
!2614 = !DILocation(line: 252, column: 7, scope: !1755, inlinedAt: !2608)
!2615 = !DILocation(line: 253, column: 5, scope: !1768, inlinedAt: !2608)
!2616 = !DILocation(line: 254, column: 17, scope: !1755, inlinedAt: !2608)
!2617 = !DILocation(line: 254, column: 24, scope: !1755, inlinedAt: !2608)
!2618 = !DILocation(line: 799, column: 15, scope: !2619, inlinedAt: !2605)
!2619 = distinct !DILexicalBlock(scope: !2577, file: !77, line: 799, column: 7)
!2620 = !DILocation(line: 799, column: 20, scope: !2619, inlinedAt: !2605)
!2621 = !DILocation(line: 799, column: 7, scope: !2577, inlinedAt: !2605)
!2622 = !DILocation(line: 803, column: 13, scope: !2589, inlinedAt: !2605)
!2623 = !DILocation(line: 803, column: 29, scope: !2589, inlinedAt: !2605)
!2624 = !DILocation(line: 803, column: 39, scope: !2589, inlinedAt: !2605)
!2625 = !DILocation(line: 803, column: 32, scope: !2589, inlinedAt: !2605)
!2626 = !DILocation(line: 803, column: 7, scope: !2577, inlinedAt: !2605)
!2627 = !DILocation(line: 828, column: 33, scope: !2599, inlinedAt: !2605)
!2628 = !DILocation(line: 828, column: 3, scope: !2600, inlinedAt: !2605)
!2629 = !DILocation(line: 830, column: 34, scope: !2597, inlinedAt: !2605)
!2630 = !DILocation(line: 830, column: 17, scope: !2597, inlinedAt: !2605)
!2631 = !DILocation(line: 831, column: 11, scope: !2597, inlinedAt: !2605)
!2632 = !DILocation(line: 831, column: 21, scope: !2597, inlinedAt: !2605)
!2633 = !DILocation(line: 831, column: 14, scope: !2597, inlinedAt: !2605)
!2634 = !DILocation(line: 0, scope: !2599, inlinedAt: !2605)
!2635 = !DILocation(line: 830, column: 11, scope: !2598, inlinedAt: !2605)
!2636 = distinct !{!2636, !2628, !2637, !726}
!2637 = !DILocation(line: 847, column: 5, scope: !2600, inlinedAt: !2605)
!2638 = !DILocation(line: 1051, column: 63, scope: !2606)
!2639 = !DILocation(line: 1051, column: 7, scope: !2552)
!2640 = !DILocation(line: 1053, column: 11, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !77, line: 1053, column: 11)
!2642 = distinct !DILexicalBlock(scope: !2606, file: !77, line: 1052, column: 5)
!2643 = !DILocation(line: 1053, column: 11, scope: !2642)
!2644 = !DILocation(line: 1054, column: 22, scope: !2641)
!2645 = !DILocation(line: 1054, column: 9, scope: !2641)
!2646 = !DILocation(line: 1063, column: 14, scope: !2566)
!2647 = !DILocation(line: 1063, column: 7, scope: !2566)
!2648 = !DILocation(line: 1064, column: 16, scope: !2566)
!2649 = !DILocation(line: 1064, column: 24, scope: !2566)
!2650 = !DILocation(line: 1064, column: 50, scope: !2566)
!2651 = !DILocation(line: 1064, column: 43, scope: !2566)
!2652 = !DILocation(line: 1064, column: 41, scope: !2566)
!2653 = !DILocation(line: 1064, column: 7, scope: !2566)
!2654 = !DILocation(line: 1063, column: 7, scope: !2552)
!2655 = !DILocation(line: 0, scope: !2013, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1068, column: 7, scope: !2565)
!2657 = !DILocation(line: 516, column: 14, scope: !2023, inlinedAt: !2656)
!2658 = !DILocation(line: 516, column: 7, scope: !2013, inlinedAt: !2656)
!2659 = !DILocation(line: 526, column: 15, scope: !2026, inlinedAt: !2656)
!2660 = !DILocation(line: 527, column: 7, scope: !2026, inlinedAt: !2656)
!2661 = !DILocation(line: 528, column: 32, scope: !2026, inlinedAt: !2656)
!2662 = !DILocation(line: 528, column: 22, scope: !2026, inlinedAt: !2656)
!2663 = !DILocation(line: 529, column: 7, scope: !2026, inlinedAt: !2656)
!2664 = !DILocation(line: 529, column: 23, scope: !2026, inlinedAt: !2656)
!2665 = !DILocation(line: 529, column: 12, scope: !2026, inlinedAt: !2656)
!2666 = !DILocation(line: 530, column: 7, scope: !2026, inlinedAt: !2656)
!2667 = !DILocation(line: 530, column: 35, scope: !2026, inlinedAt: !2656)
!2668 = !DILocation(line: 530, column: 55, scope: !2026, inlinedAt: !2656)
!2669 = !DILocation(line: 530, column: 45, scope: !2026, inlinedAt: !2656)
!2670 = !DILocation(line: 531, column: 7, scope: !2026, inlinedAt: !2656)
!2671 = !DILocation(line: 535, column: 17, scope: !2013, inlinedAt: !2656)
!2672 = !DILocation(line: 536, column: 3, scope: !2013, inlinedAt: !2656)
!2673 = !DILocation(line: 1070, column: 28, scope: !2564)
!2674 = !DILocation(line: 1070, column: 20, scope: !2564)
!2675 = !DILocation(line: 1070, column: 45, scope: !2564)
!2676 = !DILocation(line: 1070, column: 11, scope: !2564)
!2677 = !DILocation(line: 1069, column: 11, scope: !2565)
!2678 = !DILocation(line: 0, scope: !2563)
!2679 = !DILocation(line: 1074, column: 22, scope: !2563)
!2680 = !DILocation(line: 1074, column: 14, scope: !2563)
!2681 = !DILocation(line: 1079, column: 24, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2563, file: !77, line: 1079, column: 15)
!2683 = !DILocation(line: 1079, column: 15, scope: !2563)
!2684 = !DILocation(line: 1083, column: 36, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2563, file: !77, line: 1083, column: 15)
!2686 = !DILocation(line: 1083, column: 16, scope: !2685)
!2687 = !DILocation(line: 1083, column: 15, scope: !2563)
!2688 = !DILocation(line: 0, scope: !2577, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 1087, column: 15, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2563, file: !77, line: 1087, column: 15)
!2691 = !DILocation(line: 0, scope: !1755, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 793, column: 31, scope: !2577, inlinedAt: !2689)
!2693 = !DILocation(line: 251, column: 21, scope: !1755, inlinedAt: !2692)
!2694 = !DILocation(line: 251, column: 41, scope: !1755, inlinedAt: !2692)
!2695 = !DILocation(line: 251, column: 14, scope: !1755, inlinedAt: !2692)
!2696 = !DILocation(line: 252, column: 21, scope: !1768, inlinedAt: !2692)
!2697 = !DILocation(line: 252, column: 12, scope: !1768, inlinedAt: !2692)
!2698 = !DILocation(line: 252, column: 7, scope: !1755, inlinedAt: !2692)
!2699 = !DILocation(line: 253, column: 5, scope: !1768, inlinedAt: !2692)
!2700 = !DILocation(line: 254, column: 17, scope: !1755, inlinedAt: !2692)
!2701 = !DILocation(line: 254, column: 24, scope: !1755, inlinedAt: !2692)
!2702 = !DILocation(line: 799, column: 15, scope: !2619, inlinedAt: !2689)
!2703 = !DILocation(line: 799, column: 20, scope: !2619, inlinedAt: !2689)
!2704 = !DILocation(line: 799, column: 7, scope: !2577, inlinedAt: !2689)
!2705 = !DILocation(line: 803, column: 13, scope: !2589, inlinedAt: !2689)
!2706 = !DILocation(line: 803, column: 29, scope: !2589, inlinedAt: !2689)
!2707 = !DILocation(line: 803, column: 39, scope: !2589, inlinedAt: !2689)
!2708 = !DILocation(line: 803, column: 32, scope: !2589, inlinedAt: !2689)
!2709 = !DILocation(line: 803, column: 7, scope: !2577, inlinedAt: !2689)
!2710 = !DILocation(line: 805, column: 28, scope: !2588, inlinedAt: !2689)
!2711 = !DILocation(line: 828, column: 33, scope: !2599, inlinedAt: !2689)
!2712 = !DILocation(line: 828, column: 3, scope: !2600, inlinedAt: !2689)
!2713 = !DILocation(line: 830, column: 34, scope: !2597, inlinedAt: !2689)
!2714 = !DILocation(line: 830, column: 17, scope: !2597, inlinedAt: !2689)
!2715 = !DILocation(line: 831, column: 11, scope: !2597, inlinedAt: !2689)
!2716 = !DILocation(line: 831, column: 21, scope: !2597, inlinedAt: !2689)
!2717 = !DILocation(line: 831, column: 14, scope: !2597, inlinedAt: !2689)
!2718 = !DILocation(line: 0, scope: !2599, inlinedAt: !2689)
!2719 = !DILocation(line: 830, column: 11, scope: !2598, inlinedAt: !2689)
!2720 = !DILocation(line: 833, column: 38, scope: !2596, inlinedAt: !2689)
!2721 = distinct !{!2721, !2712, !2722, !726}
!2722 = !DILocation(line: 847, column: 5, scope: !2600, inlinedAt: !2689)
!2723 = !DILocation(line: 1087, column: 62, scope: !2690)
!2724 = !DILocation(line: 1087, column: 15, scope: !2563)
!2725 = !DILocation(line: 1088, column: 13, scope: !2690)
!2726 = !DILocation(line: 1094, column: 15, scope: !2570)
!2727 = !DILocation(line: 1094, column: 7, scope: !2570)
!2728 = !DILocation(line: 1094, column: 7, scope: !2552)
!2729 = !DILocation(line: 0, scope: !2516, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1096, column: 38, scope: !2569)
!2731 = !DILocation(line: 755, column: 14, scope: !2524, inlinedAt: !2730)
!2732 = !DILocation(line: 755, column: 7, scope: !2524, inlinedAt: !2730)
!2733 = !DILocation(line: 755, column: 7, scope: !2516, inlinedAt: !2730)
!2734 = !DILocation(line: 758, column: 37, scope: !2528, inlinedAt: !2730)
!2735 = !DILocation(line: 758, column: 30, scope: !2528, inlinedAt: !2730)
!2736 = !DILocation(line: 0, scope: !2569)
!2737 = !DILocation(line: 1098, column: 11, scope: !2569)
!2738 = !DILocation(line: 765, column: 13, scope: !2533, inlinedAt: !2730)
!2739 = !DILocation(line: 1098, column: 21, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2569, file: !77, line: 1098, column: 11)
!2741 = !DILocation(line: 1103, column: 18, scope: !2569)
!2742 = !DILocation(line: 1103, column: 23, scope: !2569)
!2743 = !DILocation(line: 1104, column: 33, scope: !2569)
!2744 = !DILocation(line: 1104, column: 18, scope: !2569)
!2745 = !DILocation(line: 1104, column: 23, scope: !2569)
!2746 = !DILocation(line: 1105, column: 20, scope: !2569)
!2747 = !DILocation(line: 1106, column: 14, scope: !2569)
!2748 = !DILocation(line: 1106, column: 23, scope: !2569)
!2749 = !DILocation(line: 1107, column: 7, scope: !2569)
!2750 = !DILocation(line: 1112, column: 16, scope: !2552)
!2751 = !DILocation(line: 1114, column: 24, scope: !2552)
!2752 = !DILocation(line: 1116, column: 3, scope: !2552)
!2753 = !DILocation(line: 1117, column: 1, scope: !2552)
!2754 = distinct !DISubprogram(name: "hash_insert", scope: !77, file: !77, line: 1126, type: !2755, scopeLine: 1127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!30, !1986, !982}
!2757 = !{!2758, !2759, !2760, !2761}
!2758 = !DILocalVariable(name: "table", arg: 1, scope: !2754, file: !77, line: 1126, type: !1986)
!2759 = !DILocalVariable(name: "entry", arg: 2, scope: !2754, file: !77, line: 1126, type: !982)
!2760 = !DILocalVariable(name: "matched_ent", scope: !2754, file: !77, line: 1128, type: !982)
!2761 = !DILocalVariable(name: "err", scope: !2754, file: !77, line: 1129, type: !47)
!2762 = !DILocation(line: 0, scope: !2754)
!2763 = !DILocation(line: 1128, column: 3, scope: !2754)
!2764 = !DILocation(line: 1129, column: 13, scope: !2754)
!2765 = !DILocation(line: 1130, column: 15, scope: !2754)
!2766 = !DILocation(line: 1130, column: 11, scope: !2754)
!2767 = !DILocation(line: 1133, column: 1, scope: !2754)
!2768 = !DILocation(line: 1130, column: 3, scope: !2754)
!2769 = distinct !DISubprogram(name: "hash_delete", scope: !77, file: !77, line: 1140, type: !2755, scopeLine: 1141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !2770)
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2782, !2783, !2786}
!2771 = !DILocalVariable(name: "table", arg: 1, scope: !2769, file: !77, line: 1140, type: !1986)
!2772 = !DILocalVariable(name: "entry", arg: 2, scope: !2769, file: !77, line: 1140, type: !982)
!2773 = !DILocalVariable(name: "data", scope: !2769, file: !77, line: 1142, type: !30)
!2774 = !DILocalVariable(name: "bucket", scope: !2769, file: !77, line: 1143, type: !1537)
!2775 = !DILocalVariable(name: "tuning", scope: !2776, file: !77, line: 1166, type: !1549)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !77, line: 1165, column: 13)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !77, line: 1163, column: 15)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !77, line: 1159, column: 9)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !77, line: 1157, column: 11)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !77, line: 1151, column: 5)
!2781 = distinct !DILexicalBlock(scope: !2769, file: !77, line: 1150, column: 7)
!2782 = !DILocalVariable(name: "candidate", scope: !2776, file: !77, line: 1167, type: !80)
!2783 = !DILocalVariable(name: "cursor", scope: !2784, file: !77, line: 1181, type: !1537)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !77, line: 1174, column: 17)
!2785 = distinct !DILexicalBlock(scope: !2776, file: !77, line: 1173, column: 19)
!2786 = !DILocalVariable(name: "next", scope: !2784, file: !77, line: 1182, type: !1537)
!2787 = !DILocation(line: 0, scope: !2769)
!2788 = !DILocation(line: 0, scope: !2577, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 1145, column: 10, scope: !2769)
!2790 = !DILocation(line: 0, scope: !1755, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 793, column: 31, scope: !2577, inlinedAt: !2789)
!2792 = !DILocation(line: 251, column: 21, scope: !1755, inlinedAt: !2791)
!2793 = !DILocation(line: 251, column: 41, scope: !1755, inlinedAt: !2791)
!2794 = !DILocation(line: 251, column: 14, scope: !1755, inlinedAt: !2791)
!2795 = !DILocation(line: 252, column: 21, scope: !1768, inlinedAt: !2791)
!2796 = !DILocation(line: 252, column: 12, scope: !1768, inlinedAt: !2791)
!2797 = !DILocation(line: 252, column: 7, scope: !1755, inlinedAt: !2791)
!2798 = !DILocation(line: 253, column: 5, scope: !1768, inlinedAt: !2791)
!2799 = !DILocation(line: 254, column: 17, scope: !1755, inlinedAt: !2791)
!2800 = !DILocation(line: 254, column: 24, scope: !1755, inlinedAt: !2791)
!2801 = !DILocation(line: 799, column: 15, scope: !2619, inlinedAt: !2789)
!2802 = !DILocation(line: 799, column: 20, scope: !2619, inlinedAt: !2789)
!2803 = !DILocation(line: 799, column: 7, scope: !2577, inlinedAt: !2789)
!2804 = !DILocation(line: 803, column: 13, scope: !2589, inlinedAt: !2789)
!2805 = !DILocation(line: 803, column: 29, scope: !2589, inlinedAt: !2789)
!2806 = !DILocation(line: 803, column: 39, scope: !2589, inlinedAt: !2789)
!2807 = !DILocation(line: 803, column: 32, scope: !2589, inlinedAt: !2789)
!2808 = !DILocation(line: 803, column: 7, scope: !2577, inlinedAt: !2789)
!2809 = !DILocation(line: 805, column: 28, scope: !2588, inlinedAt: !2789)
!2810 = !DILocation(line: 828, column: 33, scope: !2599, inlinedAt: !2789)
!2811 = !DILocation(line: 828, column: 3, scope: !2600, inlinedAt: !2789)
!2812 = !DILocation(line: 0, scope: !2588, inlinedAt: !2789)
!2813 = !DILocation(line: 809, column: 23, scope: !2592, inlinedAt: !2789)
!2814 = !DILocation(line: 809, column: 15, scope: !2592, inlinedAt: !2789)
!2815 = !DILocation(line: 809, column: 15, scope: !2593, inlinedAt: !2789)
!2816 = !DILocation(line: 0, scope: !2591, inlinedAt: !2789)
!2817 = !DILocation(line: 815, column: 25, scope: !2591, inlinedAt: !2789)
!2818 = !{i64 0, i64 8, !682, i64 8, i64 8, !682}
!2819 = !DILocation(line: 0, scope: !2441, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 816, column: 15, scope: !2591, inlinedAt: !2789)
!2821 = !DILocation(line: 778, column: 10, scope: !2441, inlinedAt: !2820)
!2822 = !DILocation(line: 778, column: 15, scope: !2441, inlinedAt: !2820)
!2823 = !DILocation(line: 779, column: 24, scope: !2441, inlinedAt: !2820)
!2824 = !DILocation(line: 779, column: 10, scope: !2441, inlinedAt: !2820)
!2825 = !DILocation(line: 779, column: 15, scope: !2441, inlinedAt: !2820)
!2826 = !DILocation(line: 780, column: 26, scope: !2441, inlinedAt: !2820)
!2827 = !DILocation(line: 817, column: 13, scope: !2591, inlinedAt: !2789)
!2828 = !DILocation(line: 820, column: 28, scope: !2829, inlinedAt: !2789)
!2829 = distinct !DILexicalBlock(scope: !2592, file: !77, line: 819, column: 13)
!2830 = !DILocation(line: 830, column: 34, scope: !2597, inlinedAt: !2789)
!2831 = !DILocation(line: 830, column: 17, scope: !2597, inlinedAt: !2789)
!2832 = !DILocation(line: 831, column: 11, scope: !2597, inlinedAt: !2789)
!2833 = !DILocation(line: 831, column: 21, scope: !2597, inlinedAt: !2789)
!2834 = !DILocation(line: 831, column: 14, scope: !2597, inlinedAt: !2789)
!2835 = !DILocation(line: 0, scope: !2599, inlinedAt: !2789)
!2836 = !DILocation(line: 830, column: 11, scope: !2598, inlinedAt: !2789)
!2837 = !DILocation(line: 833, column: 38, scope: !2596, inlinedAt: !2789)
!2838 = !DILocation(line: 833, column: 32, scope: !2596, inlinedAt: !2789)
!2839 = !DILocation(line: 0, scope: !2596, inlinedAt: !2789)
!2840 = !DILocation(line: 0, scope: !2602, inlinedAt: !2789)
!2841 = !DILocation(line: 841, column: 36, scope: !2602, inlinedAt: !2789)
!2842 = !DILocation(line: 841, column: 28, scope: !2602, inlinedAt: !2789)
!2843 = !DILocation(line: 0, scope: !2441, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 842, column: 15, scope: !2602, inlinedAt: !2789)
!2845 = !DILocation(line: 778, column: 15, scope: !2441, inlinedAt: !2844)
!2846 = !DILocation(line: 779, column: 24, scope: !2441, inlinedAt: !2844)
!2847 = !DILocation(line: 779, column: 15, scope: !2441, inlinedAt: !2844)
!2848 = !DILocation(line: 780, column: 26, scope: !2441, inlinedAt: !2844)
!2849 = !DILocation(line: 843, column: 13, scope: !2602, inlinedAt: !2789)
!2850 = distinct !{!2850, !2811, !2851, !726}
!2851 = !DILocation(line: 847, column: 5, scope: !2600, inlinedAt: !2789)
!2852 = !DILocation(line: 1146, column: 8, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2769, file: !77, line: 1146, column: 7)
!2854 = !DILocation(line: 1146, column: 7, scope: !2769)
!2855 = !DILocation(line: 1149, column: 10, scope: !2769)
!2856 = !DILocation(line: 1149, column: 19, scope: !2769)
!2857 = !DILocation(line: 1150, column: 16, scope: !2781)
!2858 = !DILocation(line: 1150, column: 8, scope: !2781)
!2859 = !DILocation(line: 1150, column: 7, scope: !2769)
!2860 = !DILocation(line: 1152, column: 14, scope: !2780)
!2861 = !DILocation(line: 1152, column: 28, scope: !2780)
!2862 = !DILocation(line: 1157, column: 11, scope: !2779)
!2863 = !DILocation(line: 1158, column: 20, scope: !2779)
!2864 = !DILocation(line: 1158, column: 28, scope: !2779)
!2865 = !DILocation(line: 1158, column: 54, scope: !2779)
!2866 = !DILocation(line: 1158, column: 47, scope: !2779)
!2867 = !DILocation(line: 1158, column: 45, scope: !2779)
!2868 = !DILocation(line: 1158, column: 11, scope: !2779)
!2869 = !DILocation(line: 1157, column: 11, scope: !2780)
!2870 = !DILocation(line: 0, scope: !2013, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 1162, column: 11, scope: !2778)
!2872 = !DILocation(line: 516, column: 14, scope: !2023, inlinedAt: !2871)
!2873 = !DILocation(line: 516, column: 7, scope: !2013, inlinedAt: !2871)
!2874 = !DILocation(line: 526, column: 25, scope: !2026, inlinedAt: !2871)
!2875 = !DILocation(line: 526, column: 15, scope: !2026, inlinedAt: !2871)
!2876 = !DILocation(line: 527, column: 7, scope: !2026, inlinedAt: !2871)
!2877 = !DILocation(line: 528, column: 32, scope: !2026, inlinedAt: !2871)
!2878 = !DILocation(line: 528, column: 22, scope: !2026, inlinedAt: !2871)
!2879 = !DILocation(line: 529, column: 7, scope: !2026, inlinedAt: !2871)
!2880 = !DILocation(line: 530, column: 35, scope: !2026, inlinedAt: !2871)
!2881 = !DILocation(line: 530, column: 55, scope: !2026, inlinedAt: !2871)
!2882 = !DILocation(line: 530, column: 45, scope: !2026, inlinedAt: !2871)
!2883 = !DILocation(line: 531, column: 7, scope: !2026, inlinedAt: !2871)
!2884 = !DILocation(line: 535, column: 17, scope: !2013, inlinedAt: !2871)
!2885 = !DILocation(line: 536, column: 3, scope: !2013, inlinedAt: !2871)
!2886 = !DILocation(line: 1164, column: 32, scope: !2777)
!2887 = !DILocation(line: 1164, column: 24, scope: !2777)
!2888 = !DILocation(line: 1164, column: 49, scope: !2777)
!2889 = !DILocation(line: 1164, column: 15, scope: !2777)
!2890 = !DILocation(line: 1163, column: 15, scope: !2778)
!2891 = !DILocation(line: 0, scope: !2776)
!2892 = !DILocation(line: 1168, column: 26, scope: !2776)
!2893 = !DILocation(line: 1168, column: 18, scope: !2776)
!2894 = !DILocation(line: 1171, column: 31, scope: !2776)
!2895 = !DILocation(line: 1171, column: 21, scope: !2776)
!2896 = !DILocation(line: 1168, column: 17, scope: !2776)
!2897 = !DILocation(line: 1173, column: 20, scope: !2785)
!2898 = !DILocation(line: 1173, column: 19, scope: !2776)
!2899 = !DILocation(line: 1181, column: 54, scope: !2784)
!2900 = !DILocation(line: 0, scope: !2784)
!2901 = !DILocation(line: 1183, column: 19, scope: !2784)
!2902 = !DILocation(line: 1185, column: 38, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2784, file: !77, line: 1184, column: 21)
!2904 = !DILocation(line: 1186, column: 29, scope: !2903)
!2905 = !DILocation(line: 1186, column: 23, scope: !2903)
!2906 = distinct !{!2906, !2901, !2907, !726}
!2907 = !DILocation(line: 1188, column: 21, scope: !2784)
!2908 = !DILocation(line: 1189, column: 42, scope: !2784)
!2909 = !DILocation(line: 1191, column: 17, scope: !2784)
!2910 = !DILocation(line: 1197, column: 1, scope: !2769)
!2911 = distinct !DISubprogram(name: "triple_hash", scope: !220, file: !220, line: 34, type: !1553, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2912)
!2912 = !{!2913, !2914, !2915, !2923}
!2913 = !DILocalVariable(name: "x", arg: 1, scope: !2911, file: !220, line: 34, type: !982)
!2914 = !DILocalVariable(name: "table_size", arg: 2, scope: !2911, file: !220, line: 34, type: !80)
!2915 = !DILocalVariable(name: "p", scope: !2911, file: !220, line: 36, type: !2916)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2918)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "F_triple", file: !1466, line: 9, size: 192, elements: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2918, file: !1466, line: 11, baseType: !28, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2918, file: !1466, line: 12, baseType: !1470, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2918, file: !1466, line: 13, baseType: !1472, size: 64, offset: 128)
!2923 = !DILocalVariable(name: "tmp", scope: !2911, file: !220, line: 37, type: !80)
!2924 = !DILocation(line: 0, scope: !2911)
!2925 = !DILocation(line: 37, column: 29, scope: !2911)
!2926 = !DILocation(line: 37, column: 16, scope: !2911)
!2927 = !DILocation(line: 40, column: 20, scope: !2911)
!2928 = !{!1484, !897, i64 8}
!2929 = !DILocation(line: 40, column: 15, scope: !2911)
!2930 = !DILocation(line: 40, column: 28, scope: !2911)
!2931 = !DILocation(line: 40, column: 3, scope: !2911)
!2932 = distinct !DISubprogram(name: "triple_hash_no_name", scope: !220, file: !220, line: 45, type: !1553, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DILocalVariable(name: "x", arg: 1, scope: !2932, file: !220, line: 45, type: !982)
!2935 = !DILocalVariable(name: "table_size", arg: 2, scope: !2932, file: !220, line: 45, type: !80)
!2936 = !DILocalVariable(name: "p", scope: !2932, file: !220, line: 47, type: !2916)
!2937 = !DILocation(line: 0, scope: !2932)
!2938 = !DILocation(line: 50, column: 13, scope: !2932)
!2939 = !DILocation(line: 50, column: 20, scope: !2932)
!2940 = !DILocation(line: 50, column: 3, scope: !2932)
!2941 = distinct !DISubprogram(name: "triple_compare", scope: !220, file: !220, line: 55, type: !1558, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2942)
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DILocalVariable(name: "x", arg: 1, scope: !2941, file: !220, line: 55, type: !982)
!2944 = !DILocalVariable(name: "y", arg: 2, scope: !2941, file: !220, line: 55, type: !982)
!2945 = !DILocalVariable(name: "a", scope: !2941, file: !220, line: 57, type: !2916)
!2946 = !DILocalVariable(name: "b", scope: !2941, file: !220, line: 58, type: !2916)
!2947 = !DILocation(line: 0, scope: !2941)
!2948 = !DILocation(line: 59, column: 11, scope: !2941)
!2949 = !{!1484, !897, i64 16}
!2950 = !DILocation(line: 59, column: 31, scope: !2941)
!2951 = !DILocation(line: 59, column: 48, scope: !2941)
!2952 = !DILocation(line: 59, column: 57, scope: !2941)
!2953 = !DILocation(line: 59, column: 34, scope: !2941)
!2954 = !DILocation(line: 59, column: 3, scope: !2941)
!2955 = distinct !DISubprogram(name: "triple_compare_ino_str", scope: !220, file: !220, line: 63, type: !1558, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2956)
!2956 = !{!2957, !2958, !2959, !2960}
!2957 = !DILocalVariable(name: "x", arg: 1, scope: !2955, file: !220, line: 63, type: !982)
!2958 = !DILocalVariable(name: "y", arg: 2, scope: !2955, file: !220, line: 63, type: !982)
!2959 = !DILocalVariable(name: "a", scope: !2955, file: !220, line: 65, type: !2916)
!2960 = !DILocalVariable(name: "b", scope: !2955, file: !220, line: 66, type: !2916)
!2961 = !DILocation(line: 0, scope: !2955)
!2962 = !DILocation(line: 67, column: 11, scope: !2955)
!2963 = !DILocation(line: 67, column: 31, scope: !2955)
!2964 = !DILocation(line: 67, column: 34, scope: !2955)
!2965 = !DILocation(line: 67, column: 3, scope: !2955)
!2966 = distinct !DISubprogram(name: "triple_free", scope: !220, file: !220, line: 72, type: !1563, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2967)
!2967 = !{!2968, !2969}
!2968 = !DILocalVariable(name: "x", arg: 1, scope: !2966, file: !220, line: 72, type: !30)
!2969 = !DILocalVariable(name: "a", scope: !2966, file: !220, line: 74, type: !2970)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2971 = !DILocation(line: 0, scope: !2966)
!2972 = !DILocation(line: 75, column: 12, scope: !2966)
!2973 = !DILocation(line: 75, column: 3, scope: !2966)
!2974 = !DILocation(line: 76, column: 3, scope: !2966)
!2975 = !DILocation(line: 77, column: 1, scope: !2966)
!2976 = distinct !DISubprogram(name: "set_program_name", scope: !97, file: !97, line: 39, type: !696, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2977)
!2977 = !{!2978, !2979, !2980}
!2978 = !DILocalVariable(name: "argv0", arg: 1, scope: !2976, file: !97, line: 39, type: !44)
!2979 = !DILocalVariable(name: "slash", scope: !2976, file: !97, line: 46, type: !44)
!2980 = !DILocalVariable(name: "base", scope: !2976, file: !97, line: 47, type: !44)
!2981 = !DILocation(line: 0, scope: !2976)
!2982 = !DILocation(line: 51, column: 13, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2976, file: !97, line: 51, column: 7)
!2984 = !DILocation(line: 51, column: 7, scope: !2976)
!2985 = !DILocation(line: 55, column: 14, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2983, file: !97, line: 52, column: 5)
!2987 = !DILocation(line: 54, column: 7, scope: !2986)
!2988 = !DILocation(line: 56, column: 7, scope: !2986)
!2989 = !DILocation(line: 59, column: 11, scope: !2976)
!2990 = !DILocation(line: 60, column: 17, scope: !2976)
!2991 = !DILocation(line: 60, column: 11, scope: !2976)
!2992 = !DILocation(line: 61, column: 12, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2976, file: !97, line: 61, column: 7)
!2994 = !DILocation(line: 61, column: 20, scope: !2993)
!2995 = !DILocation(line: 61, column: 25, scope: !2993)
!2996 = !DILocation(line: 61, column: 42, scope: !2993)
!2997 = !DILocation(line: 61, column: 28, scope: !2993)
!2998 = !DILocation(line: 61, column: 61, scope: !2993)
!2999 = !DILocation(line: 61, column: 7, scope: !2976)
!3000 = !DILocation(line: 64, column: 11, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !97, line: 64, column: 11)
!3002 = distinct !DILexicalBlock(scope: !2993, file: !97, line: 62, column: 5)
!3003 = !DILocation(line: 64, column: 36, scope: !3001)
!3004 = !DILocation(line: 64, column: 11, scope: !3002)
!3005 = !DILocation(line: 66, column: 24, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3001, file: !97, line: 65, column: 9)
!3007 = !DILocation(line: 70, column: 41, scope: !3006)
!3008 = !DILocation(line: 72, column: 9, scope: !3006)
!3009 = !DILocation(line: 84, column: 16, scope: !2976)
!3010 = !DILocation(line: 90, column: 27, scope: !2976)
!3011 = !DILocation(line: 92, column: 1, scope: !2976)
!3012 = distinct !DISubprogram(name: "clone_quoting_options", scope: !103, file: !103, line: 122, type: !3013, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3016)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!3015, !3015}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!3016 = !{!3017, !3018, !3019}
!3017 = !DILocalVariable(name: "o", arg: 1, scope: !3012, file: !103, line: 122, type: !3015)
!3018 = !DILocalVariable(name: "e", scope: !3012, file: !103, line: 124, type: !47)
!3019 = !DILocalVariable(name: "p", scope: !3012, file: !103, line: 125, type: !3015)
!3020 = !DILocation(line: 0, scope: !3012)
!3021 = !DILocation(line: 124, column: 11, scope: !3012)
!3022 = !DILocation(line: 125, column: 40, scope: !3012)
!3023 = !DILocation(line: 125, column: 31, scope: !3012)
!3024 = !DILocation(line: 127, column: 9, scope: !3012)
!3025 = !DILocation(line: 128, column: 3, scope: !3012)
!3026 = distinct !DISubprogram(name: "get_quoting_style", scope: !103, file: !103, line: 133, type: !3027, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3031)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!13, !3029}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!3031 = !{!3032}
!3032 = !DILocalVariable(name: "o", arg: 1, scope: !3026, file: !103, line: 133, type: !3029)
!3033 = !DILocation(line: 0, scope: !3026)
!3034 = !DILocation(line: 135, column: 11, scope: !3026)
!3035 = !DILocation(line: 135, column: 46, scope: !3026)
!3036 = !{!3037, !684, i64 0}
!3037 = !{!"quoting_options", !684, i64 0, !851, i64 4, !684, i64 8, !683, i64 40, !683, i64 48}
!3038 = !DILocation(line: 135, column: 3, scope: !3026)
!3039 = distinct !DISubprogram(name: "set_quoting_style", scope: !103, file: !103, line: 141, type: !3040, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !3015, !13}
!3042 = !{!3043, !3044}
!3043 = !DILocalVariable(name: "o", arg: 1, scope: !3039, file: !103, line: 141, type: !3015)
!3044 = !DILocalVariable(name: "s", arg: 2, scope: !3039, file: !103, line: 141, type: !13)
!3045 = !DILocation(line: 0, scope: !3039)
!3046 = !DILocation(line: 143, column: 4, scope: !3039)
!3047 = !DILocation(line: 143, column: 39, scope: !3039)
!3048 = !DILocation(line: 143, column: 45, scope: !3039)
!3049 = !DILocation(line: 144, column: 1, scope: !3039)
!3050 = distinct !DISubprogram(name: "set_char_quoting", scope: !103, file: !103, line: 152, type: !3051, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!47, !3015, !29, !47}
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3060, !3061}
!3054 = !DILocalVariable(name: "o", arg: 1, scope: !3050, file: !103, line: 152, type: !3015)
!3055 = !DILocalVariable(name: "c", arg: 2, scope: !3050, file: !103, line: 152, type: !29)
!3056 = !DILocalVariable(name: "i", arg: 3, scope: !3050, file: !103, line: 152, type: !47)
!3057 = !DILocalVariable(name: "uc", scope: !3050, file: !103, line: 154, type: !31)
!3058 = !DILocalVariable(name: "p", scope: !3050, file: !103, line: 155, type: !3059)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3060 = !DILocalVariable(name: "shift", scope: !3050, file: !103, line: 157, type: !47)
!3061 = !DILocalVariable(name: "r", scope: !3050, file: !103, line: 158, type: !47)
!3062 = !DILocation(line: 0, scope: !3050)
!3063 = !DILocation(line: 156, column: 6, scope: !3050)
!3064 = !DILocation(line: 156, column: 62, scope: !3050)
!3065 = !DILocation(line: 156, column: 57, scope: !3050)
!3066 = !DILocation(line: 157, column: 15, scope: !3050)
!3067 = !DILocation(line: 158, column: 12, scope: !3050)
!3068 = !DILocation(line: 158, column: 15, scope: !3050)
!3069 = !DILocation(line: 158, column: 25, scope: !3050)
!3070 = !DILocation(line: 159, column: 13, scope: !3050)
!3071 = !DILocation(line: 159, column: 18, scope: !3050)
!3072 = !DILocation(line: 159, column: 23, scope: !3050)
!3073 = !DILocation(line: 159, column: 6, scope: !3050)
!3074 = !DILocation(line: 160, column: 3, scope: !3050)
!3075 = distinct !DISubprogram(name: "set_quoting_flags", scope: !103, file: !103, line: 168, type: !3076, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!47, !3015, !47}
!3078 = !{!3079, !3080, !3081}
!3079 = !DILocalVariable(name: "o", arg: 1, scope: !3075, file: !103, line: 168, type: !3015)
!3080 = !DILocalVariable(name: "i", arg: 2, scope: !3075, file: !103, line: 168, type: !47)
!3081 = !DILocalVariable(name: "r", scope: !3075, file: !103, line: 170, type: !47)
!3082 = !DILocation(line: 0, scope: !3075)
!3083 = !DILocation(line: 171, column: 8, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3075, file: !103, line: 171, column: 7)
!3085 = !DILocation(line: 171, column: 7, scope: !3075)
!3086 = !DILocation(line: 173, column: 10, scope: !3075)
!3087 = !{!3037, !851, i64 4}
!3088 = !DILocation(line: 174, column: 12, scope: !3075)
!3089 = !DILocation(line: 175, column: 3, scope: !3075)
!3090 = distinct !DISubprogram(name: "set_custom_quoting", scope: !103, file: !103, line: 179, type: !3091, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{null, !3015, !44, !44}
!3093 = !{!3094, !3095, !3096}
!3094 = !DILocalVariable(name: "o", arg: 1, scope: !3090, file: !103, line: 179, type: !3015)
!3095 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3090, file: !103, line: 180, type: !44)
!3096 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3090, file: !103, line: 180, type: !44)
!3097 = !DILocation(line: 0, scope: !3090)
!3098 = !DILocation(line: 182, column: 8, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3090, file: !103, line: 182, column: 7)
!3100 = !DILocation(line: 182, column: 7, scope: !3090)
!3101 = !DILocation(line: 184, column: 6, scope: !3090)
!3102 = !DILocation(line: 184, column: 12, scope: !3090)
!3103 = !DILocation(line: 185, column: 8, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3090, file: !103, line: 185, column: 7)
!3105 = !DILocation(line: 185, column: 19, scope: !3104)
!3106 = !DILocation(line: 186, column: 5, scope: !3104)
!3107 = !DILocation(line: 187, column: 6, scope: !3090)
!3108 = !DILocation(line: 187, column: 17, scope: !3090)
!3109 = !{!3037, !683, i64 40}
!3110 = !DILocation(line: 188, column: 6, scope: !3090)
!3111 = !DILocation(line: 188, column: 18, scope: !3090)
!3112 = !{!3037, !683, i64 48}
!3113 = !DILocation(line: 189, column: 1, scope: !3090)
!3114 = distinct !DISubprogram(name: "quotearg_buffer", scope: !103, file: !103, line: 784, type: !3115, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!80, !28, !80, !44, !80, !3029}
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125}
!3118 = !DILocalVariable(name: "buffer", arg: 1, scope: !3114, file: !103, line: 784, type: !28)
!3119 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3114, file: !103, line: 784, type: !80)
!3120 = !DILocalVariable(name: "arg", arg: 3, scope: !3114, file: !103, line: 785, type: !44)
!3121 = !DILocalVariable(name: "argsize", arg: 4, scope: !3114, file: !103, line: 785, type: !80)
!3122 = !DILocalVariable(name: "o", arg: 5, scope: !3114, file: !103, line: 786, type: !3029)
!3123 = !DILocalVariable(name: "p", scope: !3114, file: !103, line: 788, type: !3029)
!3124 = !DILocalVariable(name: "e", scope: !3114, file: !103, line: 789, type: !47)
!3125 = !DILocalVariable(name: "r", scope: !3114, file: !103, line: 790, type: !80)
!3126 = !DILocation(line: 0, scope: !3114)
!3127 = !DILocation(line: 788, column: 37, scope: !3114)
!3128 = !DILocation(line: 789, column: 11, scope: !3114)
!3129 = !DILocation(line: 791, column: 43, scope: !3114)
!3130 = !DILocation(line: 791, column: 53, scope: !3114)
!3131 = !DILocation(line: 791, column: 60, scope: !3114)
!3132 = !DILocation(line: 792, column: 43, scope: !3114)
!3133 = !DILocation(line: 792, column: 58, scope: !3114)
!3134 = !DILocation(line: 790, column: 14, scope: !3114)
!3135 = !DILocation(line: 793, column: 9, scope: !3114)
!3136 = !DILocation(line: 794, column: 3, scope: !3114)
!3137 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !103, file: !103, line: 256, type: !3138, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3142)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!80, !28, !80, !44, !80, !13, !47, !3140, !44, !44}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3142 = !{!3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3167, !3168, !3169, !3170, !3171, !3174, !3175, !3193, !3196, !3197, !3204, !3207, !3208, !3209, !3210, !3211, !3212}
!3143 = !DILocalVariable(name: "buffer", arg: 1, scope: !3137, file: !103, line: 256, type: !28)
!3144 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3137, file: !103, line: 256, type: !80)
!3145 = !DILocalVariable(name: "arg", arg: 3, scope: !3137, file: !103, line: 257, type: !44)
!3146 = !DILocalVariable(name: "argsize", arg: 4, scope: !3137, file: !103, line: 257, type: !80)
!3147 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3137, file: !103, line: 258, type: !13)
!3148 = !DILocalVariable(name: "flags", arg: 6, scope: !3137, file: !103, line: 258, type: !47)
!3149 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3137, file: !103, line: 259, type: !3140)
!3150 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3137, file: !103, line: 260, type: !44)
!3151 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3137, file: !103, line: 261, type: !44)
!3152 = !DILocalVariable(name: "i", scope: !3137, file: !103, line: 263, type: !80)
!3153 = !DILocalVariable(name: "len", scope: !3137, file: !103, line: 264, type: !80)
!3154 = !DILocalVariable(name: "orig_buffersize", scope: !3137, file: !103, line: 265, type: !80)
!3155 = !DILocalVariable(name: "quote_string", scope: !3137, file: !103, line: 266, type: !44)
!3156 = !DILocalVariable(name: "quote_string_len", scope: !3137, file: !103, line: 267, type: !80)
!3157 = !DILocalVariable(name: "backslash_escapes", scope: !3137, file: !103, line: 268, type: !35)
!3158 = !DILocalVariable(name: "unibyte_locale", scope: !3137, file: !103, line: 269, type: !35)
!3159 = !DILocalVariable(name: "elide_outer_quotes", scope: !3137, file: !103, line: 270, type: !35)
!3160 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3137, file: !103, line: 271, type: !35)
!3161 = !DILocalVariable(name: "encountered_single_quote", scope: !3137, file: !103, line: 272, type: !35)
!3162 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3137, file: !103, line: 273, type: !35)
!3163 = !DILocalVariable(name: "c", scope: !3164, file: !103, line: 402, type: !31)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !103, line: 401, column: 5)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !103, line: 400, column: 3)
!3166 = distinct !DILexicalBlock(scope: !3137, file: !103, line: 400, column: 3)
!3167 = !DILocalVariable(name: "esc", scope: !3164, file: !103, line: 403, type: !31)
!3168 = !DILocalVariable(name: "is_right_quote", scope: !3164, file: !103, line: 404, type: !35)
!3169 = !DILocalVariable(name: "escaping", scope: !3164, file: !103, line: 405, type: !35)
!3170 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3164, file: !103, line: 406, type: !35)
!3171 = !DILocalVariable(name: "m", scope: !3172, file: !103, line: 610, type: !80)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 608, column: 11)
!3173 = distinct !DILexicalBlock(scope: !3164, file: !103, line: 426, column: 9)
!3174 = !DILocalVariable(name: "printable", scope: !3172, file: !103, line: 612, type: !35)
!3175 = !DILocalVariable(name: "mbstate", scope: !3176, file: !103, line: 621, type: !3178)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !103, line: 620, column: 15)
!3177 = distinct !DILexicalBlock(scope: !3172, file: !103, line: 614, column: 17)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3179, line: 6, baseType: !3180)
!3179 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!3180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3181, line: 21, baseType: !3182)
!3181 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3181, line: 13, size: 64, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3182, file: !3181, line: 15, baseType: !47, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3182, file: !3181, line: 20, baseType: !3186, size: 32, offset: 32)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3182, file: !3181, line: 16, size: 32, elements: !3187)
!3187 = !{!3188, !3189}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3186, file: !3181, line: 18, baseType: !7, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3186, file: !3181, line: 19, baseType: !3190, size: 32)
!3190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !3191)
!3191 = !{!3192}
!3192 = !DISubrange(count: 4)
!3193 = !DILocalVariable(name: "w", scope: !3194, file: !103, line: 631, type: !3195)
!3194 = distinct !DILexicalBlock(scope: !3176, file: !103, line: 630, column: 19)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !81, line: 74, baseType: !47)
!3196 = !DILocalVariable(name: "bytes", scope: !3194, file: !103, line: 632, type: !80)
!3197 = !DILocalVariable(name: "j", scope: !3198, file: !103, line: 657, type: !80)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !103, line: 656, column: 27)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !103, line: 654, column: 29)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !103, line: 649, column: 23)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !103, line: 641, column: 30)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !103, line: 636, column: 30)
!3203 = distinct !DILexicalBlock(scope: !3194, file: !103, line: 634, column: 25)
!3204 = !DILocalVariable(name: "ilim", scope: !3205, file: !103, line: 684, type: !80)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !103, line: 681, column: 15)
!3206 = distinct !DILexicalBlock(scope: !3172, file: !103, line: 680, column: 17)
!3207 = !DILabel(scope: !3137, name: "process_input", file: !103, line: 314)
!3208 = !DILabel(scope: !3173, name: "c_and_shell_escape", file: !103, line: 512)
!3209 = !DILabel(scope: !3173, name: "c_escape", file: !103, line: 517)
!3210 = !DILabel(scope: !3164, name: "store_escape", file: !103, line: 719)
!3211 = !DILabel(scope: !3164, name: "store_c", file: !103, line: 722)
!3212 = !DILabel(scope: !3137, name: "force_outer_quoting_style", file: !103, line: 763)
!3213 = !DILocation(line: 0, scope: !3137)
!3214 = !DILocation(line: 269, column: 25, scope: !3137)
!3215 = !DILocation(line: 269, column: 36, scope: !3137)
!3216 = !DILocation(line: 270, column: 8, scope: !3137)
!3217 = !DILocation(line: 273, column: 3, scope: !3137)
!3218 = !DILocation(line: 265, column: 10, scope: !3137)
!3219 = !DILocation(line: 266, column: 15, scope: !3137)
!3220 = !DILocation(line: 267, column: 10, scope: !3137)
!3221 = !DILocation(line: 268, column: 8, scope: !3137)
!3222 = !DILocation(line: 271, column: 8, scope: !3137)
!3223 = !DILocation(line: 272, column: 8, scope: !3137)
!3224 = !DILocation(line: 273, column: 8, scope: !3137)
!3225 = !DILocation(line: 314, column: 2, scope: !3137)
!3226 = !DILocation(line: 316, column: 3, scope: !3137)
!3227 = !DILocation(line: 323, column: 11, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3137, file: !103, line: 317, column: 5)
!3229 = !DILocation(line: 323, column: 12, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3228, file: !103, line: 323, column: 11)
!3231 = !DILocation(line: 324, column: 9, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !103, line: 324, column: 9)
!3233 = distinct !DILexicalBlock(scope: !3230, file: !103, line: 324, column: 9)
!3234 = !DILocation(line: 324, column: 9, scope: !3233)
!3235 = !DILocation(line: 362, column: 26, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !103, line: 340, column: 11)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !103, line: 339, column: 13)
!3238 = distinct !DILexicalBlock(scope: !3228, file: !103, line: 338, column: 7)
!3239 = !DILocation(line: 363, column: 27, scope: !3236)
!3240 = !DILocation(line: 364, column: 11, scope: !3236)
!3241 = !DILocation(line: 365, column: 14, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3238, file: !103, line: 365, column: 13)
!3243 = !DILocation(line: 365, column: 13, scope: !3238)
!3244 = !DILocation(line: 366, column: 43, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !103, line: 366, column: 11)
!3246 = distinct !DILexicalBlock(scope: !3242, file: !103, line: 366, column: 11)
!3247 = !DILocation(line: 366, column: 11, scope: !3246)
!3248 = !DILocation(line: 367, column: 13, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !103, line: 367, column: 13)
!3250 = distinct !DILexicalBlock(scope: !3245, file: !103, line: 367, column: 13)
!3251 = !DILocation(line: 367, column: 13, scope: !3250)
!3252 = !DILocation(line: 366, column: 70, scope: !3245)
!3253 = distinct !{!3253, !3247, !3254, !726}
!3254 = !DILocation(line: 367, column: 13, scope: !3246)
!3255 = !DILocation(line: 264, column: 10, scope: !3137)
!3256 = !DILocation(line: 370, column: 28, scope: !3238)
!3257 = !DILocation(line: 372, column: 7, scope: !3228)
!3258 = !DILocation(line: 376, column: 7, scope: !3228)
!3259 = !DILocation(line: 379, column: 7, scope: !3228)
!3260 = !DILocation(line: 381, column: 12, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3228, file: !103, line: 381, column: 11)
!3262 = !DILocation(line: 381, column: 11, scope: !3228)
!3263 = !DILocation(line: 386, column: 12, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3228, file: !103, line: 386, column: 11)
!3265 = !DILocation(line: 386, column: 11, scope: !3228)
!3266 = !DILocation(line: 387, column: 9, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !103, line: 387, column: 9)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !103, line: 387, column: 9)
!3269 = !DILocation(line: 387, column: 9, scope: !3268)
!3270 = !DILocation(line: 394, column: 7, scope: !3228)
!3271 = !DILocation(line: 397, column: 7, scope: !3228)
!3272 = !DILocation(line: 400, column: 8, scope: !3166)
!3273 = !DILocation(line: 0, scope: !3166)
!3274 = !DILocation(line: 400, column: 27, scope: !3165)
!3275 = !DILocation(line: 400, column: 19, scope: !3165)
!3276 = !DILocation(line: 400, column: 41, scope: !3165)
!3277 = !DILocation(line: 400, column: 48, scope: !3165)
!3278 = !DILocation(line: 400, column: 3, scope: !3166)
!3279 = !DILocation(line: 400, column: 60, scope: !3165)
!3280 = !DILocation(line: 0, scope: !3164)
!3281 = !DILocation(line: 409, column: 11, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3164, file: !103, line: 408, column: 11)
!3283 = !DILocation(line: 411, column: 17, scope: !3282)
!3284 = !DILocation(line: 412, column: 39, scope: !3282)
!3285 = !DILocation(line: 416, column: 32, scope: !3282)
!3286 = !DILocation(line: 412, column: 19, scope: !3282)
!3287 = !DILocation(line: 412, column: 15, scope: !3282)
!3288 = !DILocation(line: 417, column: 11, scope: !3282)
!3289 = !DILocation(line: 417, column: 26, scope: !3282)
!3290 = !DILocation(line: 417, column: 14, scope: !3282)
!3291 = !DILocation(line: 417, column: 63, scope: !3282)
!3292 = !DILocation(line: 408, column: 11, scope: !3164)
!3293 = !DILocation(line: 424, column: 11, scope: !3164)
!3294 = !DILocation(line: 425, column: 7, scope: !3164)
!3295 = !DILocation(line: 428, column: 15, scope: !3173)
!3296 = !DILocation(line: 430, column: 15, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !103, line: 430, column: 15)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !103, line: 429, column: 13)
!3299 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 428, column: 15)
!3300 = !DILocation(line: 430, column: 15, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !103, line: 430, column: 15)
!3302 = !DILocation(line: 430, column: 15, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !103, line: 430, column: 15)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !103, line: 430, column: 15)
!3305 = distinct !DILexicalBlock(scope: !3301, file: !103, line: 430, column: 15)
!3306 = !DILocation(line: 430, column: 15, scope: !3304)
!3307 = !DILocation(line: 430, column: 15, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !103, line: 430, column: 15)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !103, line: 430, column: 15)
!3310 = !DILocation(line: 430, column: 15, scope: !3309)
!3311 = !DILocation(line: 430, column: 15, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !103, line: 430, column: 15)
!3313 = distinct !DILexicalBlock(scope: !3305, file: !103, line: 430, column: 15)
!3314 = !DILocation(line: 430, column: 15, scope: !3313)
!3315 = !DILocation(line: 430, column: 15, scope: !3305)
!3316 = !DILocation(line: 430, column: 15, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !103, line: 430, column: 15)
!3318 = distinct !DILexicalBlock(scope: !3297, file: !103, line: 430, column: 15)
!3319 = !DILocation(line: 430, column: 15, scope: !3318)
!3320 = !DILocation(line: 438, column: 19, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3298, file: !103, line: 437, column: 19)
!3322 = !DILocation(line: 438, column: 48, scope: !3321)
!3323 = !DILocation(line: 438, column: 59, scope: !3321)
!3324 = !DILocation(line: 440, column: 19, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !103, line: 440, column: 19)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !103, line: 440, column: 19)
!3327 = distinct !DILexicalBlock(scope: !3321, file: !103, line: 439, column: 17)
!3328 = !DILocation(line: 440, column: 19, scope: !3326)
!3329 = !DILocation(line: 441, column: 19, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !103, line: 441, column: 19)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !103, line: 441, column: 19)
!3332 = !DILocation(line: 441, column: 19, scope: !3331)
!3333 = !DILocation(line: 442, column: 17, scope: !3327)
!3334 = !DILocation(line: 449, column: 20, scope: !3299)
!3335 = !DILocation(line: 454, column: 11, scope: !3173)
!3336 = !DILocation(line: 457, column: 19, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 455, column: 13)
!3338 = !DILocation(line: 463, column: 19, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3337, file: !103, line: 462, column: 19)
!3340 = !DILocation(line: 463, column: 47, scope: !3339)
!3341 = !DILocation(line: 463, column: 41, scope: !3339)
!3342 = !DILocation(line: 463, column: 52, scope: !3339)
!3343 = !DILocation(line: 462, column: 19, scope: !3337)
!3344 = !DILocation(line: 464, column: 25, scope: !3339)
!3345 = !DILocation(line: 464, column: 17, scope: !3339)
!3346 = !DILocation(line: 471, column: 25, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3339, file: !103, line: 465, column: 19)
!3348 = !DILocation(line: 475, column: 21, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !103, line: 475, column: 21)
!3350 = distinct !DILexicalBlock(scope: !3347, file: !103, line: 475, column: 21)
!3351 = !DILocation(line: 475, column: 21, scope: !3350)
!3352 = !DILocation(line: 476, column: 21, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !103, line: 476, column: 21)
!3354 = distinct !DILexicalBlock(scope: !3347, file: !103, line: 476, column: 21)
!3355 = !DILocation(line: 476, column: 21, scope: !3354)
!3356 = !DILocation(line: 477, column: 21, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !103, line: 477, column: 21)
!3358 = distinct !DILexicalBlock(scope: !3347, file: !103, line: 477, column: 21)
!3359 = !DILocation(line: 477, column: 21, scope: !3358)
!3360 = !DILocation(line: 478, column: 21, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !103, line: 478, column: 21)
!3362 = distinct !DILexicalBlock(scope: !3347, file: !103, line: 478, column: 21)
!3363 = !DILocation(line: 478, column: 21, scope: !3362)
!3364 = !DILocation(line: 479, column: 21, scope: !3347)
!3365 = !DILocation(line: 492, column: 31, scope: !3173)
!3366 = !DILocation(line: 493, column: 31, scope: !3173)
!3367 = !DILocation(line: 495, column: 31, scope: !3173)
!3368 = !DILocation(line: 496, column: 31, scope: !3173)
!3369 = !DILocation(line: 497, column: 31, scope: !3173)
!3370 = !DILocation(line: 500, column: 15, scope: !3173)
!3371 = !DILocation(line: 502, column: 19, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !103, line: 501, column: 13)
!3373 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 500, column: 15)
!3374 = !DILocation(line: 509, column: 33, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 509, column: 15)
!3376 = !DILocation(line: 0, scope: !3173)
!3377 = !DILocation(line: 512, column: 9, scope: !3173)
!3378 = !DILocation(line: 514, column: 15, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 513, column: 15)
!3380 = !DILocation(line: 517, column: 9, scope: !3173)
!3381 = !DILocation(line: 518, column: 15, scope: !3173)
!3382 = !DILocation(line: 526, column: 15, scope: !3173)
!3383 = !DILocation(line: 526, column: 40, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 526, column: 15)
!3385 = !DILocation(line: 526, column: 47, scope: !3384)
!3386 = !DILocation(line: 526, column: 18, scope: !3384)
!3387 = !DILocation(line: 530, column: 17, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 530, column: 15)
!3389 = !DILocation(line: 530, column: 15, scope: !3173)
!3390 = !DILocation(line: 535, column: 11, scope: !3173)
!3391 = !DILocation(line: 549, column: 15, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 548, column: 15)
!3393 = !DILocation(line: 556, column: 15, scope: !3173)
!3394 = !DILocation(line: 558, column: 19, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !103, line: 557, column: 13)
!3396 = distinct !DILexicalBlock(scope: !3173, file: !103, line: 556, column: 15)
!3397 = !DILocation(line: 561, column: 19, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3395, file: !103, line: 561, column: 19)
!3399 = !DILocation(line: 561, column: 30, scope: !3398)
!3400 = !DILocation(line: 570, column: 15, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !103, line: 570, column: 15)
!3402 = distinct !DILexicalBlock(scope: !3395, file: !103, line: 570, column: 15)
!3403 = !DILocation(line: 570, column: 15, scope: !3402)
!3404 = !DILocation(line: 571, column: 15, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !103, line: 571, column: 15)
!3406 = distinct !DILexicalBlock(scope: !3395, file: !103, line: 571, column: 15)
!3407 = !DILocation(line: 571, column: 15, scope: !3406)
!3408 = !DILocation(line: 572, column: 15, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !103, line: 572, column: 15)
!3410 = distinct !DILexicalBlock(scope: !3395, file: !103, line: 572, column: 15)
!3411 = !DILocation(line: 572, column: 15, scope: !3410)
!3412 = !DILocation(line: 574, column: 13, scope: !3395)
!3413 = !DILocation(line: 614, column: 17, scope: !3172)
!3414 = !DILocation(line: 0, scope: !3172)
!3415 = !DILocation(line: 617, column: 29, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3177, file: !103, line: 615, column: 15)
!3417 = !{!898, !898, i64 0}
!3418 = !DILocation(line: 617, column: 27, scope: !3416)
!3419 = !DILocation(line: 678, column: 40, scope: !3172)
!3420 = !DILocation(line: 680, column: 23, scope: !3206)
!3421 = !DILocation(line: 621, column: 17, scope: !3176)
!3422 = !DILocation(line: 621, column: 27, scope: !3176)
!3423 = !DILocalVariable(name: "__dest", arg: 1, scope: !3424, file: !977, line: 57, type: !30)
!3424 = distinct !DISubprogram(name: "memset", scope: !977, file: !977, line: 57, type: !3425, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!30, !30, !47, !80}
!3427 = !{!3423, !3428, !3429}
!3428 = !DILocalVariable(name: "__ch", arg: 2, scope: !3424, file: !977, line: 57, type: !47)
!3429 = !DILocalVariable(name: "__len", arg: 3, scope: !3424, file: !977, line: 57, type: !80)
!3430 = !DILocation(line: 0, scope: !3424, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 622, column: 17, scope: !3176)
!3432 = !DILocation(line: 59, column: 10, scope: !3424, inlinedAt: !3431)
!3433 = !DILocation(line: 626, column: 29, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3176, file: !103, line: 626, column: 21)
!3435 = !DILocation(line: 626, column: 21, scope: !3176)
!3436 = !DILocation(line: 627, column: 29, scope: !3434)
!3437 = !DILocation(line: 627, column: 19, scope: !3434)
!3438 = !DILocation(line: 629, column: 17, scope: !3176)
!3439 = !DILocation(line: 624, column: 19, scope: !3176)
!3440 = !DILocation(line: 625, column: 27, scope: !3176)
!3441 = !DILocation(line: 631, column: 21, scope: !3194)
!3442 = !DILocation(line: 632, column: 56, scope: !3194)
!3443 = !DILocation(line: 632, column: 50, scope: !3194)
!3444 = !DILocation(line: 633, column: 53, scope: !3194)
!3445 = !DILocation(line: 0, scope: !3194)
!3446 = !DILocation(line: 632, column: 36, scope: !3194)
!3447 = !DILocation(line: 634, column: 25, scope: !3194)
!3448 = !DILocation(line: 644, column: 38, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3201, file: !103, line: 642, column: 23)
!3450 = !DILocation(line: 644, column: 48, scope: !3449)
!3451 = !DILocation(line: 644, column: 25, scope: !3449)
!3452 = !DILocation(line: 644, column: 51, scope: !3449)
!3453 = !DILocation(line: 645, column: 28, scope: !3449)
!3454 = !DILocation(line: 644, column: 34, scope: !3449)
!3455 = distinct !{!3455, !3451, !3453, !726}
!3456 = !DILocation(line: 655, column: 29, scope: !3199)
!3457 = !DILocation(line: 0, scope: !3198)
!3458 = !DILocation(line: 659, column: 49, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !103, line: 658, column: 29)
!3460 = distinct !DILexicalBlock(scope: !3198, file: !103, line: 658, column: 29)
!3461 = !DILocation(line: 659, column: 39, scope: !3459)
!3462 = !DILocation(line: 659, column: 31, scope: !3459)
!3463 = !DILocation(line: 658, column: 53, scope: !3459)
!3464 = !DILocation(line: 658, column: 43, scope: !3459)
!3465 = !DILocation(line: 658, column: 29, scope: !3460)
!3466 = distinct !{!3466, !3465, !3467, !726}
!3467 = !DILocation(line: 667, column: 33, scope: !3460)
!3468 = !DILocation(line: 674, column: 19, scope: !3176)
!3469 = !DILocation(line: 670, column: 41, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3200, file: !103, line: 670, column: 29)
!3471 = !DILocation(line: 670, column: 31, scope: !3470)
!3472 = !DILocation(line: 670, column: 29, scope: !3200)
!3473 = !DILocation(line: 672, column: 27, scope: !3200)
!3474 = !DILocation(line: 675, column: 26, scope: !3176)
!3475 = !DILocation(line: 675, column: 24, scope: !3176)
!3476 = !DILocation(line: 674, column: 19, scope: !3194)
!3477 = distinct !{!3477, !3438, !3478, !726}
!3478 = !DILocation(line: 675, column: 44, scope: !3176)
!3479 = !DILocation(line: 676, column: 15, scope: !3177)
!3480 = !DILocation(line: 680, column: 19, scope: !3206)
!3481 = !DILocation(line: 680, column: 45, scope: !3206)
!3482 = !DILocation(line: 684, column: 33, scope: !3205)
!3483 = !DILocation(line: 0, scope: !3205)
!3484 = !DILocation(line: 686, column: 17, scope: !3205)
!3485 = !DILocation(line: 405, column: 12, scope: !3164)
!3486 = !DILocation(line: 688, column: 43, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !103, line: 688, column: 25)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !103, line: 687, column: 19)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !103, line: 686, column: 17)
!3490 = distinct !DILexicalBlock(scope: !3205, file: !103, line: 686, column: 17)
!3491 = !DILocation(line: 690, column: 25, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !103, line: 690, column: 25)
!3493 = distinct !DILexicalBlock(scope: !3487, file: !103, line: 689, column: 23)
!3494 = !DILocation(line: 690, column: 25, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3492, file: !103, line: 690, column: 25)
!3496 = !DILocation(line: 690, column: 25, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !103, line: 690, column: 25)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !103, line: 690, column: 25)
!3499 = distinct !DILexicalBlock(scope: !3495, file: !103, line: 690, column: 25)
!3500 = !DILocation(line: 690, column: 25, scope: !3498)
!3501 = !DILocation(line: 690, column: 25, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !103, line: 690, column: 25)
!3503 = distinct !DILexicalBlock(scope: !3499, file: !103, line: 690, column: 25)
!3504 = !DILocation(line: 690, column: 25, scope: !3503)
!3505 = !DILocation(line: 690, column: 25, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !103, line: 690, column: 25)
!3507 = distinct !DILexicalBlock(scope: !3499, file: !103, line: 690, column: 25)
!3508 = !DILocation(line: 690, column: 25, scope: !3507)
!3509 = !DILocation(line: 690, column: 25, scope: !3499)
!3510 = !DILocation(line: 690, column: 25, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !103, line: 690, column: 25)
!3512 = distinct !DILexicalBlock(scope: !3492, file: !103, line: 690, column: 25)
!3513 = !DILocation(line: 690, column: 25, scope: !3512)
!3514 = !DILocation(line: 691, column: 25, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !103, line: 691, column: 25)
!3516 = distinct !DILexicalBlock(scope: !3493, file: !103, line: 691, column: 25)
!3517 = !DILocation(line: 691, column: 25, scope: !3516)
!3518 = !DILocation(line: 692, column: 25, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !103, line: 692, column: 25)
!3520 = distinct !DILexicalBlock(scope: !3493, file: !103, line: 692, column: 25)
!3521 = !DILocation(line: 692, column: 25, scope: !3520)
!3522 = !DILocation(line: 693, column: 38, scope: !3493)
!3523 = !DILocation(line: 693, column: 33, scope: !3493)
!3524 = !DILocation(line: 694, column: 23, scope: !3493)
!3525 = !DILocation(line: 695, column: 30, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3487, file: !103, line: 695, column: 30)
!3527 = !DILocation(line: 695, column: 30, scope: !3487)
!3528 = !DILocation(line: 697, column: 25, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !103, line: 697, column: 25)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !103, line: 697, column: 25)
!3531 = distinct !DILexicalBlock(scope: !3526, file: !103, line: 696, column: 23)
!3532 = !DILocation(line: 697, column: 25, scope: !3530)
!3533 = !DILocation(line: 699, column: 23, scope: !3531)
!3534 = !DILocation(line: 700, column: 35, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3488, file: !103, line: 700, column: 25)
!3536 = !DILocation(line: 700, column: 30, scope: !3535)
!3537 = !DILocation(line: 700, column: 25, scope: !3488)
!3538 = !DILocation(line: 702, column: 21, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !103, line: 702, column: 21)
!3540 = distinct !DILexicalBlock(scope: !3488, file: !103, line: 702, column: 21)
!3541 = !DILocation(line: 702, column: 21, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !103, line: 702, column: 21)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !103, line: 702, column: 21)
!3544 = distinct !DILexicalBlock(scope: !3539, file: !103, line: 702, column: 21)
!3545 = !DILocation(line: 702, column: 21, scope: !3543)
!3546 = !DILocation(line: 702, column: 21, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !103, line: 702, column: 21)
!3548 = distinct !DILexicalBlock(scope: !3544, file: !103, line: 702, column: 21)
!3549 = !DILocation(line: 702, column: 21, scope: !3548)
!3550 = !DILocation(line: 702, column: 21, scope: !3544)
!3551 = !DILocation(line: 0, scope: !3488)
!3552 = !DILocation(line: 703, column: 21, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !103, line: 703, column: 21)
!3554 = distinct !DILexicalBlock(scope: !3488, file: !103, line: 703, column: 21)
!3555 = !DILocation(line: 703, column: 21, scope: !3554)
!3556 = !DILocation(line: 704, column: 25, scope: !3488)
!3557 = !DILocation(line: 686, column: 17, scope: !3489)
!3558 = distinct !{!3558, !3559, !3560}
!3559 = !DILocation(line: 686, column: 17, scope: !3490)
!3560 = !DILocation(line: 705, column: 19, scope: !3490)
!3561 = !DILocation(line: 416, column: 30, scope: !3282)
!3562 = !DILocation(line: 712, column: 34, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3164, file: !103, line: 712, column: 11)
!3564 = !DILocation(line: 715, column: 35, scope: !3563)
!3565 = !DILocation(line: 715, column: 17, scope: !3563)
!3566 = !DILocation(line: 715, column: 47, scope: !3563)
!3567 = !DILocation(line: 715, column: 65, scope: !3563)
!3568 = !DILocation(line: 716, column: 11, scope: !3563)
!3569 = !DILocation(line: 712, column: 11, scope: !3164)
!3570 = !DILocation(line: 400, column: 10, scope: !3166)
!3571 = !DILocation(line: 719, column: 5, scope: !3164)
!3572 = !DILocation(line: 720, column: 7, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3164, file: !103, line: 720, column: 7)
!3574 = !DILocation(line: 720, column: 7, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3573, file: !103, line: 720, column: 7)
!3576 = !DILocation(line: 720, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !103, line: 720, column: 7)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !103, line: 720, column: 7)
!3579 = distinct !DILexicalBlock(scope: !3575, file: !103, line: 720, column: 7)
!3580 = !DILocation(line: 720, column: 7, scope: !3578)
!3581 = !DILocation(line: 720, column: 7, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !103, line: 720, column: 7)
!3583 = distinct !DILexicalBlock(scope: !3579, file: !103, line: 720, column: 7)
!3584 = !DILocation(line: 720, column: 7, scope: !3583)
!3585 = !DILocation(line: 720, column: 7, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !103, line: 720, column: 7)
!3587 = distinct !DILexicalBlock(scope: !3579, file: !103, line: 720, column: 7)
!3588 = !DILocation(line: 720, column: 7, scope: !3587)
!3589 = !DILocation(line: 720, column: 7, scope: !3579)
!3590 = !DILocation(line: 720, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !103, line: 720, column: 7)
!3592 = distinct !DILexicalBlock(scope: !3573, file: !103, line: 720, column: 7)
!3593 = !DILocation(line: 720, column: 7, scope: !3592)
!3594 = !DILocation(line: 722, column: 5, scope: !3164)
!3595 = !DILocation(line: 723, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !103, line: 723, column: 7)
!3597 = distinct !DILexicalBlock(scope: !3164, file: !103, line: 723, column: 7)
!3598 = !DILocation(line: 424, column: 9, scope: !3164)
!3599 = !DILocation(line: 723, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !103, line: 723, column: 7)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !103, line: 723, column: 7)
!3602 = distinct !DILexicalBlock(scope: !3596, file: !103, line: 723, column: 7)
!3603 = !DILocation(line: 723, column: 7, scope: !3601)
!3604 = !DILocation(line: 723, column: 7, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !103, line: 723, column: 7)
!3606 = distinct !DILexicalBlock(scope: !3602, file: !103, line: 723, column: 7)
!3607 = !DILocation(line: 723, column: 7, scope: !3606)
!3608 = !DILocation(line: 723, column: 7, scope: !3602)
!3609 = !DILocation(line: 724, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !103, line: 724, column: 7)
!3611 = distinct !DILexicalBlock(scope: !3164, file: !103, line: 724, column: 7)
!3612 = !DILocation(line: 724, column: 7, scope: !3611)
!3613 = !DILocation(line: 726, column: 13, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3164, file: !103, line: 726, column: 11)
!3615 = !DILocation(line: 726, column: 11, scope: !3164)
!3616 = !DILocation(line: 728, column: 5, scope: !3165)
!3617 = !DILocation(line: 400, column: 75, scope: !3165)
!3618 = !DILocation(line: 400, column: 3, scope: !3165)
!3619 = distinct !{!3619, !3278, !3620, !726}
!3620 = !DILocation(line: 728, column: 5, scope: !3166)
!3621 = !DILocation(line: 730, column: 11, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3137, file: !103, line: 730, column: 7)
!3623 = !DILocation(line: 730, column: 16, scope: !3622)
!3624 = !DILocation(line: 738, column: 51, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3137, file: !103, line: 738, column: 7)
!3626 = !DILocation(line: 741, column: 11, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !103, line: 741, column: 11)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !103, line: 740, column: 5)
!3629 = !DILocation(line: 741, column: 11, scope: !3628)
!3630 = !DILocation(line: 742, column: 16, scope: !3627)
!3631 = !DILocation(line: 742, column: 9, scope: !3627)
!3632 = !DILocation(line: 746, column: 18, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3627, file: !103, line: 746, column: 16)
!3634 = !DILocation(line: 746, column: 29, scope: !3633)
!3635 = !DILocation(line: 755, column: 7, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3137, file: !103, line: 755, column: 7)
!3637 = !DILocation(line: 755, column: 20, scope: !3636)
!3638 = !DILocation(line: 756, column: 12, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !103, line: 756, column: 5)
!3640 = distinct !DILexicalBlock(scope: !3636, file: !103, line: 756, column: 5)
!3641 = !DILocation(line: 756, column: 5, scope: !3640)
!3642 = !DILocation(line: 757, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !103, line: 757, column: 7)
!3644 = distinct !DILexicalBlock(scope: !3639, file: !103, line: 757, column: 7)
!3645 = !DILocation(line: 757, column: 7, scope: !3644)
!3646 = !DILocation(line: 756, column: 39, scope: !3639)
!3647 = distinct !{!3647, !3641, !3648, !726}
!3648 = !DILocation(line: 757, column: 7, scope: !3640)
!3649 = !DILocation(line: 759, column: 11, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3137, file: !103, line: 759, column: 7)
!3651 = !DILocation(line: 759, column: 7, scope: !3137)
!3652 = !DILocation(line: 760, column: 5, scope: !3650)
!3653 = !DILocation(line: 760, column: 17, scope: !3650)
!3654 = !DILocation(line: 763, column: 2, scope: !3137)
!3655 = !DILocation(line: 766, column: 51, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3137, file: !103, line: 766, column: 7)
!3657 = !DILocation(line: 766, column: 21, scope: !3656)
!3658 = !DILocation(line: 770, column: 42, scope: !3137)
!3659 = !DILocation(line: 768, column: 10, scope: !3137)
!3660 = !DILocation(line: 768, column: 3, scope: !3137)
!3661 = !DILocation(line: 772, column: 1, scope: !3137)
!3662 = distinct !DISubprogram(name: "gettext_quote", scope: !103, file: !103, line: 207, type: !3663, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!44, !44, !13}
!3665 = !{!3666, !3667, !3668, !3669}
!3666 = !DILocalVariable(name: "msgid", arg: 1, scope: !3662, file: !103, line: 207, type: !44)
!3667 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !103, line: 207, type: !13)
!3668 = !DILocalVariable(name: "translation", scope: !3662, file: !103, line: 209, type: !44)
!3669 = !DILocalVariable(name: "locale_code", scope: !3662, file: !103, line: 210, type: !44)
!3670 = !DILocation(line: 0, scope: !3662)
!3671 = !DILocation(line: 209, column: 29, scope: !3662)
!3672 = !DILocation(line: 212, column: 19, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3662, file: !103, line: 212, column: 7)
!3674 = !DILocation(line: 212, column: 7, scope: !3662)
!3675 = !DILocation(line: 233, column: 17, scope: !3662)
!3676 = !DILocalVariable(name: "s1", arg: 1, scope: !3677, file: !3678, line: 160, type: !44)
!3677 = distinct !DISubprogram(name: "strcaseeq0", scope: !3678, file: !3678, line: 160, type: !3679, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3681)
!3678 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!47, !44, !44, !29, !29, !29, !29, !29, !29, !29, !29, !29}
!3681 = !{!3676, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691}
!3682 = !DILocalVariable(name: "s2", arg: 2, scope: !3677, file: !3678, line: 160, type: !44)
!3683 = !DILocalVariable(name: "s20", arg: 3, scope: !3677, file: !3678, line: 160, type: !29)
!3684 = !DILocalVariable(name: "s21", arg: 4, scope: !3677, file: !3678, line: 160, type: !29)
!3685 = !DILocalVariable(name: "s22", arg: 5, scope: !3677, file: !3678, line: 160, type: !29)
!3686 = !DILocalVariable(name: "s23", arg: 6, scope: !3677, file: !3678, line: 160, type: !29)
!3687 = !DILocalVariable(name: "s24", arg: 7, scope: !3677, file: !3678, line: 160, type: !29)
!3688 = !DILocalVariable(name: "s25", arg: 8, scope: !3677, file: !3678, line: 160, type: !29)
!3689 = !DILocalVariable(name: "s26", arg: 9, scope: !3677, file: !3678, line: 160, type: !29)
!3690 = !DILocalVariable(name: "s27", arg: 10, scope: !3677, file: !3678, line: 160, type: !29)
!3691 = !DILocalVariable(name: "s28", arg: 11, scope: !3677, file: !3678, line: 160, type: !29)
!3692 = !DILocation(line: 0, scope: !3677, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 234, column: 7, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3662, file: !103, line: 234, column: 7)
!3695 = !DILocation(line: 162, column: 7, scope: !3696, inlinedAt: !3693)
!3696 = distinct !DILexicalBlock(scope: !3677, file: !3678, line: 162, column: 7)
!3697 = !DILocalVariable(name: "s1", arg: 1, scope: !3698, file: !3678, line: 146, type: !44)
!3698 = distinct !DISubprogram(name: "strcaseeq1", scope: !3678, file: !3678, line: 146, type: !3699, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!47, !44, !44, !29, !29, !29, !29, !29, !29, !29, !29}
!3701 = !{!3697, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710}
!3702 = !DILocalVariable(name: "s2", arg: 2, scope: !3698, file: !3678, line: 146, type: !44)
!3703 = !DILocalVariable(name: "s21", arg: 3, scope: !3698, file: !3678, line: 146, type: !29)
!3704 = !DILocalVariable(name: "s22", arg: 4, scope: !3698, file: !3678, line: 146, type: !29)
!3705 = !DILocalVariable(name: "s23", arg: 5, scope: !3698, file: !3678, line: 146, type: !29)
!3706 = !DILocalVariable(name: "s24", arg: 6, scope: !3698, file: !3678, line: 146, type: !29)
!3707 = !DILocalVariable(name: "s25", arg: 7, scope: !3698, file: !3678, line: 146, type: !29)
!3708 = !DILocalVariable(name: "s26", arg: 8, scope: !3698, file: !3678, line: 146, type: !29)
!3709 = !DILocalVariable(name: "s27", arg: 9, scope: !3698, file: !3678, line: 146, type: !29)
!3710 = !DILocalVariable(name: "s28", arg: 10, scope: !3698, file: !3678, line: 146, type: !29)
!3711 = !DILocation(line: 0, scope: !3698, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 167, column: 16, scope: !3713, inlinedAt: !3693)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3678, line: 164, column: 11)
!3714 = distinct !DILexicalBlock(scope: !3696, file: !3678, line: 163, column: 5)
!3715 = !DILocation(line: 148, column: 7, scope: !3716, inlinedAt: !3712)
!3716 = distinct !DILexicalBlock(scope: !3698, file: !3678, line: 148, column: 7)
!3717 = !DILocalVariable(name: "s1", arg: 1, scope: !3718, file: !3678, line: 132, type: !44)
!3718 = distinct !DISubprogram(name: "strcaseeq2", scope: !3678, file: !3678, line: 132, type: !3719, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!47, !44, !44, !29, !29, !29, !29, !29, !29, !29}
!3721 = !{!3717, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729}
!3722 = !DILocalVariable(name: "s2", arg: 2, scope: !3718, file: !3678, line: 132, type: !44)
!3723 = !DILocalVariable(name: "s22", arg: 3, scope: !3718, file: !3678, line: 132, type: !29)
!3724 = !DILocalVariable(name: "s23", arg: 4, scope: !3718, file: !3678, line: 132, type: !29)
!3725 = !DILocalVariable(name: "s24", arg: 5, scope: !3718, file: !3678, line: 132, type: !29)
!3726 = !DILocalVariable(name: "s25", arg: 6, scope: !3718, file: !3678, line: 132, type: !29)
!3727 = !DILocalVariable(name: "s26", arg: 7, scope: !3718, file: !3678, line: 132, type: !29)
!3728 = !DILocalVariable(name: "s27", arg: 8, scope: !3718, file: !3678, line: 132, type: !29)
!3729 = !DILocalVariable(name: "s28", arg: 9, scope: !3718, file: !3678, line: 132, type: !29)
!3730 = !DILocation(line: 0, scope: !3718, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 153, column: 16, scope: !3732, inlinedAt: !3712)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !3678, line: 150, column: 11)
!3733 = distinct !DILexicalBlock(scope: !3716, file: !3678, line: 149, column: 5)
!3734 = !DILocation(line: 134, column: 7, scope: !3735, inlinedAt: !3731)
!3735 = distinct !DILexicalBlock(scope: !3718, file: !3678, line: 134, column: 7)
!3736 = !DILocalVariable(name: "s1", arg: 1, scope: !3737, file: !3678, line: 118, type: !44)
!3737 = distinct !DISubprogram(name: "strcaseeq3", scope: !3678, file: !3678, line: 118, type: !3738, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!47, !44, !44, !29, !29, !29, !29, !29, !29}
!3740 = !{!3736, !3741, !3742, !3743, !3744, !3745, !3746, !3747}
!3741 = !DILocalVariable(name: "s2", arg: 2, scope: !3737, file: !3678, line: 118, type: !44)
!3742 = !DILocalVariable(name: "s23", arg: 3, scope: !3737, file: !3678, line: 118, type: !29)
!3743 = !DILocalVariable(name: "s24", arg: 4, scope: !3737, file: !3678, line: 118, type: !29)
!3744 = !DILocalVariable(name: "s25", arg: 5, scope: !3737, file: !3678, line: 118, type: !29)
!3745 = !DILocalVariable(name: "s26", arg: 6, scope: !3737, file: !3678, line: 118, type: !29)
!3746 = !DILocalVariable(name: "s27", arg: 7, scope: !3737, file: !3678, line: 118, type: !29)
!3747 = !DILocalVariable(name: "s28", arg: 8, scope: !3737, file: !3678, line: 118, type: !29)
!3748 = !DILocation(line: 0, scope: !3737, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 139, column: 16, scope: !3750, inlinedAt: !3731)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3678, line: 136, column: 11)
!3751 = distinct !DILexicalBlock(scope: !3735, file: !3678, line: 135, column: 5)
!3752 = !DILocation(line: 120, column: 7, scope: !3753, inlinedAt: !3749)
!3753 = distinct !DILexicalBlock(scope: !3737, file: !3678, line: 120, column: 7)
!3754 = !DILocation(line: 120, column: 7, scope: !3737, inlinedAt: !3749)
!3755 = !DILocalVariable(name: "s1", arg: 1, scope: !3756, file: !3678, line: 104, type: !44)
!3756 = distinct !DISubprogram(name: "strcaseeq4", scope: !3678, file: !3678, line: 104, type: !3757, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!47, !44, !44, !29, !29, !29, !29, !29}
!3759 = !{!3755, !3760, !3761, !3762, !3763, !3764, !3765}
!3760 = !DILocalVariable(name: "s2", arg: 2, scope: !3756, file: !3678, line: 104, type: !44)
!3761 = !DILocalVariable(name: "s24", arg: 3, scope: !3756, file: !3678, line: 104, type: !29)
!3762 = !DILocalVariable(name: "s25", arg: 4, scope: !3756, file: !3678, line: 104, type: !29)
!3763 = !DILocalVariable(name: "s26", arg: 5, scope: !3756, file: !3678, line: 104, type: !29)
!3764 = !DILocalVariable(name: "s27", arg: 6, scope: !3756, file: !3678, line: 104, type: !29)
!3765 = !DILocalVariable(name: "s28", arg: 7, scope: !3756, file: !3678, line: 104, type: !29)
!3766 = !DILocation(line: 0, scope: !3756, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 125, column: 16, scope: !3768, inlinedAt: !3749)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !3678, line: 122, column: 11)
!3769 = distinct !DILexicalBlock(scope: !3753, file: !3678, line: 121, column: 5)
!3770 = !DILocation(line: 106, column: 7, scope: !3771, inlinedAt: !3767)
!3771 = distinct !DILexicalBlock(scope: !3756, file: !3678, line: 106, column: 7)
!3772 = !DILocation(line: 106, column: 7, scope: !3756, inlinedAt: !3767)
!3773 = !DILocalVariable(name: "s1", arg: 1, scope: !3774, file: !3678, line: 90, type: !44)
!3774 = distinct !DISubprogram(name: "strcaseeq5", scope: !3678, file: !3678, line: 90, type: !3775, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!47, !44, !44, !29, !29, !29, !29}
!3777 = !{!3773, !3778, !3779, !3780, !3781, !3782}
!3778 = !DILocalVariable(name: "s2", arg: 2, scope: !3774, file: !3678, line: 90, type: !44)
!3779 = !DILocalVariable(name: "s25", arg: 3, scope: !3774, file: !3678, line: 90, type: !29)
!3780 = !DILocalVariable(name: "s26", arg: 4, scope: !3774, file: !3678, line: 90, type: !29)
!3781 = !DILocalVariable(name: "s27", arg: 5, scope: !3774, file: !3678, line: 90, type: !29)
!3782 = !DILocalVariable(name: "s28", arg: 6, scope: !3774, file: !3678, line: 90, type: !29)
!3783 = !DILocation(line: 0, scope: !3774, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 111, column: 16, scope: !3785, inlinedAt: !3767)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !3678, line: 108, column: 11)
!3786 = distinct !DILexicalBlock(scope: !3771, file: !3678, line: 107, column: 5)
!3787 = !DILocation(line: 92, column: 7, scope: !3788, inlinedAt: !3784)
!3788 = distinct !DILexicalBlock(scope: !3774, file: !3678, line: 92, column: 7)
!3789 = !DILocation(line: 92, column: 7, scope: !3774, inlinedAt: !3784)
!3790 = !DILocation(line: 235, column: 12, scope: !3694)
!3791 = !DILocation(line: 235, column: 21, scope: !3694)
!3792 = !DILocation(line: 235, column: 5, scope: !3694)
!3793 = !DILocation(line: 0, scope: !3698, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 167, column: 16, scope: !3713, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 236, column: 7, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3662, file: !103, line: 236, column: 7)
!3797 = !DILocation(line: 148, column: 7, scope: !3716, inlinedAt: !3794)
!3798 = !DILocation(line: 0, scope: !3718, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 153, column: 16, scope: !3732, inlinedAt: !3794)
!3800 = !DILocation(line: 134, column: 7, scope: !3735, inlinedAt: !3799)
!3801 = !DILocation(line: 134, column: 7, scope: !3718, inlinedAt: !3799)
!3802 = !DILocation(line: 0, scope: !3737, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 139, column: 16, scope: !3750, inlinedAt: !3799)
!3804 = !DILocation(line: 120, column: 7, scope: !3753, inlinedAt: !3803)
!3805 = !DILocation(line: 120, column: 7, scope: !3737, inlinedAt: !3803)
!3806 = !DILocation(line: 0, scope: !3756, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 125, column: 16, scope: !3768, inlinedAt: !3803)
!3808 = !DILocation(line: 106, column: 7, scope: !3771, inlinedAt: !3807)
!3809 = !DILocation(line: 106, column: 7, scope: !3756, inlinedAt: !3807)
!3810 = !DILocation(line: 0, scope: !3774, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 111, column: 16, scope: !3785, inlinedAt: !3807)
!3812 = !DILocation(line: 92, column: 7, scope: !3788, inlinedAt: !3811)
!3813 = !DILocation(line: 92, column: 7, scope: !3774, inlinedAt: !3811)
!3814 = !DILocalVariable(name: "s1", arg: 1, scope: !3815, file: !3678, line: 76, type: !44)
!3815 = distinct !DISubprogram(name: "strcaseeq6", scope: !3678, file: !3678, line: 76, type: !3816, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!47, !44, !44, !29, !29, !29}
!3818 = !{!3814, !3819, !3820, !3821, !3822}
!3819 = !DILocalVariable(name: "s2", arg: 2, scope: !3815, file: !3678, line: 76, type: !44)
!3820 = !DILocalVariable(name: "s26", arg: 3, scope: !3815, file: !3678, line: 76, type: !29)
!3821 = !DILocalVariable(name: "s27", arg: 4, scope: !3815, file: !3678, line: 76, type: !29)
!3822 = !DILocalVariable(name: "s28", arg: 5, scope: !3815, file: !3678, line: 76, type: !29)
!3823 = !DILocation(line: 0, scope: !3815, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 97, column: 16, scope: !3825, inlinedAt: !3811)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !3678, line: 94, column: 11)
!3826 = distinct !DILexicalBlock(scope: !3788, file: !3678, line: 93, column: 5)
!3827 = !DILocation(line: 78, column: 7, scope: !3828, inlinedAt: !3824)
!3828 = distinct !DILexicalBlock(scope: !3815, file: !3678, line: 78, column: 7)
!3829 = !DILocation(line: 78, column: 7, scope: !3815, inlinedAt: !3824)
!3830 = !DILocalVariable(name: "s1", arg: 1, scope: !3831, file: !3678, line: 62, type: !44)
!3831 = distinct !DISubprogram(name: "strcaseeq7", scope: !3678, file: !3678, line: 62, type: !3832, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!47, !44, !44, !29, !29}
!3834 = !{!3830, !3835, !3836, !3837}
!3835 = !DILocalVariable(name: "s2", arg: 2, scope: !3831, file: !3678, line: 62, type: !44)
!3836 = !DILocalVariable(name: "s27", arg: 3, scope: !3831, file: !3678, line: 62, type: !29)
!3837 = !DILocalVariable(name: "s28", arg: 4, scope: !3831, file: !3678, line: 62, type: !29)
!3838 = !DILocation(line: 0, scope: !3831, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 83, column: 16, scope: !3840, inlinedAt: !3824)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !3678, line: 80, column: 11)
!3841 = distinct !DILexicalBlock(scope: !3828, file: !3678, line: 79, column: 5)
!3842 = !DILocation(line: 64, column: 7, scope: !3843, inlinedAt: !3839)
!3843 = distinct !DILexicalBlock(scope: !3831, file: !3678, line: 64, column: 7)
!3844 = !DILocation(line: 236, column: 7, scope: !3662)
!3845 = !DILocation(line: 237, column: 12, scope: !3796)
!3846 = !DILocation(line: 237, column: 21, scope: !3796)
!3847 = !DILocation(line: 237, column: 5, scope: !3796)
!3848 = !DILocation(line: 239, column: 13, scope: !3662)
!3849 = !DILocation(line: 239, column: 11, scope: !3662)
!3850 = !DILocation(line: 239, column: 3, scope: !3662)
!3851 = !DILocation(line: 240, column: 1, scope: !3662)
!3852 = !DISubprogram(name: "iswprint", scope: !3853, file: !3853, line: 120, type: !3854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!3853 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!47, !7}
!3856 = !DISubprogram(name: "mbsinit", scope: !3857, file: !3857, line: 292, type: !3858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!3857 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!47, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3862 = distinct !DISubprogram(name: "quotearg_alloc", scope: !103, file: !103, line: 799, type: !3863, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!28, !44, !80, !3029}
!3865 = !{!3866, !3867, !3868}
!3866 = !DILocalVariable(name: "arg", arg: 1, scope: !3862, file: !103, line: 799, type: !44)
!3867 = !DILocalVariable(name: "argsize", arg: 2, scope: !3862, file: !103, line: 799, type: !80)
!3868 = !DILocalVariable(name: "o", arg: 3, scope: !3862, file: !103, line: 800, type: !3029)
!3869 = !DILocation(line: 0, scope: !3862)
!3870 = !DILocalVariable(name: "arg", arg: 1, scope: !3871, file: !103, line: 812, type: !44)
!3871 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !103, file: !103, line: 812, type: !3872, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3874)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!28, !44, !80, !237, !3029}
!3874 = !{!3870, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882}
!3875 = !DILocalVariable(name: "argsize", arg: 2, scope: !3871, file: !103, line: 812, type: !80)
!3876 = !DILocalVariable(name: "size", arg: 3, scope: !3871, file: !103, line: 812, type: !237)
!3877 = !DILocalVariable(name: "o", arg: 4, scope: !3871, file: !103, line: 813, type: !3029)
!3878 = !DILocalVariable(name: "p", scope: !3871, file: !103, line: 815, type: !3029)
!3879 = !DILocalVariable(name: "e", scope: !3871, file: !103, line: 816, type: !47)
!3880 = !DILocalVariable(name: "flags", scope: !3871, file: !103, line: 818, type: !47)
!3881 = !DILocalVariable(name: "bufsize", scope: !3871, file: !103, line: 819, type: !80)
!3882 = !DILocalVariable(name: "buf", scope: !3871, file: !103, line: 823, type: !28)
!3883 = !DILocation(line: 0, scope: !3871, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 802, column: 10, scope: !3862)
!3885 = !DILocation(line: 815, column: 37, scope: !3871, inlinedAt: !3884)
!3886 = !DILocation(line: 816, column: 11, scope: !3871, inlinedAt: !3884)
!3887 = !DILocation(line: 818, column: 18, scope: !3871, inlinedAt: !3884)
!3888 = !DILocation(line: 818, column: 24, scope: !3871, inlinedAt: !3884)
!3889 = !DILocation(line: 819, column: 69, scope: !3871, inlinedAt: !3884)
!3890 = !DILocation(line: 820, column: 53, scope: !3871, inlinedAt: !3884)
!3891 = !DILocation(line: 821, column: 49, scope: !3871, inlinedAt: !3884)
!3892 = !DILocation(line: 822, column: 49, scope: !3871, inlinedAt: !3884)
!3893 = !DILocation(line: 819, column: 20, scope: !3871, inlinedAt: !3884)
!3894 = !DILocation(line: 822, column: 62, scope: !3871, inlinedAt: !3884)
!3895 = !DILocalVariable(name: "n", arg: 1, scope: !3896, file: !233, line: 216, type: !80)
!3896 = distinct !DISubprogram(name: "xcharalloc", scope: !233, file: !233, line: 216, type: !3897, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!28, !80}
!3899 = !{!3895}
!3900 = !DILocation(line: 0, scope: !3896, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 823, column: 15, scope: !3871, inlinedAt: !3884)
!3902 = !DILocation(line: 218, column: 10, scope: !3896, inlinedAt: !3901)
!3903 = !DILocation(line: 824, column: 60, scope: !3871, inlinedAt: !3884)
!3904 = !DILocation(line: 826, column: 32, scope: !3871, inlinedAt: !3884)
!3905 = !DILocation(line: 826, column: 47, scope: !3871, inlinedAt: !3884)
!3906 = !DILocation(line: 824, column: 3, scope: !3871, inlinedAt: !3884)
!3907 = !DILocation(line: 827, column: 9, scope: !3871, inlinedAt: !3884)
!3908 = !DILocation(line: 802, column: 3, scope: !3862)
!3909 = !DILocation(line: 0, scope: !3871)
!3910 = !DILocation(line: 815, column: 37, scope: !3871)
!3911 = !DILocation(line: 816, column: 11, scope: !3871)
!3912 = !DILocation(line: 818, column: 18, scope: !3871)
!3913 = !DILocation(line: 818, column: 27, scope: !3871)
!3914 = !DILocation(line: 818, column: 24, scope: !3871)
!3915 = !DILocation(line: 819, column: 69, scope: !3871)
!3916 = !DILocation(line: 820, column: 53, scope: !3871)
!3917 = !DILocation(line: 821, column: 49, scope: !3871)
!3918 = !DILocation(line: 822, column: 49, scope: !3871)
!3919 = !DILocation(line: 819, column: 20, scope: !3871)
!3920 = !DILocation(line: 822, column: 62, scope: !3871)
!3921 = !DILocation(line: 0, scope: !3896, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 823, column: 15, scope: !3871)
!3923 = !DILocation(line: 218, column: 10, scope: !3896, inlinedAt: !3922)
!3924 = !DILocation(line: 824, column: 60, scope: !3871)
!3925 = !DILocation(line: 826, column: 32, scope: !3871)
!3926 = !DILocation(line: 826, column: 47, scope: !3871)
!3927 = !DILocation(line: 824, column: 3, scope: !3871)
!3928 = !DILocation(line: 827, column: 9, scope: !3871)
!3929 = !DILocation(line: 828, column: 7, scope: !3871)
!3930 = !DILocation(line: 829, column: 11, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3871, file: !103, line: 828, column: 7)
!3932 = !DILocation(line: 829, column: 5, scope: !3931)
!3933 = !DILocation(line: 830, column: 3, scope: !3871)
!3934 = distinct !DISubprogram(name: "quotearg_free", scope: !103, file: !103, line: 848, type: !927, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3935)
!3935 = !{!3936, !3937}
!3936 = !DILocalVariable(name: "sv", scope: !3934, file: !103, line: 850, type: !155)
!3937 = !DILocalVariable(name: "i", scope: !3934, file: !103, line: 851, type: !47)
!3938 = !DILocation(line: 850, column: 24, scope: !3934)
!3939 = !DILocation(line: 0, scope: !3934)
!3940 = !DILocation(line: 852, column: 19, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !103, line: 852, column: 3)
!3942 = distinct !DILexicalBlock(scope: !3934, file: !103, line: 852, column: 3)
!3943 = !DILocation(line: 852, column: 17, scope: !3941)
!3944 = !DILocation(line: 852, column: 3, scope: !3942)
!3945 = !DILocation(line: 853, column: 17, scope: !3941)
!3946 = !{!3947, !683, i64 8}
!3947 = !{!"slotvec", !897, i64 0, !683, i64 8}
!3948 = !DILocation(line: 853, column: 5, scope: !3941)
!3949 = !DILocation(line: 852, column: 28, scope: !3941)
!3950 = distinct !{!3950, !3944, !3951, !726}
!3951 = !DILocation(line: 853, column: 20, scope: !3942)
!3952 = !DILocation(line: 854, column: 13, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3934, file: !103, line: 854, column: 7)
!3954 = !DILocation(line: 854, column: 17, scope: !3953)
!3955 = !DILocation(line: 854, column: 7, scope: !3934)
!3956 = !DILocation(line: 856, column: 7, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3953, file: !103, line: 855, column: 5)
!3958 = !DILocation(line: 857, column: 21, scope: !3957)
!3959 = !{!3947, !897, i64 0}
!3960 = !DILocation(line: 858, column: 20, scope: !3957)
!3961 = !DILocation(line: 859, column: 5, scope: !3957)
!3962 = !DILocation(line: 860, column: 10, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3934, file: !103, line: 860, column: 7)
!3964 = !DILocation(line: 860, column: 7, scope: !3934)
!3965 = !DILocation(line: 862, column: 13, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !103, line: 861, column: 5)
!3967 = !DILocation(line: 862, column: 7, scope: !3966)
!3968 = !DILocation(line: 863, column: 15, scope: !3966)
!3969 = !DILocation(line: 864, column: 5, scope: !3966)
!3970 = !DILocation(line: 865, column: 10, scope: !3934)
!3971 = !DILocation(line: 866, column: 1, scope: !3934)
!3972 = distinct !DISubprogram(name: "quotearg_n", scope: !103, file: !103, line: 931, type: !806, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3973)
!3973 = !{!3974, !3975}
!3974 = !DILocalVariable(name: "n", arg: 1, scope: !3972, file: !103, line: 931, type: !47)
!3975 = !DILocalVariable(name: "arg", arg: 2, scope: !3972, file: !103, line: 931, type: !44)
!3976 = !DILocation(line: 0, scope: !3972)
!3977 = !DILocation(line: 933, column: 10, scope: !3972)
!3978 = !DILocation(line: 933, column: 3, scope: !3972)
!3979 = distinct !DISubprogram(name: "quotearg_n_options", scope: !103, file: !103, line: 877, type: !3980, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!28, !47, !44, !80, !3029}
!3982 = !{!3983, !3984, !3985, !3986, !3987, !3988, !3989, !3992, !3993, !3995, !3996, !3997}
!3983 = !DILocalVariable(name: "n", arg: 1, scope: !3979, file: !103, line: 877, type: !47)
!3984 = !DILocalVariable(name: "arg", arg: 2, scope: !3979, file: !103, line: 877, type: !44)
!3985 = !DILocalVariable(name: "argsize", arg: 3, scope: !3979, file: !103, line: 877, type: !80)
!3986 = !DILocalVariable(name: "options", arg: 4, scope: !3979, file: !103, line: 878, type: !3029)
!3987 = !DILocalVariable(name: "e", scope: !3979, file: !103, line: 880, type: !47)
!3988 = !DILocalVariable(name: "sv", scope: !3979, file: !103, line: 882, type: !155)
!3989 = !DILocalVariable(name: "preallocated", scope: !3990, file: !103, line: 889, type: !35)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !103, line: 888, column: 5)
!3991 = distinct !DILexicalBlock(scope: !3979, file: !103, line: 887, column: 7)
!3992 = !DILocalVariable(name: "nmax", scope: !3990, file: !103, line: 890, type: !47)
!3993 = !DILocalVariable(name: "size", scope: !3994, file: !103, line: 903, type: !80)
!3994 = distinct !DILexicalBlock(scope: !3979, file: !103, line: 902, column: 3)
!3995 = !DILocalVariable(name: "val", scope: !3994, file: !103, line: 904, type: !28)
!3996 = !DILocalVariable(name: "flags", scope: !3994, file: !103, line: 906, type: !47)
!3997 = !DILocalVariable(name: "qsize", scope: !3994, file: !103, line: 907, type: !80)
!3998 = !DILocation(line: 0, scope: !3979)
!3999 = !DILocation(line: 880, column: 11, scope: !3979)
!4000 = !DILocation(line: 882, column: 24, scope: !3979)
!4001 = !DILocation(line: 884, column: 9, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3979, file: !103, line: 884, column: 7)
!4003 = !DILocation(line: 884, column: 7, scope: !3979)
!4004 = !DILocation(line: 885, column: 5, scope: !4002)
!4005 = !DILocation(line: 887, column: 7, scope: !3991)
!4006 = !DILocation(line: 887, column: 14, scope: !3991)
!4007 = !DILocation(line: 887, column: 7, scope: !3979)
!4008 = !DILocation(line: 889, column: 31, scope: !3990)
!4009 = !DILocation(line: 0, scope: !3990)
!4010 = !DILocation(line: 892, column: 16, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3990, file: !103, line: 892, column: 11)
!4012 = !DILocation(line: 892, column: 11, scope: !3990)
!4013 = !DILocation(line: 893, column: 9, scope: !4011)
!4014 = !DILocation(line: 895, column: 32, scope: !3990)
!4015 = !DILocation(line: 895, column: 61, scope: !3990)
!4016 = !DILocation(line: 895, column: 66, scope: !3990)
!4017 = !DILocation(line: 895, column: 22, scope: !3990)
!4018 = !DILocation(line: 895, column: 15, scope: !3990)
!4019 = !DILocation(line: 896, column: 11, scope: !3990)
!4020 = !DILocation(line: 897, column: 15, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3990, file: !103, line: 896, column: 11)
!4022 = !{i64 0, i64 8, !1487, i64 8, i64 8, !682}
!4023 = !DILocation(line: 897, column: 9, scope: !4021)
!4024 = !DILocation(line: 898, column: 20, scope: !3990)
!4025 = !DILocation(line: 898, column: 18, scope: !3990)
!4026 = !DILocation(line: 898, column: 15, scope: !3990)
!4027 = !DILocation(line: 898, column: 38, scope: !3990)
!4028 = !DILocation(line: 898, column: 31, scope: !3990)
!4029 = !DILocation(line: 898, column: 48, scope: !3990)
!4030 = !DILocation(line: 0, scope: !3424, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 898, column: 7, scope: !3990)
!4032 = !DILocation(line: 59, column: 10, scope: !3424, inlinedAt: !4031)
!4033 = !DILocation(line: 899, column: 14, scope: !3990)
!4034 = !DILocation(line: 900, column: 5, scope: !3990)
!4035 = !DILocation(line: 903, column: 19, scope: !3994)
!4036 = !DILocation(line: 903, column: 25, scope: !3994)
!4037 = !DILocation(line: 0, scope: !3994)
!4038 = !DILocation(line: 904, column: 23, scope: !3994)
!4039 = !DILocation(line: 906, column: 26, scope: !3994)
!4040 = !DILocation(line: 906, column: 32, scope: !3994)
!4041 = !DILocation(line: 908, column: 55, scope: !3994)
!4042 = !DILocation(line: 909, column: 46, scope: !3994)
!4043 = !DILocation(line: 910, column: 55, scope: !3994)
!4044 = !DILocation(line: 911, column: 55, scope: !3994)
!4045 = !DILocation(line: 907, column: 20, scope: !3994)
!4046 = !DILocation(line: 913, column: 14, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !3994, file: !103, line: 913, column: 9)
!4048 = !DILocation(line: 913, column: 9, scope: !3994)
!4049 = !DILocation(line: 915, column: 35, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4047, file: !103, line: 914, column: 7)
!4051 = !DILocation(line: 915, column: 20, scope: !4050)
!4052 = !DILocation(line: 916, column: 17, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4050, file: !103, line: 916, column: 13)
!4054 = !DILocation(line: 916, column: 13, scope: !4050)
!4055 = !DILocation(line: 917, column: 11, scope: !4053)
!4056 = !DILocation(line: 0, scope: !3896, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 918, column: 27, scope: !4050)
!4058 = !DILocation(line: 218, column: 10, scope: !3896, inlinedAt: !4057)
!4059 = !DILocation(line: 918, column: 19, scope: !4050)
!4060 = !DILocation(line: 919, column: 69, scope: !4050)
!4061 = !DILocation(line: 921, column: 44, scope: !4050)
!4062 = !DILocation(line: 922, column: 44, scope: !4050)
!4063 = !DILocation(line: 919, column: 9, scope: !4050)
!4064 = !DILocation(line: 923, column: 7, scope: !4050)
!4065 = !DILocation(line: 925, column: 11, scope: !3994)
!4066 = !DILocation(line: 926, column: 5, scope: !3994)
!4067 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !103, file: !103, line: 937, type: !4068, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4070)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!28, !47, !44, !80}
!4070 = !{!4071, !4072, !4073}
!4071 = !DILocalVariable(name: "n", arg: 1, scope: !4067, file: !103, line: 937, type: !47)
!4072 = !DILocalVariable(name: "arg", arg: 2, scope: !4067, file: !103, line: 937, type: !44)
!4073 = !DILocalVariable(name: "argsize", arg: 3, scope: !4067, file: !103, line: 937, type: !80)
!4074 = !DILocation(line: 0, scope: !4067)
!4075 = !DILocation(line: 939, column: 10, scope: !4067)
!4076 = !DILocation(line: 939, column: 3, scope: !4067)
!4077 = distinct !DISubprogram(name: "quotearg", scope: !103, file: !103, line: 943, type: !920, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4078)
!4078 = !{!4079}
!4079 = !DILocalVariable(name: "arg", arg: 1, scope: !4077, file: !103, line: 943, type: !44)
!4080 = !DILocation(line: 0, scope: !4077)
!4081 = !DILocation(line: 0, scope: !3972, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 945, column: 10, scope: !4077)
!4083 = !DILocation(line: 933, column: 10, scope: !3972, inlinedAt: !4082)
!4084 = !DILocation(line: 945, column: 3, scope: !4077)
!4085 = distinct !DISubprogram(name: "quotearg_mem", scope: !103, file: !103, line: 949, type: !179, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4086)
!4086 = !{!4087, !4088}
!4087 = !DILocalVariable(name: "arg", arg: 1, scope: !4085, file: !103, line: 949, type: !44)
!4088 = !DILocalVariable(name: "argsize", arg: 2, scope: !4085, file: !103, line: 949, type: !80)
!4089 = !DILocation(line: 0, scope: !4085)
!4090 = !DILocation(line: 0, scope: !4067, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 951, column: 10, scope: !4085)
!4092 = !DILocation(line: 939, column: 10, scope: !4067, inlinedAt: !4091)
!4093 = !DILocation(line: 951, column: 3, scope: !4085)
!4094 = distinct !DISubprogram(name: "quotearg_n_style", scope: !103, file: !103, line: 955, type: !4095, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4097)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!28, !47, !13, !44}
!4097 = !{!4098, !4099, !4100, !4101}
!4098 = !DILocalVariable(name: "n", arg: 1, scope: !4094, file: !103, line: 955, type: !47)
!4099 = !DILocalVariable(name: "s", arg: 2, scope: !4094, file: !103, line: 955, type: !13)
!4100 = !DILocalVariable(name: "arg", arg: 3, scope: !4094, file: !103, line: 955, type: !44)
!4101 = !DILocalVariable(name: "o", scope: !4094, file: !103, line: 957, type: !3030)
!4102 = !DILocation(line: 0, scope: !4094)
!4103 = !DILocation(line: 957, column: 3, scope: !4094)
!4104 = !DILocation(line: 957, column: 32, scope: !4094)
!4105 = !{!4106}
!4106 = distinct !{!4106, !4107, !"quoting_options_from_style: argument 0"}
!4107 = distinct !{!4107, !"quoting_options_from_style"}
!4108 = !DILocation(line: 957, column: 36, scope: !4094)
!4109 = !DILocalVariable(name: "style", arg: 1, scope: !4110, file: !103, line: 193, type: !13)
!4110 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !103, file: !103, line: 193, type: !4111, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4113)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!136, !13}
!4113 = !{!4109, !4114}
!4114 = !DILocalVariable(name: "o", scope: !4110, file: !103, line: 195, type: !136)
!4115 = !DILocation(line: 0, scope: !4110, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 957, column: 36, scope: !4094)
!4117 = !DILocation(line: 195, column: 26, scope: !4110, inlinedAt: !4116)
!4118 = !DILocation(line: 196, column: 13, scope: !4119, inlinedAt: !4116)
!4119 = distinct !DILexicalBlock(scope: !4110, file: !103, line: 196, column: 7)
!4120 = !DILocation(line: 196, column: 7, scope: !4110, inlinedAt: !4116)
!4121 = !DILocation(line: 197, column: 5, scope: !4119, inlinedAt: !4116)
!4122 = !DILocation(line: 198, column: 5, scope: !4110, inlinedAt: !4116)
!4123 = !DILocation(line: 198, column: 11, scope: !4110, inlinedAt: !4116)
!4124 = !DILocation(line: 958, column: 10, scope: !4094)
!4125 = !DILocation(line: 959, column: 1, scope: !4094)
!4126 = !DILocation(line: 958, column: 3, scope: !4094)
!4127 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !103, file: !103, line: 962, type: !4128, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4130)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!28, !47, !13, !44, !80}
!4130 = !{!4131, !4132, !4133, !4134, !4135}
!4131 = !DILocalVariable(name: "n", arg: 1, scope: !4127, file: !103, line: 962, type: !47)
!4132 = !DILocalVariable(name: "s", arg: 2, scope: !4127, file: !103, line: 962, type: !13)
!4133 = !DILocalVariable(name: "arg", arg: 3, scope: !4127, file: !103, line: 963, type: !44)
!4134 = !DILocalVariable(name: "argsize", arg: 4, scope: !4127, file: !103, line: 963, type: !80)
!4135 = !DILocalVariable(name: "o", scope: !4127, file: !103, line: 965, type: !3030)
!4136 = !DILocation(line: 0, scope: !4127)
!4137 = !DILocation(line: 965, column: 3, scope: !4127)
!4138 = !DILocation(line: 965, column: 32, scope: !4127)
!4139 = !{!4140}
!4140 = distinct !{!4140, !4141, !"quoting_options_from_style: argument 0"}
!4141 = distinct !{!4141, !"quoting_options_from_style"}
!4142 = !DILocation(line: 965, column: 36, scope: !4127)
!4143 = !DILocation(line: 0, scope: !4110, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 965, column: 36, scope: !4127)
!4145 = !DILocation(line: 195, column: 26, scope: !4110, inlinedAt: !4144)
!4146 = !DILocation(line: 196, column: 13, scope: !4119, inlinedAt: !4144)
!4147 = !DILocation(line: 196, column: 7, scope: !4110, inlinedAt: !4144)
!4148 = !DILocation(line: 197, column: 5, scope: !4119, inlinedAt: !4144)
!4149 = !DILocation(line: 198, column: 5, scope: !4110, inlinedAt: !4144)
!4150 = !DILocation(line: 198, column: 11, scope: !4110, inlinedAt: !4144)
!4151 = !DILocation(line: 966, column: 10, scope: !4127)
!4152 = !DILocation(line: 967, column: 1, scope: !4127)
!4153 = !DILocation(line: 966, column: 3, scope: !4127)
!4154 = distinct !DISubprogram(name: "quotearg_style", scope: !103, file: !103, line: 970, type: !4155, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4157)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!28, !13, !44}
!4157 = !{!4158, !4159}
!4158 = !DILocalVariable(name: "s", arg: 1, scope: !4154, file: !103, line: 970, type: !13)
!4159 = !DILocalVariable(name: "arg", arg: 2, scope: !4154, file: !103, line: 970, type: !44)
!4160 = !DILocation(line: 0, scope: !4154)
!4161 = !DILocation(line: 0, scope: !4094, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 972, column: 10, scope: !4154)
!4163 = !DILocation(line: 957, column: 3, scope: !4094, inlinedAt: !4162)
!4164 = !DILocation(line: 957, column: 32, scope: !4094, inlinedAt: !4162)
!4165 = !{!4166}
!4166 = distinct !{!4166, !4167, !"quoting_options_from_style: argument 0"}
!4167 = distinct !{!4167, !"quoting_options_from_style"}
!4168 = !DILocation(line: 957, column: 36, scope: !4094, inlinedAt: !4162)
!4169 = !DILocation(line: 0, scope: !4110, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 957, column: 36, scope: !4094, inlinedAt: !4162)
!4171 = !DILocation(line: 195, column: 26, scope: !4110, inlinedAt: !4170)
!4172 = !DILocation(line: 196, column: 13, scope: !4119, inlinedAt: !4170)
!4173 = !DILocation(line: 196, column: 7, scope: !4110, inlinedAt: !4170)
!4174 = !DILocation(line: 197, column: 5, scope: !4119, inlinedAt: !4170)
!4175 = !DILocation(line: 198, column: 5, scope: !4110, inlinedAt: !4170)
!4176 = !DILocation(line: 198, column: 11, scope: !4110, inlinedAt: !4170)
!4177 = !DILocation(line: 958, column: 10, scope: !4094, inlinedAt: !4162)
!4178 = !DILocation(line: 959, column: 1, scope: !4094, inlinedAt: !4162)
!4179 = !DILocation(line: 972, column: 3, scope: !4154)
!4180 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !103, file: !103, line: 976, type: !4181, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4183)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!28, !13, !44, !80}
!4183 = !{!4184, !4185, !4186}
!4184 = !DILocalVariable(name: "s", arg: 1, scope: !4180, file: !103, line: 976, type: !13)
!4185 = !DILocalVariable(name: "arg", arg: 2, scope: !4180, file: !103, line: 976, type: !44)
!4186 = !DILocalVariable(name: "argsize", arg: 3, scope: !4180, file: !103, line: 976, type: !80)
!4187 = !DILocation(line: 0, scope: !4180)
!4188 = !DILocation(line: 0, scope: !4127, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 978, column: 10, scope: !4180)
!4190 = !DILocation(line: 965, column: 3, scope: !4127, inlinedAt: !4189)
!4191 = !DILocation(line: 965, column: 32, scope: !4127, inlinedAt: !4189)
!4192 = !{!4193}
!4193 = distinct !{!4193, !4194, !"quoting_options_from_style: argument 0"}
!4194 = distinct !{!4194, !"quoting_options_from_style"}
!4195 = !DILocation(line: 965, column: 36, scope: !4127, inlinedAt: !4189)
!4196 = !DILocation(line: 0, scope: !4110, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 965, column: 36, scope: !4127, inlinedAt: !4189)
!4198 = !DILocation(line: 195, column: 26, scope: !4110, inlinedAt: !4197)
!4199 = !DILocation(line: 196, column: 13, scope: !4119, inlinedAt: !4197)
!4200 = !DILocation(line: 196, column: 7, scope: !4110, inlinedAt: !4197)
!4201 = !DILocation(line: 197, column: 5, scope: !4119, inlinedAt: !4197)
!4202 = !DILocation(line: 198, column: 5, scope: !4110, inlinedAt: !4197)
!4203 = !DILocation(line: 198, column: 11, scope: !4110, inlinedAt: !4197)
!4204 = !DILocation(line: 966, column: 10, scope: !4127, inlinedAt: !4189)
!4205 = !DILocation(line: 967, column: 1, scope: !4127, inlinedAt: !4189)
!4206 = !DILocation(line: 978, column: 3, scope: !4180)
!4207 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !103, file: !103, line: 982, type: !4208, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4210)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!28, !44, !80, !29}
!4210 = !{!4211, !4212, !4213, !4214}
!4211 = !DILocalVariable(name: "arg", arg: 1, scope: !4207, file: !103, line: 982, type: !44)
!4212 = !DILocalVariable(name: "argsize", arg: 2, scope: !4207, file: !103, line: 982, type: !80)
!4213 = !DILocalVariable(name: "ch", arg: 3, scope: !4207, file: !103, line: 982, type: !29)
!4214 = !DILocalVariable(name: "options", scope: !4207, file: !103, line: 984, type: !136)
!4215 = !DILocation(line: 0, scope: !4207)
!4216 = !DILocation(line: 984, column: 3, scope: !4207)
!4217 = !DILocation(line: 984, column: 26, scope: !4207)
!4218 = !DILocation(line: 985, column: 13, scope: !4207)
!4219 = !{i64 0, i64 4, !901, i64 4, i64 4, !850, i64 8, i64 32, !901, i64 40, i64 8, !682, i64 48, i64 8, !682}
!4220 = !DILocation(line: 0, scope: !3050, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 986, column: 3, scope: !4207)
!4222 = !DILocation(line: 156, column: 62, scope: !3050, inlinedAt: !4221)
!4223 = !DILocation(line: 156, column: 57, scope: !3050, inlinedAt: !4221)
!4224 = !DILocation(line: 157, column: 15, scope: !3050, inlinedAt: !4221)
!4225 = !DILocation(line: 158, column: 12, scope: !3050, inlinedAt: !4221)
!4226 = !DILocation(line: 158, column: 15, scope: !3050, inlinedAt: !4221)
!4227 = !DILocation(line: 158, column: 25, scope: !3050, inlinedAt: !4221)
!4228 = !DILocation(line: 159, column: 18, scope: !3050, inlinedAt: !4221)
!4229 = !DILocation(line: 159, column: 23, scope: !3050, inlinedAt: !4221)
!4230 = !DILocation(line: 159, column: 6, scope: !3050, inlinedAt: !4221)
!4231 = !DILocation(line: 987, column: 10, scope: !4207)
!4232 = !DILocation(line: 988, column: 1, scope: !4207)
!4233 = !DILocation(line: 987, column: 3, scope: !4207)
!4234 = distinct !DISubprogram(name: "quotearg_char", scope: !103, file: !103, line: 991, type: !4235, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!28, !44, !29}
!4237 = !{!4238, !4239}
!4238 = !DILocalVariable(name: "arg", arg: 1, scope: !4234, file: !103, line: 991, type: !44)
!4239 = !DILocalVariable(name: "ch", arg: 2, scope: !4234, file: !103, line: 991, type: !29)
!4240 = !DILocation(line: 0, scope: !4234)
!4241 = !DILocation(line: 0, scope: !4207, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 993, column: 10, scope: !4234)
!4243 = !DILocation(line: 984, column: 3, scope: !4207, inlinedAt: !4242)
!4244 = !DILocation(line: 984, column: 26, scope: !4207, inlinedAt: !4242)
!4245 = !DILocation(line: 985, column: 13, scope: !4207, inlinedAt: !4242)
!4246 = !DILocation(line: 0, scope: !3050, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 986, column: 3, scope: !4207, inlinedAt: !4242)
!4248 = !DILocation(line: 156, column: 62, scope: !3050, inlinedAt: !4247)
!4249 = !DILocation(line: 156, column: 57, scope: !3050, inlinedAt: !4247)
!4250 = !DILocation(line: 157, column: 15, scope: !3050, inlinedAt: !4247)
!4251 = !DILocation(line: 158, column: 12, scope: !3050, inlinedAt: !4247)
!4252 = !DILocation(line: 158, column: 15, scope: !3050, inlinedAt: !4247)
!4253 = !DILocation(line: 158, column: 25, scope: !3050, inlinedAt: !4247)
!4254 = !DILocation(line: 159, column: 18, scope: !3050, inlinedAt: !4247)
!4255 = !DILocation(line: 159, column: 23, scope: !3050, inlinedAt: !4247)
!4256 = !DILocation(line: 159, column: 6, scope: !3050, inlinedAt: !4247)
!4257 = !DILocation(line: 987, column: 10, scope: !4207, inlinedAt: !4242)
!4258 = !DILocation(line: 988, column: 1, scope: !4207, inlinedAt: !4242)
!4259 = !DILocation(line: 993, column: 3, scope: !4234)
!4260 = distinct !DISubprogram(name: "quotearg_colon", scope: !103, file: !103, line: 997, type: !920, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4261)
!4261 = !{!4262}
!4262 = !DILocalVariable(name: "arg", arg: 1, scope: !4260, file: !103, line: 997, type: !44)
!4263 = !DILocation(line: 0, scope: !4260)
!4264 = !DILocation(line: 0, scope: !4234, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 999, column: 10, scope: !4260)
!4266 = !DILocation(line: 0, scope: !4207, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 993, column: 10, scope: !4234, inlinedAt: !4265)
!4268 = !DILocation(line: 984, column: 3, scope: !4207, inlinedAt: !4267)
!4269 = !DILocation(line: 984, column: 26, scope: !4207, inlinedAt: !4267)
!4270 = !DILocation(line: 985, column: 13, scope: !4207, inlinedAt: !4267)
!4271 = !DILocation(line: 0, scope: !3050, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 986, column: 3, scope: !4207, inlinedAt: !4267)
!4273 = !DILocation(line: 156, column: 57, scope: !3050, inlinedAt: !4272)
!4274 = !DILocation(line: 158, column: 12, scope: !3050, inlinedAt: !4272)
!4275 = !DILocation(line: 159, column: 6, scope: !3050, inlinedAt: !4272)
!4276 = !DILocation(line: 987, column: 10, scope: !4207, inlinedAt: !4267)
!4277 = !DILocation(line: 988, column: 1, scope: !4207, inlinedAt: !4267)
!4278 = !DILocation(line: 999, column: 3, scope: !4260)
!4279 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !103, file: !103, line: 1003, type: !179, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4280)
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "arg", arg: 1, scope: !4279, file: !103, line: 1003, type: !44)
!4282 = !DILocalVariable(name: "argsize", arg: 2, scope: !4279, file: !103, line: 1003, type: !80)
!4283 = !DILocation(line: 0, scope: !4279)
!4284 = !DILocation(line: 0, scope: !4207, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 1005, column: 10, scope: !4279)
!4286 = !DILocation(line: 984, column: 3, scope: !4207, inlinedAt: !4285)
!4287 = !DILocation(line: 984, column: 26, scope: !4207, inlinedAt: !4285)
!4288 = !DILocation(line: 985, column: 13, scope: !4207, inlinedAt: !4285)
!4289 = !DILocation(line: 0, scope: !3050, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 986, column: 3, scope: !4207, inlinedAt: !4285)
!4291 = !DILocation(line: 156, column: 57, scope: !3050, inlinedAt: !4290)
!4292 = !DILocation(line: 158, column: 12, scope: !3050, inlinedAt: !4290)
!4293 = !DILocation(line: 159, column: 6, scope: !3050, inlinedAt: !4290)
!4294 = !DILocation(line: 987, column: 10, scope: !4207, inlinedAt: !4285)
!4295 = !DILocation(line: 988, column: 1, scope: !4207, inlinedAt: !4285)
!4296 = !DILocation(line: 1005, column: 3, scope: !4279)
!4297 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !103, file: !103, line: 1009, type: !4095, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4298)
!4298 = !{!4299, !4300, !4301, !4302}
!4299 = !DILocalVariable(name: "n", arg: 1, scope: !4297, file: !103, line: 1009, type: !47)
!4300 = !DILocalVariable(name: "s", arg: 2, scope: !4297, file: !103, line: 1009, type: !13)
!4301 = !DILocalVariable(name: "arg", arg: 3, scope: !4297, file: !103, line: 1009, type: !44)
!4302 = !DILocalVariable(name: "options", scope: !4297, file: !103, line: 1011, type: !136)
!4303 = !DILocation(line: 195, column: 26, scope: !4110, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 1012, column: 13, scope: !4297)
!4305 = !DILocation(line: 0, scope: !4297)
!4306 = !DILocation(line: 1011, column: 3, scope: !4297)
!4307 = !DILocation(line: 1011, column: 26, scope: !4297)
!4308 = !DILocation(line: 1012, column: 13, scope: !4297)
!4309 = !{!4310}
!4310 = distinct !{!4310, !4311, !"quoting_options_from_style: argument 0"}
!4311 = distinct !{!4311, !"quoting_options_from_style"}
!4312 = !DILocation(line: 0, scope: !4110, inlinedAt: !4304)
!4313 = !DILocation(line: 196, column: 13, scope: !4119, inlinedAt: !4304)
!4314 = !DILocation(line: 196, column: 7, scope: !4110, inlinedAt: !4304)
!4315 = !DILocation(line: 197, column: 5, scope: !4119, inlinedAt: !4304)
!4316 = !{i64 0, i64 4, !850, i64 4, i64 32, !901, i64 36, i64 8, !682, i64 44, i64 8, !682}
!4317 = !DILocation(line: 0, scope: !3050, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 1013, column: 3, scope: !4297)
!4319 = !DILocation(line: 156, column: 57, scope: !3050, inlinedAt: !4318)
!4320 = !DILocation(line: 158, column: 12, scope: !3050, inlinedAt: !4318)
!4321 = !DILocation(line: 159, column: 6, scope: !3050, inlinedAt: !4318)
!4322 = !DILocation(line: 1014, column: 10, scope: !4297)
!4323 = !DILocation(line: 1015, column: 1, scope: !4297)
!4324 = !DILocation(line: 1014, column: 3, scope: !4297)
!4325 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !103, file: !103, line: 1018, type: !4326, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!28, !47, !44, !44, !44}
!4328 = !{!4329, !4330, !4331, !4332}
!4329 = !DILocalVariable(name: "n", arg: 1, scope: !4325, file: !103, line: 1018, type: !47)
!4330 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4325, file: !103, line: 1018, type: !44)
!4331 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4325, file: !103, line: 1019, type: !44)
!4332 = !DILocalVariable(name: "arg", arg: 4, scope: !4325, file: !103, line: 1019, type: !44)
!4333 = !DILocation(line: 0, scope: !4325)
!4334 = !DILocalVariable(name: "n", arg: 1, scope: !4335, file: !103, line: 1026, type: !47)
!4335 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !103, file: !103, line: 1026, type: !4336, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!28, !47, !44, !44, !44, !80}
!4338 = !{!4334, !4339, !4340, !4341, !4342, !4343}
!4339 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4335, file: !103, line: 1026, type: !44)
!4340 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4335, file: !103, line: 1027, type: !44)
!4341 = !DILocalVariable(name: "arg", arg: 4, scope: !4335, file: !103, line: 1028, type: !44)
!4342 = !DILocalVariable(name: "argsize", arg: 5, scope: !4335, file: !103, line: 1028, type: !80)
!4343 = !DILocalVariable(name: "o", scope: !4335, file: !103, line: 1030, type: !136)
!4344 = !DILocation(line: 0, scope: !4335, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 1021, column: 10, scope: !4325)
!4346 = !DILocation(line: 1030, column: 3, scope: !4335, inlinedAt: !4345)
!4347 = !DILocation(line: 1030, column: 26, scope: !4335, inlinedAt: !4345)
!4348 = !DILocation(line: 1030, column: 30, scope: !4335, inlinedAt: !4345)
!4349 = !DILocation(line: 0, scope: !3090, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 1031, column: 3, scope: !4335, inlinedAt: !4345)
!4351 = !DILocation(line: 184, column: 6, scope: !3090, inlinedAt: !4350)
!4352 = !DILocation(line: 184, column: 12, scope: !3090, inlinedAt: !4350)
!4353 = !DILocation(line: 185, column: 8, scope: !3104, inlinedAt: !4350)
!4354 = !DILocation(line: 185, column: 19, scope: !3104, inlinedAt: !4350)
!4355 = !DILocation(line: 186, column: 5, scope: !3104, inlinedAt: !4350)
!4356 = !DILocation(line: 187, column: 6, scope: !3090, inlinedAt: !4350)
!4357 = !DILocation(line: 187, column: 17, scope: !3090, inlinedAt: !4350)
!4358 = !DILocation(line: 188, column: 6, scope: !3090, inlinedAt: !4350)
!4359 = !DILocation(line: 188, column: 18, scope: !3090, inlinedAt: !4350)
!4360 = !DILocation(line: 1032, column: 10, scope: !4335, inlinedAt: !4345)
!4361 = !DILocation(line: 1033, column: 1, scope: !4335, inlinedAt: !4345)
!4362 = !DILocation(line: 1021, column: 3, scope: !4325)
!4363 = !DILocation(line: 0, scope: !4335)
!4364 = !DILocation(line: 1030, column: 3, scope: !4335)
!4365 = !DILocation(line: 1030, column: 26, scope: !4335)
!4366 = !DILocation(line: 1030, column: 30, scope: !4335)
!4367 = !DILocation(line: 0, scope: !3090, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 1031, column: 3, scope: !4335)
!4369 = !DILocation(line: 184, column: 6, scope: !3090, inlinedAt: !4368)
!4370 = !DILocation(line: 184, column: 12, scope: !3090, inlinedAt: !4368)
!4371 = !DILocation(line: 185, column: 8, scope: !3104, inlinedAt: !4368)
!4372 = !DILocation(line: 185, column: 19, scope: !3104, inlinedAt: !4368)
!4373 = !DILocation(line: 186, column: 5, scope: !3104, inlinedAt: !4368)
!4374 = !DILocation(line: 187, column: 6, scope: !3090, inlinedAt: !4368)
!4375 = !DILocation(line: 187, column: 17, scope: !3090, inlinedAt: !4368)
!4376 = !DILocation(line: 188, column: 6, scope: !3090, inlinedAt: !4368)
!4377 = !DILocation(line: 188, column: 18, scope: !3090, inlinedAt: !4368)
!4378 = !DILocation(line: 1032, column: 10, scope: !4335)
!4379 = !DILocation(line: 1033, column: 1, scope: !4335)
!4380 = !DILocation(line: 1032, column: 3, scope: !4335)
!4381 = distinct !DISubprogram(name: "quotearg_custom", scope: !103, file: !103, line: 1036, type: !4382, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4384)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!28, !44, !44, !44}
!4384 = !{!4385, !4386, !4387}
!4385 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4381, file: !103, line: 1036, type: !44)
!4386 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4381, file: !103, line: 1036, type: !44)
!4387 = !DILocalVariable(name: "arg", arg: 3, scope: !4381, file: !103, line: 1037, type: !44)
!4388 = !DILocation(line: 0, scope: !4381)
!4389 = !DILocation(line: 0, scope: !4325, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 1039, column: 10, scope: !4381)
!4391 = !DILocation(line: 0, scope: !4335, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 1021, column: 10, scope: !4325, inlinedAt: !4390)
!4393 = !DILocation(line: 1030, column: 3, scope: !4335, inlinedAt: !4392)
!4394 = !DILocation(line: 1030, column: 26, scope: !4335, inlinedAt: !4392)
!4395 = !DILocation(line: 1030, column: 30, scope: !4335, inlinedAt: !4392)
!4396 = !DILocation(line: 0, scope: !3090, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 1031, column: 3, scope: !4335, inlinedAt: !4392)
!4398 = !DILocation(line: 184, column: 6, scope: !3090, inlinedAt: !4397)
!4399 = !DILocation(line: 184, column: 12, scope: !3090, inlinedAt: !4397)
!4400 = !DILocation(line: 185, column: 8, scope: !3104, inlinedAt: !4397)
!4401 = !DILocation(line: 185, column: 19, scope: !3104, inlinedAt: !4397)
!4402 = !DILocation(line: 186, column: 5, scope: !3104, inlinedAt: !4397)
!4403 = !DILocation(line: 187, column: 6, scope: !3090, inlinedAt: !4397)
!4404 = !DILocation(line: 187, column: 17, scope: !3090, inlinedAt: !4397)
!4405 = !DILocation(line: 188, column: 6, scope: !3090, inlinedAt: !4397)
!4406 = !DILocation(line: 188, column: 18, scope: !3090, inlinedAt: !4397)
!4407 = !DILocation(line: 1032, column: 10, scope: !4335, inlinedAt: !4392)
!4408 = !DILocation(line: 1033, column: 1, scope: !4335, inlinedAt: !4392)
!4409 = !DILocation(line: 1039, column: 3, scope: !4381)
!4410 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !103, file: !103, line: 1043, type: !4411, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4413)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!28, !44, !44, !44, !80}
!4413 = !{!4414, !4415, !4416, !4417}
!4414 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4410, file: !103, line: 1043, type: !44)
!4415 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4410, file: !103, line: 1043, type: !44)
!4416 = !DILocalVariable(name: "arg", arg: 3, scope: !4410, file: !103, line: 1044, type: !44)
!4417 = !DILocalVariable(name: "argsize", arg: 4, scope: !4410, file: !103, line: 1044, type: !80)
!4418 = !DILocation(line: 0, scope: !4410)
!4419 = !DILocation(line: 0, scope: !4335, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 1046, column: 10, scope: !4410)
!4421 = !DILocation(line: 1030, column: 3, scope: !4335, inlinedAt: !4420)
!4422 = !DILocation(line: 1030, column: 26, scope: !4335, inlinedAt: !4420)
!4423 = !DILocation(line: 1030, column: 30, scope: !4335, inlinedAt: !4420)
!4424 = !DILocation(line: 0, scope: !3090, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 1031, column: 3, scope: !4335, inlinedAt: !4420)
!4426 = !DILocation(line: 184, column: 6, scope: !3090, inlinedAt: !4425)
!4427 = !DILocation(line: 184, column: 12, scope: !3090, inlinedAt: !4425)
!4428 = !DILocation(line: 185, column: 8, scope: !3104, inlinedAt: !4425)
!4429 = !DILocation(line: 185, column: 19, scope: !3104, inlinedAt: !4425)
!4430 = !DILocation(line: 186, column: 5, scope: !3104, inlinedAt: !4425)
!4431 = !DILocation(line: 187, column: 6, scope: !3090, inlinedAt: !4425)
!4432 = !DILocation(line: 187, column: 17, scope: !3090, inlinedAt: !4425)
!4433 = !DILocation(line: 188, column: 6, scope: !3090, inlinedAt: !4425)
!4434 = !DILocation(line: 188, column: 18, scope: !3090, inlinedAt: !4425)
!4435 = !DILocation(line: 1032, column: 10, scope: !4335, inlinedAt: !4420)
!4436 = !DILocation(line: 1033, column: 1, scope: !4335, inlinedAt: !4420)
!4437 = !DILocation(line: 1046, column: 3, scope: !4410)
!4438 = distinct !DISubprogram(name: "quote_n_mem", scope: !103, file: !103, line: 1061, type: !4439, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4441)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!44, !47, !44, !80}
!4441 = !{!4442, !4443, !4444}
!4442 = !DILocalVariable(name: "n", arg: 1, scope: !4438, file: !103, line: 1061, type: !47)
!4443 = !DILocalVariable(name: "arg", arg: 2, scope: !4438, file: !103, line: 1061, type: !44)
!4444 = !DILocalVariable(name: "argsize", arg: 3, scope: !4438, file: !103, line: 1061, type: !80)
!4445 = !DILocation(line: 0, scope: !4438)
!4446 = !DILocation(line: 1063, column: 10, scope: !4438)
!4447 = !DILocation(line: 1063, column: 3, scope: !4438)
!4448 = distinct !DISubprogram(name: "quote_mem", scope: !103, file: !103, line: 1067, type: !4449, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4451)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!44, !44, !80}
!4451 = !{!4452, !4453}
!4452 = !DILocalVariable(name: "arg", arg: 1, scope: !4448, file: !103, line: 1067, type: !44)
!4453 = !DILocalVariable(name: "argsize", arg: 2, scope: !4448, file: !103, line: 1067, type: !80)
!4454 = !DILocation(line: 0, scope: !4448)
!4455 = !DILocation(line: 0, scope: !4438, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 1069, column: 10, scope: !4448)
!4457 = !DILocation(line: 1063, column: 10, scope: !4438, inlinedAt: !4456)
!4458 = !DILocation(line: 1069, column: 3, scope: !4448)
!4459 = distinct !DISubprogram(name: "quote_n", scope: !103, file: !103, line: 1073, type: !4460, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4462)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!44, !47, !44}
!4462 = !{!4463, !4464}
!4463 = !DILocalVariable(name: "n", arg: 1, scope: !4459, file: !103, line: 1073, type: !47)
!4464 = !DILocalVariable(name: "arg", arg: 2, scope: !4459, file: !103, line: 1073, type: !44)
!4465 = !DILocation(line: 0, scope: !4459)
!4466 = !DILocation(line: 0, scope: !4438, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 1075, column: 10, scope: !4459)
!4468 = !DILocation(line: 1063, column: 10, scope: !4438, inlinedAt: !4467)
!4469 = !DILocation(line: 1075, column: 3, scope: !4459)
!4470 = distinct !DISubprogram(name: "quote", scope: !103, file: !103, line: 1079, type: !4471, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !4473)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!44, !44}
!4473 = !{!4474}
!4474 = !DILocalVariable(name: "arg", arg: 1, scope: !4470, file: !103, line: 1079, type: !44)
!4475 = !DILocation(line: 0, scope: !4470)
!4476 = !DILocation(line: 0, scope: !4459, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 1081, column: 10, scope: !4470)
!4478 = !DILocation(line: 0, scope: !4438, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 1075, column: 10, scope: !4459, inlinedAt: !4477)
!4480 = !DILocation(line: 1063, column: 10, scope: !4438, inlinedAt: !4479)
!4481 = !DILocation(line: 1081, column: 3, scope: !4470)
!4482 = distinct !DISubprogram(name: "same_name", scope: !222, file: !222, line: 61, type: !4483, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !4485)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!35, !44, !44}
!4485 = !{!4486, !4487}
!4486 = !DILocalVariable(name: "source", arg: 1, scope: !4482, file: !222, line: 61, type: !44)
!4487 = !DILocalVariable(name: "dest", arg: 2, scope: !4482, file: !222, line: 61, type: !44)
!4488 = !DILocation(line: 0, scope: !4482)
!4489 = !DILocation(line: 63, column: 10, scope: !4482)
!4490 = !DILocation(line: 63, column: 3, scope: !4482)
!4491 = distinct !DISubprogram(name: "same_nameat", scope: !222, file: !222, line: 70, type: !4492, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !4494)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!35, !47, !44, !47, !44}
!4494 = !{!4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4530, !4531, !4532, !4533}
!4495 = !DILocalVariable(name: "source_dfd", arg: 1, scope: !4491, file: !222, line: 70, type: !47)
!4496 = !DILocalVariable(name: "source", arg: 2, scope: !4491, file: !222, line: 70, type: !44)
!4497 = !DILocalVariable(name: "dest_dfd", arg: 3, scope: !4491, file: !222, line: 71, type: !47)
!4498 = !DILocalVariable(name: "dest", arg: 4, scope: !4491, file: !222, line: 71, type: !44)
!4499 = !DILocalVariable(name: "source_basename", scope: !4491, file: !222, line: 74, type: !44)
!4500 = !DILocalVariable(name: "dest_basename", scope: !4491, file: !222, line: 75, type: !44)
!4501 = !DILocalVariable(name: "source_baselen", scope: !4491, file: !222, line: 76, type: !80)
!4502 = !DILocalVariable(name: "dest_baselen", scope: !4491, file: !222, line: 77, type: !80)
!4503 = !DILocalVariable(name: "identical_basenames", scope: !4491, file: !222, line: 78, type: !35)
!4504 = !DILocalVariable(name: "compare_dirs", scope: !4491, file: !222, line: 81, type: !35)
!4505 = !DILocalVariable(name: "same", scope: !4491, file: !222, line: 82, type: !35)
!4506 = !DILocalVariable(name: "source_dir_stats", scope: !4507, file: !222, line: 94, type: !4509)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !222, line: 93, column: 5)
!4508 = distinct !DILexicalBlock(scope: !4491, file: !222, line: 92, column: 7)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1050, line: 26, size: 1152, elements: !4510)
!4510 = !{!4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4527, !4528, !4529}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4509, file: !1050, line: 28, baseType: !1053, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4509, file: !1050, line: 33, baseType: !1055, size: 64, offset: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4509, file: !1050, line: 41, baseType: !1057, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4509, file: !1050, line: 42, baseType: !1059, size: 32, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4509, file: !1050, line: 44, baseType: !1061, size: 32, offset: 224)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4509, file: !1050, line: 45, baseType: !1063, size: 32, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !4509, file: !1050, line: 47, baseType: !47, size: 32, offset: 288)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4509, file: !1050, line: 49, baseType: !1053, size: 64, offset: 320)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4509, file: !1050, line: 54, baseType: !777, size: 64, offset: 384)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4509, file: !1050, line: 58, baseType: !1068, size: 64, offset: 448)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4509, file: !1050, line: 60, baseType: !1070, size: 64, offset: 512)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4509, file: !1050, line: 71, baseType: !4523, size: 128, offset: 576)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1073, line: 10, size: 128, elements: !4524)
!4524 = !{!4525, !4526}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4523, file: !1073, line: 12, baseType: !1076, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4523, file: !1073, line: 16, baseType: !1078, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4509, file: !1050, line: 72, baseType: !4523, size: 128, offset: 704)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4509, file: !1050, line: 73, baseType: !4523, size: 128, offset: 832)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4509, file: !1050, line: 86, baseType: !1082, size: 192, offset: 960)
!4530 = !DILocalVariable(name: "dest_dir_stats", scope: !4507, file: !222, line: 95, type: !4509)
!4531 = !DILocalVariable(name: "source_dirname", scope: !4507, file: !222, line: 98, type: !28)
!4532 = !DILocalVariable(name: "flags", scope: !4507, file: !222, line: 99, type: !47)
!4533 = !DILocalVariable(name: "dest_dirname", scope: !4507, file: !222, line: 107, type: !28)
!4534 = !DILocation(line: 0, scope: !4491)
!4535 = !DILocation(line: 74, column: 33, scope: !4491)
!4536 = !DILocation(line: 75, column: 31, scope: !4491)
!4537 = !DILocation(line: 76, column: 27, scope: !4491)
!4538 = !DILocation(line: 77, column: 25, scope: !4491)
!4539 = !DILocation(line: 79, column: 21, scope: !4491)
!4540 = !DILocation(line: 80, column: 6, scope: !4491)
!4541 = !DILocation(line: 80, column: 9, scope: !4491)
!4542 = !DILocation(line: 80, column: 63, scope: !4491)
!4543 = !DILocation(line: 92, column: 7, scope: !4491)
!4544 = !DILocation(line: 94, column: 7, scope: !4507)
!4545 = !DILocation(line: 94, column: 19, scope: !4507)
!4546 = !DILocation(line: 95, column: 7, scope: !4507)
!4547 = !DILocation(line: 95, column: 19, scope: !4507)
!4548 = !DILocation(line: 98, column: 30, scope: !4507)
!4549 = !DILocation(line: 0, scope: !4507)
!4550 = !DILocation(line: 100, column: 11, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4507, file: !222, line: 100, column: 11)
!4552 = !DILocation(line: 100, column: 74, scope: !4551)
!4553 = !DILocation(line: 100, column: 11, scope: !4507)
!4554 = !DILocation(line: 103, column: 21, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4551, file: !222, line: 101, column: 9)
!4556 = !DILocation(line: 103, column: 11, scope: !4555)
!4557 = !DILocation(line: 104, column: 9, scope: !4555)
!4558 = !DILocation(line: 105, column: 7, scope: !4507)
!4559 = !DILocation(line: 107, column: 28, scope: !4507)
!4560 = !DILocation(line: 137, column: 11, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4507, file: !222, line: 137, column: 11)
!4562 = !DILocation(line: 137, column: 68, scope: !4561)
!4563 = !DILocation(line: 137, column: 11, scope: !4507)
!4564 = !DILocation(line: 140, column: 21, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4561, file: !222, line: 138, column: 9)
!4566 = !DILocation(line: 140, column: 11, scope: !4565)
!4567 = !DILocation(line: 141, column: 9, scope: !4565)
!4568 = !DILocation(line: 142, column: 14, scope: !4507)
!4569 = !{!1233, !897, i64 8}
!4570 = !DILocation(line: 145, column: 7, scope: !4507)
!4571 = !DILocation(line: 146, column: 5, scope: !4508)
!4572 = !DILocation(line: 146, column: 5, scope: !4507)
!4573 = !DILocation(line: 148, column: 3, scope: !4491)
!4574 = !DISubprogram(name: "fstatat", scope: !1378, file: !1378, line: 234, type: !4575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!47, !47, !44, !4577, !47}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4578 = distinct !DISubprogram(name: "version_etc_arn", scope: !224, file: !224, line: 61, type: !4579, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !4616)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{null, !4581, !44, !44, !44, !4615, !80}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1670, line: 7, baseType: !4583)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 49, size: 1728, elements: !4584)
!4584 = !{!4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4583, file: !756, line: 51, baseType: !47, size: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4583, file: !756, line: 54, baseType: !28, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4583, file: !756, line: 55, baseType: !28, size: 64, offset: 128)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4583, file: !756, line: 56, baseType: !28, size: 64, offset: 192)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4583, file: !756, line: 57, baseType: !28, size: 64, offset: 256)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4583, file: !756, line: 58, baseType: !28, size: 64, offset: 320)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4583, file: !756, line: 59, baseType: !28, size: 64, offset: 384)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4583, file: !756, line: 60, baseType: !28, size: 64, offset: 448)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4583, file: !756, line: 61, baseType: !28, size: 64, offset: 512)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4583, file: !756, line: 64, baseType: !28, size: 64, offset: 576)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4583, file: !756, line: 65, baseType: !28, size: 64, offset: 640)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4583, file: !756, line: 66, baseType: !28, size: 64, offset: 704)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4583, file: !756, line: 68, baseType: !771, size: 64, offset: 768)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4583, file: !756, line: 70, baseType: !4599, size: 64, offset: 832)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4583, file: !756, line: 72, baseType: !47, size: 32, offset: 896)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4583, file: !756, line: 73, baseType: !47, size: 32, offset: 928)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4583, file: !756, line: 74, baseType: !777, size: 64, offset: 960)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4583, file: !756, line: 77, baseType: !126, size: 16, offset: 1024)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4583, file: !756, line: 78, baseType: !780, size: 8, offset: 1040)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4583, file: !756, line: 79, baseType: !782, size: 8, offset: 1048)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4583, file: !756, line: 81, baseType: !786, size: 64, offset: 1088)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4583, file: !756, line: 89, baseType: !789, size: 64, offset: 1152)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4583, file: !756, line: 91, baseType: !791, size: 64, offset: 1216)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4583, file: !756, line: 92, baseType: !794, size: 64, offset: 1280)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4583, file: !756, line: 93, baseType: !4599, size: 64, offset: 1344)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4583, file: !756, line: 94, baseType: !30, size: 64, offset: 1408)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4583, file: !756, line: 95, baseType: !80, size: 64, offset: 1472)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4583, file: !756, line: 96, baseType: !47, size: 32, offset: 1536)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4583, file: !756, line: 98, baseType: !801, size: 160, offset: 1568)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!4616 = !{!4617, !4618, !4619, !4620, !4621, !4622}
!4617 = !DILocalVariable(name: "stream", arg: 1, scope: !4578, file: !224, line: 61, type: !4581)
!4618 = !DILocalVariable(name: "command_name", arg: 2, scope: !4578, file: !224, line: 62, type: !44)
!4619 = !DILocalVariable(name: "package", arg: 3, scope: !4578, file: !224, line: 62, type: !44)
!4620 = !DILocalVariable(name: "version", arg: 4, scope: !4578, file: !224, line: 63, type: !44)
!4621 = !DILocalVariable(name: "authors", arg: 5, scope: !4578, file: !224, line: 64, type: !4615)
!4622 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4578, file: !224, line: 64, type: !80)
!4623 = !DILocation(line: 0, scope: !4578)
!4624 = !DILocation(line: 66, column: 7, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4578, file: !224, line: 66, column: 7)
!4626 = !DILocation(line: 66, column: 7, scope: !4578)
!4627 = !DILocation(line: 67, column: 5, scope: !4625)
!4628 = !DILocation(line: 69, column: 5, scope: !4625)
!4629 = !DILocation(line: 83, column: 3, scope: !4578)
!4630 = !DILocation(line: 85, column: 3, scope: !4578)
!4631 = !DILocation(line: 88, column: 3, scope: !4578)
!4632 = !DILocation(line: 95, column: 3, scope: !4578)
!4633 = !DILocation(line: 97, column: 3, scope: !4578)
!4634 = !DILocation(line: 105, column: 7, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4578, file: !224, line: 98, column: 5)
!4636 = !DILocation(line: 106, column: 7, scope: !4635)
!4637 = !DILocation(line: 109, column: 7, scope: !4635)
!4638 = !DILocation(line: 110, column: 7, scope: !4635)
!4639 = !DILocation(line: 113, column: 7, scope: !4635)
!4640 = !DILocation(line: 115, column: 7, scope: !4635)
!4641 = !DILocation(line: 120, column: 7, scope: !4635)
!4642 = !DILocation(line: 122, column: 7, scope: !4635)
!4643 = !DILocation(line: 127, column: 7, scope: !4635)
!4644 = !DILocation(line: 129, column: 7, scope: !4635)
!4645 = !DILocation(line: 134, column: 7, scope: !4635)
!4646 = !DILocation(line: 137, column: 7, scope: !4635)
!4647 = !DILocation(line: 142, column: 7, scope: !4635)
!4648 = !DILocation(line: 145, column: 7, scope: !4635)
!4649 = !DILocation(line: 150, column: 7, scope: !4635)
!4650 = !DILocation(line: 154, column: 7, scope: !4635)
!4651 = !DILocation(line: 159, column: 7, scope: !4635)
!4652 = !DILocation(line: 163, column: 7, scope: !4635)
!4653 = !DILocation(line: 170, column: 7, scope: !4635)
!4654 = !DILocation(line: 174, column: 7, scope: !4635)
!4655 = !DILocation(line: 176, column: 1, scope: !4578)
!4656 = distinct !DISubprogram(name: "version_etc_ar", scope: !224, file: !224, line: 183, type: !4657, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !4659)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{null, !4581, !44, !44, !44, !4615}
!4659 = !{!4660, !4661, !4662, !4663, !4664, !4665}
!4660 = !DILocalVariable(name: "stream", arg: 1, scope: !4656, file: !224, line: 183, type: !4581)
!4661 = !DILocalVariable(name: "command_name", arg: 2, scope: !4656, file: !224, line: 184, type: !44)
!4662 = !DILocalVariable(name: "package", arg: 3, scope: !4656, file: !224, line: 184, type: !44)
!4663 = !DILocalVariable(name: "version", arg: 4, scope: !4656, file: !224, line: 185, type: !44)
!4664 = !DILocalVariable(name: "authors", arg: 5, scope: !4656, file: !224, line: 185, type: !4615)
!4665 = !DILocalVariable(name: "n_authors", scope: !4656, file: !224, line: 187, type: !80)
!4666 = !DILocation(line: 0, scope: !4656)
!4667 = !DILocation(line: 189, column: 8, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4656, file: !224, line: 189, column: 3)
!4669 = !DILocation(line: 0, scope: !4668)
!4670 = !DILocation(line: 189, column: 23, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4668, file: !224, line: 189, column: 3)
!4672 = !DILocation(line: 189, column: 3, scope: !4668)
!4673 = !DILocation(line: 189, column: 52, scope: !4671)
!4674 = distinct !{!4674, !4672, !4675, !726}
!4675 = !DILocation(line: 190, column: 5, scope: !4668)
!4676 = !DILocation(line: 191, column: 3, scope: !4656)
!4677 = !DILocation(line: 192, column: 1, scope: !4656)
!4678 = distinct !DISubprogram(name: "version_etc_va", scope: !224, file: !224, line: 199, type: !4679, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !4688)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{null, !4581, !44, !44, !44, !4681}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4683)
!4683 = !{!4684, !4685, !4686, !4687}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4682, file: !224, line: 192, baseType: !7, size: 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4682, file: !224, line: 192, baseType: !7, size: 32, offset: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4682, file: !224, line: 192, baseType: !30, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4682, file: !224, line: 192, baseType: !30, size: 64, offset: 128)
!4688 = !{!4689, !4690, !4691, !4692, !4693, !4694, !4695}
!4689 = !DILocalVariable(name: "stream", arg: 1, scope: !4678, file: !224, line: 199, type: !4581)
!4690 = !DILocalVariable(name: "command_name", arg: 2, scope: !4678, file: !224, line: 200, type: !44)
!4691 = !DILocalVariable(name: "package", arg: 3, scope: !4678, file: !224, line: 200, type: !44)
!4692 = !DILocalVariable(name: "version", arg: 4, scope: !4678, file: !224, line: 201, type: !44)
!4693 = !DILocalVariable(name: "authors", arg: 5, scope: !4678, file: !224, line: 201, type: !4681)
!4694 = !DILocalVariable(name: "n_authors", scope: !4678, file: !224, line: 203, type: !80)
!4695 = !DILocalVariable(name: "authtab", scope: !4678, file: !224, line: 204, type: !4696)
!4696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !132)
!4697 = !DILocation(line: 0, scope: !4678)
!4698 = !DILocation(line: 204, column: 3, scope: !4678)
!4699 = !DILocation(line: 204, column: 15, scope: !4678)
!4700 = !DILocation(line: 208, column: 35, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !224, line: 206, column: 3)
!4702 = distinct !DILexicalBlock(scope: !4678, file: !224, line: 206, column: 3)
!4703 = !DILocation(line: 208, column: 14, scope: !4701)
!4704 = !DILocation(line: 208, column: 33, scope: !4701)
!4705 = !DILocation(line: 208, column: 67, scope: !4701)
!4706 = !DILocation(line: 206, column: 3, scope: !4702)
!4707 = !DILocation(line: 0, scope: !4702)
!4708 = !DILocation(line: 211, column: 3, scope: !4678)
!4709 = !DILocation(line: 213, column: 1, scope: !4678)
!4710 = distinct !DISubprogram(name: "version_etc", scope: !224, file: !224, line: 230, type: !4711, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !4713)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4581, !44, !44, !44, null}
!4713 = !{!4714, !4715, !4716, !4717, !4718}
!4714 = !DILocalVariable(name: "stream", arg: 1, scope: !4710, file: !224, line: 230, type: !4581)
!4715 = !DILocalVariable(name: "command_name", arg: 2, scope: !4710, file: !224, line: 231, type: !44)
!4716 = !DILocalVariable(name: "package", arg: 3, scope: !4710, file: !224, line: 231, type: !44)
!4717 = !DILocalVariable(name: "version", arg: 4, scope: !4710, file: !224, line: 232, type: !44)
!4718 = !DILocalVariable(name: "authors", scope: !4710, file: !224, line: 234, type: !4719)
!4719 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !751, line: 52, baseType: !4720)
!4720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4721, line: 32, baseType: !4722)
!4721 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!4722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !224, baseType: !4723)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4682, size: 192, elements: !783)
!4724 = !DILocation(line: 0, scope: !4710)
!4725 = !DILocation(line: 234, column: 3, scope: !4710)
!4726 = !DILocation(line: 234, column: 11, scope: !4710)
!4727 = !DILocation(line: 236, column: 3, scope: !4710)
!4728 = !DILocation(line: 237, column: 3, scope: !4710)
!4729 = !DILocation(line: 238, column: 3, scope: !4710)
!4730 = !DILocation(line: 239, column: 1, scope: !4710)
!4731 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !224, file: !224, line: 242, type: !927, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !59)
!4732 = !DILocation(line: 244, column: 3, scope: !4731)
!4733 = !DILocation(line: 249, column: 3, scope: !4731)
!4734 = !DILocation(line: 255, column: 3, scope: !4731)
!4735 = !DILocation(line: 260, column: 3, scope: !4731)
!4736 = !DILocation(line: 262, column: 1, scope: !4731)
!4737 = distinct !DISubprogram(name: "xnmalloc", scope: !233, file: !233, line: 99, type: !4738, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4740)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!30, !80, !80}
!4740 = !{!4741, !4742}
!4741 = !DILocalVariable(name: "n", arg: 1, scope: !4737, file: !233, line: 99, type: !80)
!4742 = !DILocalVariable(name: "s", arg: 2, scope: !4737, file: !233, line: 99, type: !80)
!4743 = !DILocation(line: 0, scope: !4737)
!4744 = !DILocation(line: 101, column: 7, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4737, file: !233, line: 101, column: 7)
!4746 = !DILocation(line: 101, column: 7, scope: !4737)
!4747 = !DILocation(line: 102, column: 5, scope: !4745)
!4748 = !DILocation(line: 103, column: 21, scope: !4737)
!4749 = !DILocalVariable(name: "n", arg: 1, scope: !4750, file: !230, line: 39, type: !80)
!4750 = distinct !DISubprogram(name: "xmalloc", scope: !230, file: !230, line: 39, type: !4751, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4753)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!30, !80}
!4753 = !{!4749, !4754}
!4754 = !DILocalVariable(name: "p", scope: !4750, file: !230, line: 41, type: !30)
!4755 = !DILocation(line: 0, scope: !4750, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 103, column: 10, scope: !4737)
!4757 = !DILocation(line: 41, column: 13, scope: !4750, inlinedAt: !4756)
!4758 = !DILocation(line: 42, column: 8, scope: !4759, inlinedAt: !4756)
!4759 = distinct !DILexicalBlock(scope: !4750, file: !230, line: 42, column: 7)
!4760 = !DILocation(line: 42, column: 10, scope: !4759, inlinedAt: !4756)
!4761 = !DILocation(line: 43, column: 5, scope: !4759, inlinedAt: !4756)
!4762 = !DILocation(line: 103, column: 3, scope: !4737)
!4763 = !DILocation(line: 0, scope: !4750)
!4764 = !DILocation(line: 41, column: 13, scope: !4750)
!4765 = !DILocation(line: 42, column: 8, scope: !4759)
!4766 = !DILocation(line: 42, column: 10, scope: !4759)
!4767 = !DILocation(line: 43, column: 5, scope: !4759)
!4768 = !DILocation(line: 44, column: 3, scope: !4750)
!4769 = distinct !DISubprogram(name: "xnrealloc", scope: !233, file: !233, line: 112, type: !4770, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4772)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!30, !30, !80, !80}
!4772 = !{!4773, !4774, !4775}
!4773 = !DILocalVariable(name: "p", arg: 1, scope: !4769, file: !233, line: 112, type: !30)
!4774 = !DILocalVariable(name: "n", arg: 2, scope: !4769, file: !233, line: 112, type: !80)
!4775 = !DILocalVariable(name: "s", arg: 3, scope: !4769, file: !233, line: 112, type: !80)
!4776 = !DILocation(line: 0, scope: !4769)
!4777 = !DILocation(line: 114, column: 7, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4769, file: !233, line: 114, column: 7)
!4779 = !DILocation(line: 114, column: 7, scope: !4769)
!4780 = !DILocation(line: 115, column: 5, scope: !4778)
!4781 = !DILocation(line: 116, column: 25, scope: !4769)
!4782 = !DILocalVariable(name: "p", arg: 1, scope: !4783, file: !230, line: 51, type: !30)
!4783 = distinct !DISubprogram(name: "xrealloc", scope: !230, file: !230, line: 51, type: !4784, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4786)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!30, !30, !80}
!4786 = !{!4782, !4787}
!4787 = !DILocalVariable(name: "n", arg: 2, scope: !4783, file: !230, line: 51, type: !80)
!4788 = !DILocation(line: 0, scope: !4783, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 116, column: 10, scope: !4769)
!4790 = !DILocation(line: 53, column: 8, scope: !4791, inlinedAt: !4789)
!4791 = distinct !DILexicalBlock(scope: !4783, file: !230, line: 53, column: 7)
!4792 = !DILocation(line: 53, column: 10, scope: !4791, inlinedAt: !4789)
!4793 = !DILocation(line: 57, column: 7, scope: !4794, inlinedAt: !4789)
!4794 = distinct !DILexicalBlock(scope: !4791, file: !230, line: 54, column: 5)
!4795 = !DILocation(line: 58, column: 7, scope: !4794, inlinedAt: !4789)
!4796 = !DILocation(line: 61, column: 7, scope: !4783, inlinedAt: !4789)
!4797 = !DILocation(line: 62, column: 8, scope: !4798, inlinedAt: !4789)
!4798 = distinct !DILexicalBlock(scope: !4783, file: !230, line: 62, column: 7)
!4799 = !DILocation(line: 62, column: 10, scope: !4798, inlinedAt: !4789)
!4800 = !DILocation(line: 63, column: 5, scope: !4798, inlinedAt: !4789)
!4801 = !DILocation(line: 116, column: 3, scope: !4769)
!4802 = !DILocation(line: 0, scope: !4783)
!4803 = !DILocation(line: 53, column: 8, scope: !4791)
!4804 = !DILocation(line: 53, column: 10, scope: !4791)
!4805 = !DILocation(line: 57, column: 7, scope: !4794)
!4806 = !DILocation(line: 58, column: 7, scope: !4794)
!4807 = !DILocation(line: 61, column: 7, scope: !4783)
!4808 = !DILocation(line: 62, column: 8, scope: !4798)
!4809 = !DILocation(line: 62, column: 10, scope: !4798)
!4810 = !DILocation(line: 63, column: 5, scope: !4798)
!4811 = !DILocation(line: 65, column: 1, scope: !4783)
!4812 = !DILocation(line: 0, scope: !234)
!4813 = !DILocation(line: 176, column: 14, scope: !234)
!4814 = !DILocation(line: 178, column: 9, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !234, file: !233, line: 178, column: 7)
!4816 = !DILocation(line: 178, column: 7, scope: !234)
!4817 = !DILocation(line: 180, column: 13, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !233, line: 180, column: 11)
!4819 = distinct !DILexicalBlock(scope: !4815, file: !233, line: 179, column: 5)
!4820 = !DILocation(line: 180, column: 11, scope: !4819)
!4821 = !DILocation(line: 188, column: 30, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4818, file: !233, line: 181, column: 9)
!4823 = !DILocation(line: 189, column: 16, scope: !4822)
!4824 = !DILocation(line: 189, column: 13, scope: !4822)
!4825 = !DILocation(line: 190, column: 9, scope: !4822)
!4826 = !DILocation(line: 191, column: 11, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4819, file: !233, line: 191, column: 11)
!4828 = !DILocation(line: 191, column: 11, scope: !4819)
!4829 = !DILocation(line: 206, column: 7, scope: !234)
!4830 = !DILocation(line: 207, column: 25, scope: !234)
!4831 = !DILocation(line: 0, scope: !4783, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 207, column: 10, scope: !234)
!4833 = !DILocation(line: 53, column: 10, scope: !4791, inlinedAt: !4832)
!4834 = !DILocation(line: 192, column: 9, scope: !4827)
!4835 = !DILocation(line: 200, column: 69, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !233, line: 200, column: 11)
!4837 = distinct !DILexicalBlock(scope: !4815, file: !233, line: 195, column: 5)
!4838 = !DILocation(line: 201, column: 11, scope: !4836)
!4839 = !DILocation(line: 200, column: 11, scope: !4837)
!4840 = !DILocation(line: 202, column: 9, scope: !4836)
!4841 = !DILocation(line: 203, column: 14, scope: !4837)
!4842 = !DILocation(line: 203, column: 18, scope: !4837)
!4843 = !DILocation(line: 203, column: 9, scope: !4837)
!4844 = !DILocation(line: 53, column: 8, scope: !4791, inlinedAt: !4832)
!4845 = !DILocation(line: 57, column: 7, scope: !4794, inlinedAt: !4832)
!4846 = !DILocation(line: 58, column: 7, scope: !4794, inlinedAt: !4832)
!4847 = !DILocation(line: 61, column: 7, scope: !4783, inlinedAt: !4832)
!4848 = !DILocation(line: 62, column: 8, scope: !4798, inlinedAt: !4832)
!4849 = !DILocation(line: 62, column: 10, scope: !4798, inlinedAt: !4832)
!4850 = !DILocation(line: 63, column: 5, scope: !4798, inlinedAt: !4832)
!4851 = !DILocation(line: 207, column: 3, scope: !234)
!4852 = distinct !DISubprogram(name: "xcharalloc", scope: !233, file: !233, line: 216, type: !3897, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4853)
!4853 = !{!4854}
!4854 = !DILocalVariable(name: "n", arg: 1, scope: !4852, file: !233, line: 216, type: !80)
!4855 = !DILocation(line: 0, scope: !4852)
!4856 = !DILocation(line: 0, scope: !4750, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 218, column: 10, scope: !4852)
!4858 = !DILocation(line: 41, column: 13, scope: !4750, inlinedAt: !4857)
!4859 = !DILocation(line: 42, column: 8, scope: !4759, inlinedAt: !4857)
!4860 = !DILocation(line: 42, column: 10, scope: !4759, inlinedAt: !4857)
!4861 = !DILocation(line: 43, column: 5, scope: !4759, inlinedAt: !4857)
!4862 = !DILocation(line: 218, column: 3, scope: !4852)
!4863 = distinct !DISubprogram(name: "x2realloc", scope: !230, file: !230, line: 74, type: !4864, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4866)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!30, !30, !237}
!4866 = !{!4867, !4868}
!4867 = !DILocalVariable(name: "p", arg: 1, scope: !4863, file: !230, line: 74, type: !30)
!4868 = !DILocalVariable(name: "pn", arg: 2, scope: !4863, file: !230, line: 74, type: !237)
!4869 = !DILocation(line: 0, scope: !4863)
!4870 = !DILocation(line: 0, scope: !234, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 76, column: 10, scope: !4863)
!4872 = !DILocation(line: 176, column: 14, scope: !234, inlinedAt: !4871)
!4873 = !DILocation(line: 178, column: 9, scope: !4815, inlinedAt: !4871)
!4874 = !DILocation(line: 178, column: 7, scope: !234, inlinedAt: !4871)
!4875 = !DILocation(line: 180, column: 13, scope: !4818, inlinedAt: !4871)
!4876 = !DILocation(line: 180, column: 11, scope: !4819, inlinedAt: !4871)
!4877 = !DILocation(line: 191, column: 11, scope: !4827, inlinedAt: !4871)
!4878 = !DILocation(line: 191, column: 11, scope: !4819, inlinedAt: !4871)
!4879 = !DILocation(line: 192, column: 9, scope: !4827, inlinedAt: !4871)
!4880 = !DILocation(line: 201, column: 11, scope: !4836, inlinedAt: !4871)
!4881 = !DILocation(line: 200, column: 11, scope: !4837, inlinedAt: !4871)
!4882 = !DILocation(line: 202, column: 9, scope: !4836, inlinedAt: !4871)
!4883 = !DILocation(line: 203, column: 14, scope: !4837, inlinedAt: !4871)
!4884 = !DILocation(line: 203, column: 18, scope: !4837, inlinedAt: !4871)
!4885 = !DILocation(line: 203, column: 9, scope: !4837, inlinedAt: !4871)
!4886 = !DILocation(line: 0, scope: !4783, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 207, column: 10, scope: !234, inlinedAt: !4871)
!4888 = !DILocation(line: 53, column: 10, scope: !4791, inlinedAt: !4887)
!4889 = !DILocation(line: 206, column: 7, scope: !234, inlinedAt: !4871)
!4890 = !DILocation(line: 61, column: 7, scope: !4783, inlinedAt: !4887)
!4891 = !DILocation(line: 62, column: 8, scope: !4798, inlinedAt: !4887)
!4892 = !DILocation(line: 62, column: 10, scope: !4798, inlinedAt: !4887)
!4893 = !DILocation(line: 63, column: 5, scope: !4798, inlinedAt: !4887)
!4894 = !DILocation(line: 76, column: 3, scope: !4863)
!4895 = distinct !DISubprogram(name: "xzalloc", scope: !230, file: !230, line: 84, type: !4751, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4896)
!4896 = !{!4897}
!4897 = !DILocalVariable(name: "n", arg: 1, scope: !4895, file: !230, line: 84, type: !80)
!4898 = !DILocation(line: 0, scope: !4895)
!4899 = !DILocalVariable(name: "n", arg: 1, scope: !4900, file: !230, line: 93, type: !80)
!4900 = distinct !DISubprogram(name: "xcalloc", scope: !230, file: !230, line: 93, type: !4738, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4901)
!4901 = !{!4899, !4902, !4903}
!4902 = !DILocalVariable(name: "s", arg: 2, scope: !4900, file: !230, line: 93, type: !80)
!4903 = !DILocalVariable(name: "p", scope: !4900, file: !230, line: 95, type: !30)
!4904 = !DILocation(line: 0, scope: !4900, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 86, column: 10, scope: !4895)
!4906 = !DILocation(line: 100, column: 7, scope: !4907, inlinedAt: !4905)
!4907 = distinct !DILexicalBlock(scope: !4900, file: !230, line: 100, column: 7)
!4908 = !DILocation(line: 101, column: 7, scope: !4907, inlinedAt: !4905)
!4909 = !DILocation(line: 101, column: 18, scope: !4907, inlinedAt: !4905)
!4910 = !DILocation(line: 101, column: 16, scope: !4907, inlinedAt: !4905)
!4911 = !DILocation(line: 100, column: 7, scope: !4900, inlinedAt: !4905)
!4912 = !DILocation(line: 102, column: 5, scope: !4907, inlinedAt: !4905)
!4913 = !DILocation(line: 86, column: 3, scope: !4895)
!4914 = !DILocation(line: 0, scope: !4900)
!4915 = !DILocation(line: 100, column: 7, scope: !4907)
!4916 = !DILocation(line: 101, column: 7, scope: !4907)
!4917 = !DILocation(line: 101, column: 18, scope: !4907)
!4918 = !DILocation(line: 101, column: 16, scope: !4907)
!4919 = !DILocation(line: 100, column: 7, scope: !4900)
!4920 = !DILocation(line: 102, column: 5, scope: !4907)
!4921 = !DILocation(line: 103, column: 3, scope: !4900)
!4922 = distinct !DISubprogram(name: "xmemdup", scope: !230, file: !230, line: 111, type: !4923, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4925)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!30, !982, !80}
!4925 = !{!4926, !4927}
!4926 = !DILocalVariable(name: "p", arg: 1, scope: !4922, file: !230, line: 111, type: !982)
!4927 = !DILocalVariable(name: "s", arg: 2, scope: !4922, file: !230, line: 111, type: !80)
!4928 = !DILocation(line: 0, scope: !4922)
!4929 = !DILocation(line: 0, scope: !4750, inlinedAt: !4930)
!4930 = distinct !DILocation(line: 113, column: 18, scope: !4922)
!4931 = !DILocation(line: 41, column: 13, scope: !4750, inlinedAt: !4930)
!4932 = !DILocation(line: 42, column: 8, scope: !4759, inlinedAt: !4930)
!4933 = !DILocation(line: 42, column: 10, scope: !4759, inlinedAt: !4930)
!4934 = !DILocation(line: 43, column: 5, scope: !4759, inlinedAt: !4930)
!4935 = !DILocalVariable(name: "__dest", arg: 1, scope: !4936, file: !977, line: 26, type: !980)
!4936 = distinct !DISubprogram(name: "memcpy", scope: !977, file: !977, line: 26, type: !978, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4937)
!4937 = !{!4935, !4938, !4939}
!4938 = !DILocalVariable(name: "__src", arg: 2, scope: !4936, file: !977, line: 26, type: !981)
!4939 = !DILocalVariable(name: "__len", arg: 3, scope: !4936, file: !977, line: 26, type: !80)
!4940 = !DILocation(line: 0, scope: !4936, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 113, column: 10, scope: !4922)
!4942 = !DILocation(line: 29, column: 10, scope: !4936, inlinedAt: !4941)
!4943 = !DILocation(line: 113, column: 3, scope: !4922)
!4944 = distinct !DISubprogram(name: "xstrdup", scope: !230, file: !230, line: 119, type: !920, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !4945)
!4945 = !{!4946}
!4946 = !DILocalVariable(name: "string", arg: 1, scope: !4944, file: !230, line: 119, type: !44)
!4947 = !DILocation(line: 0, scope: !4944)
!4948 = !DILocation(line: 121, column: 27, scope: !4944)
!4949 = !DILocation(line: 121, column: 43, scope: !4944)
!4950 = !DILocation(line: 0, scope: !4922, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 121, column: 10, scope: !4944)
!4952 = !DILocation(line: 0, scope: !4750, inlinedAt: !4953)
!4953 = distinct !DILocation(line: 113, column: 18, scope: !4922, inlinedAt: !4951)
!4954 = !DILocation(line: 41, column: 13, scope: !4750, inlinedAt: !4953)
!4955 = !DILocation(line: 42, column: 8, scope: !4759, inlinedAt: !4953)
!4956 = !DILocation(line: 42, column: 10, scope: !4759, inlinedAt: !4953)
!4957 = !DILocation(line: 43, column: 5, scope: !4759, inlinedAt: !4953)
!4958 = !DILocation(line: 0, scope: !4936, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 113, column: 10, scope: !4922, inlinedAt: !4951)
!4960 = !DILocation(line: 29, column: 10, scope: !4936, inlinedAt: !4959)
!4961 = !DILocation(line: 121, column: 3, scope: !4944)
!4962 = distinct !DISubprogram(name: "xalloc_die", scope: !247, file: !247, line: 32, type: !927, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !59)
!4963 = !DILocation(line: 34, column: 10, scope: !4962)
!4964 = !DILocation(line: 34, column: 33, scope: !4962)
!4965 = !DILocation(line: 34, column: 3, scope: !4962)
!4966 = !DILocation(line: 40, column: 3, scope: !4962)
!4967 = distinct !DISubprogram(name: "xgetcwd", scope: !249, file: !249, line: 35, type: !4968, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !248, retainedNodes: !4969)
!4968 = !DISubroutineType(types: !263)
!4969 = !{!4970}
!4970 = !DILocalVariable(name: "cwd", scope: !4967, file: !249, line: 37, type: !28)
!4971 = !DILocation(line: 37, column: 15, scope: !4967)
!4972 = !DILocation(line: 0, scope: !4967)
!4973 = !DILocation(line: 38, column: 9, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4967, file: !249, line: 38, column: 7)
!4975 = !DILocation(line: 38, column: 13, scope: !4974)
!4976 = !DILocation(line: 38, column: 16, scope: !4974)
!4977 = !DILocation(line: 38, column: 22, scope: !4974)
!4978 = !DILocation(line: 38, column: 7, scope: !4967)
!4979 = !DILocation(line: 39, column: 5, scope: !4974)
!4980 = !DILocation(line: 40, column: 3, scope: !4967)
!4981 = distinct !DISubprogram(name: "rpl_calloc", scope: !251, file: !251, line: 42, type: !4738, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !4982)
!4982 = !{!4983, !4984, !4985, !4986}
!4983 = !DILocalVariable(name: "n", arg: 1, scope: !4981, file: !251, line: 42, type: !80)
!4984 = !DILocalVariable(name: "s", arg: 2, scope: !4981, file: !251, line: 42, type: !80)
!4985 = !DILocalVariable(name: "result", scope: !4981, file: !251, line: 44, type: !30)
!4986 = !DILocalVariable(name: "bytes", scope: !4987, file: !251, line: 56, type: !80)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !251, line: 53, column: 5)
!4988 = distinct !DILexicalBlock(scope: !4981, file: !251, line: 47, column: 7)
!4989 = !DILocation(line: 0, scope: !4981)
!4990 = !DILocation(line: 47, column: 9, scope: !4988)
!4991 = !DILocation(line: 47, column: 14, scope: !4988)
!4992 = !DILocation(line: 0, scope: !4987)
!4993 = !DILocation(line: 57, column: 21, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4987, file: !251, line: 57, column: 11)
!4995 = !DILocation(line: 57, column: 11, scope: !4987)
!4996 = !DILocation(line: 59, column: 11, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4994, file: !251, line: 58, column: 9)
!4998 = !DILocation(line: 59, column: 17, scope: !4997)
!4999 = !DILocation(line: 65, column: 12, scope: !4981)
!5000 = !DILocation(line: 72, column: 3, scope: !4981)
!5001 = !DILocation(line: 73, column: 1, scope: !4981)
!5002 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !253, file: !253, line: 86, type: !5003, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !5017)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!80, !5005, !44, !80, !5006}
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3179, line: 6, baseType: !5008)
!5008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3181, line: 21, baseType: !5009)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3181, line: 13, size: 64, elements: !5010)
!5010 = !{!5011, !5012}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5009, file: !3181, line: 15, baseType: !47, size: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5009, file: !3181, line: 20, baseType: !5013, size: 32, offset: 32)
!5013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5009, file: !3181, line: 16, size: 32, elements: !5014)
!5014 = !{!5015, !5016}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5013, file: !3181, line: 18, baseType: !7, size: 32)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5013, file: !3181, line: 19, baseType: !3190, size: 32)
!5017 = !{!5018, !5019, !5020, !5021, !5022, !5023, !5024}
!5018 = !DILocalVariable(name: "pwc", arg: 1, scope: !5002, file: !253, line: 86, type: !5005)
!5019 = !DILocalVariable(name: "s", arg: 2, scope: !5002, file: !253, line: 86, type: !44)
!5020 = !DILocalVariable(name: "n", arg: 3, scope: !5002, file: !253, line: 86, type: !80)
!5021 = !DILocalVariable(name: "ps", arg: 4, scope: !5002, file: !253, line: 86, type: !5006)
!5022 = !DILocalVariable(name: "ret", scope: !5002, file: !253, line: 88, type: !80)
!5023 = !DILocalVariable(name: "wc", scope: !5002, file: !253, line: 89, type: !3195)
!5024 = !DILocalVariable(name: "uc", scope: !5025, file: !253, line: 156, type: !31)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !253, line: 155, column: 5)
!5026 = distinct !DILexicalBlock(scope: !5002, file: !253, line: 154, column: 7)
!5027 = !DILocation(line: 0, scope: !5002)
!5028 = !DILocation(line: 89, column: 3, scope: !5002)
!5029 = !DILocation(line: 105, column: 9, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5002, file: !253, line: 105, column: 7)
!5031 = !DILocation(line: 105, column: 7, scope: !5002)
!5032 = !DILocation(line: 145, column: 9, scope: !5002)
!5033 = !DILocation(line: 154, column: 19, scope: !5026)
!5034 = !DILocation(line: 154, column: 26, scope: !5026)
!5035 = !DILocation(line: 154, column: 41, scope: !5026)
!5036 = !DILocation(line: 154, column: 7, scope: !5002)
!5037 = !DILocation(line: 156, column: 26, scope: !5025)
!5038 = !DILocation(line: 0, scope: !5025)
!5039 = !DILocation(line: 157, column: 14, scope: !5025)
!5040 = !DILocation(line: 157, column: 12, scope: !5025)
!5041 = !DILocation(line: 163, column: 1, scope: !5002)
!5042 = !DISubprogram(name: "mbrtowc", scope: !3857, file: !3857, line: 296, type: !5043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!79, !49, !44, !79, !5045}
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5046 = distinct !DISubprogram(name: "close_stream", scope: !256, file: !256, line: 56, type: !5047, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !5083)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!47, !5049}
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1670, line: 7, baseType: !5051)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 49, size: 1728, elements: !5052)
!5052 = !{!5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5051, file: !756, line: 51, baseType: !47, size: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5051, file: !756, line: 54, baseType: !28, size: 64, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5051, file: !756, line: 55, baseType: !28, size: 64, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5051, file: !756, line: 56, baseType: !28, size: 64, offset: 192)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5051, file: !756, line: 57, baseType: !28, size: 64, offset: 256)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5051, file: !756, line: 58, baseType: !28, size: 64, offset: 320)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5051, file: !756, line: 59, baseType: !28, size: 64, offset: 384)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5051, file: !756, line: 60, baseType: !28, size: 64, offset: 448)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5051, file: !756, line: 61, baseType: !28, size: 64, offset: 512)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5051, file: !756, line: 64, baseType: !28, size: 64, offset: 576)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5051, file: !756, line: 65, baseType: !28, size: 64, offset: 640)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5051, file: !756, line: 66, baseType: !28, size: 64, offset: 704)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5051, file: !756, line: 68, baseType: !771, size: 64, offset: 768)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5051, file: !756, line: 70, baseType: !5067, size: 64, offset: 832)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5051, file: !756, line: 72, baseType: !47, size: 32, offset: 896)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5051, file: !756, line: 73, baseType: !47, size: 32, offset: 928)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5051, file: !756, line: 74, baseType: !777, size: 64, offset: 960)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5051, file: !756, line: 77, baseType: !126, size: 16, offset: 1024)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5051, file: !756, line: 78, baseType: !780, size: 8, offset: 1040)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5051, file: !756, line: 79, baseType: !782, size: 8, offset: 1048)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5051, file: !756, line: 81, baseType: !786, size: 64, offset: 1088)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5051, file: !756, line: 89, baseType: !789, size: 64, offset: 1152)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5051, file: !756, line: 91, baseType: !791, size: 64, offset: 1216)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5051, file: !756, line: 92, baseType: !794, size: 64, offset: 1280)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5051, file: !756, line: 93, baseType: !5067, size: 64, offset: 1344)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5051, file: !756, line: 94, baseType: !30, size: 64, offset: 1408)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5051, file: !756, line: 95, baseType: !80, size: 64, offset: 1472)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5051, file: !756, line: 96, baseType: !47, size: 32, offset: 1536)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5051, file: !756, line: 98, baseType: !801, size: 160, offset: 1568)
!5083 = !{!5084, !5085, !5087, !5088}
!5084 = !DILocalVariable(name: "stream", arg: 1, scope: !5046, file: !256, line: 56, type: !5049)
!5085 = !DILocalVariable(name: "some_pending", scope: !5046, file: !256, line: 58, type: !5086)
!5086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!5087 = !DILocalVariable(name: "prev_fail", scope: !5046, file: !256, line: 59, type: !5086)
!5088 = !DILocalVariable(name: "fclose_fail", scope: !5046, file: !256, line: 60, type: !5086)
!5089 = !DILocation(line: 0, scope: !5046)
!5090 = !DILocation(line: 58, column: 30, scope: !5046)
!5091 = !DILocalVariable(name: "__stream", arg: 1, scope: !5092, file: !888, line: 135, type: !5049)
!5092 = distinct !DISubprogram(name: "ferror_unlocked", scope: !888, file: !888, line: 135, type: !5047, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !5093)
!5093 = !{!5091}
!5094 = !DILocation(line: 0, scope: !5092, inlinedAt: !5095)
!5095 = distinct !DILocation(line: 59, column: 27, scope: !5046)
!5096 = !DILocation(line: 137, column: 10, scope: !5092, inlinedAt: !5095)
!5097 = !{!896, !851, i64 0}
!5098 = !DILocation(line: 59, column: 43, scope: !5046)
!5099 = !DILocation(line: 60, column: 29, scope: !5046)
!5100 = !DILocation(line: 60, column: 45, scope: !5046)
!5101 = !DILocation(line: 70, column: 17, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5046, file: !256, line: 70, column: 7)
!5103 = !DILocation(line: 58, column: 50, scope: !5046)
!5104 = !DILocation(line: 70, column: 33, scope: !5102)
!5105 = !DILocation(line: 70, column: 53, scope: !5102)
!5106 = !DILocation(line: 70, column: 59, scope: !5102)
!5107 = !DILocation(line: 70, column: 7, scope: !5046)
!5108 = !DILocation(line: 72, column: 11, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5102, file: !256, line: 71, column: 5)
!5110 = !DILocation(line: 73, column: 9, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5109, file: !256, line: 72, column: 11)
!5112 = !DILocation(line: 73, column: 15, scope: !5111)
!5113 = !DILocation(line: 78, column: 1, scope: !5046)
!5114 = distinct !DISubprogram(name: "dir_name", scope: !258, file: !258, line: 32, type: !920, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !5115)
!5115 = !{!5116, !5117}
!5116 = !DILocalVariable(name: "file", arg: 1, scope: !5114, file: !258, line: 32, type: !44)
!5117 = !DILocalVariable(name: "result", scope: !5114, file: !258, line: 34, type: !28)
!5118 = !DILocation(line: 0, scope: !5114)
!5119 = !DILocation(line: 34, column: 18, scope: !5114)
!5120 = !DILocation(line: 35, column: 8, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5114, file: !258, line: 35, column: 7)
!5122 = !DILocation(line: 35, column: 7, scope: !5114)
!5123 = !DILocation(line: 36, column: 5, scope: !5121)
!5124 = !DILocation(line: 37, column: 3, scope: !5114)
!5125 = distinct !DISubprogram(name: "dir_len", scope: !260, file: !260, line: 32, type: !5126, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !5128)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!80, !44}
!5128 = !{!5129, !5130, !5131}
!5129 = !DILocalVariable(name: "file", arg: 1, scope: !5125, file: !260, line: 32, type: !44)
!5130 = !DILocalVariable(name: "prefix_length", scope: !5125, file: !260, line: 34, type: !80)
!5131 = !DILocalVariable(name: "length", scope: !5125, file: !260, line: 35, type: !80)
!5132 = !DILocation(line: 0, scope: !5125)
!5133 = !DILocation(line: 41, column: 24, scope: !5125)
!5134 = !DILocation(line: 48, column: 17, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5125, file: !260, line: 48, column: 3)
!5136 = !DILocation(line: 48, column: 39, scope: !5135)
!5137 = !DILocation(line: 48, column: 8, scope: !5135)
!5138 = !DILocation(line: 0, scope: !5135)
!5139 = !DILocation(line: 49, column: 22, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5135, file: !260, line: 48, column: 3)
!5141 = !DILocation(line: 48, column: 3, scope: !5135)
!5142 = !DILocation(line: 50, column: 11, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5140, file: !260, line: 50, column: 9)
!5144 = !DILocation(line: 50, column: 9, scope: !5140)
!5145 = distinct !{!5145, !5141, !5146, !726}
!5146 = !DILocation(line: 51, column: 7, scope: !5135)
!5147 = !DILocation(line: 52, column: 3, scope: !5125)
!5148 = distinct !DISubprogram(name: "mdir_name", scope: !260, file: !260, line: 71, type: !920, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !5149)
!5149 = !{!5150, !5151, !5152, !5153}
!5150 = !DILocalVariable(name: "file", arg: 1, scope: !5148, file: !260, line: 71, type: !44)
!5151 = !DILocalVariable(name: "length", scope: !5148, file: !260, line: 73, type: !80)
!5152 = !DILocalVariable(name: "append_dot", scope: !5148, file: !260, line: 74, type: !35)
!5153 = !DILocalVariable(name: "dir", scope: !5148, file: !260, line: 78, type: !28)
!5154 = !DILocation(line: 0, scope: !5148)
!5155 = !DILocation(line: 0, scope: !5125, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 73, column: 19, scope: !5148)
!5157 = !DILocation(line: 41, column: 24, scope: !5125, inlinedAt: !5156)
!5158 = !DILocation(line: 48, column: 17, scope: !5135, inlinedAt: !5156)
!5159 = !DILocation(line: 48, column: 39, scope: !5135, inlinedAt: !5156)
!5160 = !DILocation(line: 48, column: 8, scope: !5135, inlinedAt: !5156)
!5161 = !DILocation(line: 0, scope: !5135, inlinedAt: !5156)
!5162 = !DILocation(line: 49, column: 22, scope: !5140, inlinedAt: !5156)
!5163 = !DILocation(line: 48, column: 3, scope: !5135, inlinedAt: !5156)
!5164 = !DILocation(line: 50, column: 11, scope: !5143, inlinedAt: !5156)
!5165 = !DILocation(line: 50, column: 9, scope: !5140, inlinedAt: !5156)
!5166 = distinct !{!5166, !5163, !5167, !726}
!5167 = !DILocation(line: 51, column: 7, scope: !5135, inlinedAt: !5156)
!5168 = !DILocation(line: 74, column: 29, scope: !5148)
!5169 = !DILocation(line: 78, column: 32, scope: !5148)
!5170 = !DILocation(line: 78, column: 30, scope: !5148)
!5171 = !DILocation(line: 78, column: 43, scope: !5148)
!5172 = !DILocation(line: 78, column: 15, scope: !5148)
!5173 = !DILocation(line: 79, column: 8, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5148, file: !260, line: 79, column: 7)
!5175 = !DILocation(line: 79, column: 7, scope: !5148)
!5176 = !DILocalVariable(name: "__dest", arg: 1, scope: !5177, file: !977, line: 26, type: !980)
!5177 = distinct !DISubprogram(name: "memcpy", scope: !977, file: !977, line: 26, type: !978, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !5178)
!5178 = !{!5176, !5179, !5180}
!5179 = !DILocalVariable(name: "__src", arg: 2, scope: !5177, file: !977, line: 26, type: !981)
!5180 = !DILocalVariable(name: "__len", arg: 3, scope: !5177, file: !977, line: 26, type: !80)
!5181 = !DILocation(line: 0, scope: !5177, inlinedAt: !5182)
!5182 = distinct !DILocation(line: 81, column: 3, scope: !5148)
!5183 = !DILocation(line: 29, column: 10, scope: !5177, inlinedAt: !5182)
!5184 = !DILocation(line: 82, column: 7, scope: !5148)
!5185 = !DILocation(line: 83, column: 19, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5148, file: !260, line: 82, column: 7)
!5187 = !DILocation(line: 83, column: 5, scope: !5186)
!5188 = !DILocation(line: 84, column: 3, scope: !5148)
!5189 = !DILocation(line: 84, column: 15, scope: !5148)
!5190 = !DILocation(line: 85, column: 3, scope: !5148)
!5191 = !DILocation(line: 86, column: 1, scope: !5148)
!5192 = distinct !DISubprogram(name: "last_component", scope: !262, file: !262, line: 30, type: !920, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !5193)
!5193 = !{!5194, !5195, !5196, !5197}
!5194 = !DILocalVariable(name: "name", arg: 1, scope: !5192, file: !262, line: 30, type: !44)
!5195 = !DILocalVariable(name: "base", scope: !5192, file: !262, line: 32, type: !44)
!5196 = !DILocalVariable(name: "p", scope: !5192, file: !262, line: 33, type: !44)
!5197 = !DILocalVariable(name: "saw_slash", scope: !5192, file: !262, line: 34, type: !35)
!5198 = !DILocation(line: 0, scope: !5192)
!5199 = !DILocation(line: 36, column: 3, scope: !5192)
!5200 = !DILocation(line: 36, column: 10, scope: !5192)
!5201 = !DILocation(line: 37, column: 9, scope: !5192)
!5202 = distinct !{!5202, !5199, !5201, !726}
!5203 = !DILocation(line: 39, column: 18, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !262, line: 39, column: 3)
!5205 = distinct !DILexicalBlock(scope: !5192, file: !262, line: 39, column: 3)
!5206 = !DILocation(line: 32, column: 15, scope: !5192)
!5207 = !DILocation(line: 0, scope: !5205)
!5208 = !DILocation(line: 39, column: 3, scope: !5205)
!5209 = !DILocation(line: 43, column: 16, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !262, line: 43, column: 16)
!5211 = distinct !DILexicalBlock(scope: !5212, file: !262, line: 41, column: 11)
!5212 = distinct !DILexicalBlock(scope: !5204, file: !262, line: 40, column: 5)
!5213 = !DILocation(line: 43, column: 16, scope: !5211)
!5214 = !DILocation(line: 39, column: 23, scope: !5204)
!5215 = !DILocation(line: 39, column: 3, scope: !5204)
!5216 = distinct !{!5216, !5208, !5217, !726}
!5217 = !DILocation(line: 48, column: 5, scope: !5205)
!5218 = !DILocation(line: 50, column: 3, scope: !5192)
!5219 = distinct !DISubprogram(name: "base_len", scope: !262, file: !262, line: 58, type: !5126, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !5220)
!5220 = !{!5221, !5222, !5223}
!5221 = !DILocalVariable(name: "name", arg: 1, scope: !5219, file: !262, line: 58, type: !44)
!5222 = !DILocalVariable(name: "len", scope: !5219, file: !262, line: 60, type: !80)
!5223 = !DILocalVariable(name: "prefix_len", scope: !5219, file: !262, line: 61, type: !80)
!5224 = !DILocation(line: 0, scope: !5219)
!5225 = !DILocation(line: 63, column: 14, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5219, file: !262, line: 63, column: 3)
!5227 = !DILocation(line: 63, column: 8, scope: !5226)
!5228 = !DILocation(line: 0, scope: !5226)
!5229 = !DILocation(line: 63, column: 32, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5226, file: !262, line: 63, column: 3)
!5231 = !DILocation(line: 63, column: 38, scope: !5230)
!5232 = !DILocation(line: 63, column: 41, scope: !5230)
!5233 = !DILocation(line: 63, column: 3, scope: !5226)
!5234 = distinct !{!5234, !5233, !5235, !726}
!5235 = !DILocation(line: 64, column: 5, scope: !5226)
!5236 = !DILocation(line: 74, column: 3, scope: !5219)
!5237 = distinct !DISubprogram(name: "hard_locale", scope: !265, file: !265, line: 27, type: !5238, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !5240)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!35, !47}
!5240 = !{!5241, !5242}
!5241 = !DILocalVariable(name: "category", arg: 1, scope: !5237, file: !265, line: 27, type: !47)
!5242 = !DILocalVariable(name: "locale", scope: !5237, file: !265, line: 29, type: !5243)
!5243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2056, elements: !5244)
!5244 = !{!5245}
!5245 = !DISubrange(count: 257)
!5246 = !DILocation(line: 0, scope: !5237)
!5247 = !DILocation(line: 29, column: 3, scope: !5237)
!5248 = !DILocation(line: 29, column: 8, scope: !5237)
!5249 = !DILocation(line: 31, column: 7, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5237, file: !265, line: 31, column: 7)
!5251 = !DILocation(line: 31, column: 7, scope: !5237)
!5252 = !DILocation(line: 34, column: 12, scope: !5237)
!5253 = !DILocation(line: 34, column: 38, scope: !5237)
!5254 = !DILocation(line: 34, column: 41, scope: !5237)
!5255 = !DILocation(line: 34, column: 66, scope: !5237)
!5256 = !DILocation(line: 35, column: 1, scope: !5237)
!5257 = distinct !DISubprogram(name: "hash_pjw", scope: !267, file: !267, line: 31, type: !1553, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !5258)
!5258 = !{!5259, !5260, !5261, !5262}
!5259 = !DILocalVariable(name: "x", arg: 1, scope: !5257, file: !267, line: 31, type: !982)
!5260 = !DILocalVariable(name: "tablesize", arg: 2, scope: !5257, file: !267, line: 31, type: !80)
!5261 = !DILocalVariable(name: "s", scope: !5257, file: !267, line: 33, type: !44)
!5262 = !DILocalVariable(name: "h", scope: !5257, file: !267, line: 34, type: !80)
!5263 = !DILocation(line: 0, scope: !5257)
!5264 = !DILocation(line: 36, column: 15, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !267, line: 36, column: 3)
!5266 = distinct !DILexicalBlock(scope: !5257, file: !267, line: 36, column: 3)
!5267 = !DILocation(line: 36, column: 3, scope: !5266)
!5268 = !DILocation(line: 37, column: 9, scope: !5265)
!5269 = !DILocation(line: 37, column: 24, scope: !5265)
!5270 = !DILocation(line: 37, column: 12, scope: !5265)
!5271 = !DILocation(line: 36, column: 20, scope: !5265)
!5272 = distinct !{!5272, !5267, !5273, !726}
!5273 = !DILocation(line: 37, column: 48, scope: !5266)
!5274 = !DILocation(line: 39, column: 12, scope: !5257)
!5275 = !DILocation(line: 39, column: 3, scope: !5257)
!5276 = distinct !DISubprogram(name: "locale_charset", scope: !269, file: !269, line: 831, type: !5277, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !5279)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!44}
!5279 = !{!5280}
!5280 = !DILocalVariable(name: "codeset", scope: !5276, file: !269, line: 833, type: !44)
!5281 = !DILocation(line: 847, column: 13, scope: !5276)
!5282 = !DILocation(line: 0, scope: !5276)
!5283 = !DILocation(line: 911, column: 15, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5276, file: !269, line: 911, column: 7)
!5285 = !DILocation(line: 911, column: 7, scope: !5276)
!5286 = !DILocation(line: 1070, column: 13, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5288, file: !269, line: 1070, column: 13)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !269, line: 1060, column: 7)
!5289 = distinct !DILexicalBlock(scope: !5276, file: !269, line: 1019, column: 3)
!5290 = !DILocation(line: 1070, column: 24, scope: !5287)
!5291 = !DILocation(line: 1070, column: 13, scope: !5288)
!5292 = !DILocation(line: 1158, column: 3, scope: !5276)
!5293 = !DISubprogram(name: "nl_langinfo", scope: !272, file: !272, line: 661, type: !5294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!28, !47}
!5296 = distinct !DISubprogram(name: "setlocale_null_r", scope: !658, file: !658, line: 269, type: !5297, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !5299)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!47, !47, !28, !80}
!5299 = !{!5300, !5301, !5302}
!5300 = !DILocalVariable(name: "category", arg: 1, scope: !5296, file: !658, line: 269, type: !47)
!5301 = !DILocalVariable(name: "buf", arg: 2, scope: !5296, file: !658, line: 269, type: !28)
!5302 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5296, file: !658, line: 269, type: !80)
!5303 = !DILocation(line: 0, scope: !5296)
!5304 = !DILocalVariable(name: "category", arg: 1, scope: !5305, file: !658, line: 91, type: !47)
!5305 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !658, file: !658, line: 91, type: !5297, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !5306)
!5306 = !{!5304, !5307, !5308, !5309, !5310}
!5307 = !DILocalVariable(name: "buf", arg: 2, scope: !5305, file: !658, line: 91, type: !28)
!5308 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5305, file: !658, line: 91, type: !80)
!5309 = !DILocalVariable(name: "result", scope: !5305, file: !658, line: 140, type: !44)
!5310 = !DILocalVariable(name: "length", scope: !5311, file: !658, line: 154, type: !80)
!5311 = distinct !DILexicalBlock(scope: !5312, file: !658, line: 153, column: 5)
!5312 = distinct !DILexicalBlock(scope: !5305, file: !658, line: 142, column: 7)
!5313 = !DILocation(line: 0, scope: !5305, inlinedAt: !5314)
!5314 = distinct !DILocation(line: 274, column: 10, scope: !5296)
!5315 = !DILocalVariable(name: "category", arg: 1, scope: !5316, file: !658, line: 60, type: !47)
!5316 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !658, file: !658, line: 60, type: !5317, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !5319)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!44, !47}
!5319 = !{!5315, !5320}
!5320 = !DILocalVariable(name: "result", scope: !5316, file: !658, line: 62, type: !44)
!5321 = !DILocation(line: 0, scope: !5316, inlinedAt: !5322)
!5322 = distinct !DILocation(line: 140, column: 24, scope: !5305, inlinedAt: !5314)
!5323 = !DILocation(line: 62, column: 24, scope: !5316, inlinedAt: !5322)
!5324 = !DILocation(line: 142, column: 14, scope: !5312, inlinedAt: !5314)
!5325 = !DILocation(line: 142, column: 7, scope: !5305, inlinedAt: !5314)
!5326 = !DILocation(line: 145, column: 19, scope: !5327, inlinedAt: !5314)
!5327 = distinct !DILexicalBlock(scope: !5328, file: !658, line: 145, column: 11)
!5328 = distinct !DILexicalBlock(scope: !5312, file: !658, line: 143, column: 5)
!5329 = !DILocation(line: 145, column: 11, scope: !5328, inlinedAt: !5314)
!5330 = !DILocation(line: 149, column: 16, scope: !5327, inlinedAt: !5314)
!5331 = !DILocation(line: 149, column: 9, scope: !5327, inlinedAt: !5314)
!5332 = !DILocation(line: 154, column: 23, scope: !5311, inlinedAt: !5314)
!5333 = !DILocation(line: 0, scope: !5311, inlinedAt: !5314)
!5334 = !DILocation(line: 155, column: 18, scope: !5335, inlinedAt: !5314)
!5335 = distinct !DILexicalBlock(scope: !5311, file: !658, line: 155, column: 11)
!5336 = !DILocation(line: 155, column: 11, scope: !5311, inlinedAt: !5314)
!5337 = !DILocation(line: 157, column: 39, scope: !5338, inlinedAt: !5314)
!5338 = distinct !DILexicalBlock(scope: !5335, file: !658, line: 156, column: 9)
!5339 = !DILocalVariable(name: "__dest", arg: 1, scope: !5340, file: !977, line: 26, type: !980)
!5340 = distinct !DISubprogram(name: "memcpy", scope: !977, file: !977, line: 26, type: !978, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !5341)
!5341 = !{!5339, !5342, !5343}
!5342 = !DILocalVariable(name: "__src", arg: 2, scope: !5340, file: !977, line: 26, type: !981)
!5343 = !DILocalVariable(name: "__len", arg: 3, scope: !5340, file: !977, line: 26, type: !80)
!5344 = !DILocation(line: 0, scope: !5340, inlinedAt: !5345)
!5345 = distinct !DILocation(line: 157, column: 11, scope: !5338, inlinedAt: !5314)
!5346 = !DILocation(line: 29, column: 10, scope: !5340, inlinedAt: !5345)
!5347 = !DILocation(line: 158, column: 11, scope: !5338, inlinedAt: !5314)
!5348 = !DILocation(line: 162, column: 23, scope: !5349, inlinedAt: !5314)
!5349 = distinct !DILexicalBlock(scope: !5350, file: !658, line: 162, column: 15)
!5350 = distinct !DILexicalBlock(scope: !5335, file: !658, line: 161, column: 9)
!5351 = !DILocation(line: 162, column: 15, scope: !5350, inlinedAt: !5314)
!5352 = !DILocation(line: 167, column: 44, scope: !5353, inlinedAt: !5314)
!5353 = distinct !DILexicalBlock(scope: !5349, file: !658, line: 163, column: 13)
!5354 = !DILocation(line: 0, scope: !5340, inlinedAt: !5355)
!5355 = distinct !DILocation(line: 167, column: 15, scope: !5353, inlinedAt: !5314)
!5356 = !DILocation(line: 29, column: 10, scope: !5340, inlinedAt: !5355)
!5357 = !DILocation(line: 168, column: 15, scope: !5353, inlinedAt: !5314)
!5358 = !DILocation(line: 168, column: 32, scope: !5353, inlinedAt: !5314)
!5359 = !DILocation(line: 169, column: 13, scope: !5353, inlinedAt: !5314)
!5360 = !DILocation(line: 0, scope: !5312, inlinedAt: !5314)
!5361 = !DILocation(line: 274, column: 3, scope: !5296)
!5362 = distinct !DISubprogram(name: "setlocale_null", scope: !658, file: !658, line: 301, type: !5317, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !5363)
!5363 = !{!5364}
!5364 = !DILocalVariable(name: "category", arg: 1, scope: !5362, file: !658, line: 301, type: !47)
!5365 = !DILocation(line: 0, scope: !5362)
!5366 = !DILocation(line: 0, scope: !5316, inlinedAt: !5367)
!5367 = distinct !DILocation(line: 304, column: 10, scope: !5362)
!5368 = !DILocation(line: 62, column: 24, scope: !5316, inlinedAt: !5367)
!5369 = !DILocation(line: 304, column: 3, scope: !5362)
!5370 = distinct !DISubprogram(name: "rpl_fclose", scope: !660, file: !660, line: 58, type: !5371, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !659, retainedNodes: !5407)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!47, !5373}
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1670, line: 7, baseType: !5375)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 49, size: 1728, elements: !5376)
!5376 = !{!5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5375, file: !756, line: 51, baseType: !47, size: 32)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5375, file: !756, line: 54, baseType: !28, size: 64, offset: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5375, file: !756, line: 55, baseType: !28, size: 64, offset: 128)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5375, file: !756, line: 56, baseType: !28, size: 64, offset: 192)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5375, file: !756, line: 57, baseType: !28, size: 64, offset: 256)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5375, file: !756, line: 58, baseType: !28, size: 64, offset: 320)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5375, file: !756, line: 59, baseType: !28, size: 64, offset: 384)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5375, file: !756, line: 60, baseType: !28, size: 64, offset: 448)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5375, file: !756, line: 61, baseType: !28, size: 64, offset: 512)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5375, file: !756, line: 64, baseType: !28, size: 64, offset: 576)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5375, file: !756, line: 65, baseType: !28, size: 64, offset: 640)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5375, file: !756, line: 66, baseType: !28, size: 64, offset: 704)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5375, file: !756, line: 68, baseType: !771, size: 64, offset: 768)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5375, file: !756, line: 70, baseType: !5391, size: 64, offset: 832)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5375, file: !756, line: 72, baseType: !47, size: 32, offset: 896)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5375, file: !756, line: 73, baseType: !47, size: 32, offset: 928)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5375, file: !756, line: 74, baseType: !777, size: 64, offset: 960)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5375, file: !756, line: 77, baseType: !126, size: 16, offset: 1024)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5375, file: !756, line: 78, baseType: !780, size: 8, offset: 1040)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5375, file: !756, line: 79, baseType: !782, size: 8, offset: 1048)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5375, file: !756, line: 81, baseType: !786, size: 64, offset: 1088)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5375, file: !756, line: 89, baseType: !789, size: 64, offset: 1152)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5375, file: !756, line: 91, baseType: !791, size: 64, offset: 1216)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5375, file: !756, line: 92, baseType: !794, size: 64, offset: 1280)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5375, file: !756, line: 93, baseType: !5391, size: 64, offset: 1344)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5375, file: !756, line: 94, baseType: !30, size: 64, offset: 1408)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5375, file: !756, line: 95, baseType: !80, size: 64, offset: 1472)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5375, file: !756, line: 96, baseType: !47, size: 32, offset: 1536)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5375, file: !756, line: 98, baseType: !801, size: 160, offset: 1568)
!5407 = !{!5408, !5409, !5410, !5411}
!5408 = !DILocalVariable(name: "fp", arg: 1, scope: !5370, file: !660, line: 58, type: !5373)
!5409 = !DILocalVariable(name: "saved_errno", scope: !5370, file: !660, line: 60, type: !47)
!5410 = !DILocalVariable(name: "fd", scope: !5370, file: !660, line: 61, type: !47)
!5411 = !DILocalVariable(name: "result", scope: !5370, file: !660, line: 62, type: !47)
!5412 = !DILocation(line: 0, scope: !5370)
!5413 = !DILocation(line: 65, column: 8, scope: !5370)
!5414 = !DILocation(line: 66, column: 10, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5370, file: !660, line: 66, column: 7)
!5416 = !DILocation(line: 66, column: 7, scope: !5370)
!5417 = !DILocation(line: 67, column: 12, scope: !5415)
!5418 = !DILocation(line: 67, column: 5, scope: !5415)
!5419 = !DILocation(line: 72, column: 9, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5370, file: !660, line: 72, column: 7)
!5421 = !DILocation(line: 72, column: 23, scope: !5420)
!5422 = !DILocation(line: 72, column: 33, scope: !5420)
!5423 = !DILocation(line: 72, column: 26, scope: !5420)
!5424 = !DILocation(line: 72, column: 59, scope: !5420)
!5425 = !DILocation(line: 73, column: 7, scope: !5420)
!5426 = !DILocation(line: 73, column: 10, scope: !5420)
!5427 = !DILocation(line: 72, column: 7, scope: !5370)
!5428 = !DILocation(line: 100, column: 12, scope: !5370)
!5429 = !DILocation(line: 105, column: 7, scope: !5370)
!5430 = !DILocation(line: 74, column: 19, scope: !5420)
!5431 = !DILocation(line: 105, column: 19, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5370, file: !660, line: 105, column: 7)
!5433 = !DILocation(line: 107, column: 13, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5432, file: !660, line: 106, column: 5)
!5435 = !DILocation(line: 109, column: 5, scope: !5434)
!5436 = !DILocation(line: 112, column: 1, scope: !5370)
!5437 = !DISubprogram(name: "fileno", scope: !751, file: !751, line: 785, type: !5438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!47, !5391}
!5440 = !DISubprogram(name: "fclose", scope: !751, file: !751, line: 213, type: !5438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!5441 = !DISubprogram(name: "lseek", scope: !5442, file: !5442, line: 334, type: !5443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!5442 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!5443 = !DISubroutineType(types: !5444)
!5444 = !{!194, !47, !194, !47}
!5445 = distinct !DISubprogram(name: "rpl_fflush", scope: !662, file: !662, line: 129, type: !5446, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !5482)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!47, !5448}
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1670, line: 7, baseType: !5450)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 49, size: 1728, elements: !5451)
!5451 = !{!5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5450, file: !756, line: 51, baseType: !47, size: 32)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5450, file: !756, line: 54, baseType: !28, size: 64, offset: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5450, file: !756, line: 55, baseType: !28, size: 64, offset: 128)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5450, file: !756, line: 56, baseType: !28, size: 64, offset: 192)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5450, file: !756, line: 57, baseType: !28, size: 64, offset: 256)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5450, file: !756, line: 58, baseType: !28, size: 64, offset: 320)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5450, file: !756, line: 59, baseType: !28, size: 64, offset: 384)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5450, file: !756, line: 60, baseType: !28, size: 64, offset: 448)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5450, file: !756, line: 61, baseType: !28, size: 64, offset: 512)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5450, file: !756, line: 64, baseType: !28, size: 64, offset: 576)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5450, file: !756, line: 65, baseType: !28, size: 64, offset: 640)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5450, file: !756, line: 66, baseType: !28, size: 64, offset: 704)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5450, file: !756, line: 68, baseType: !771, size: 64, offset: 768)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5450, file: !756, line: 70, baseType: !5466, size: 64, offset: 832)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5450, file: !756, line: 72, baseType: !47, size: 32, offset: 896)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5450, file: !756, line: 73, baseType: !47, size: 32, offset: 928)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5450, file: !756, line: 74, baseType: !777, size: 64, offset: 960)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5450, file: !756, line: 77, baseType: !126, size: 16, offset: 1024)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5450, file: !756, line: 78, baseType: !780, size: 8, offset: 1040)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5450, file: !756, line: 79, baseType: !782, size: 8, offset: 1048)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5450, file: !756, line: 81, baseType: !786, size: 64, offset: 1088)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5450, file: !756, line: 89, baseType: !789, size: 64, offset: 1152)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5450, file: !756, line: 91, baseType: !791, size: 64, offset: 1216)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5450, file: !756, line: 92, baseType: !794, size: 64, offset: 1280)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5450, file: !756, line: 93, baseType: !5466, size: 64, offset: 1344)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5450, file: !756, line: 94, baseType: !30, size: 64, offset: 1408)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5450, file: !756, line: 95, baseType: !80, size: 64, offset: 1472)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5450, file: !756, line: 96, baseType: !47, size: 32, offset: 1536)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5450, file: !756, line: 98, baseType: !801, size: 160, offset: 1568)
!5482 = !{!5483}
!5483 = !DILocalVariable(name: "stream", arg: 1, scope: !5445, file: !662, line: 129, type: !5448)
!5484 = !DILocation(line: 0, scope: !5445)
!5485 = !DILocation(line: 150, column: 14, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5445, file: !662, line: 150, column: 7)
!5487 = !DILocation(line: 150, column: 22, scope: !5486)
!5488 = !DILocation(line: 150, column: 27, scope: !5486)
!5489 = !DILocation(line: 150, column: 7, scope: !5445)
!5490 = !DILocation(line: 151, column: 12, scope: !5486)
!5491 = !DILocation(line: 151, column: 5, scope: !5486)
!5492 = !DILocalVariable(name: "fp", arg: 1, scope: !5493, file: !662, line: 41, type: !5448)
!5493 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !662, file: !662, line: 41, type: !5494, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !5496)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{null, !5448}
!5496 = !{!5492}
!5497 = !DILocation(line: 0, scope: !5493, inlinedAt: !5498)
!5498 = distinct !DILocation(line: 156, column: 3, scope: !5445)
!5499 = !DILocation(line: 43, column: 11, scope: !5500, inlinedAt: !5498)
!5500 = distinct !DILexicalBlock(scope: !5493, file: !662, line: 43, column: 7)
!5501 = !DILocation(line: 43, column: 18, scope: !5500, inlinedAt: !5498)
!5502 = !DILocation(line: 43, column: 7, scope: !5493, inlinedAt: !5498)
!5503 = !DILocation(line: 45, column: 5, scope: !5500, inlinedAt: !5498)
!5504 = !DILocation(line: 158, column: 10, scope: !5445)
!5505 = !DILocation(line: 158, column: 3, scope: !5445)
!5506 = !DILocation(line: 235, column: 1, scope: !5445)
!5507 = !DISubprogram(name: "fflush", scope: !751, file: !751, line: 218, type: !5508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!47, !5466}
!5510 = distinct !DISubprogram(name: "rpl_fseeko", scope: !664, file: !664, line: 28, type: !5511, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !5548)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!47, !5513, !5547, !47}
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1670, line: 7, baseType: !5515)
!5515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !756, line: 49, size: 1728, elements: !5516)
!5516 = !{!5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5515, file: !756, line: 51, baseType: !47, size: 32)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5515, file: !756, line: 54, baseType: !28, size: 64, offset: 64)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5515, file: !756, line: 55, baseType: !28, size: 64, offset: 128)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5515, file: !756, line: 56, baseType: !28, size: 64, offset: 192)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5515, file: !756, line: 57, baseType: !28, size: 64, offset: 256)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5515, file: !756, line: 58, baseType: !28, size: 64, offset: 320)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5515, file: !756, line: 59, baseType: !28, size: 64, offset: 384)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5515, file: !756, line: 60, baseType: !28, size: 64, offset: 448)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5515, file: !756, line: 61, baseType: !28, size: 64, offset: 512)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5515, file: !756, line: 64, baseType: !28, size: 64, offset: 576)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5515, file: !756, line: 65, baseType: !28, size: 64, offset: 640)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5515, file: !756, line: 66, baseType: !28, size: 64, offset: 704)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5515, file: !756, line: 68, baseType: !771, size: 64, offset: 768)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5515, file: !756, line: 70, baseType: !5531, size: 64, offset: 832)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5515, file: !756, line: 72, baseType: !47, size: 32, offset: 896)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5515, file: !756, line: 73, baseType: !47, size: 32, offset: 928)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5515, file: !756, line: 74, baseType: !777, size: 64, offset: 960)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5515, file: !756, line: 77, baseType: !126, size: 16, offset: 1024)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5515, file: !756, line: 78, baseType: !780, size: 8, offset: 1040)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5515, file: !756, line: 79, baseType: !782, size: 8, offset: 1048)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5515, file: !756, line: 81, baseType: !786, size: 64, offset: 1088)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5515, file: !756, line: 89, baseType: !789, size: 64, offset: 1152)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5515, file: !756, line: 91, baseType: !791, size: 64, offset: 1216)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5515, file: !756, line: 92, baseType: !794, size: 64, offset: 1280)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5515, file: !756, line: 93, baseType: !5531, size: 64, offset: 1344)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5515, file: !756, line: 94, baseType: !30, size: 64, offset: 1408)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5515, file: !756, line: 95, baseType: !80, size: 64, offset: 1472)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5515, file: !756, line: 96, baseType: !47, size: 32, offset: 1536)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5515, file: !756, line: 98, baseType: !801, size: 160, offset: 1568)
!5547 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !751, line: 63, baseType: !777)
!5548 = !{!5549, !5550, !5551, !5552}
!5549 = !DILocalVariable(name: "fp", arg: 1, scope: !5510, file: !664, line: 28, type: !5513)
!5550 = !DILocalVariable(name: "offset", arg: 2, scope: !5510, file: !664, line: 28, type: !5547)
!5551 = !DILocalVariable(name: "whence", arg: 3, scope: !5510, file: !664, line: 28, type: !47)
!5552 = !DILocalVariable(name: "pos", scope: !5553, file: !664, line: 117, type: !5547)
!5553 = distinct !DILexicalBlock(scope: !5554, file: !664, line: 113, column: 5)
!5554 = distinct !DILexicalBlock(scope: !5510, file: !664, line: 52, column: 7)
!5555 = !DILocation(line: 0, scope: !5510)
!5556 = !DILocation(line: 52, column: 11, scope: !5554)
!5557 = !{!896, !683, i64 16}
!5558 = !DILocation(line: 52, column: 31, scope: !5554)
!5559 = !{!896, !683, i64 8}
!5560 = !DILocation(line: 52, column: 24, scope: !5554)
!5561 = !DILocation(line: 53, column: 7, scope: !5554)
!5562 = !DILocation(line: 53, column: 14, scope: !5554)
!5563 = !DILocation(line: 53, column: 35, scope: !5554)
!5564 = !{!896, !683, i64 32}
!5565 = !DILocation(line: 53, column: 28, scope: !5554)
!5566 = !DILocation(line: 54, column: 7, scope: !5554)
!5567 = !DILocation(line: 54, column: 14, scope: !5554)
!5568 = !{!896, !683, i64 72}
!5569 = !DILocation(line: 54, column: 28, scope: !5554)
!5570 = !DILocation(line: 52, column: 7, scope: !5510)
!5571 = !DILocation(line: 117, column: 26, scope: !5553)
!5572 = !DILocation(line: 117, column: 19, scope: !5553)
!5573 = !DILocation(line: 0, scope: !5553)
!5574 = !DILocation(line: 118, column: 15, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5553, file: !664, line: 118, column: 11)
!5576 = !DILocation(line: 118, column: 11, scope: !5553)
!5577 = !DILocation(line: 129, column: 11, scope: !5553)
!5578 = !DILocation(line: 129, column: 18, scope: !5553)
!5579 = !DILocation(line: 130, column: 11, scope: !5553)
!5580 = !DILocation(line: 130, column: 19, scope: !5553)
!5581 = !{!896, !897, i64 144}
!5582 = !DILocation(line: 161, column: 7, scope: !5553)
!5583 = !DILocation(line: 163, column: 10, scope: !5510)
!5584 = !DILocation(line: 163, column: 3, scope: !5510)
!5585 = !DILocation(line: 164, column: 1, scope: !5510)
!5586 = !DISubprogram(name: "fseeko", scope: !751, file: !751, line: 712, type: !5587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !59)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!47, !5531, !194, !47}
