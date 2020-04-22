; ModuleID = 'coreutils-8.32/src/uname.bc'
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
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [362 x i8] c"Print certain system information.  With no OPTION, same as -s.\0A\0A  -a, --all                print all information, in the following order,\0A                             except omit -p and -i if unknown:\0A  -s, --kernel-name        print the kernel name\0A  -n, --nodename           print the network node hostname\0A  -r, --kernel-release     print the kernel release\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [303 x i8] c"  -v, --kernel-version     print the kernel version\0A  -m, --machine            print the machine hardware name\0A  -p, --processor          print the processor type (non-portable)\0A  -i, --hardware-platform  print the hardware platform (non-portable)\0A  -o, --operating-system   print the operating system\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Print machine architecture.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@arch_long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.30 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Karel Zak\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"asnrvmpio\00", align 1
@uname_long_options = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !165
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"cannot get system name\00", align 1
@print_element.printed = internal unnamed_addr global i1 false, align 1, !dbg !179
@main.unknown = internal constant [8 x i8] c"unknown\00", align 1, !dbg !142
@.str.13 = private unnamed_addr constant [10 x i8] c"GNU/Linux\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"kernel-name\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"nodename\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"kernel-release\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"kernel-version\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"hardware-platform\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"operating-system\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@uname_mode = dso_local local_unnamed_addr global i32 1, align 4, !dbg !180
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !185
@.str.47 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !190
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !234
@.str.50 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.51 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !236
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !242
@.str.59 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16, !dbg !283
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !391
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !397
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !399
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !406
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !413
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !401
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !415
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.101 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.102 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.103 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.106 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.107 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !421
@.str.1.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1091 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1096, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %0, metadata !1095, metadata !DIExpression()), !dbg !1117
  %3 = icmp eq i32 %0, 0, !dbg !1118
  br i1 %3, label %9, label %4, !dbg !1119

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1120, !tbaa !1122
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1120
  %7 = load i8*, i8** @program_name, align 8, !dbg !1120, !tbaa !1122
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1120
  br label %69, !dbg !1120

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1126
  %11 = load i8*, i8** @program_name, align 8, !dbg !1126, !tbaa !1122
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1126
  %13 = load i32, i32* @uname_mode, align 4, !dbg !1127, !tbaa !1129
  %14 = icmp eq i32 %13, 1, !dbg !1131
  br i1 %14, label %15, label %19, !dbg !1132

15:                                               ; preds = %9
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1133
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1133, !tbaa !1122
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1133
  br label %19, !dbg !1135

19:                                               ; preds = %9, %15
  %20 = phi i8* [ getelementptr inbounds ([303 x i8], [303 x i8]* @.str.3, i64 0, i64 0), %15 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %9 ]
  %21 = tail call i8* @dcgettext(i8* null, i8* %20, i32 5) #18, !dbg !1136
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !1122
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !1136
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1137
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1137, !tbaa !1122
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !1137
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1138
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1138, !tbaa !1122
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !1138
  %30 = load i32, i32* @uname_mode, align 4, !dbg !1139, !tbaa !1129
  %31 = icmp eq i32 %30, 1, !dbg !1139
  %32 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !1139
  call void @llvm.dbg.value(metadata i8* %32, metadata !1100, metadata !DIExpression()) #18, !dbg !1140
  %33 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1141
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %33) #18, !dbg !1141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %33, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %32, metadata !1101, metadata !DIExpression()) #18, !dbg !1140
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1102, metadata !DIExpression()) #18, !dbg !1140
  %34 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1142
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !1102, metadata !DIExpression()) #18, !dbg !1140
  br label %35, !dbg !1143

35:                                               ; preds = %40, %19
  %36 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %19 ]
  %37 = phi %struct.infomap* [ %41, %40 ], [ %34, %19 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !1102, metadata !DIExpression()) #18, !dbg !1140
  %38 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %32, i8* nonnull %36) #21, !dbg !1144
  %39 = icmp eq i32 %38, 0, !dbg !1144
  br i1 %39, label %45, label %40, !dbg !1143

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 1, !dbg !1145
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1102, metadata !DIExpression()) #18, !dbg !1140
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 0, !dbg !1146
  %43 = load i8*, i8** %42, align 8, !dbg !1146, !tbaa !1147
  %44 = icmp eq i8* %43, null, !dbg !1149
  br i1 %44, label %45, label %35, !dbg !1150, !llvm.loop !1151

45:                                               ; preds = %40, %35
  %46 = phi %struct.infomap* [ %41, %40 ], [ %37, %35 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !1102, metadata !DIExpression()) #18, !dbg !1140
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !1102, metadata !DIExpression()) #18, !dbg !1140
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 1, !dbg !1152
  %48 = load i8*, i8** %47, align 8, !dbg !1152, !tbaa !1154
  %49 = icmp eq i8* %48, null, !dbg !1155
  %50 = select i1 %49, i8* %32, i8* %48, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %50, metadata !1101, metadata !DIExpression()) #18, !dbg !1140
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #18, !dbg !1157
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #18, !dbg !1157
  %53 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %53, metadata !1109, metadata !DIExpression()) #18, !dbg !1140
  %54 = icmp eq i8* %53, null, !dbg !1159
  br i1 %54, label %62, label %55, !dbg !1161

55:                                               ; preds = %45
  %56 = tail call i32 @strncmp(i8* nonnull %53, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #21, !dbg !1162
  %57 = icmp eq i32 %56, 0, !dbg !1162
  br i1 %57, label %62, label %58, !dbg !1163

58:                                               ; preds = %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #18, !dbg !1164
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1164, !tbaa !1122
  %61 = tail call i32 @fputs_unlocked(i8* %59, %struct._IO_FILE* %60) #18, !dbg !1164
  br label %62, !dbg !1166

62:                                               ; preds = %45, %55, %58
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1167
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* %32) #18, !dbg !1167
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1168
  %66 = icmp eq i8* %50, %32, !dbg !1168
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !1168
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* %50, i8* %67) #18, !dbg !1168
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33) #18, !dbg !1169
  br label %69

69:                                               ; preds = %62, %4
  tail call void @exit(i32 %0) #22, !dbg !1170
  unreachable, !dbg !1170
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !144 {
  %3 = alloca %struct.utsname, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !149, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8** %1, metadata !150, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 0, metadata !151, metadata !DIExpression()), !dbg !1171
  %4 = load i8*, i8** %1, align 8, !dbg !1172, !tbaa !1122
  tail call void @set_program_name(i8* %4) #18, !dbg !1173
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1174
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !1175
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1176
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %0, metadata !1178, metadata !DIExpression()) #18, !dbg !1184
  call void @llvm.dbg.value(metadata i8** %1, metadata !1181, metadata !DIExpression()) #18, !dbg !1184
  call void @llvm.dbg.value(metadata i32 0, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  %9 = load i32, i32* @uname_mode, align 4, !dbg !1186, !tbaa !1129
  %10 = icmp eq i32 %9, 2, !dbg !1188
  br i1 %10, label %11, label %21, !dbg !1189

11:                                               ; preds = %2
  %12 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @arch_long_options, i64 0, i64 0), i32* null) #18, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %12, metadata !1182, metadata !DIExpression()) #18, !dbg !1184
  switch i32 %12, label %20 [
    i32 -1, label %50
    i32 -130, label %13
    i32 -131, label %14
  ], !dbg !1192

13:                                               ; preds = %11
  tail call void @usage(i32 0) #22, !dbg !1193
  unreachable, !dbg !1193

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1196, !tbaa !1122
  %16 = load i32, i32* @uname_mode, align 4, !dbg !1196, !tbaa !1129
  %17 = icmp eq i32 %16, 1, !dbg !1196
  %18 = select i1 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !1196
  %19 = load i8*, i8** @Version, align 8, !dbg !1196, !tbaa !1122
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %15, i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* null) #18, !dbg !1196
  tail call void @exit(i32 0) #22, !dbg !1196
  unreachable, !dbg !1196

20:                                               ; preds = %11
  tail call void @usage(i32 1) #22, !dbg !1197
  unreachable, !dbg !1197

21:                                               ; preds = %2, %40
  %22 = phi i32 [ %41, %40 ], [ 0, %2 ], !dbg !1184
  call void @llvm.dbg.value(metadata i32 %22, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  %23 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @uname_long_options, i64 0, i64 0), i32* null) #18, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %23, metadata !1182, metadata !DIExpression()) #18, !dbg !1184
  switch i32 %23, label %49 [
    i32 -1, label %50
    i32 97, label %40
    i32 115, label %24
    i32 110, label %26
    i32 114, label %28
    i32 118, label %30
    i32 109, label %32
    i32 112, label %34
    i32 105, label %36
    i32 111, label %38
    i32 -130, label %42
    i32 -131, label %43
  ], !dbg !1200

24:                                               ; preds = %21
  %25 = or i32 %22, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %25, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  br label %40, !dbg !1204

26:                                               ; preds = %21
  %27 = or i32 %22, 2, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %27, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  br label %40, !dbg !1206

28:                                               ; preds = %21
  %29 = or i32 %22, 4, !dbg !1207
  call void @llvm.dbg.value(metadata i32 %29, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  br label %40, !dbg !1208

30:                                               ; preds = %21
  %31 = or i32 %22, 8, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %31, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  br label %40, !dbg !1210

32:                                               ; preds = %21
  %33 = or i32 %22, 16, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %33, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  br label %40, !dbg !1212

34:                                               ; preds = %21
  %35 = or i32 %22, 32, !dbg !1213
  call void @llvm.dbg.value(metadata i32 %35, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  br label %40, !dbg !1214

36:                                               ; preds = %21
  %37 = or i32 %22, 64, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %37, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  br label %40, !dbg !1216

38:                                               ; preds = %21
  %39 = or i32 %22, 128, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %39, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  br label %40, !dbg !1218

40:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %21
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ -1, %21 ]
  br label %21, !dbg !1184, !llvm.loop !1219

42:                                               ; preds = %21
  tail call void @usage(i32 0) #22, !dbg !1221
  unreachable, !dbg !1221

43:                                               ; preds = %21
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1222, !tbaa !1122
  %45 = load i32, i32* @uname_mode, align 4, !dbg !1222, !tbaa !1129
  %46 = icmp eq i32 %45, 1, !dbg !1222
  %47 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !1222
  %48 = load i8*, i8** @Version, align 8, !dbg !1222, !tbaa !1122
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %44, i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* null) #18, !dbg !1222
  tail call void @exit(i32 0) #22, !dbg !1222
  unreachable, !dbg !1222

49:                                               ; preds = %21
  tail call void @usage(i32 1) #22, !dbg !1223
  unreachable, !dbg !1223

50:                                               ; preds = %21, %11
  %51 = phi i32 [ 16, %11 ], [ %22, %21 ], !dbg !1184
  call void @llvm.dbg.value(metadata i32 %51, metadata !1183, metadata !DIExpression()) #18, !dbg !1184
  %52 = load i32, i32* @optind, align 4, !dbg !1224, !tbaa !1129
  %53 = icmp eq i32 %52, %0, !dbg !1226
  br i1 %53, label %61, label %54, !dbg !1227

54:                                               ; preds = %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1228
  %56 = load i32, i32* @optind, align 4, !dbg !1230, !tbaa !1129
  %57 = sext i32 %56 to i64, !dbg !1231
  %58 = getelementptr inbounds i8*, i8** %1, i64 %57, !dbg !1231
  %59 = load i8*, i8** %58, align 8, !dbg !1231, !tbaa !1122
  %60 = tail call i8* @quote(i8* %59) #18, !dbg !1232
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55, i8* %60) #18, !dbg !1233
  tail call void @usage(i32 1) #22, !dbg !1234
  unreachable, !dbg !1234

61:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 %51, metadata !151, metadata !DIExpression()), !dbg !1171
  %62 = icmp eq i32 %51, 0, !dbg !1235
  %63 = select i1 %62, i32 1, i32 %51, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %63, metadata !151, metadata !DIExpression()), !dbg !1171
  %64 = and i32 %63, 31, !dbg !1238
  %65 = icmp eq i32 %64, 0, !dbg !1238
  br i1 %65, label %174, label %66, !dbg !1239

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 0, i64 0, !dbg !1240
  call void @llvm.lifetime.start.p0i8(i64 390, i8* nonnull %67) #18, !dbg !1240
  call void @llvm.dbg.declare(metadata %struct.utsname* %3, metadata !153, metadata !DIExpression()), !dbg !1241
  %68 = call i32 @uname(%struct.utsname* nonnull %3) #18, !dbg !1242
  %69 = icmp eq i32 %68, -1, !dbg !1244
  br i1 %69, label %70, label %74, !dbg !1245

70:                                               ; preds = %66
  %71 = tail call i32* @__errno_location() #23, !dbg !1246
  %72 = load i32, i32* %71, align 4, !dbg !1246, !tbaa !1129
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1246
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %72, i8* %73) #18, !dbg !1246
  unreachable, !dbg !1246

74:                                               ; preds = %66
  %75 = and i32 %63, 1, !dbg !1247
  %76 = icmp eq i32 %75, 0, !dbg !1247
  br i1 %76, label %93, label %77, !dbg !1249

77:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i8* %67, metadata !174, metadata !DIExpression()) #18, !dbg !1250
  %78 = load i1, i1* @print_element.printed, align 1, !dbg !1252
  br i1 %78, label %79, label %90, !dbg !1254

79:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 32, metadata !1255, metadata !DIExpression()) #18, !dbg !1261
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1263, !tbaa !1122
  %81 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %80, i64 0, i32 5, !dbg !1263
  %82 = load i8*, i8** %81, align 8, !dbg !1263, !tbaa !1264
  %83 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %80, i64 0, i32 6, !dbg !1263
  %84 = load i8*, i8** %83, align 8, !dbg !1263, !tbaa !1268
  %85 = icmp ult i8* %82, %84, !dbg !1263
  br i1 %85, label %88, label %86, !dbg !1263, !prof !1269, !misexpect !1270

86:                                               ; preds = %79
  %87 = tail call i32 @__overflow(%struct._IO_FILE* %80, i32 32) #18, !dbg !1263
  br label %90, !dbg !1263

88:                                               ; preds = %79
  %89 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1263
  store i8* %89, i8** %81, align 8, !dbg !1263, !tbaa !1264
  store i8 32, i8* %82, align 1, !dbg !1263, !tbaa !1271
  br label %90, !dbg !1263

90:                                               ; preds = %77, %86, %88
  store i1 true, i1* @print_element.printed, align 1, !dbg !1272
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1273, !tbaa !1122
  %92 = call i32 @fputs_unlocked(i8* nonnull %67, %struct._IO_FILE* %91) #18, !dbg !1273
  br label %93, !dbg !1274

93:                                               ; preds = %74, %90
  %94 = and i32 %63, 2, !dbg !1275
  %95 = icmp eq i32 %94, 0, !dbg !1275
  br i1 %95, label %113, label %96, !dbg !1277

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 1, i64 0, !dbg !1278
  call void @llvm.dbg.value(metadata i8* %97, metadata !174, metadata !DIExpression()) #18, !dbg !1279
  %98 = load i1, i1* @print_element.printed, align 1, !dbg !1281
  br i1 %98, label %99, label %110, !dbg !1282

99:                                               ; preds = %96
  call void @llvm.dbg.value(metadata i32 32, metadata !1255, metadata !DIExpression()) #18, !dbg !1283
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1285, !tbaa !1122
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 5, !dbg !1285
  %102 = load i8*, i8** %101, align 8, !dbg !1285, !tbaa !1264
  %103 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 6, !dbg !1285
  %104 = load i8*, i8** %103, align 8, !dbg !1285, !tbaa !1268
  %105 = icmp ult i8* %102, %104, !dbg !1285
  br i1 %105, label %108, label %106, !dbg !1285, !prof !1269, !misexpect !1270

106:                                              ; preds = %99
  %107 = tail call i32 @__overflow(%struct._IO_FILE* %100, i32 32) #18, !dbg !1285
  br label %110, !dbg !1285

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !1285
  store i8* %109, i8** %101, align 8, !dbg !1285, !tbaa !1264
  store i8 32, i8* %102, align 1, !dbg !1285, !tbaa !1271
  br label %110, !dbg !1285

110:                                              ; preds = %96, %106, %108
  store i1 true, i1* @print_element.printed, align 1, !dbg !1286
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1287, !tbaa !1122
  %112 = call i32 @fputs_unlocked(i8* nonnull %97, %struct._IO_FILE* %111) #18, !dbg !1287
  br label %113, !dbg !1288

113:                                              ; preds = %93, %110
  %114 = and i32 %63, 4, !dbg !1289
  %115 = icmp eq i32 %114, 0, !dbg !1289
  br i1 %115, label %133, label %116, !dbg !1291

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 2, i64 0, !dbg !1292
  call void @llvm.dbg.value(metadata i8* %117, metadata !174, metadata !DIExpression()) #18, !dbg !1293
  %118 = load i1, i1* @print_element.printed, align 1, !dbg !1295
  br i1 %118, label %119, label %130, !dbg !1296

119:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i32 32, metadata !1255, metadata !DIExpression()) #18, !dbg !1297
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1299, !tbaa !1122
  %121 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %120, i64 0, i32 5, !dbg !1299
  %122 = load i8*, i8** %121, align 8, !dbg !1299, !tbaa !1264
  %123 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %120, i64 0, i32 6, !dbg !1299
  %124 = load i8*, i8** %123, align 8, !dbg !1299, !tbaa !1268
  %125 = icmp ult i8* %122, %124, !dbg !1299
  br i1 %125, label %128, label %126, !dbg !1299, !prof !1269, !misexpect !1270

126:                                              ; preds = %119
  %127 = tail call i32 @__overflow(%struct._IO_FILE* %120, i32 32) #18, !dbg !1299
  br label %130, !dbg !1299

128:                                              ; preds = %119
  %129 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !1299
  store i8* %129, i8** %121, align 8, !dbg !1299, !tbaa !1264
  store i8 32, i8* %122, align 1, !dbg !1299, !tbaa !1271
  br label %130, !dbg !1299

130:                                              ; preds = %116, %126, %128
  store i1 true, i1* @print_element.printed, align 1, !dbg !1300
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1301, !tbaa !1122
  %132 = call i32 @fputs_unlocked(i8* nonnull %117, %struct._IO_FILE* %131) #18, !dbg !1301
  br label %133, !dbg !1302

133:                                              ; preds = %113, %130
  %134 = and i32 %63, 8, !dbg !1303
  %135 = icmp eq i32 %134, 0, !dbg !1303
  br i1 %135, label %153, label %136, !dbg !1305

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 3, i64 0, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %137, metadata !174, metadata !DIExpression()) #18, !dbg !1307
  %138 = load i1, i1* @print_element.printed, align 1, !dbg !1309
  br i1 %138, label %139, label %150, !dbg !1310

139:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i32 32, metadata !1255, metadata !DIExpression()) #18, !dbg !1311
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1313, !tbaa !1122
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 5, !dbg !1313
  %142 = load i8*, i8** %141, align 8, !dbg !1313, !tbaa !1264
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 6, !dbg !1313
  %144 = load i8*, i8** %143, align 8, !dbg !1313, !tbaa !1268
  %145 = icmp ult i8* %142, %144, !dbg !1313
  br i1 %145, label %148, label %146, !dbg !1313, !prof !1269, !misexpect !1270

146:                                              ; preds = %139
  %147 = tail call i32 @__overflow(%struct._IO_FILE* %140, i32 32) #18, !dbg !1313
  br label %150, !dbg !1313

148:                                              ; preds = %139
  %149 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !1313
  store i8* %149, i8** %141, align 8, !dbg !1313, !tbaa !1264
  store i8 32, i8* %142, align 1, !dbg !1313, !tbaa !1271
  br label %150, !dbg !1313

150:                                              ; preds = %136, %146, %148
  store i1 true, i1* @print_element.printed, align 1, !dbg !1314
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1315, !tbaa !1122
  %152 = call i32 @fputs_unlocked(i8* nonnull %137, %struct._IO_FILE* %151) #18, !dbg !1315
  br label %153, !dbg !1316

153:                                              ; preds = %133, %150
  %154 = and i32 %63, 16, !dbg !1317
  %155 = icmp eq i32 %154, 0, !dbg !1317
  br i1 %155, label %173, label %156, !dbg !1319

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 4, i64 0, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %157, metadata !174, metadata !DIExpression()) #18, !dbg !1321
  %158 = load i1, i1* @print_element.printed, align 1, !dbg !1323
  br i1 %158, label %159, label %170, !dbg !1324

159:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i32 32, metadata !1255, metadata !DIExpression()) #18, !dbg !1325
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1327, !tbaa !1122
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 5, !dbg !1327
  %162 = load i8*, i8** %161, align 8, !dbg !1327, !tbaa !1264
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 6, !dbg !1327
  %164 = load i8*, i8** %163, align 8, !dbg !1327, !tbaa !1268
  %165 = icmp ult i8* %162, %164, !dbg !1327
  br i1 %165, label %168, label %166, !dbg !1327, !prof !1269, !misexpect !1270

166:                                              ; preds = %159
  %167 = tail call i32 @__overflow(%struct._IO_FILE* %160, i32 32) #18, !dbg !1327
  br label %170, !dbg !1327

168:                                              ; preds = %159
  %169 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !1327
  store i8* %169, i8** %161, align 8, !dbg !1327, !tbaa !1264
  store i8 32, i8* %162, align 1, !dbg !1327, !tbaa !1271
  br label %170, !dbg !1327

170:                                              ; preds = %156, %166, %168
  store i1 true, i1* @print_element.printed, align 1, !dbg !1328
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1329, !tbaa !1122
  %172 = call i32 @fputs_unlocked(i8* nonnull %157, %struct._IO_FILE* %171) #18, !dbg !1329
  br label %173, !dbg !1330

173:                                              ; preds = %153, %170
  call void @llvm.lifetime.end.p0i8(i64 390, i8* nonnull %67) #18, !dbg !1331
  br label %174, !dbg !1332

174:                                              ; preds = %61, %173
  %175 = and i32 %63, 32, !dbg !1333
  %176 = icmp eq i32 %175, 0, !dbg !1333
  %177 = icmp eq i32 %63, -1, !dbg !1334
  %178 = or i1 %177, %176, !dbg !1336
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !156, metadata !DIExpression()), !dbg !1337
  br i1 %178, label %195, label %179, !dbg !1336

179:                                              ; preds = %174
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !174, metadata !DIExpression()) #18, !dbg !1338
  %180 = load i1, i1* @print_element.printed, align 1, !dbg !1340
  br i1 %180, label %181, label %192, !dbg !1341

181:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i32 32, metadata !1255, metadata !DIExpression()) #18, !dbg !1342
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1344, !tbaa !1122
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 5, !dbg !1344
  %184 = load i8*, i8** %183, align 8, !dbg !1344, !tbaa !1264
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 6, !dbg !1344
  %186 = load i8*, i8** %185, align 8, !dbg !1344, !tbaa !1268
  %187 = icmp ult i8* %184, %186, !dbg !1344
  br i1 %187, label %190, label %188, !dbg !1344, !prof !1269, !misexpect !1270

188:                                              ; preds = %181
  %189 = tail call i32 @__overflow(%struct._IO_FILE* %182, i32 32) #18, !dbg !1344
  br label %192, !dbg !1344

190:                                              ; preds = %181
  %191 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !1344
  store i8* %191, i8** %183, align 8, !dbg !1344, !tbaa !1264
  store i8 32, i8* %184, align 1, !dbg !1344, !tbaa !1271
  br label %192, !dbg !1344

192:                                              ; preds = %179, %188, %190
  store i1 true, i1* @print_element.printed, align 1, !dbg !1345
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1346, !tbaa !1122
  %194 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %193) #18, !dbg !1346
  br label %195, !dbg !1347

195:                                              ; preds = %192, %174
  %196 = and i32 %63, 64, !dbg !1348
  %197 = icmp eq i32 %196, 0, !dbg !1348
  %198 = or i1 %177, %197, !dbg !1349
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !159, metadata !DIExpression()), !dbg !1350
  br i1 %198, label %215, label %199, !dbg !1349

199:                                              ; preds = %195
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !174, metadata !DIExpression()) #18, !dbg !1351
  %200 = load i1, i1* @print_element.printed, align 1, !dbg !1354
  br i1 %200, label %201, label %212, !dbg !1355

201:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i32 32, metadata !1255, metadata !DIExpression()) #18, !dbg !1356
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1358, !tbaa !1122
  %203 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 5, !dbg !1358
  %204 = load i8*, i8** %203, align 8, !dbg !1358, !tbaa !1264
  %205 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 6, !dbg !1358
  %206 = load i8*, i8** %205, align 8, !dbg !1358, !tbaa !1268
  %207 = icmp ult i8* %204, %206, !dbg !1358
  br i1 %207, label %210, label %208, !dbg !1358, !prof !1269, !misexpect !1270

208:                                              ; preds = %201
  %209 = tail call i32 @__overflow(%struct._IO_FILE* %202, i32 32) #18, !dbg !1358
  br label %212, !dbg !1358

210:                                              ; preds = %201
  %211 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !1358
  store i8* %211, i8** %203, align 8, !dbg !1358, !tbaa !1264
  store i8 32, i8* %204, align 1, !dbg !1358, !tbaa !1271
  br label %212, !dbg !1358

212:                                              ; preds = %199, %208, %210
  store i1 true, i1* @print_element.printed, align 1, !dbg !1359
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1360, !tbaa !1122
  %214 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %213) #18, !dbg !1360
  br label %215, !dbg !1361

215:                                              ; preds = %212, %195
  %216 = trunc i32 %63 to i8, !dbg !1362
  %217 = icmp slt i8 %216, 0, !dbg !1362
  br i1 %217, label %218, label %234, !dbg !1364

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), metadata !174, metadata !DIExpression()) #18, !dbg !1365
  %219 = load i1, i1* @print_element.printed, align 1, !dbg !1367
  br i1 %219, label %220, label %231, !dbg !1368

220:                                              ; preds = %218
  call void @llvm.dbg.value(metadata i32 32, metadata !1255, metadata !DIExpression()) #18, !dbg !1369
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1371, !tbaa !1122
  %222 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 5, !dbg !1371
  %223 = load i8*, i8** %222, align 8, !dbg !1371, !tbaa !1264
  %224 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 6, !dbg !1371
  %225 = load i8*, i8** %224, align 8, !dbg !1371, !tbaa !1268
  %226 = icmp ult i8* %223, %225, !dbg !1371
  br i1 %226, label %229, label %227, !dbg !1371, !prof !1269, !misexpect !1270

227:                                              ; preds = %220
  %228 = tail call i32 @__overflow(%struct._IO_FILE* %221, i32 32) #18, !dbg !1371
  br label %231, !dbg !1371

229:                                              ; preds = %220
  %230 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1371
  store i8* %230, i8** %222, align 8, !dbg !1371, !tbaa !1264
  store i8 32, i8* %223, align 1, !dbg !1371, !tbaa !1271
  br label %231, !dbg !1371

231:                                              ; preds = %218, %227, %229
  store i1 true, i1* @print_element.printed, align 1, !dbg !1372
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1373, !tbaa !1122
  %233 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %232) #18, !dbg !1373
  br label %234, !dbg !1374

234:                                              ; preds = %231, %215
  call void @llvm.dbg.value(metadata i32 10, metadata !1255, metadata !DIExpression()) #18, !dbg !1375
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1377, !tbaa !1122
  %236 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %235, i64 0, i32 5, !dbg !1377
  %237 = load i8*, i8** %236, align 8, !dbg !1377, !tbaa !1264
  %238 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %235, i64 0, i32 6, !dbg !1377
  %239 = load i8*, i8** %238, align 8, !dbg !1377, !tbaa !1268
  %240 = icmp ult i8* %237, %239, !dbg !1377
  br i1 %240, label %243, label %241, !dbg !1377, !prof !1269, !misexpect !1270

241:                                              ; preds = %234
  %242 = tail call i32 @__overflow(%struct._IO_FILE* %235, i32 10) #18, !dbg !1377
  br label %245, !dbg !1377

243:                                              ; preds = %234
  %244 = getelementptr inbounds i8, i8* %237, i64 1, !dbg !1377
  store i8* %244, i8** %236, align 8, !dbg !1377, !tbaa !1264
  store i8 10, i8* %237, align 1, !dbg !1377, !tbaa !1271
  br label %245, !dbg !1377

245:                                              ; preds = %241, %243
  ret i32 0, !dbg !1378
}

; Function Attrs: nounwind
declare !dbg !84 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !87 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !90 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !117 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !113 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !97 i32 @uname(%struct.utsname* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1379 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1381, metadata !DIExpression()), !dbg !1382
  store i8* %0, i8** @file_name, align 8, !dbg !1383, !tbaa !1122
  ret void, !dbg !1384
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1385 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1389, metadata !DIExpression()), !dbg !1390
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1391, !tbaa !1392
  ret void, !dbg !1394
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1395 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1400, !tbaa !1122
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1401
  %3 = icmp eq i32 %2, 0, !dbg !1402
  br i1 %3, label %22, label %4, !dbg !1403

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1404, !tbaa !1392, !range !1405
  %6 = icmp eq i8 %5, 0, !dbg !1404
  br i1 %6, label %11, label %7, !dbg !1406

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #23, !dbg !1407
  %9 = load i32, i32* %8, align 4, !dbg !1407, !tbaa !1129
  %10 = icmp eq i32 %9, 32, !dbg !1408
  br i1 %10, label %22, label %11, !dbg !1409

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 5) #18, !dbg !1410
  call void @llvm.dbg.value(metadata i8* %12, metadata !1397, metadata !DIExpression()), !dbg !1411
  %13 = load i8*, i8** @file_name, align 8, !dbg !1412, !tbaa !1122
  %14 = icmp eq i8* %13, null, !dbg !1412
  %15 = tail call i32* @__errno_location() #23, !dbg !1414
  %16 = load i32, i32* %15, align 4, !dbg !1414, !tbaa !1129
  br i1 %14, label %19, label %17, !dbg !1415

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1416
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.51, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1417
  br label %20, !dbg !1417

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.52, i64 0, i64 0), i8* %12) #18, !dbg !1418
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1419, !tbaa !1129
  tail call void @_exit(i32 %21) #22, !dbg !1420
  unreachable, !dbg !1420

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1421, !tbaa !1122
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1423
  %25 = icmp eq i32 %24, 0, !dbg !1424
  br i1 %25, label %28, label %26, !dbg !1425

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1426, !tbaa !1129
  tail call void @_exit(i32 %27) #22, !dbg !1427
  unreachable, !dbg !1427

28:                                               ; preds = %22
  ret void, !dbg !1428
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1429 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1431, metadata !DIExpression()), !dbg !1434
  %2 = icmp eq i8* %0, null, !dbg !1435
  br i1 %2, label %3, label %6, !dbg !1437

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1438, !tbaa !1122
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #24, !dbg !1440
  tail call void @abort() #22, !dbg !1441
  unreachable, !dbg !1441

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %7, metadata !1432, metadata !DIExpression()), !dbg !1434
  %8 = icmp eq i8* %7, null, !dbg !1443
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1444
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1444
  call void @llvm.dbg.value(metadata i8* %10, metadata !1433, metadata !DIExpression()), !dbg !1434
  %11 = ptrtoint i8* %10 to i64, !dbg !1445
  %12 = ptrtoint i8* %0 to i64, !dbg !1445
  %13 = sub i64 %11, %12, !dbg !1445
  %14 = icmp sgt i64 %13, 6, !dbg !1447
  br i1 %14, label %15, label %24, !dbg !1448

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1449
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.60, i64 0, i64 0), i64 7) #21, !dbg !1450
  %18 = icmp eq i32 %17, 0, !dbg !1451
  br i1 %18, label %19, label %24, !dbg !1452

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1431, metadata !DIExpression()), !dbg !1434
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.61, i64 0, i64 0), i64 3) #21, !dbg !1453
  %21 = icmp eq i32 %20, 0, !dbg !1456
  br i1 %21, label %22, label %24, !dbg !1457

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1458
  call void @llvm.dbg.value(metadata i8* %23, metadata !1431, metadata !DIExpression()), !dbg !1434
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1460, !tbaa !1122
  br label %24, !dbg !1461

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1431, metadata !DIExpression()), !dbg !1434
  store i8* %25, i8** @program_name, align 8, !dbg !1462, !tbaa !1122
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1463, !tbaa !1122
  ret void, !dbg !1464
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1465 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1470, metadata !DIExpression()), !dbg !1473
  %2 = tail call i32* @__errno_location() #23, !dbg !1474
  %3 = load i32, i32* %2, align 4, !dbg !1474, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %3, metadata !1471, metadata !DIExpression()), !dbg !1473
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1475
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1475
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1475
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1476
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1476
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1472, metadata !DIExpression()), !dbg !1473
  store i32 %3, i32* %2, align 4, !dbg !1477, !tbaa !1129
  ret %struct.quoting_options* %8, !dbg !1478
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1479 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1483, metadata !DIExpression()), !dbg !1484
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1485
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1485
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1486
  %5 = load i32, i32* %4, align 8, !dbg !1486, !tbaa !1487
  ret i32 %5, !dbg !1489
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1490 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1494, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %1, metadata !1495, metadata !DIExpression()), !dbg !1496
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1497
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1497
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1498
  store i32 %1, i32* %5, align 8, !dbg !1499, !tbaa !1487
  ret void, !dbg !1500
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1501 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1505, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %1, metadata !1506, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %2, metadata !1507, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %1, metadata !1508, metadata !DIExpression()), !dbg !1513
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1514
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1514
  %6 = lshr i8 %1, 5, !dbg !1515
  %7 = zext i8 %6 to i64, !dbg !1515
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1516
  call void @llvm.dbg.value(metadata i32* %8, metadata !1509, metadata !DIExpression()), !dbg !1513
  %9 = and i8 %1, 31, !dbg !1517
  %10 = zext i8 %9 to i32, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %10, metadata !1511, metadata !DIExpression()), !dbg !1513
  %11 = load i32, i32* %8, align 4, !dbg !1518, !tbaa !1129
  %12 = lshr i32 %11, %10, !dbg !1519
  %13 = and i32 %12, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %13, metadata !1512, metadata !DIExpression()), !dbg !1513
  %14 = and i32 %2, 1, !dbg !1521
  %15 = xor i32 %13, %14, !dbg !1522
  %16 = shl i32 %15, %10, !dbg !1523
  %17 = xor i32 %16, %11, !dbg !1524
  store i32 %17, i32* %8, align 4, !dbg !1524, !tbaa !1129
  ret i32 %13, !dbg !1525
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1526 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1530, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i32 %1, metadata !1531, metadata !DIExpression()), !dbg !1533
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1534
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1530, metadata !DIExpression()), !dbg !1533
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1537
  %6 = load i32, i32* %5, align 4, !dbg !1537, !tbaa !1538
  call void @llvm.dbg.value(metadata i32 %6, metadata !1532, metadata !DIExpression()), !dbg !1533
  store i32 %1, i32* %5, align 4, !dbg !1539, !tbaa !1538
  ret i32 %6, !dbg !1540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1541 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1545, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %1, metadata !1546, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %2, metadata !1547, metadata !DIExpression()), !dbg !1548
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1549
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1545, metadata !DIExpression()), !dbg !1548
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1552
  store i32 10, i32* %6, align 8, !dbg !1553, !tbaa !1487
  %7 = icmp ne i8* %1, null, !dbg !1554
  %8 = icmp ne i8* %2, null, !dbg !1556
  %9 = and i1 %7, %8, !dbg !1557
  br i1 %9, label %11, label %10, !dbg !1557

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1558
  unreachable, !dbg !1558

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1559
  store i8* %1, i8** %12, align 8, !dbg !1560, !tbaa !1561
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1562
  store i8* %2, i8** %13, align 8, !dbg !1563, !tbaa !1564
  ret void, !dbg !1565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1570, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i64 %1, metadata !1571, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i8* %2, metadata !1572, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i64 %3, metadata !1573, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1574, metadata !DIExpression()), !dbg !1578
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1579
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1579
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1575, metadata !DIExpression()), !dbg !1578
  %8 = tail call i32* @__errno_location() #23, !dbg !1580
  %9 = load i32, i32* %8, align 4, !dbg !1580, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %9, metadata !1576, metadata !DIExpression()), !dbg !1578
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1581
  %11 = load i32, i32* %10, align 8, !dbg !1581, !tbaa !1487
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1582
  %13 = load i32, i32* %12, align 4, !dbg !1582, !tbaa !1538
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1583
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1584
  %16 = load i8*, i8** %15, align 8, !dbg !1584, !tbaa !1561
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1585
  %18 = load i8*, i8** %17, align 8, !dbg !1585, !tbaa !1564
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %19, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i32 %9, i32* %8, align 4, !dbg !1587, !tbaa !1129
  ret i64 %19, !dbg !1588
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1589 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1595, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %1, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %2, metadata !1597, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %3, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %4, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %5, metadata !1600, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32* %6, metadata !1601, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %7, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %8, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* null, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1653
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1654
  %14 = icmp eq i64 %13, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i1 %14, metadata !1610, metadata !DIExpression()), !dbg !1653
  %15 = lshr i32 %5, 1, !dbg !1656
  %16 = trunc i32 %15 to i8, !dbg !1656
  %17 = and i8 %16, 1, !dbg !1656
  call void @llvm.dbg.value(metadata i8 %17, metadata !1611, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1653
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1657
  %19 = and i32 %5, 4, !dbg !1659
  %20 = icmp eq i32 %19, 0, !dbg !1659
  %21 = and i32 %5, 1, !dbg !1662
  %22 = icmp eq i32 %21, 0, !dbg !1662
  %23 = bitcast i64* %10 to i8*, !dbg !1665
  %24 = bitcast i32* %12 to i8*, !dbg !1666
  %25 = icmp eq i32* %6, null, !dbg !1667
  br label %26, !dbg !1669

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1670
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1671
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1672
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1673
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1653
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1674
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1675
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1676
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %38, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %37, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %36, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %35, metadata !1611, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %34, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %33, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %32, metadata !1608, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %31, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %30, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %29, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %28, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %27, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1647), !dbg !1677
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
  ], !dbg !1678

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %35, metadata !1611, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 5, metadata !1599, metadata !DIExpression()), !dbg !1653
  br label %92, !dbg !1679

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1611, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 5, metadata !1599, metadata !DIExpression()), !dbg !1653
  %42 = and i8 %35, 1, !dbg !1681
  %43 = icmp eq i8 %42, 0, !dbg !1681
  br i1 %43, label %44, label %92, !dbg !1679

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1683
  br i1 %45, label %92, label %46, !dbg !1686

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1683, !tbaa !1271
  br label %92, !dbg !1683

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %27), !dbg !1687
  call void @llvm.dbg.value(metadata i8* %48, metadata !1602, metadata !DIExpression()), !dbg !1653
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %27), !dbg !1691
  call void @llvm.dbg.value(metadata i8* %49, metadata !1603, metadata !DIExpression()), !dbg !1653
  br label %50, !dbg !1692

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %51, metadata !1602, metadata !DIExpression()), !dbg !1653
  %53 = and i8 %35, 1, !dbg !1693
  %54 = icmp eq i8 %53, 0, !dbg !1693
  br i1 %54, label %55, label %70, !dbg !1695

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1605, metadata !DIExpression()), !dbg !1653
  %56 = load i8, i8* %51, align 1, !dbg !1696, !tbaa !1271
  %57 = icmp eq i8 %56, 0, !dbg !1699
  br i1 %57, label %70, label %58, !dbg !1699

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %61, metadata !1605, metadata !DIExpression()), !dbg !1653
  %62 = icmp ult i64 %61, %39, !dbg !1700
  br i1 %62, label %63, label %65, !dbg !1703

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1700
  store i8 %59, i8* %64, align 1, !dbg !1700, !tbaa !1271
  br label %65, !dbg !1700

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %66, metadata !1605, metadata !DIExpression()), !dbg !1653
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1704
  call void @llvm.dbg.value(metadata i8* %67, metadata !1607, metadata !DIExpression()), !dbg !1653
  %68 = load i8, i8* %67, align 1, !dbg !1696, !tbaa !1271
  %69 = icmp eq i8 %68, 0, !dbg !1699
  br i1 %69, label %70, label %58, !dbg !1699, !llvm.loop !1705

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1707
  call void @llvm.dbg.value(metadata i64 %71, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %52, metadata !1607, metadata !DIExpression()), !dbg !1653
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %72, metadata !1608, metadata !DIExpression()), !dbg !1653
  br label %92, !dbg !1709

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1653
  br label %74, !dbg !1710

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8 %75, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1653
  br label %76, !dbg !1711

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1673
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8 %78, metadata !1611, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %77, metadata !1609, metadata !DIExpression()), !dbg !1653
  %79 = and i8 %78, 1, !dbg !1712
  %80 = icmp eq i8 %79, 0, !dbg !1712
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1714
  br label %82, !dbg !1714

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1653
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1656
  call void @llvm.dbg.value(metadata i8 %84, metadata !1611, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %83, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  %85 = and i8 %84, 1, !dbg !1715
  %86 = icmp eq i8 %85, 0, !dbg !1715
  br i1 %86, label %87, label %92, !dbg !1717

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1718
  br i1 %88, label %92, label %89, !dbg !1721

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1718, !tbaa !1271
  br label %92, !dbg !1718

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1653
  br label %92, !dbg !1722

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1723
  unreachable, !dbg !1723

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1707
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %40 ], !dbg !1653
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1653
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1653
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8 %100, metadata !1611, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %98, metadata !1608, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %96, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %93, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 0, metadata !1604, metadata !DIExpression()), !dbg !1653
  %101 = and i8 %99, 1, !dbg !1724
  %102 = icmp ne i8 %101, 0, !dbg !1724
  %103 = icmp ne i32 %93, 2, !dbg !1724
  %104 = and i1 %103, %102, !dbg !1724
  %105 = icmp ne i64 %98, 0, !dbg !1724
  %106 = and i1 %105, %104, !dbg !1724
  %107 = icmp ugt i64 %98, 1, !dbg !1724
  %108 = and i8 %100, 1, !dbg !1726
  %109 = icmp eq i8 %108, 0, !dbg !1726
  %110 = icmp eq i32 %93, 2, !dbg !1729
  %111 = or i1 %103, %109, !dbg !1731
  %112 = icmp ne i8 %108, 0, !dbg !1733
  %113 = and i1 %110, %112, !dbg !1733
  %114 = xor i1 %102, true, !dbg !1734
  %115 = xor i1 %104, true, !dbg !1667
  %116 = and i1 %109, %115, !dbg !1667
  %117 = or i1 %25, %116, !dbg !1667
  %118 = and i8 %99, %100, !dbg !1735
  %119 = and i8 %118, 1, !dbg !1735
  %120 = icmp ne i8 %119, 0, !dbg !1735
  %121 = and i1 %120, %105, !dbg !1735
  br label %122, !dbg !1737

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1738
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1707
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1670
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1674
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1675
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1676
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %126, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %123, metadata !1604, metadata !DIExpression()), !dbg !1653
  %131 = icmp eq i64 %126, -1, !dbg !1739
  br i1 %131, label %132, label %136, !dbg !1740

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1741
  %134 = load i8, i8* %133, align 1, !dbg !1741, !tbaa !1271
  %135 = icmp eq i8 %134, 0, !dbg !1742
  br i1 %135, label %581, label %138, !dbg !1743

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1744
  br i1 %137, label %581, label %138, !dbg !1743

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1745
  br i1 %106, label %139, label %154, !dbg !1746

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1747
  %141 = and i1 %107, %131, !dbg !1748
  br i1 %141, label %142, label %144, !dbg !1748

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %143, metadata !1598, metadata !DIExpression()), !dbg !1653
  br label %144, !dbg !1750

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1598, metadata !DIExpression()), !dbg !1653
  %146 = icmp ugt i64 %140, %145, !dbg !1751
  br i1 %146, label %154, label %147, !dbg !1752

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1753
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1754
  %150 = icmp ne i32 %149, 0, !dbg !1755
  %151 = or i1 %150, %109, !dbg !1756
  %152 = xor i1 %150, true, !dbg !1756
  %153 = zext i1 %152 to i8, !dbg !1756
  br i1 %151, label %154, label %639, !dbg !1756

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1745
  call void @llvm.dbg.value(metadata i8 %156, metadata !1620, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %155, metadata !1598, metadata !DIExpression()), !dbg !1653
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1757
  %158 = load i8, i8* %157, align 1, !dbg !1757, !tbaa !1271
  call void @llvm.dbg.value(metadata i8 %158, metadata !1615, metadata !DIExpression()), !dbg !1745
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
  ], !dbg !1758

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1759

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1760

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1745
  %162 = and i8 %127, 1, !dbg !1763
  %163 = icmp eq i8 %162, 0, !dbg !1763
  %164 = and i1 %110, %163, !dbg !1763
  br i1 %164, label %165, label %181, !dbg !1763

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1765
  br i1 %166, label %167, label %169, !dbg !1769

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1765
  store i8 39, i8* %168, align 1, !dbg !1765, !tbaa !1271
  br label %169, !dbg !1765

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %170, metadata !1605, metadata !DIExpression()), !dbg !1653
  %171 = icmp ult i64 %170, %130, !dbg !1770
  br i1 %171, label %172, label %174, !dbg !1773

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1770
  store i8 36, i8* %173, align 1, !dbg !1770, !tbaa !1271
  br label %174, !dbg !1770

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %175, metadata !1605, metadata !DIExpression()), !dbg !1653
  %176 = icmp ult i64 %175, %130, !dbg !1774
  br i1 %176, label %177, label %179, !dbg !1777

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1774
  store i8 39, i8* %178, align 1, !dbg !1774, !tbaa !1271
  br label %179, !dbg !1774

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %180, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1653
  br label %181, !dbg !1778

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1653
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8 %183, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %182, metadata !1605, metadata !DIExpression()), !dbg !1653
  %184 = icmp ult i64 %182, %130, !dbg !1779
  br i1 %184, label %185, label %187, !dbg !1782

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1779
  store i8 92, i8* %186, align 1, !dbg !1779, !tbaa !1271
  br label %187, !dbg !1779

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %188, metadata !1605, metadata !DIExpression()), !dbg !1653
  br i1 %103, label %189, label %463, !dbg !1783

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1785
  %191 = icmp ult i64 %190, %155, !dbg !1786
  br i1 %191, label %192, label %463, !dbg !1787

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1788
  %194 = load i8, i8* %193, align 1, !dbg !1788, !tbaa !1271
  %195 = add i8 %194, -48, !dbg !1789
  %196 = icmp ult i8 %195, 10, !dbg !1789
  br i1 %196, label %197, label %463, !dbg !1789

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1790
  br i1 %198, label %199, label %201, !dbg !1794

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1790
  store i8 48, i8* %200, align 1, !dbg !1790, !tbaa !1271
  br label %201, !dbg !1790

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %202, metadata !1605, metadata !DIExpression()), !dbg !1653
  %203 = icmp ult i64 %202, %130, !dbg !1795
  br i1 %203, label %204, label %206, !dbg !1798

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1795
  store i8 48, i8* %205, align 1, !dbg !1795, !tbaa !1271
  br label %206, !dbg !1795

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %207, metadata !1605, metadata !DIExpression()), !dbg !1653
  br label %463, !dbg !1799

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1800

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1801

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1802

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1803

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1804
  %214 = icmp ult i64 %213, %155, !dbg !1805
  br i1 %214, label %215, label %463, !dbg !1806

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1807
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1808
  %218 = load i8, i8* %217, align 1, !dbg !1808, !tbaa !1271
  %219 = icmp eq i8 %218, 63, !dbg !1809
  br i1 %219, label %220, label %463, !dbg !1810

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1811
  %222 = load i8, i8* %221, align 1, !dbg !1811, !tbaa !1271
  %223 = sext i8 %222 to i32, !dbg !1811
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
  ], !dbg !1812

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1813

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1615, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %213, metadata !1604, metadata !DIExpression()), !dbg !1653
  %226 = icmp ult i64 %124, %130, !dbg !1815
  br i1 %226, label %227, label %229, !dbg !1818

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1815
  store i8 63, i8* %228, align 1, !dbg !1815, !tbaa !1271
  br label %229, !dbg !1815

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %230, metadata !1605, metadata !DIExpression()), !dbg !1653
  %231 = icmp ult i64 %230, %130, !dbg !1819
  br i1 %231, label %232, label %234, !dbg !1822

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1819
  store i8 34, i8* %233, align 1, !dbg !1819, !tbaa !1271
  br label %234, !dbg !1819

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %235, metadata !1605, metadata !DIExpression()), !dbg !1653
  %236 = icmp ult i64 %235, %130, !dbg !1823
  br i1 %236, label %237, label %239, !dbg !1826

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1823
  store i8 34, i8* %238, align 1, !dbg !1823, !tbaa !1271
  br label %239, !dbg !1823

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %240, metadata !1605, metadata !DIExpression()), !dbg !1653
  %241 = icmp ult i64 %240, %130, !dbg !1827
  br i1 %241, label %242, label %244, !dbg !1830

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1827
  store i8 63, i8* %243, align 1, !dbg !1827, !tbaa !1271
  br label %244, !dbg !1827

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %245, metadata !1605, metadata !DIExpression()), !dbg !1653
  br label %463, !dbg !1831

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1619, metadata !DIExpression()), !dbg !1745
  br label %256, !dbg !1832

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1619, metadata !DIExpression()), !dbg !1745
  br label %256, !dbg !1833

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1619, metadata !DIExpression()), !dbg !1745
  br label %254, !dbg !1834

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1619, metadata !DIExpression()), !dbg !1745
  br label %254, !dbg !1835

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1619, metadata !DIExpression()), !dbg !1745
  br label %256, !dbg !1836

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1619, metadata !DIExpression()), !dbg !1745
  br i1 %110, label %252, label %253, !dbg !1837

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1838

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1841

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1842
  call void @llvm.dbg.value(metadata i8 %255, metadata !1619, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.label(metadata !1648), !dbg !1843
  br i1 %111, label %256, label %625, !dbg !1844

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1842
  call void @llvm.dbg.value(metadata i8 %257, metadata !1619, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.label(metadata !1649), !dbg !1846
  br i1 %102, label %488, label %463, !dbg !1847

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1848

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1849, !tbaa !1271
  %261 = icmp eq i8 %260, 0, !dbg !1850
  br i1 %261, label %262, label %463, !dbg !1851

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1852
  br i1 %263, label %264, label %463, !dbg !1854

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1745
  br label %265, !dbg !1855

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1745
  call void @llvm.dbg.value(metadata i8 %266, metadata !1622, metadata !DIExpression()), !dbg !1745
  br i1 %111, label %463, label %625, !dbg !1856

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1745
  br i1 %110, label %268, label %463, !dbg !1857

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1858

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1860
  %271 = icmp ne i64 %125, 0, !dbg !1862
  %272 = or i1 %271, %270, !dbg !1863
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1863
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %274, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %273, metadata !1606, metadata !DIExpression()), !dbg !1653
  %275 = icmp ult i64 %124, %274, !dbg !1864
  br i1 %275, label %276, label %278, !dbg !1867

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1864
  store i8 39, i8* %277, align 1, !dbg !1864, !tbaa !1271
  br label %278, !dbg !1864

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %279, metadata !1605, metadata !DIExpression()), !dbg !1653
  %280 = icmp ult i64 %279, %274, !dbg !1868
  br i1 %280, label %281, label %283, !dbg !1871

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1868
  store i8 92, i8* %282, align 1, !dbg !1868, !tbaa !1271
  br label %283, !dbg !1868

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %284, metadata !1605, metadata !DIExpression()), !dbg !1653
  %285 = icmp ult i64 %284, %274, !dbg !1872
  br i1 %285, label %286, label %288, !dbg !1875

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1872
  store i8 39, i8* %287, align 1, !dbg !1872, !tbaa !1271
  br label %288, !dbg !1872

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %289, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1653
  br label %463, !dbg !1876

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1877

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1623, metadata !DIExpression()), !dbg !1878
  %292 = tail call i16** @__ctype_b_loc() #23, !dbg !1879
  %293 = load i16*, i16** %292, align 8, !dbg !1879, !tbaa !1122
  %294 = zext i8 %158 to i64, !dbg !1879
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1879
  %296 = load i16, i16* %295, align 2, !dbg !1879, !tbaa !1881
  %297 = lshr i16 %296, 14, !dbg !1882
  %298 = trunc i16 %297 to i8, !dbg !1882
  %299 = and i8 %298, 1, !dbg !1882
  call void @llvm.dbg.value(metadata i8 %299, metadata !1626, metadata !DIExpression()), !dbg !1878
  br label %355, !dbg !1883

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1884
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1627, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8* %23, metadata !1886, metadata !DIExpression()) #18, !dbg !1894
  call void @llvm.dbg.value(metadata i32 0, metadata !1892, metadata !DIExpression()) #18, !dbg !1894
  call void @llvm.dbg.value(metadata i64 8, metadata !1893, metadata !DIExpression()) #18, !dbg !1894
  store i64 0, i64* %10, align 8, !dbg !1896
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 1, metadata !1626, metadata !DIExpression()), !dbg !1878
  %301 = icmp eq i64 %155, -1, !dbg !1897
  br i1 %301, label %302, label %304, !dbg !1899

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %303, metadata !1598, metadata !DIExpression()), !dbg !1653
  br label %304, !dbg !1901

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1745
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  br label %306, !dbg !1902

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1903
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1904
  call void @llvm.dbg.value(metadata i8 %308, metadata !1626, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %307, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1905
  %309 = add i64 %307, %123, !dbg !1906
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1907
  %311 = sub i64 %305, %309, !dbg !1908
  call void @llvm.dbg.value(metadata i32* %12, metadata !1633, metadata !DIExpression(DW_OP_deref)), !dbg !1666
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %312, metadata !1636, metadata !DIExpression()), !dbg !1666
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1910

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %307, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %307, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %307, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %307, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %307, metadata !1623, metadata !DIExpression()), !dbg !1878
  %314 = icmp ugt i64 %305, %309, !dbg !1911
  br i1 %314, label %315, label %340, !dbg !1913

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1914
  br label %317, !dbg !1914

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1623, metadata !DIExpression()), !dbg !1878
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1915
  %321 = load i8, i8* %320, align 1, !dbg !1915, !tbaa !1271
  %322 = icmp eq i8 %321, 0, !dbg !1913
  br i1 %322, label %340, label %323, !dbg !1914

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %324, metadata !1623, metadata !DIExpression()), !dbg !1878
  %325 = add i64 %324, %123, !dbg !1917
  %326 = icmp ult i64 %325, %305, !dbg !1911
  br i1 %326, label %317, label %340, !dbg !1913, !llvm.loop !1918

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1919
  %329 = and i1 %113, %328, !dbg !1922
  call void @llvm.dbg.value(metadata i64 1, metadata !1637, metadata !DIExpression()), !dbg !1923
  br i1 %329, label %330, label %343, !dbg !1922

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1637, metadata !DIExpression()), !dbg !1923
  %332 = add i64 %331, %309, !dbg !1924
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1925
  %334 = load i8, i8* %333, align 1, !dbg !1925, !tbaa !1271
  %335 = sext i8 %334 to i32, !dbg !1925
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1926

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %337, metadata !1637, metadata !DIExpression()), !dbg !1923
  %338 = icmp eq i64 %337, %312, !dbg !1919
  br i1 %338, label %343, label %330, !dbg !1928, !llvm.loop !1929

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %308, metadata !1626, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %307, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %308, metadata !1626, metadata !DIExpression()), !dbg !1878
  br label %340, !dbg !1931

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1931
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1932, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %344, metadata !1633, metadata !DIExpression()), !dbg !1666
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !1934
  %346 = icmp eq i32 %345, 0, !dbg !1934
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1935
  call void @llvm.dbg.value(metadata i8 %347, metadata !1626, metadata !DIExpression()), !dbg !1878
  %348 = add i64 %312, %307, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %348, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %347, metadata !1626, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %348, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1931
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1937
  %350 = icmp eq i32 %349, 0, !dbg !1938
  br i1 %350, label %306, label %351, !dbg !1939, !llvm.loop !1940

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1942
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %99, metadata !1609, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %305, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1931
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1942
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1745
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1943
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1943
  call void @llvm.dbg.value(metadata i8 %358, metadata !1626, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %357, metadata !1623, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %356, metadata !1598, metadata !DIExpression()), !dbg !1653
  %359 = and i8 %358, 1, !dbg !1944
  %360 = icmp ne i8 %359, 0, !dbg !1944
  call void @llvm.dbg.value(metadata i8 %359, metadata !1622, metadata !DIExpression()), !dbg !1745
  %361 = icmp ult i64 %357, 2, !dbg !1945
  %362 = or i1 %360, %114, !dbg !1946
  %363 = and i1 %361, %362, !dbg !1947
  br i1 %363, label %463, label %364, !dbg !1947

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %365, metadata !1644, metadata !DIExpression()), !dbg !1949
  br label %366, !dbg !1950

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1738
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1653
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1674
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1745
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1745
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1951
  call void @llvm.dbg.value(metadata i8 %372, metadata !1621, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %371, metadata !1620, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %370, metadata !1615, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %369, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %368, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %367, metadata !1604, metadata !DIExpression()), !dbg !1653
  br i1 %362, label %419, label %373, !dbg !1952

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1957

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1745
  %375 = and i8 %369, 1, !dbg !1960
  %376 = icmp eq i8 %375, 0, !dbg !1960
  %377 = and i1 %110, %376, !dbg !1960
  br i1 %377, label %378, label %394, !dbg !1960

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1962
  br i1 %379, label %380, label %382, !dbg !1966

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1962
  store i8 39, i8* %381, align 1, !dbg !1962, !tbaa !1271
  br label %382, !dbg !1962

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %383, metadata !1605, metadata !DIExpression()), !dbg !1653
  %384 = icmp ult i64 %383, %130, !dbg !1967
  br i1 %384, label %385, label %387, !dbg !1970

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1967
  store i8 36, i8* %386, align 1, !dbg !1967, !tbaa !1271
  br label %387, !dbg !1967

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %388, metadata !1605, metadata !DIExpression()), !dbg !1653
  %389 = icmp ult i64 %388, %130, !dbg !1971
  br i1 %389, label %390, label %392, !dbg !1974

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1971
  store i8 39, i8* %391, align 1, !dbg !1971, !tbaa !1271
  br label %392, !dbg !1971

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %393, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1653
  br label %394, !dbg !1975

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1653
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8 %396, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %395, metadata !1605, metadata !DIExpression()), !dbg !1653
  %397 = icmp ult i64 %395, %130, !dbg !1976
  br i1 %397, label %398, label %400, !dbg !1979

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1976
  store i8 92, i8* %399, align 1, !dbg !1976, !tbaa !1271
  br label %400, !dbg !1976

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %401, metadata !1605, metadata !DIExpression()), !dbg !1653
  %402 = icmp ult i64 %401, %130, !dbg !1980
  br i1 %402, label %403, label %407, !dbg !1983

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1980
  %405 = or i8 %404, 48, !dbg !1980
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1980
  store i8 %405, i8* %406, align 1, !dbg !1980, !tbaa !1271
  br label %407, !dbg !1980

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %408, metadata !1605, metadata !DIExpression()), !dbg !1653
  %409 = icmp ult i64 %408, %130, !dbg !1984
  br i1 %409, label %410, label %415, !dbg !1987

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1984
  %412 = and i8 %411, 7, !dbg !1984
  %413 = or i8 %412, 48, !dbg !1984
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1984
  store i8 %413, i8* %414, align 1, !dbg !1984, !tbaa !1271
  br label %415, !dbg !1984

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %416, metadata !1605, metadata !DIExpression()), !dbg !1653
  %417 = and i8 %370, 7, !dbg !1988
  %418 = or i8 %417, 48, !dbg !1989
  call void @llvm.dbg.value(metadata i8 %418, metadata !1615, metadata !DIExpression()), !dbg !1745
  br label %428, !dbg !1990

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1991
  %421 = icmp eq i8 %420, 0, !dbg !1991
  br i1 %421, label %428, label %422, !dbg !1993

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1994
  br i1 %423, label %424, label %426, !dbg !1998

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1994
  store i8 92, i8* %425, align 1, !dbg !1994, !tbaa !1271
  br label %426, !dbg !1994

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %427, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1745
  br label %428, !dbg !1999

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1653
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1674
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1745
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1745
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1745
  call void @llvm.dbg.value(metadata i8 %433, metadata !1621, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %432, metadata !1620, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %431, metadata !1615, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %430, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %429, metadata !1605, metadata !DIExpression()), !dbg !1653
  %434 = add i64 %367, 1, !dbg !2000
  %435 = icmp ugt i64 %365, %434, !dbg !2002
  br i1 %435, label %436, label %526, !dbg !2003

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2004
  %438 = icmp ne i8 %437, 0, !dbg !2004
  %439 = and i8 %433, 1, !dbg !2004
  %440 = icmp eq i8 %439, 0, !dbg !2004
  %441 = and i1 %438, %440, !dbg !2004
  br i1 %441, label %442, label %453, !dbg !2004

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2007
  br i1 %443, label %444, label %446, !dbg !2011

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2007
  store i8 39, i8* %445, align 1, !dbg !2007, !tbaa !1271
  br label %446, !dbg !2007

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %447, metadata !1605, metadata !DIExpression()), !dbg !1653
  %448 = icmp ult i64 %447, %130, !dbg !2012
  br i1 %448, label %449, label %451, !dbg !2015

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2012
  store i8 39, i8* %450, align 1, !dbg !2012, !tbaa !1271
  br label %451, !dbg !2012

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %452, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1653
  br label %453, !dbg !2016

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2017
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8 %455, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %454, metadata !1605, metadata !DIExpression()), !dbg !1653
  %456 = icmp ult i64 %454, %130, !dbg !2018
  br i1 %456, label %457, label %459, !dbg !2021

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2018
  store i8 %431, i8* %458, align 1, !dbg !2018, !tbaa !1271
  br label %459, !dbg !2018

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %460, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %434, metadata !1604, metadata !DIExpression()), !dbg !1653
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2022
  %462 = load i8, i8* %461, align 1, !dbg !2022, !tbaa !1271
  call void @llvm.dbg.value(metadata i8 %462, metadata !1615, metadata !DIExpression()), !dbg !1745
  br label %366, !dbg !2023, !llvm.loop !2024

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1738
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1653
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1670
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2027
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1653
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1653
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1745
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1745
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1745
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %472, metadata !1622, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %471, metadata !1621, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %156, metadata !1620, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %470, metadata !1615, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %469, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %468, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %467, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %466, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %465, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %464, metadata !1604, metadata !DIExpression()), !dbg !1653
  br i1 %117, label %486, label %474, !dbg !2028

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2029
  %476 = zext i8 %475 to i64, !dbg !2029
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2030
  %478 = load i32, i32* %477, align 4, !dbg !2030, !tbaa !1129
  %479 = and i8 %470, 31, !dbg !2031
  %480 = zext i8 %479 to i32, !dbg !2031
  %481 = shl nuw i32 1, %480, !dbg !2032
  %482 = and i32 %478, %481, !dbg !2032
  %483 = icmp eq i32 %482, 0, !dbg !2032
  %484 = icmp eq i8 %156, 0, !dbg !2033
  %485 = and i1 %484, %483, !dbg !2034
  br i1 %485, label %526, label %488, !dbg !2034

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2033
  br i1 %487, label %526, label %488, !dbg !2035

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2036
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1653
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1670
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2027
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1674
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1675
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1745
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1745
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %496, metadata !1622, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %495, metadata !1615, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %494, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %493, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %492, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %491, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %490, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %489, metadata !1604, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1650), !dbg !2037
  br i1 %109, label %498, label %629, !dbg !2038

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1745
  %499 = and i8 %493, 1, !dbg !2040
  %500 = icmp eq i8 %499, 0, !dbg !2040
  %501 = and i1 %110, %500, !dbg !2040
  br i1 %501, label %502, label %518, !dbg !2040

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2042
  br i1 %503, label %504, label %506, !dbg !2046

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2042
  store i8 39, i8* %505, align 1, !dbg !2042, !tbaa !1271
  br label %506, !dbg !2042

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %507, metadata !1605, metadata !DIExpression()), !dbg !1653
  %508 = icmp ult i64 %507, %497, !dbg !2047
  br i1 %508, label %509, label %511, !dbg !2050

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2047
  store i8 36, i8* %510, align 1, !dbg !2047, !tbaa !1271
  br label %511, !dbg !2047

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %512, metadata !1605, metadata !DIExpression()), !dbg !1653
  %513 = icmp ult i64 %512, %497, !dbg !2051
  br i1 %513, label %514, label %516, !dbg !2054

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2051
  store i8 39, i8* %515, align 1, !dbg !2051, !tbaa !1271
  br label %516, !dbg !2051

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %517, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1653
  br label %518, !dbg !2055

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1745
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8 %520, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %519, metadata !1605, metadata !DIExpression()), !dbg !1653
  %521 = icmp ult i64 %519, %497, !dbg !2056
  br i1 %521, label %522, label %524, !dbg !2059

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2056
  store i8 92, i8* %523, align 1, !dbg !2056, !tbaa !1271
  br label %524, !dbg !2056

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %525, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %536, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %535, metadata !1622, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %534, metadata !1621, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %533, metadata !1615, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %532, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %531, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %530, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %529, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %528, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %527, metadata !1604, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1651), !dbg !2060
  br label %553, !dbg !2061

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2036
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1653
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1670
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2027
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1674
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1675
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2064
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1745
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1745
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %535, metadata !1622, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %534, metadata !1621, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %533, metadata !1615, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 %532, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %531, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %530, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %529, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %528, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %527, metadata !1604, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1651), !dbg !2060
  %537 = and i8 %531, 1, !dbg !2061
  %538 = icmp ne i8 %537, 0, !dbg !2061
  %539 = and i8 %534, 1, !dbg !2061
  %540 = icmp eq i8 %539, 0, !dbg !2061
  %541 = and i1 %538, %540, !dbg !2061
  br i1 %541, label %542, label %553, !dbg !2061

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2065
  br i1 %543, label %544, label %546, !dbg !2069

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2065
  store i8 39, i8* %545, align 1, !dbg !2065, !tbaa !1271
  br label %546, !dbg !2065

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %547, metadata !1605, metadata !DIExpression()), !dbg !1653
  %548 = icmp ult i64 %547, %536, !dbg !2070
  br i1 %548, label %549, label %551, !dbg !2073

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2070
  store i8 39, i8* %550, align 1, !dbg !2070, !tbaa !1271
  br label %551, !dbg !2070

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %552, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1653
  br label %553, !dbg !2074

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1745
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8 %562, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %561, metadata !1605, metadata !DIExpression()), !dbg !1653
  %563 = icmp ult i64 %561, %554, !dbg !2075
  br i1 %563, label %564, label %566, !dbg !2078

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2075
  store i8 %556, i8* %565, align 1, !dbg !2075, !tbaa !1271
  br label %566, !dbg !2075

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %567, metadata !1605, metadata !DIExpression()), !dbg !1653
  %568 = and i8 %555, 1, !dbg !2079
  %569 = icmp eq i8 %568, 0, !dbg !2079
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2081
  call void @llvm.dbg.value(metadata i8 %570, metadata !1614, metadata !DIExpression()), !dbg !1653
  br label %571, !dbg !2082

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2036
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1653
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1670
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2027
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1674
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1653
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1676
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %578, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %577, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %576, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %575, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %574, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %573, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %572, metadata !1604, metadata !DIExpression()), !dbg !1653
  %580 = add i64 %572, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %580, metadata !1604, metadata !DIExpression()), !dbg !1653
  br label %122, !dbg !2084, !llvm.loop !2085

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %127, metadata !1612, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %128, metadata !1613, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %129, metadata !1614, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  %583 = icmp eq i64 %124, 0, !dbg !2087
  %584 = and i1 %110, %583, !dbg !2089
  %585 = xor i1 %584, true, !dbg !2089
  %586 = or i1 %109, %585, !dbg !2089
  br i1 %586, label %587, label %629, !dbg !2089

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2090
  %589 = xor i1 %588, true, !dbg !2090
  %590 = and i8 %128, 1, !dbg !2092
  %591 = icmp eq i8 %590, 0, !dbg !2092
  %592 = or i1 %591, %589, !dbg !2090
  br i1 %592, label %602, label %593, !dbg !2090

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2093
  %595 = icmp eq i8 %594, 0, !dbg !2093
  br i1 %595, label %598, label %596, !dbg !2096

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %94, metadata !1602, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %95, metadata !1603, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %125, metadata !1606, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %582, metadata !1598, metadata !DIExpression()), !dbg !1653
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2097
  br label %645, !dbg !2098

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2099
  %600 = icmp ne i64 %125, 0, !dbg !2101
  %601 = and i1 %600, %599, !dbg !2102
  br i1 %601, label %26, label %602, !dbg !2102

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %130, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  %603 = icmp ne i8* %97, null, !dbg !2103
  %604 = and i1 %603, %109, !dbg !2105
  br i1 %604, label %605, label %620, !dbg !2105

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %124, metadata !1605, metadata !DIExpression()), !dbg !1653
  %606 = load i8, i8* %97, align 1, !dbg !2106, !tbaa !1271
  %607 = icmp eq i8 %606, 0, !dbg !2109
  br i1 %607, label %620, label %608, !dbg !2109

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1607, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %611, metadata !1605, metadata !DIExpression()), !dbg !1653
  %612 = icmp ult i64 %611, %130, !dbg !2110
  br i1 %612, label %613, label %615, !dbg !2113

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2110
  store i8 %609, i8* %614, align 1, !dbg !2110, !tbaa !1271
  br label %615, !dbg !2110

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %616, metadata !1605, metadata !DIExpression()), !dbg !1653
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %617, metadata !1607, metadata !DIExpression()), !dbg !1653
  %618 = load i8, i8* %617, align 1, !dbg !2106, !tbaa !1271
  %619 = icmp eq i8 %618, 0, !dbg !2109
  br i1 %619, label %620, label %608, !dbg !2109, !llvm.loop !2115

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1707
  call void @llvm.dbg.value(metadata i64 %621, metadata !1605, metadata !DIExpression()), !dbg !1653
  %622 = icmp ult i64 %621, %130, !dbg !2117
  br i1 %622, label %623, label %645, !dbg !2119

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2120
  store i8 0, i8* %624, align 1, !dbg !2121, !tbaa !1271
  br label %645, !dbg !2120

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %630, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1652), !dbg !2122
  %627 = icmp eq i8 %101, 0, !dbg !2123
  %628 = select i1 %627, i32 2, i32 4, !dbg !2123
  br label %635, !dbg !2123

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1596, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 %630, metadata !1598, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.label(metadata !1652), !dbg !2122
  %632 = icmp eq i32 %93, 2, !dbg !2125
  %633 = icmp eq i8 %101, 0, !dbg !2123
  %634 = select i1 %633, i32 2, i32 4, !dbg !2123
  br i1 %632, label %635, label %639, !dbg !2123

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2123

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1599, metadata !DIExpression()), !dbg !1653
  %643 = and i32 %5, -3, !dbg !2126
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2127
  br label %645, !dbg !2128

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2129
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2134, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %1, metadata !2135, metadata !DIExpression()), !dbg !2138
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2139
  call void @llvm.dbg.value(metadata i8* %3, metadata !2136, metadata !DIExpression()), !dbg !2138
  %4 = icmp eq i8* %3, %0, !dbg !2140
  br i1 %4, label %5, label %71, !dbg !2142

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2143
  call void @llvm.dbg.value(metadata i8* %6, metadata !2137, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %6, metadata !2144, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8* undef, metadata !2150, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 85, metadata !2151, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 84, metadata !2152, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 70, metadata !2153, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 45, metadata !2154, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 56, metadata !2155, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, metadata !2156, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, metadata !2159, metadata !DIExpression()), !dbg !2160
  %7 = load i8, i8* %6, align 1, !dbg !2163, !tbaa !1271
  %8 = and i8 %7, -33, !dbg !2163
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2163

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2165, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* undef, metadata !2170, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 84, metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 70, metadata !2172, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 45, metadata !2173, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 56, metadata !2174, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2175, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2179
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2183
  %11 = load i8, i8* %10, align 1, !dbg !2183, !tbaa !1271
  %12 = and i8 %11, -33, !dbg !2183
  %13 = icmp eq i8 %12, 84, !dbg !2183
  br i1 %13, label %14, label %68, !dbg !2183

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2185, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8* undef, metadata !2190, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 70, metadata !2191, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 45, metadata !2192, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 56, metadata !2193, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2198
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2202
  %16 = load i8, i8* %15, align 1, !dbg !2202, !tbaa !1271
  %17 = and i8 %16, -33, !dbg !2202
  %18 = icmp eq i8 %17, 70, !dbg !2202
  br i1 %18, label %19, label %68, !dbg !2202

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2204, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8* undef, metadata !2209, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 45, metadata !2210, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 56, metadata !2211, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2212, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2213, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2214, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2216
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2220
  %21 = load i8, i8* %20, align 1, !dbg !2220, !tbaa !1271
  %22 = icmp eq i8 %21, 45, !dbg !2220
  br i1 %22, label %23, label %68, !dbg !2222

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2223, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* undef, metadata !2228, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 56, metadata !2229, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2230, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2231, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2232, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2233, metadata !DIExpression()), !dbg !2234
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2238
  %25 = load i8, i8* %24, align 1, !dbg !2238, !tbaa !1271
  %26 = icmp eq i8 %25, 56, !dbg !2238
  br i1 %26, label %27, label %68, !dbg !2240

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2241, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* undef, metadata !2246, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 0, metadata !2247, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 0, metadata !2248, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 0, metadata !2249, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2251
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2255
  %29 = load i8, i8* %28, align 1, !dbg !2255, !tbaa !1271
  %30 = icmp eq i8 %29, 0, !dbg !2255
  br i1 %30, label %31, label %68, !dbg !2257

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2258, !tbaa !1271
  %33 = icmp eq i8 %32, 96, !dbg !2259
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0), !dbg !2258
  br label %71, !dbg !2260

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2165, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8* undef, metadata !2170, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 66, metadata !2171, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 49, metadata !2172, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 56, metadata !2173, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 48, metadata !2174, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 51, metadata !2175, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 48, metadata !2176, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2261
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2265
  %37 = load i8, i8* %36, align 1, !dbg !2265, !tbaa !1271
  %38 = and i8 %37, -33, !dbg !2265
  %39 = icmp eq i8 %38, 66, !dbg !2265
  br i1 %39, label %40, label %68, !dbg !2265

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2185, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* undef, metadata !2190, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 49, metadata !2191, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 56, metadata !2192, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 48, metadata !2193, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 51, metadata !2194, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 48, metadata !2195, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2266
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2268
  %42 = load i8, i8* %41, align 1, !dbg !2268, !tbaa !1271
  %43 = icmp eq i8 %42, 49, !dbg !2268
  br i1 %43, label %44, label %68, !dbg !2269

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2204, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* undef, metadata !2209, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 56, metadata !2210, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 48, metadata !2211, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 51, metadata !2212, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 48, metadata !2213, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 0, metadata !2214, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2270
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2272
  %46 = load i8, i8* %45, align 1, !dbg !2272, !tbaa !1271
  %47 = icmp eq i8 %46, 56, !dbg !2272
  br i1 %47, label %48, label %68, !dbg !2273

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2223, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* undef, metadata !2228, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 48, metadata !2229, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 51, metadata !2230, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 48, metadata !2231, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 0, metadata !2232, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 0, metadata !2233, metadata !DIExpression()), !dbg !2274
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2276
  %50 = load i8, i8* %49, align 1, !dbg !2276, !tbaa !1271
  %51 = icmp eq i8 %50, 48, !dbg !2276
  br i1 %51, label %52, label %68, !dbg !2277

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2241, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8* undef, metadata !2246, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 51, metadata !2247, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 48, metadata !2248, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 0, metadata !2249, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2278
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2280
  %54 = load i8, i8* %53, align 1, !dbg !2280, !tbaa !1271
  %55 = icmp eq i8 %54, 51, !dbg !2280
  br i1 %55, label %56, label %68, !dbg !2281

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2282, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8* undef, metadata !2287, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 48, metadata !2288, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2291
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2295
  %58 = load i8, i8* %57, align 1, !dbg !2295, !tbaa !1271
  %59 = icmp eq i8 %58, 48, !dbg !2295
  br i1 %59, label %60, label %68, !dbg !2297

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2298, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* undef, metadata !2303, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 0, metadata !2304, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2306
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2310
  %62 = load i8, i8* %61, align 1, !dbg !2310, !tbaa !1271
  %63 = icmp eq i8 %62, 0, !dbg !2310
  br i1 %63, label %64, label %68, !dbg !2312

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2313, !tbaa !1271
  %66 = icmp eq i8 %65, 96, !dbg !2314
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0), !dbg !2313
  br label %71, !dbg !2315

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2316
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), !dbg !2317
  br label %71, !dbg !2318

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2138
  ret i8* %72, !dbg !2319
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !365 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !369 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2320 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2324, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %1, metadata !2325, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2326, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8* %0, metadata !2328, metadata !DIExpression()) #18, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %1, metadata !2333, metadata !DIExpression()) #18, !dbg !2341
  call void @llvm.dbg.value(metadata i64* null, metadata !2334, metadata !DIExpression()) #18, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2335, metadata !DIExpression()) #18, !dbg !2341
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2343
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2343
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2336, metadata !DIExpression()) #18, !dbg !2341
  %6 = tail call i32* @__errno_location() #23, !dbg !2344
  %7 = load i32, i32* %6, align 4, !dbg !2344, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %7, metadata !2337, metadata !DIExpression()) #18, !dbg !2341
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2345
  %9 = load i32, i32* %8, align 4, !dbg !2345, !tbaa !1538
  %10 = or i32 %9, 1, !dbg !2346
  call void @llvm.dbg.value(metadata i32 %10, metadata !2338, metadata !DIExpression()) #18, !dbg !2341
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2347
  %12 = load i32, i32* %11, align 8, !dbg !2347, !tbaa !1487
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2348
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2349
  %15 = load i8*, i8** %14, align 8, !dbg !2349, !tbaa !1561
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2350
  %17 = load i8*, i8** %16, align 8, !dbg !2350, !tbaa !1564
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2351
  %19 = add i64 %18, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %19, metadata !2339, metadata !DIExpression()) #18, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %19, metadata !2353, metadata !DIExpression()) #18, !dbg !2358
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %20, metadata !2340, metadata !DIExpression()) #18, !dbg !2341
  %21 = load i32, i32* %11, align 8, !dbg !2361, !tbaa !1487
  %22 = load i8*, i8** %14, align 8, !dbg !2362, !tbaa !1561
  %23 = load i8*, i8** %16, align 8, !dbg !2363, !tbaa !1564
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2364
  store i32 %7, i32* %6, align 4, !dbg !2365, !tbaa !1129
  ret i8* %20, !dbg !2366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2329 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2328, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %1, metadata !2333, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i64* %2, metadata !2334, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2335, metadata !DIExpression()), !dbg !2367
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2368
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2336, metadata !DIExpression()), !dbg !2367
  %7 = tail call i32* @__errno_location() #23, !dbg !2369
  %8 = load i32, i32* %7, align 4, !dbg !2369, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %8, metadata !2337, metadata !DIExpression()), !dbg !2367
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2370
  %10 = load i32, i32* %9, align 4, !dbg !2370, !tbaa !1538
  %11 = icmp ne i64* %2, null, !dbg !2371
  %12 = xor i1 %11, true, !dbg !2371
  %13 = zext i1 %12 to i32, !dbg !2371
  %14 = or i32 %10, %13, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %14, metadata !2338, metadata !DIExpression()), !dbg !2367
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2373
  %16 = load i32, i32* %15, align 8, !dbg !2373, !tbaa !1487
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2374
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2375
  %19 = load i8*, i8** %18, align 8, !dbg !2375, !tbaa !1561
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2376
  %21 = load i8*, i8** %20, align 8, !dbg !2376, !tbaa !1564
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2377
  %23 = add i64 %22, 1, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %23, metadata !2339, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %23, metadata !2353, metadata !DIExpression()) #18, !dbg !2379
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2381
  call void @llvm.dbg.value(metadata i8* %24, metadata !2340, metadata !DIExpression()), !dbg !2367
  %25 = load i32, i32* %15, align 8, !dbg !2382, !tbaa !1487
  %26 = load i8*, i8** %18, align 8, !dbg !2383, !tbaa !1561
  %27 = load i8*, i8** %20, align 8, !dbg !2384, !tbaa !1564
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2385
  store i32 %8, i32* %7, align 4, !dbg !2386, !tbaa !1129
  br i1 %11, label %29, label %30, !dbg !2387

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2388, !tbaa !2390
  br label %30, !dbg !2391

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2393 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2397, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2395, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 1, metadata !2396, metadata !DIExpression()), !dbg !2398
  %2 = load i32, i32* @nslots, align 4, !dbg !2399, !tbaa !1129
  %3 = icmp sgt i32 %2, 1, !dbg !2402
  br i1 %3, label %4, label %12, !dbg !2403

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2396, metadata !DIExpression()), !dbg !2398
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2404
  %7 = load i8*, i8** %6, align 8, !dbg !2404, !tbaa !2405
  tail call void @free(i8* %7) #18, !dbg !2407
  %8 = add nuw nsw i64 %5, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %8, metadata !2396, metadata !DIExpression()), !dbg !2398
  %9 = load i32, i32* @nslots, align 4, !dbg !2399, !tbaa !1129
  %10 = sext i32 %9 to i64, !dbg !2402
  %11 = icmp slt i64 %8, %10, !dbg !2402
  br i1 %11, label %4, label %12, !dbg !2403, !llvm.loop !2409

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2411
  %14 = load i8*, i8** %13, align 8, !dbg !2411, !tbaa !2405
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2413
  br i1 %15, label %17, label %16, !dbg !2414

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2415
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2417, !tbaa !2418
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2419, !tbaa !2405
  br label %17, !dbg !2420

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2421
  br i1 %18, label %21, label %19, !dbg !2423

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2424
  tail call void @free(i8* %20) #18, !dbg !2426
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2427, !tbaa !1122
  br label %21, !dbg !2428

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2429, !tbaa !1129
  ret void, !dbg !2430
}

; Function Attrs: nounwind
declare !dbg !342 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2431 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8* %1, metadata !2434, metadata !DIExpression()), !dbg !2435
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2436
  ret i8* %3, !dbg !2437
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2442, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* %1, metadata !2443, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %2, metadata !2444, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2445, metadata !DIExpression()), !dbg !2457
  %5 = tail call i32* @__errno_location() #23, !dbg !2458
  %6 = load i32, i32* %5, align 4, !dbg !2458, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %6, metadata !2446, metadata !DIExpression()), !dbg !2457
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2459, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2447, metadata !DIExpression()), !dbg !2457
  %8 = icmp slt i32 %0, 0, !dbg !2460
  br i1 %8, label %9, label %10, !dbg !2462

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2463
  unreachable, !dbg !2463

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2464, !tbaa !1129
  %12 = icmp sgt i32 %11, %0, !dbg !2465
  br i1 %12, label %34, label %13, !dbg !2466

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2467
  call void @llvm.dbg.value(metadata i1 %14, metadata !2448, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2451, metadata !DIExpression()), !dbg !2468
  %15 = icmp eq i32 %0, 2147483647, !dbg !2469
  br i1 %15, label %16, label %17, !dbg !2471

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2472
  unreachable, !dbg !2472

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2473
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2473
  %20 = add nuw nsw i32 %0, 1, !dbg !2474
  %21 = sext i32 %20 to i64, !dbg !2475
  %22 = shl nuw nsw i64 %21, 4, !dbg !2476
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2477
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2447, metadata !DIExpression()), !dbg !2457
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2478, !tbaa !1122
  br i1 %14, label %25, label %26, !dbg !2479

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2480, !tbaa.struct !2482
  br label %26, !dbg !2483

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2484, !tbaa !1129
  %28 = sext i32 %27 to i64, !dbg !2485
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2485
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2486
  %31 = sub nsw i32 %20, %27, !dbg !2487
  %32 = sext i32 %31 to i64, !dbg !2488
  %33 = shl nsw i64 %32, 4, !dbg !2489
  call void @llvm.dbg.value(metadata i8* %30, metadata !1886, metadata !DIExpression()) #18, !dbg !2490
  call void @llvm.dbg.value(metadata i32 0, metadata !1892, metadata !DIExpression()) #18, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %33, metadata !1893, metadata !DIExpression()) #18, !dbg !2490
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2492
  store i32 %20, i32* @nslots, align 4, !dbg !2493, !tbaa !1129
  br label %34, !dbg !2494

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2457
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2447, metadata !DIExpression()), !dbg !2457
  %36 = zext i32 %0 to i64, !dbg !2495
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2496
  %38 = load i64, i64* %37, align 8, !dbg !2496, !tbaa !2418
  call void @llvm.dbg.value(metadata i64 %38, metadata !2452, metadata !DIExpression()), !dbg !2497
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2498
  %40 = load i8*, i8** %39, align 8, !dbg !2498, !tbaa !2405
  call void @llvm.dbg.value(metadata i8* %40, metadata !2454, metadata !DIExpression()), !dbg !2497
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2499
  %42 = load i32, i32* %41, align 4, !dbg !2499, !tbaa !1538
  %43 = or i32 %42, 1, !dbg !2500
  call void @llvm.dbg.value(metadata i32 %43, metadata !2455, metadata !DIExpression()), !dbg !2497
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2501
  %45 = load i32, i32* %44, align 8, !dbg !2501, !tbaa !1487
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2502
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2503
  %48 = load i8*, i8** %47, align 8, !dbg !2503, !tbaa !1561
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2504
  %50 = load i8*, i8** %49, align 8, !dbg !2504, !tbaa !1564
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2505
  call void @llvm.dbg.value(metadata i64 %51, metadata !2456, metadata !DIExpression()), !dbg !2497
  %52 = icmp ugt i64 %38, %51, !dbg !2506
  br i1 %52, label %63, label %53, !dbg !2508

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %54, metadata !2452, metadata !DIExpression()), !dbg !2497
  store i64 %54, i64* %37, align 8, !dbg !2511, !tbaa !2418
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2512
  br i1 %55, label %57, label %56, !dbg !2514

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2515
  br label %57, !dbg !2515

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2353, metadata !DIExpression()) #18, !dbg !2516
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2518
  call void @llvm.dbg.value(metadata i8* %58, metadata !2454, metadata !DIExpression()), !dbg !2497
  store i8* %58, i8** %39, align 8, !dbg !2519, !tbaa !2405
  %59 = load i32, i32* %44, align 8, !dbg !2520, !tbaa !1487
  %60 = load i8*, i8** %47, align 8, !dbg !2521, !tbaa !1561
  %61 = load i8*, i8** %49, align 8, !dbg !2522, !tbaa !1564
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2523
  br label %63, !dbg !2524

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2497
  call void @llvm.dbg.value(metadata i8* %64, metadata !2454, metadata !DIExpression()), !dbg !2497
  store i32 %6, i32* %5, align 4, !dbg !2525, !tbaa !1129
  ret i8* %64, !dbg !2526
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i64 %2, metadata !2533, metadata !DIExpression()), !dbg !2534
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2535
  ret i8* %4, !dbg !2536
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2537 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2539, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 0, metadata !2433, metadata !DIExpression()) #18, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %0, metadata !2434, metadata !DIExpression()) #18, !dbg !2541
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2543
  ret i8* %2, !dbg !2544
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2545 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %1, metadata !2550, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 0, metadata !2531, metadata !DIExpression()) #18, !dbg !2552
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()) #18, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %1, metadata !2533, metadata !DIExpression()) #18, !dbg !2552
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2554
  ret i8* %3, !dbg !2555
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2556 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2560, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 %1, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8* %2, metadata !2562, metadata !DIExpression()), !dbg !2564
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2565
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2565
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2563, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %1, metadata !2567, metadata !DIExpression()) #18, !dbg !2573
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2572, metadata !DIExpression()) #18, !dbg !2575
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2575, !alias.scope !2576
  %6 = icmp eq i32 %1, 10, !dbg !2579
  br i1 %6, label %7, label %8, !dbg !2581

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2582, !noalias !2576
  unreachable, !dbg !2582

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2583
  store i32 %1, i32* %9, align 8, !dbg !2584, !tbaa !1487, !alias.scope !2576
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2585
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2586
  ret i8* %10, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2588 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2592, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %1, metadata !2593, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* %2, metadata !2594, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %3, metadata !2595, metadata !DIExpression()), !dbg !2597
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2598
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2598
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2596, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i32 %1, metadata !2567, metadata !DIExpression()) #18, !dbg !2600
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2572, metadata !DIExpression()) #18, !dbg !2602
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2602, !alias.scope !2603
  %7 = icmp eq i32 %1, 10, !dbg !2606
  br i1 %7, label %8, label %9, !dbg !2607

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2608, !noalias !2603
  unreachable, !dbg !2608

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2609
  store i32 %1, i32* %10, align 8, !dbg !2610, !tbaa !1487, !alias.scope !2603
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2611
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2612
  ret i8* %11, !dbg !2613
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2614 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2572, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2563, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 %0, metadata !2618, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %1, metadata !2619, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()) #18, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %0, metadata !2561, metadata !DIExpression()) #18, !dbg !2625
  call void @llvm.dbg.value(metadata i8* %1, metadata !2562, metadata !DIExpression()) #18, !dbg !2625
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %0, metadata !2567, metadata !DIExpression()) #18, !dbg !2627
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2620, !alias.scope !2628
  %5 = icmp eq i32 %0, 10, !dbg !2631
  br i1 %5, label %6, label %7, !dbg !2632

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2633, !noalias !2628
  unreachable, !dbg !2633

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2634
  store i32 %0, i32* %8, align 8, !dbg !2635, !tbaa !1487, !alias.scope !2628
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2636
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2637
  ret i8* %9, !dbg !2638
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2639 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2572, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2596, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %1, metadata !2644, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %2, metadata !2645, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 0, metadata !2592, metadata !DIExpression()) #18, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()) #18, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %1, metadata !2594, metadata !DIExpression()) #18, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %2, metadata !2595, metadata !DIExpression()) #18, !dbg !2651
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2652
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %0, metadata !2567, metadata !DIExpression()) #18, !dbg !2653
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2646, !alias.scope !2654
  %6 = icmp eq i32 %0, 10, !dbg !2657
  br i1 %6, label %7, label %8, !dbg !2658

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2659, !noalias !2654
  unreachable, !dbg !2659

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2660
  store i32 %0, i32* %9, align 8, !dbg !2661, !tbaa !1487, !alias.scope !2654
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2662
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2663
  ret i8* %10, !dbg !2664
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2665 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %1, metadata !2670, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8 %2, metadata !2671, metadata !DIExpression()), !dbg !2673
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2674
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2674
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2672, metadata !DIExpression()), !dbg !2675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2676, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1505, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %2, metadata !1506, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %2, metadata !1508, metadata !DIExpression()), !dbg !2678
  %6 = lshr i8 %2, 5, !dbg !2680
  %7 = zext i8 %6 to i64, !dbg !2680
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2681
  call void @llvm.dbg.value(metadata i32* %8, metadata !1509, metadata !DIExpression()), !dbg !2678
  %9 = and i8 %2, 31, !dbg !2682
  %10 = zext i8 %9 to i32, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %10, metadata !1511, metadata !DIExpression()), !dbg !2678
  %11 = load i32, i32* %8, align 4, !dbg !2683, !tbaa !1129
  %12 = lshr i32 %11, %10, !dbg !2684
  %13 = and i32 %12, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %13, metadata !1512, metadata !DIExpression()), !dbg !2678
  %14 = xor i32 %13, 1, !dbg !2686
  %15 = shl i32 %14, %10, !dbg !2687
  %16 = xor i32 %15, %11, !dbg !2688
  store i32 %16, i32* %8, align 4, !dbg !2688, !tbaa !1129
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2689
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2690
  ret i8* %17, !dbg !2691
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2692 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2672, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8* %0, metadata !2696, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 %1, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #18, !dbg !2701
  call void @llvm.dbg.value(metadata i64 -1, metadata !2670, metadata !DIExpression()) #18, !dbg !2701
  call void @llvm.dbg.value(metadata i8 %1, metadata !2671, metadata !DIExpression()) #18, !dbg !2701
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2702
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2703, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1505, metadata !DIExpression()) #18, !dbg !2704
  call void @llvm.dbg.value(metadata i8 %1, metadata !1506, metadata !DIExpression()) #18, !dbg !2704
  call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()) #18, !dbg !2704
  call void @llvm.dbg.value(metadata i8 %1, metadata !1508, metadata !DIExpression()) #18, !dbg !2704
  %5 = lshr i8 %1, 5, !dbg !2706
  %6 = zext i8 %5 to i64, !dbg !2706
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2707
  call void @llvm.dbg.value(metadata i32* %7, metadata !1509, metadata !DIExpression()) #18, !dbg !2704
  %8 = and i8 %1, 31, !dbg !2708
  %9 = zext i8 %8 to i32, !dbg !2708
  call void @llvm.dbg.value(metadata i32 %9, metadata !1511, metadata !DIExpression()) #18, !dbg !2704
  %10 = load i32, i32* %7, align 4, !dbg !2709, !tbaa !1129
  %11 = lshr i32 %10, %9, !dbg !2710
  %12 = and i32 %11, 1, !dbg !2711
  call void @llvm.dbg.value(metadata i32 %12, metadata !1512, metadata !DIExpression()) #18, !dbg !2704
  %13 = xor i32 %12, 1, !dbg !2712
  %14 = shl i32 %13, %9, !dbg !2713
  %15 = xor i32 %14, %10, !dbg !2714
  store i32 %15, i32* %7, align 4, !dbg !2714, !tbaa !1129
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2716
  ret i8* %16, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2718 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2672, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8* %0, metadata !2720, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %0, metadata !2696, metadata !DIExpression()) #18, !dbg !2725
  call void @llvm.dbg.value(metadata i8 58, metadata !2697, metadata !DIExpression()) #18, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #18, !dbg !2726
  call void @llvm.dbg.value(metadata i64 -1, metadata !2670, metadata !DIExpression()) #18, !dbg !2726
  call void @llvm.dbg.value(metadata i8 58, metadata !2671, metadata !DIExpression()) #18, !dbg !2726
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2727
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2727
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2728, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1505, metadata !DIExpression()) #18, !dbg !2729
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()) #18, !dbg !2729
  call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()) #18, !dbg !2729
  call void @llvm.dbg.value(metadata i8 58, metadata !1508, metadata !DIExpression()) #18, !dbg !2729
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2731
  call void @llvm.dbg.value(metadata i32* %4, metadata !1509, metadata !DIExpression()) #18, !dbg !2729
  call void @llvm.dbg.value(metadata i32 26, metadata !1511, metadata !DIExpression()) #18, !dbg !2729
  %5 = load i32, i32* %4, align 4, !dbg !2732, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %5, metadata !1512, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2729
  %6 = or i32 %5, 67108864, !dbg !2733
  store i32 %6, i32* %4, align 4, !dbg !2733, !tbaa !1129
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2735
  ret i8* %7, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2737 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2672, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8* %0, metadata !2739, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #18, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %1, metadata !2670, metadata !DIExpression()) #18, !dbg !2744
  call void @llvm.dbg.value(metadata i8 58, metadata !2671, metadata !DIExpression()) #18, !dbg !2744
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2745
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2745
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2746, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1505, metadata !DIExpression()) #18, !dbg !2747
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()) #18, !dbg !2747
  call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()) #18, !dbg !2747
  call void @llvm.dbg.value(metadata i8 58, metadata !1508, metadata !DIExpression()) #18, !dbg !2747
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2749
  call void @llvm.dbg.value(metadata i32* %5, metadata !1509, metadata !DIExpression()) #18, !dbg !2747
  call void @llvm.dbg.value(metadata i32 26, metadata !1511, metadata !DIExpression()) #18, !dbg !2747
  %6 = load i32, i32* %5, align 4, !dbg !2750, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %6, metadata !1512, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2747
  %7 = or i32 %6, 67108864, !dbg !2751
  store i32 %7, i32* %5, align 4, !dbg !2751, !tbaa !1129
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2752
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2753
  ret i8* %8, !dbg !2754
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2755 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2572, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %0, metadata !2757, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i32 %1, metadata !2758, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8* %2, metadata !2759, metadata !DIExpression()), !dbg !2763
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2764
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2764
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2760, metadata !DIExpression()), !dbg !2765
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2766
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %1, metadata !2567, metadata !DIExpression()) #18, !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2767
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2761, !alias.scope !2768
  %8 = icmp eq i32 %1, 10, !dbg !2771
  br i1 %8, label %9, label %10, !dbg !2772

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2773, !noalias !2768
  unreachable, !dbg !2773

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2572, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2767
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2766
  store i32 %1, i32* %11, align 8, !dbg !2766, !tbaa.struct !2677
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2766
  %13 = bitcast i32* %12 to i8*, !dbg !2766
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2766, !tbaa.struct !2677
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1505, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8 58, metadata !1508, metadata !DIExpression()), !dbg !2774
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2776
  call void @llvm.dbg.value(metadata i32* %14, metadata !1509, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 26, metadata !1511, metadata !DIExpression()), !dbg !2774
  %15 = load i32, i32* %14, align 4, !dbg !2777, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %15, metadata !1512, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2774
  %16 = or i32 %15, 67108864, !dbg !2778
  store i32 %16, i32* %14, align 4, !dbg !2778, !tbaa !1129
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2780
  ret i8* %17, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2782 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2790, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i32 %0, metadata !2786, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8* %1, metadata !2787, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8* %2, metadata !2788, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8* %3, metadata !2789, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()) #18, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %1, metadata !2796, metadata !DIExpression()) #18, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %2, metadata !2797, metadata !DIExpression()) #18, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %3, metadata !2798, metadata !DIExpression()) #18, !dbg !2803
  call void @llvm.dbg.value(metadata i64 -1, metadata !2799, metadata !DIExpression()) #18, !dbg !2803
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2804
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2805, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1545, metadata !DIExpression()) #18, !dbg !2806
  call void @llvm.dbg.value(metadata i8* %1, metadata !1546, metadata !DIExpression()) #18, !dbg !2806
  call void @llvm.dbg.value(metadata i8* %2, metadata !1547, metadata !DIExpression()) #18, !dbg !2806
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1545, metadata !DIExpression()) #18, !dbg !2806
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2808
  store i32 10, i32* %7, align 8, !dbg !2809, !tbaa !1487
  %8 = icmp ne i8* %1, null, !dbg !2810
  %9 = icmp ne i8* %2, null, !dbg !2811
  %10 = and i1 %8, %9, !dbg !2812
  br i1 %10, label %12, label %11, !dbg !2812

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2813
  unreachable, !dbg !2813

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2814
  store i8* %1, i8** %13, align 8, !dbg !2815, !tbaa !1561
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2816
  store i8* %2, i8** %14, align 8, !dbg !2817, !tbaa !1564
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !2818
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2819
  ret i8* %15, !dbg !2820
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2791 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %1, metadata !2796, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %2, metadata !2797, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %3, metadata !2798, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %4, metadata !2799, metadata !DIExpression()), !dbg !2821
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2822
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2822
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2790, metadata !DIExpression()), !dbg !2823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2824, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1545, metadata !DIExpression()) #18, !dbg !2825
  call void @llvm.dbg.value(metadata i8* %1, metadata !1546, metadata !DIExpression()) #18, !dbg !2825
  call void @llvm.dbg.value(metadata i8* %2, metadata !1547, metadata !DIExpression()) #18, !dbg !2825
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1545, metadata !DIExpression()) #18, !dbg !2825
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2827
  store i32 10, i32* %8, align 8, !dbg !2828, !tbaa !1487
  %9 = icmp ne i8* %1, null, !dbg !2829
  %10 = icmp ne i8* %2, null, !dbg !2830
  %11 = and i1 %9, %10, !dbg !2831
  br i1 %11, label %13, label %12, !dbg !2831

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2832
  unreachable, !dbg !2832

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2833
  store i8* %1, i8** %14, align 8, !dbg !2834, !tbaa !1561
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2835
  store i8* %2, i8** %15, align 8, !dbg !2836, !tbaa !1564
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2838
  ret i8* %16, !dbg !2839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2840 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2790, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8* %1, metadata !2845, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8* %2, metadata !2846, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 0, metadata !2786, metadata !DIExpression()) #18, !dbg !2851
  call void @llvm.dbg.value(metadata i8* %0, metadata !2787, metadata !DIExpression()) #18, !dbg !2851
  call void @llvm.dbg.value(metadata i8* %1, metadata !2788, metadata !DIExpression()) #18, !dbg !2851
  call void @llvm.dbg.value(metadata i8* %2, metadata !2789, metadata !DIExpression()) #18, !dbg !2851
  call void @llvm.dbg.value(metadata i32 0, metadata !2795, metadata !DIExpression()) #18, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %0, metadata !2796, metadata !DIExpression()) #18, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %1, metadata !2797, metadata !DIExpression()) #18, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %2, metadata !2798, metadata !DIExpression()) #18, !dbg !2852
  call void @llvm.dbg.value(metadata i64 -1, metadata !2799, metadata !DIExpression()) #18, !dbg !2852
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2853
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2854, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1545, metadata !DIExpression()) #18, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %0, metadata !1546, metadata !DIExpression()) #18, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %1, metadata !1547, metadata !DIExpression()) #18, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1545, metadata !DIExpression()) #18, !dbg !2855
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2857
  store i32 10, i32* %6, align 8, !dbg !2858, !tbaa !1487
  %7 = icmp ne i8* %0, null, !dbg !2859
  %8 = icmp ne i8* %1, null, !dbg !2860
  %9 = and i1 %7, %8, !dbg !2861
  br i1 %9, label %11, label %10, !dbg !2861

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2862
  unreachable, !dbg !2862

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2863
  store i8* %0, i8** %12, align 8, !dbg !2864, !tbaa !1561
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2865
  store i8* %1, i8** %13, align 8, !dbg !2866, !tbaa !1564
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !2867
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2868
  ret i8* %14, !dbg !2869
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2870 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2790, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %1, metadata !2875, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %2, metadata !2876, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %3, metadata !2877, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 0, metadata !2795, metadata !DIExpression()) #18, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %0, metadata !2796, metadata !DIExpression()) #18, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %1, metadata !2797, metadata !DIExpression()) #18, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %2, metadata !2798, metadata !DIExpression()) #18, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %3, metadata !2799, metadata !DIExpression()) #18, !dbg !2881
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2882
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2883, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1545, metadata !DIExpression()) #18, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %0, metadata !1546, metadata !DIExpression()) #18, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %1, metadata !1547, metadata !DIExpression()) #18, !dbg !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1545, metadata !DIExpression()) #18, !dbg !2884
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2886
  store i32 10, i32* %7, align 8, !dbg !2887, !tbaa !1487
  %8 = icmp ne i8* %0, null, !dbg !2888
  %9 = icmp ne i8* %1, null, !dbg !2889
  %10 = and i1 %8, %9, !dbg !2890
  br i1 %10, label %12, label %11, !dbg !2890

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2891
  unreachable, !dbg !2891

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2892
  store i8* %0, i8** %13, align 8, !dbg !2893, !tbaa !1561
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2894
  store i8* %1, i8** %14, align 8, !dbg !2895, !tbaa !1564
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !2896
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2897
  ret i8* %15, !dbg !2898
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2899 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %1, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %2, metadata !2905, metadata !DIExpression()), !dbg !2906
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2907
  ret i8* %4, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2909 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2913, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %1, metadata !2914, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 0, metadata !2903, metadata !DIExpression()) #18, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %0, metadata !2904, metadata !DIExpression()) #18, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()) #18, !dbg !2916
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2918
  ret i8* %3, !dbg !2919
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2920 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* %1, metadata !2925, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i32 %0, metadata !2903, metadata !DIExpression()) #18, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %1, metadata !2904, metadata !DIExpression()) #18, !dbg !2927
  call void @llvm.dbg.value(metadata i64 -1, metadata !2905, metadata !DIExpression()) #18, !dbg !2927
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2929
  ret i8* %3, !dbg !2930
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2931 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 0, metadata !2924, metadata !DIExpression()) #18, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %0, metadata !2925, metadata !DIExpression()) #18, !dbg !2935
  call void @llvm.dbg.value(metadata i32 0, metadata !2903, metadata !DIExpression()) #18, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %0, metadata !2904, metadata !DIExpression()) #18, !dbg !2937
  call void @llvm.dbg.value(metadata i64 -1, metadata !2905, metadata !DIExpression()) #18, !dbg !2937
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2939
  ret i8* %2, !dbg !2940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2941 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2949, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8* %1, metadata !2950, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8* %2, metadata !2951, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8* %3, metadata !2952, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8** %4, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %5, metadata !2954, metadata !DIExpression()), !dbg !2955
  %7 = icmp eq i8* %1, null, !dbg !2956
  br i1 %7, label %10, label %8, !dbg !2958

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !2959
  br label %12, !dbg !2959

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !2960
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.85, i64 0, i64 0), i32 5) #18, !dbg !2961
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !2961
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2962
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.87, i64 0, i64 0), i32 5) #18, !dbg !2963
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.88, i64 0, i64 0)) #18, !dbg !2963
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2964
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
  ], !dbg !2965

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.89, i64 0, i64 0), i32 5) #18, !dbg !2966
  %21 = load i8*, i8** %4, align 8, !dbg !2966, !tbaa !1122
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !2966
  br label %147, !dbg !2968

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.90, i64 0, i64 0), i32 5) #18, !dbg !2969
  %25 = load i8*, i8** %4, align 8, !dbg !2969, !tbaa !1122
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2969
  %27 = load i8*, i8** %26, align 8, !dbg !2969, !tbaa !1122
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !2969
  br label %147, !dbg !2970

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.91, i64 0, i64 0), i32 5) #18, !dbg !2971
  %31 = load i8*, i8** %4, align 8, !dbg !2971, !tbaa !1122
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2971
  %33 = load i8*, i8** %32, align 8, !dbg !2971, !tbaa !1122
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2971
  %35 = load i8*, i8** %34, align 8, !dbg !2971, !tbaa !1122
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !2971
  br label %147, !dbg !2972

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.92, i64 0, i64 0), i32 5) #18, !dbg !2973
  %39 = load i8*, i8** %4, align 8, !dbg !2973, !tbaa !1122
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2973
  %41 = load i8*, i8** %40, align 8, !dbg !2973, !tbaa !1122
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2973
  %43 = load i8*, i8** %42, align 8, !dbg !2973, !tbaa !1122
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2973
  %45 = load i8*, i8** %44, align 8, !dbg !2973, !tbaa !1122
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !2973
  br label %147, !dbg !2974

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.93, i64 0, i64 0), i32 5) #18, !dbg !2975
  %49 = load i8*, i8** %4, align 8, !dbg !2975, !tbaa !1122
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2975
  %51 = load i8*, i8** %50, align 8, !dbg !2975, !tbaa !1122
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2975
  %53 = load i8*, i8** %52, align 8, !dbg !2975, !tbaa !1122
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2975
  %55 = load i8*, i8** %54, align 8, !dbg !2975, !tbaa !1122
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2975
  %57 = load i8*, i8** %56, align 8, !dbg !2975, !tbaa !1122
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !2975
  br label %147, !dbg !2976

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.94, i64 0, i64 0), i32 5) #18, !dbg !2977
  %61 = load i8*, i8** %4, align 8, !dbg !2977, !tbaa !1122
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2977
  %63 = load i8*, i8** %62, align 8, !dbg !2977, !tbaa !1122
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2977
  %65 = load i8*, i8** %64, align 8, !dbg !2977, !tbaa !1122
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2977
  %67 = load i8*, i8** %66, align 8, !dbg !2977, !tbaa !1122
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2977
  %69 = load i8*, i8** %68, align 8, !dbg !2977, !tbaa !1122
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2977
  %71 = load i8*, i8** %70, align 8, !dbg !2977, !tbaa !1122
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !2977
  br label %147, !dbg !2978

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.95, i64 0, i64 0), i32 5) #18, !dbg !2979
  %75 = load i8*, i8** %4, align 8, !dbg !2979, !tbaa !1122
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2979
  %77 = load i8*, i8** %76, align 8, !dbg !2979, !tbaa !1122
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2979
  %79 = load i8*, i8** %78, align 8, !dbg !2979, !tbaa !1122
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2979
  %81 = load i8*, i8** %80, align 8, !dbg !2979, !tbaa !1122
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2979
  %83 = load i8*, i8** %82, align 8, !dbg !2979, !tbaa !1122
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2979
  %85 = load i8*, i8** %84, align 8, !dbg !2979, !tbaa !1122
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2979
  %87 = load i8*, i8** %86, align 8, !dbg !2979, !tbaa !1122
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !2979
  br label %147, !dbg !2980

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.96, i64 0, i64 0), i32 5) #18, !dbg !2981
  %91 = load i8*, i8** %4, align 8, !dbg !2981, !tbaa !1122
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2981
  %93 = load i8*, i8** %92, align 8, !dbg !2981, !tbaa !1122
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2981
  %95 = load i8*, i8** %94, align 8, !dbg !2981, !tbaa !1122
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2981
  %97 = load i8*, i8** %96, align 8, !dbg !2981, !tbaa !1122
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2981
  %99 = load i8*, i8** %98, align 8, !dbg !2981, !tbaa !1122
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2981
  %101 = load i8*, i8** %100, align 8, !dbg !2981, !tbaa !1122
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2981
  %103 = load i8*, i8** %102, align 8, !dbg !2981, !tbaa !1122
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2981
  %105 = load i8*, i8** %104, align 8, !dbg !2981, !tbaa !1122
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !2981
  br label %147, !dbg !2982

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #18, !dbg !2983
  %109 = load i8*, i8** %4, align 8, !dbg !2983, !tbaa !1122
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2983
  %111 = load i8*, i8** %110, align 8, !dbg !2983, !tbaa !1122
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2983
  %113 = load i8*, i8** %112, align 8, !dbg !2983, !tbaa !1122
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2983
  %115 = load i8*, i8** %114, align 8, !dbg !2983, !tbaa !1122
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2983
  %117 = load i8*, i8** %116, align 8, !dbg !2983, !tbaa !1122
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2983
  %119 = load i8*, i8** %118, align 8, !dbg !2983, !tbaa !1122
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2983
  %121 = load i8*, i8** %120, align 8, !dbg !2983, !tbaa !1122
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2983
  %123 = load i8*, i8** %122, align 8, !dbg !2983, !tbaa !1122
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2983
  %125 = load i8*, i8** %124, align 8, !dbg !2983, !tbaa !1122
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !2983
  br label %147, !dbg !2984

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.98, i64 0, i64 0), i32 5) #18, !dbg !2985
  %129 = load i8*, i8** %4, align 8, !dbg !2985, !tbaa !1122
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2985
  %131 = load i8*, i8** %130, align 8, !dbg !2985, !tbaa !1122
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2985
  %133 = load i8*, i8** %132, align 8, !dbg !2985, !tbaa !1122
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2985
  %135 = load i8*, i8** %134, align 8, !dbg !2985, !tbaa !1122
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2985
  %137 = load i8*, i8** %136, align 8, !dbg !2985, !tbaa !1122
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2985
  %139 = load i8*, i8** %138, align 8, !dbg !2985, !tbaa !1122
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2985
  %141 = load i8*, i8** %140, align 8, !dbg !2985, !tbaa !1122
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2985
  %143 = load i8*, i8** %142, align 8, !dbg !2985, !tbaa !1122
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2985
  %145 = load i8*, i8** %144, align 8, !dbg !2985, !tbaa !1122
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !2985
  br label %147, !dbg !2986

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2988 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2992, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %1, metadata !2993, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %2, metadata !2994, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %3, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8** %4, metadata !2996, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 0, metadata !2997, metadata !DIExpression()), !dbg !2998
  br label %6, !dbg !2999

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3001
  call void @llvm.dbg.value(metadata i64 %7, metadata !2997, metadata !DIExpression()), !dbg !2998
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3002
  %9 = load i8*, i8** %8, align 8, !dbg !3002, !tbaa !1122
  %10 = icmp eq i8* %9, null, !dbg !3004
  %11 = add i64 %7, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %11, metadata !2997, metadata !DIExpression()), !dbg !2998
  br i1 %10, label %12, label %6, !dbg !3004, !llvm.loop !3006

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %7, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %7, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %7, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %7, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %7, metadata !2997, metadata !DIExpression()), !dbg !2998
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3010 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3021, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i8* %1, metadata !3022, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i8* %2, metadata !3023, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i8* %3, metadata !3024, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3025, metadata !DIExpression()), !dbg !3029
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3030
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3030
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3027, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 0, metadata !3026, metadata !DIExpression()), !dbg !3029
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3032
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3032
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3032
  %11 = load i32, i32* %8, align 8, !dbg !3035
  %12 = icmp ult i32 %11, 41, !dbg !3035
  br i1 %12, label %13, label %18, !dbg !3035

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3035
  %15 = zext i32 %11 to i64, !dbg !3035
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3035
  %17 = add nuw nsw i32 %11, 8, !dbg !3035
  store i32 %17, i32* %8, align 8, !dbg !3035
  br label %21, !dbg !3035

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3035
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3035
  store i8* %20, i8** %9, align 8, !dbg !3035
  br label %21, !dbg !3035

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3035
  %25 = load i8*, i8** %24, align 8, !dbg !3035
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3036
  store i8* %25, i8** %26, align 16, !dbg !3037, !tbaa !1122
  %27 = icmp eq i8* %25, null, !dbg !3038
  br i1 %27, label %30, label %28, !dbg !3039

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3026, metadata !DIExpression()), !dbg !3029
  %29 = icmp ult i32 %22, 41, !dbg !3035
  br i1 %29, label %35, label %32, !dbg !3035

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3040
  call void @llvm.dbg.value(metadata i64 %31, metadata !3026, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %31, metadata !3026, metadata !DIExpression()), !dbg !3029
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3042
  ret void, !dbg !3042

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3035
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3035
  store i8* %34, i8** %9, align 8, !dbg !3035
  br label %40, !dbg !3035

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3035
  %37 = zext i32 %22 to i64, !dbg !3035
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3035
  %39 = add nuw nsw i32 %22, 8, !dbg !3035
  store i32 %39, i32* %8, align 8, !dbg !3035
  br label %40, !dbg !3035

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3035
  %44 = load i8*, i8** %43, align 8, !dbg !3035
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3036
  store i8* %44, i8** %45, align 8, !dbg !3037, !tbaa !1122
  %46 = icmp eq i8* %44, null, !dbg !3038
  br i1 %46, label %30, label %47, !dbg !3039

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3026, metadata !DIExpression()), !dbg !3029
  %48 = icmp ult i32 %41, 41, !dbg !3035
  br i1 %48, label %52, label %49, !dbg !3035

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3035
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3035
  store i8* %51, i8** %9, align 8, !dbg !3035
  br label %57, !dbg !3035

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3035
  %54 = zext i32 %41 to i64, !dbg !3035
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3035
  %56 = add nuw nsw i32 %41, 8, !dbg !3035
  store i32 %56, i32* %8, align 8, !dbg !3035
  br label %57, !dbg !3035

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3035
  %61 = load i8*, i8** %60, align 8, !dbg !3035
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3036
  store i8* %61, i8** %62, align 16, !dbg !3037, !tbaa !1122
  %63 = icmp eq i8* %61, null, !dbg !3038
  br i1 %63, label %30, label %64, !dbg !3039

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3026, metadata !DIExpression()), !dbg !3029
  %65 = icmp ult i32 %58, 41, !dbg !3035
  br i1 %65, label %69, label %66, !dbg !3035

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3035
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3035
  store i8* %68, i8** %9, align 8, !dbg !3035
  br label %74, !dbg !3035

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3035
  %71 = zext i32 %58 to i64, !dbg !3035
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3035
  %73 = add nuw nsw i32 %58, 8, !dbg !3035
  store i32 %73, i32* %8, align 8, !dbg !3035
  br label %74, !dbg !3035

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3035
  %78 = load i8*, i8** %77, align 8, !dbg !3035
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3036
  store i8* %78, i8** %79, align 8, !dbg !3037, !tbaa !1122
  %80 = icmp eq i8* %78, null, !dbg !3038
  br i1 %80, label %30, label %81, !dbg !3039

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3026, metadata !DIExpression()), !dbg !3029
  %82 = icmp ult i32 %75, 41, !dbg !3035
  br i1 %82, label %86, label %83, !dbg !3035

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3035
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3035
  store i8* %85, i8** %9, align 8, !dbg !3035
  br label %91, !dbg !3035

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3035
  %88 = zext i32 %75 to i64, !dbg !3035
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3035
  %90 = add nuw nsw i32 %75, 8, !dbg !3035
  store i32 %90, i32* %8, align 8, !dbg !3035
  br label %91, !dbg !3035

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3035
  %95 = load i8*, i8** %94, align 8, !dbg !3035
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3036
  store i8* %95, i8** %96, align 16, !dbg !3037, !tbaa !1122
  %97 = icmp eq i8* %95, null, !dbg !3038
  br i1 %97, label %30, label %98, !dbg !3039

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3026, metadata !DIExpression()), !dbg !3029
  %99 = icmp ult i32 %92, 41, !dbg !3035
  br i1 %99, label %103, label %100, !dbg !3035

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3035
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3035
  store i8* %102, i8** %9, align 8, !dbg !3035
  br label %108, !dbg !3035

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3035
  %105 = zext i32 %92 to i64, !dbg !3035
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3035
  %107 = add nuw nsw i32 %92, 8, !dbg !3035
  store i32 %107, i32* %8, align 8, !dbg !3035
  br label %108, !dbg !3035

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3035
  %111 = load i8*, i8** %110, align 8, !dbg !3035
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3036
  store i8* %111, i8** %112, align 8, !dbg !3037, !tbaa !1122
  %113 = icmp eq i8* %111, null, !dbg !3038
  br i1 %113, label %30, label %114, !dbg !3039

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3026, metadata !DIExpression()), !dbg !3029
  %115 = load i8*, i8** %9, align 8, !dbg !3035
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3035
  store i8* %116, i8** %9, align 8, !dbg !3035
  %117 = bitcast i8* %115 to i8**, !dbg !3035
  %118 = load i8*, i8** %117, align 8, !dbg !3035
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3036
  store i8* %118, i8** %119, align 16, !dbg !3037, !tbaa !1122
  %120 = icmp eq i8* %118, null, !dbg !3038
  br i1 %120, label %30, label %121, !dbg !3039

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3026, metadata !DIExpression()), !dbg !3029
  %122 = load i8*, i8** %9, align 8, !dbg !3035
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3035
  store i8* %123, i8** %9, align 8, !dbg !3035
  %124 = bitcast i8* %122 to i8**, !dbg !3035
  %125 = load i8*, i8** %124, align 8, !dbg !3035
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3036
  store i8* %125, i8** %126, align 8, !dbg !3037, !tbaa !1122
  %127 = icmp eq i8* %125, null, !dbg !3038
  br i1 %127, label %30, label %128, !dbg !3039

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3026, metadata !DIExpression()), !dbg !3029
  %129 = load i8*, i8** %9, align 8, !dbg !3035
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3035
  store i8* %130, i8** %9, align 8, !dbg !3035
  %131 = bitcast i8* %129 to i8**, !dbg !3035
  %132 = load i8*, i8** %131, align 8, !dbg !3035
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3036
  store i8* %132, i8** %133, align 16, !dbg !3037, !tbaa !1122
  %134 = icmp eq i8* %132, null, !dbg !3038
  br i1 %134, label %30, label %135, !dbg !3039

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3026, metadata !DIExpression()), !dbg !3029
  %136 = load i8*, i8** %9, align 8, !dbg !3035
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3035
  store i8* %137, i8** %9, align 8, !dbg !3035
  %138 = bitcast i8* %136 to i8**, !dbg !3035
  %139 = load i8*, i8** %138, align 8, !dbg !3035
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3036
  store i8* %139, i8** %140, align 8, !dbg !3037, !tbaa !1122
  %141 = icmp eq i8* %139, null, !dbg !3038
  %142 = select i1 %141, i64 9, i64 10, !dbg !3039
  br label %30, !dbg !3039
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3043 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3047, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8* %1, metadata !3048, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8* %2, metadata !3049, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8* %3, metadata !3050, metadata !DIExpression()), !dbg !3057
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3058
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3058
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3051, metadata !DIExpression()), !dbg !3059
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3060
  call void @llvm.va_start(i8* nonnull %6), !dbg !3060
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3061
  call void @llvm.va_end(i8* nonnull %6), !dbg !3062
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3063
  ret void, !dbg !3063
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3064 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3065, !tbaa !1122
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3065
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.101, i64 0, i64 0), i32 5) #18, !dbg !3066
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.102, i64 0, i64 0)) #18, !dbg !3066
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.103, i64 0, i64 0), i32 5) #18, !dbg !3067
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.104, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.105, i64 0, i64 0)) #18, !dbg !3067
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.106, i64 0, i64 0), i32 5) #18, !dbg !3068
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.107, i64 0, i64 0)) #18, !dbg !3068
  ret void, !dbg !3069
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3070 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3074, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3076
  %3 = udiv i64 9223372036854775807, %1, !dbg !3077
  %4 = icmp ult i64 %3, %0, !dbg !3077
  br i1 %4, label %5, label %6, !dbg !3079

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3080
  unreachable, !dbg !3080

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %7, metadata !3082, metadata !DIExpression()) #18, !dbg !3088
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3090
  call void @llvm.dbg.value(metadata i8* %8, metadata !3087, metadata !DIExpression()) #18, !dbg !3088
  %9 = icmp eq i8* %8, null, !dbg !3091
  %10 = icmp ne i64 %7, 0, !dbg !3093
  %11 = and i1 %10, %9, !dbg !3094
  br i1 %11, label %12, label %13, !dbg !3094

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3095
  unreachable, !dbg !3095

13:                                               ; preds = %6
  ret i8* %8, !dbg !3096
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3083 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()), !dbg !3097
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %2, metadata !3087, metadata !DIExpression()), !dbg !3097
  %3 = icmp eq i8* %2, null, !dbg !3099
  %4 = icmp ne i64 %0, 0, !dbg !3100
  %5 = and i1 %4, %3, !dbg !3101
  br i1 %5, label %6, label %7, !dbg !3101

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3102
  unreachable, !dbg !3102

7:                                                ; preds = %1
  ret i8* %2, !dbg !3103
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3104 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3108, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %1, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %2, metadata !3110, metadata !DIExpression()), !dbg !3111
  %4 = udiv i64 9223372036854775807, %2, !dbg !3112
  %5 = icmp ult i64 %4, %1, !dbg !3112
  br i1 %5, label %6, label %7, !dbg !3114

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3115
  unreachable, !dbg !3115

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #18, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %8, metadata !3122, metadata !DIExpression()) #18, !dbg !3123
  %9 = icmp eq i64 %8, 0, !dbg !3125
  %10 = icmp ne i8* %0, null, !dbg !3127
  %11 = and i1 %10, %9, !dbg !3128
  br i1 %11, label %12, label %13, !dbg !3128

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3129
  br label %19, !dbg !3131

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %14, metadata !3117, metadata !DIExpression()) #18, !dbg !3123
  %15 = icmp eq i8* %14, null, !dbg !3133
  %16 = icmp ne i64 %8, 0, !dbg !3135
  %17 = and i1 %16, %15, !dbg !3136
  br i1 %17, label %18, label %19, !dbg !3136

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3137
  unreachable, !dbg !3137

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3123
  ret i8* %20, !dbg !3138
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3139
  %3 = icmp eq i64 %1, 0, !dbg !3140
  %4 = icmp ne i8* %0, null, !dbg !3141
  %5 = and i1 %4, %3, !dbg !3142
  br i1 %5, label %6, label %7, !dbg !3142

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3143
  br label %13, !dbg !3144

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %8, metadata !3117, metadata !DIExpression()), !dbg !3139
  %9 = icmp eq i8* %8, null, !dbg !3146
  %10 = icmp ne i64 %1, 0, !dbg !3147
  %11 = and i1 %10, %9, !dbg !3148
  br i1 %11, label %12, label %13, !dbg !3148

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3149
  unreachable, !dbg !3149

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3139
  ret i8* %14, !dbg !3150
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !480, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64* %1, metadata !481, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %2, metadata !482, metadata !DIExpression()), !dbg !3151
  %4 = load i64, i64* %1, align 8, !dbg !3152, !tbaa !2390
  call void @llvm.dbg.value(metadata i64 %4, metadata !483, metadata !DIExpression()), !dbg !3151
  %5 = icmp eq i8* %0, null, !dbg !3153
  br i1 %5, label %6, label %20, !dbg !3155

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3156
  br i1 %7, label %8, label %13, !dbg !3159

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %9, metadata !483, metadata !DIExpression()), !dbg !3151
  %10 = icmp ugt i64 %2, 128, !dbg !3162
  %11 = zext i1 %10 to i64, !dbg !3162
  %12 = add nuw nsw i64 %9, %11, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %12, metadata !483, metadata !DIExpression()), !dbg !3151
  br label %13, !dbg !3164

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3151
  call void @llvm.dbg.value(metadata i64 %14, metadata !483, metadata !DIExpression()), !dbg !3151
  %15 = udiv i64 9223372036854775807, %2, !dbg !3165
  %16 = icmp ult i64 %15, %14, !dbg !3165
  br i1 %16, label %19, label %17, !dbg !3167

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !483, metadata !DIExpression()), !dbg !3151
  store i64 %14, i64* %1, align 8, !dbg !3168, !tbaa !2390
  %18 = mul i64 %14, %2, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #18, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %28, metadata !3122, metadata !DIExpression()) #18, !dbg !3170
  br label %31, !dbg !3172

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3173
  unreachable, !dbg !3173

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3174
  %22 = icmp ugt i64 %21, %4, !dbg !3177
  br i1 %22, label %24, label %23, !dbg !3178

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3179
  unreachable, !dbg !3179

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3180
  %26 = add nuw i64 %4, 1, !dbg !3181
  %27 = add i64 %26, %25, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %27, metadata !483, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %27, metadata !483, metadata !DIExpression()), !dbg !3151
  store i64 %27, i64* %1, align 8, !dbg !3168, !tbaa !2390
  %28 = mul i64 %27, %2, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #18, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %28, metadata !3122, metadata !DIExpression()) #18, !dbg !3170
  %29 = icmp eq i64 %28, 0, !dbg !3183
  br i1 %29, label %30, label %31, !dbg !3172

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3184
  br label %38, !dbg !3185

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %33, metadata !3117, metadata !DIExpression()) #18, !dbg !3170
  %34 = icmp eq i8* %33, null, !dbg !3187
  %35 = icmp ne i64 %32, 0, !dbg !3188
  %36 = and i1 %35, %34, !dbg !3189
  br i1 %36, label %37, label %38, !dbg !3189

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3190
  unreachable, !dbg !3190

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3170
  ret i8* %39, !dbg !3191
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3192 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()) #18, !dbg !3196
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %2, metadata !3087, metadata !DIExpression()) #18, !dbg !3196
  %3 = icmp eq i8* %2, null, !dbg !3199
  %4 = icmp ne i64 %0, 0, !dbg !3200
  %5 = and i1 %4, %3, !dbg !3201
  br i1 %5, label %6, label %7, !dbg !3201

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3202
  unreachable, !dbg !3202

7:                                                ; preds = %1
  ret i8* %2, !dbg !3203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i64* %1, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i8* %0, metadata !480, metadata !DIExpression()) #18, !dbg !3211
  call void @llvm.dbg.value(metadata i64* %1, metadata !481, metadata !DIExpression()) #18, !dbg !3211
  call void @llvm.dbg.value(metadata i64 1, metadata !482, metadata !DIExpression()) #18, !dbg !3211
  %3 = load i64, i64* %1, align 8, !dbg !3213, !tbaa !2390
  call void @llvm.dbg.value(metadata i64 %3, metadata !483, metadata !DIExpression()) #18, !dbg !3211
  %4 = icmp eq i8* %0, null, !dbg !3214
  br i1 %4, label %5, label %12, !dbg !3215

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3216
  br i1 %6, label %9, label %7, !dbg !3217

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !483, metadata !DIExpression()) #18, !dbg !3211
  %8 = icmp slt i64 %3, 0, !dbg !3218
  br i1 %8, label %11, label %9, !dbg !3219

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !483, metadata !DIExpression()) #18, !dbg !3211
  store i64 %10, i64* %1, align 8, !dbg !3220, !tbaa !2390
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #18, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %18, metadata !3122, metadata !DIExpression()) #18, !dbg !3221
  br label %21, !dbg !3223

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3224
  unreachable, !dbg !3224

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3225
  br i1 %13, label %15, label %14, !dbg !3226

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3227
  unreachable, !dbg !3227

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3228
  %17 = add nuw nsw i64 %3, 1, !dbg !3229
  %18 = add nuw nsw i64 %17, %16, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %18, metadata !483, metadata !DIExpression()) #18, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %18, metadata !483, metadata !DIExpression()) #18, !dbg !3211
  store i64 %18, i64* %1, align 8, !dbg !3220, !tbaa !2390
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #18, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %18, metadata !3122, metadata !DIExpression()) #18, !dbg !3221
  %19 = icmp eq i64 %18, 0, !dbg !3231
  br i1 %19, label %20, label %21, !dbg !3223

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3232
  br label %28, !dbg !3233

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %23, metadata !3117, metadata !DIExpression()) #18, !dbg !3221
  %24 = icmp eq i8* %23, null, !dbg !3235
  %25 = icmp ne i64 %22, 0, !dbg !3236
  %26 = and i1 %25, %24, !dbg !3237
  br i1 %26, label %27, label %28, !dbg !3237

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3238
  unreachable, !dbg !3238

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3221
  ret i8* %29, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3240 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()) #18, !dbg !3249
  call void @llvm.dbg.value(metadata i64 1, metadata !3247, metadata !DIExpression()) #18, !dbg !3249
  %2 = icmp slt i64 %0, 0, !dbg !3251
  br i1 %2, label %6, label %3, !dbg !3253

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %4, metadata !3248, metadata !DIExpression()) #18, !dbg !3249
  %5 = icmp eq i8* %4, null, !dbg !3255
  br i1 %5, label %6, label %7, !dbg !3256

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3257
  unreachable, !dbg !3257

7:                                                ; preds = %3
  ret i8* %4, !dbg !3258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3245 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3259
  %3 = udiv i64 9223372036854775807, %1, !dbg !3260
  %4 = icmp ult i64 %3, %0, !dbg !3260
  br i1 %4, label %8, label %5, !dbg !3261

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3262
  call void @llvm.dbg.value(metadata i8* %6, metadata !3248, metadata !DIExpression()), !dbg !3259
  %7 = icmp eq i8* %6, null, !dbg !3263
  br i1 %7, label %8, label %9, !dbg !3264

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3265
  unreachable, !dbg !3265

9:                                                ; preds = %5
  ret i8* %6, !dbg !3266
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3267 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()) #18, !dbg !3274
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %3, metadata !3087, metadata !DIExpression()) #18, !dbg !3274
  %4 = icmp eq i8* %3, null, !dbg !3277
  %5 = icmp ne i64 %1, 0, !dbg !3278
  %6 = and i1 %5, %4, !dbg !3279
  br i1 %6, label %7, label %8, !dbg !3279

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3280
  unreachable, !dbg !3280

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3281, metadata !DIExpression()) #18, !dbg !3290
  call void @llvm.dbg.value(metadata i8* %0, metadata !3288, metadata !DIExpression()) #18, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()) #18, !dbg !3290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3292
  ret i8* %3, !dbg !3293
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3294 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3296, metadata !DIExpression()), !dbg !3297
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3298
  %3 = add i64 %2, 1, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %0, metadata !3271, metadata !DIExpression()) #18, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %3, metadata !3272, metadata !DIExpression()) #18, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %3, metadata !3082, metadata !DIExpression()) #18, !dbg !3302
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %4, metadata !3087, metadata !DIExpression()) #18, !dbg !3302
  %5 = icmp eq i8* %4, null, !dbg !3305
  %6 = icmp ne i64 %3, 0, !dbg !3306
  %7 = and i1 %6, %5, !dbg !3307
  br i1 %7, label %8, label %9, !dbg !3307

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3308
  unreachable, !dbg !3308

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3281, metadata !DIExpression()) #18, !dbg !3309
  call void @llvm.dbg.value(metadata i8* %0, metadata !3288, metadata !DIExpression()) #18, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %3, metadata !3289, metadata !DIExpression()) #18, !dbg !3309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3311
  ret i8* %4, !dbg !3312
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3313 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3314, !tbaa !1129
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #18, !dbg !3315
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), i8* %2) #18, !dbg !3316
  tail call void @abort() #22, !dbg !3317
  unreachable, !dbg !3317
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3318 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3320, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %1, metadata !3321, metadata !DIExpression()), !dbg !3326
  %3 = icmp eq i64 %0, 0, !dbg !3327
  %4 = icmp eq i64 %1, 0, !dbg !3328
  %5 = or i1 %3, %4, !dbg !3329
  br i1 %5, label %11, label %6, !dbg !3329

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3323, metadata !DIExpression()), !dbg !3330
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3331
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3331
  br i1 %8, label %9, label %11, !dbg !3333

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #23, !dbg !3334
  store i32 12, i32* %10, align 4, !dbg !3336, !tbaa !1129
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3320, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %12, metadata !3321, metadata !DIExpression()), !dbg !3326
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %14, metadata !3322, metadata !DIExpression()), !dbg !3326
  br label %15, !dbg !3338

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3326
  ret i8* %16, !dbg !3339
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3340 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3348, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %1, metadata !3349, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %2, metadata !3350, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3351, metadata !DIExpression()), !dbg !3357
  %6 = bitcast i32* %5 to i8*, !dbg !3358
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3358
  %7 = icmp eq i32* %0, null, !dbg !3359
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3361
  call void @llvm.dbg.value(metadata i32* %8, metadata !3348, metadata !DIExpression()), !dbg !3357
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %9, metadata !3352, metadata !DIExpression()), !dbg !3357
  %10 = icmp ugt i64 %9, -3, !dbg !3363
  %11 = icmp ne i64 %2, 0, !dbg !3364
  %12 = and i1 %11, %10, !dbg !3365
  br i1 %12, label %13, label %18, !dbg !3365

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3366
  br i1 %14, label %18, label %15, !dbg !3367

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3368, !tbaa !1271
  call void @llvm.dbg.value(metadata i8 %16, metadata !3354, metadata !DIExpression()), !dbg !3369
  %17 = zext i8 %16 to i32, !dbg !3370
  store i32 %17, i32* %8, align 4, !dbg !3371, !tbaa !1129
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3357
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3372
  ret i64 %19, !dbg !3372
}

; Function Attrs: nounwind
declare !dbg !501 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3373 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3379, metadata !DIExpression()), !dbg !3384
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3385
  call void @llvm.dbg.value(metadata i1 undef, metadata !3380, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3386, metadata !DIExpression()), !dbg !3389
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3391
  %4 = load i32, i32* %3, align 8, !dbg !3391, !tbaa !3392
  %5 = and i32 %4, 32, !dbg !3391
  %6 = icmp eq i32 %5, 0, !dbg !3393
  call void @llvm.dbg.value(metadata i1 %6, metadata !3382, metadata !DIExpression()), !dbg !3384
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3394
  %8 = icmp ne i32 %7, 0, !dbg !3395
  call void @llvm.dbg.value(metadata i1 %8, metadata !3383, metadata !DIExpression()), !dbg !3384
  br i1 %6, label %9, label %19, !dbg !3396

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3398
  call void @llvm.dbg.value(metadata i1 %10, metadata !3380, metadata !DIExpression()), !dbg !3384
  %11 = xor i1 %8, true, !dbg !3399
  %12 = or i1 %10, %11, !dbg !3399
  %13 = sext i1 %8 to i32, !dbg !3399
  br i1 %12, label %22, label %14, !dbg !3399

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #23, !dbg !3400
  %16 = load i32, i32* %15, align 4, !dbg !3400, !tbaa !1129
  %17 = icmp ne i32 %16, 9, !dbg !3401
  %18 = sext i1 %17 to i32, !dbg !3402
  br label %22, !dbg !3402

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3403

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #23, !dbg !3405
  store i32 0, i32* %21, align 4, !dbg !3407, !tbaa !1129
  br label %22, !dbg !3405

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3384
  ret i32 %23, !dbg !3408
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3409 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()), !dbg !3416
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3417
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3412, metadata !DIExpression()), !dbg !3418
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3419
  %5 = icmp eq i32 %4, 0, !dbg !3419
  br i1 %5, label %6, label %13, !dbg !3421

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3422
  %8 = load i16, i16* %7, align 16, !dbg !3422
  %9 = icmp eq i16 %8, 67, !dbg !3422
  br i1 %9, label %13, label %10, !dbg !3423

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 6), !dbg !3424
  %12 = icmp ne i32 %11, 0, !dbg !3425
  br label %13, !dbg !3423

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3416
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3426
  ret i1 %14, !dbg !3426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3427 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3430
  call void @llvm.dbg.value(metadata i8* %1, metadata !3429, metadata !DIExpression()), !dbg !3431
  %2 = icmp eq i8* %1, null, !dbg !3432
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %1, !dbg !3434
  call void @llvm.dbg.value(metadata i8* %3, metadata !3429, metadata !DIExpression()), !dbg !3431
  %4 = load i8, i8* %3, align 1, !dbg !3435, !tbaa !1271
  %5 = icmp eq i8 %4, 0, !dbg !3439
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0), i8* %3, !dbg !3440
  call void @llvm.dbg.value(metadata i8* %6, metadata !3429, metadata !DIExpression()), !dbg !3431
  ret i8* %6, !dbg !3441
}

; Function Attrs: nounwind
declare !dbg !953 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3442 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8* %1, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %2, metadata !3448, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 %0, metadata !3450, metadata !DIExpression()) #18, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %1, metadata !3453, metadata !DIExpression()) #18, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %2, metadata !3454, metadata !DIExpression()) #18, !dbg !3459
  call void @llvm.dbg.value(metadata i32 %0, metadata !3461, metadata !DIExpression()) #18, !dbg !3467
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3469
  call void @llvm.dbg.value(metadata i8* %4, metadata !3466, metadata !DIExpression()) #18, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %4, metadata !3455, metadata !DIExpression()) #18, !dbg !3459
  %5 = icmp eq i8* %4, null, !dbg !3470
  br i1 %5, label %6, label %9, !dbg !3471

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3472
  br i1 %7, label %19, label %8, !dbg !3475

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3476, !tbaa !1271
  br label %19, !dbg !3477

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %10, metadata !3456, metadata !DIExpression()) #18, !dbg !3479
  %11 = icmp ult i64 %10, %2, !dbg !3480
  br i1 %11, label %12, label %14, !dbg !3482

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %1, metadata !3485, metadata !DIExpression()) #18, !dbg !3490
  call void @llvm.dbg.value(metadata i8* %4, metadata !3488, metadata !DIExpression()) #18, !dbg !3490
  call void @llvm.dbg.value(metadata i64 %13, metadata !3489, metadata !DIExpression()) #18, !dbg !3490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3492
  br label %19, !dbg !3493

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3494
  br i1 %15, label %19, label %16, !dbg !3497

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %1, metadata !3485, metadata !DIExpression()) #18, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %4, metadata !3488, metadata !DIExpression()) #18, !dbg !3500
  call void @llvm.dbg.value(metadata i64 %17, metadata !3489, metadata !DIExpression()) #18, !dbg !3500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3502
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3503
  store i8 0, i8* %18, align 1, !dbg !3504, !tbaa !1271
  br label %19, !dbg !3505

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3506
  ret i32 %20, !dbg !3507
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3508 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3510, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i32 %0, metadata !3461, metadata !DIExpression()) #18, !dbg !3512
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3514
  call void @llvm.dbg.value(metadata i8* %2, metadata !3466, metadata !DIExpression()) #18, !dbg !3512
  ret i8* %2, !dbg !3515
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3516 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3522, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i32 0, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i32 0, metadata !3525, metadata !DIExpression()), !dbg !3526
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3527
  call void @llvm.dbg.value(metadata i32 %2, metadata !3524, metadata !DIExpression()), !dbg !3526
  %3 = icmp slt i32 %2, 0, !dbg !3528
  br i1 %3, label %4, label %6, !dbg !3530

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3531
  br label %24, !dbg !3532

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3533
  %8 = icmp eq i32 %7, 0, !dbg !3533
  br i1 %8, label %13, label %9, !dbg !3535

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3536
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3537
  %12 = icmp eq i64 %11, -1, !dbg !3538
  br i1 %12, label %16, label %13, !dbg !3539

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3540
  %15 = icmp eq i32 %14, 0, !dbg !3540
  br i1 %15, label %16, label %18, !dbg !3541

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3523, metadata !DIExpression()), !dbg !3526
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3542
  call void @llvm.dbg.value(metadata i32 %21, metadata !3525, metadata !DIExpression()), !dbg !3526
  br label %24, !dbg !3543

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #23, !dbg !3544
  %20 = load i32, i32* %19, align 4, !dbg !3544, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 %20, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i32 %20, metadata !3523, metadata !DIExpression()), !dbg !3526
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3542
  call void @llvm.dbg.value(metadata i32 %21, metadata !3525, metadata !DIExpression()), !dbg !3526
  %22 = icmp eq i32 %20, 0, !dbg !3545
  br i1 %22, label %24, label %23, !dbg !3543

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3547, !tbaa !1129
  call void @llvm.dbg.value(metadata i32 -1, metadata !3525, metadata !DIExpression()), !dbg !3526
  br label %24, !dbg !3549

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3526
  ret i32 %25, !dbg !3550
}

; Function Attrs: nofree nounwind
declare !dbg !962 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !997 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !998 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3551 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3557, metadata !DIExpression()), !dbg !3558
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3559
  br i1 %2, label %6, label %3, !dbg !3561

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3562
  %5 = icmp eq i32 %4, 0, !dbg !3562
  br i1 %5, label %6, label %8, !dbg !3563

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3564
  br label %17, !dbg !3565

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3566, metadata !DIExpression()) #18, !dbg !3571
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3573
  %10 = load i32, i32* %9, align 8, !dbg !3573, !tbaa !3392
  %11 = and i32 %10, 256, !dbg !3575
  %12 = icmp eq i32 %11, 0, !dbg !3575
  br i1 %12, label %15, label %13, !dbg !3576

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3577
  br label %15, !dbg !3577

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3578
  br label %17, !dbg !3579

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3558
  ret i32 %18, !dbg !3580
}

; Function Attrs: nofree nounwind
declare !dbg !1006 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3581 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3588, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %1, metadata !3589, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %2, metadata !3590, metadata !DIExpression()), !dbg !3594
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3595
  %5 = load i8*, i8** %4, align 8, !dbg !3595, !tbaa !3596
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3597
  %7 = load i8*, i8** %6, align 8, !dbg !3597, !tbaa !3598
  %8 = icmp eq i8* %5, %7, !dbg !3599
  br i1 %8, label %9, label %28, !dbg !3600

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3601
  %11 = load i8*, i8** %10, align 8, !dbg !3601, !tbaa !1264
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3602
  %13 = load i8*, i8** %12, align 8, !dbg !3602, !tbaa !3603
  %14 = icmp eq i8* %11, %13, !dbg !3604
  br i1 %14, label %15, label %28, !dbg !3605

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3606
  %17 = load i8*, i8** %16, align 8, !dbg !3606, !tbaa !3607
  %18 = icmp eq i8* %17, null, !dbg !3608
  br i1 %18, label %19, label %28, !dbg !3609

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3610
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %21, metadata !3591, metadata !DIExpression()), !dbg !3612
  %22 = icmp eq i64 %21, -1, !dbg !3613
  br i1 %22, label %30, label %23, !dbg !3615

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3616
  %25 = load i32, i32* %24, align 8, !dbg !3617, !tbaa !3392
  %26 = and i32 %25, -17, !dbg !3617
  store i32 %26, i32* %24, align 8, !dbg !3617, !tbaa !3392
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3618
  store i64 %21, i64* %27, align 8, !dbg !3619, !tbaa !3620
  br label %30, !dbg !3621

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3622
  br label %30, !dbg !3623

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3594
  ret i32 %31, !dbg !3624
}

; Function Attrs: nofree nounwind
declare !dbg !1082 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #23 = { nounwind readnone }
attributes #24 = { cold }

!llvm.dbg.cu = !{!2, !182, !187, !192, !238, !244, !285, !429, !423, !471, !492, !495, !498, !517, !556, !563, !956, !959, !1003, !1044}
!llvm.ident = !{!1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085}
!llvm.module.flags = !{!1086, !1087, !1088, !1089, !1090}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arch_long_options", scope: !2, file: !3, line: 107, type: !176, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !141, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/uname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !15, !76, !80, !84, !87, !90, !97, !113, !117, !10, !66, !132, !136, !140}
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
!97 = !DISubprogram(name: "uname", scope: !98, file: !98, line: 81, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!98 = !DIFile(filename: "/usr/include/sys/utsname.h", directory: "")
!99 = !DISubroutineType(types: !100)
!100 = !{!14, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !98, line: 48, size: 3120, elements: !103)
!103 = !{!104, !108, !109, !110, !111, !112}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !102, file: !98, line: 51, baseType: !105, size: 520)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 520, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 65)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !102, file: !98, line: 54, baseType: !105, size: 520, offset: 520)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !102, file: !98, line: 57, baseType: !105, size: 520, offset: 1040)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !102, file: !98, line: 59, baseType: !105, size: 520, offset: 1560)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !102, file: !98, line: 62, baseType: !105, size: 520, offset: 2080)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !102, file: !98, line: 67, baseType: !105, size: 520, offset: 2600)
!113 = !DISubprogram(name: "error", scope: !114, file: !114, line: 52, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!114 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!115 = !DISubroutineType(types: !116)
!116 = !{null, !14, !14, !12, null}
!117 = !DISubprogram(name: "getopt_long", scope: !118, file: !118, line: 66, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!118 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!119 = !DISubroutineType(types: !120)
!120 = !{!14, !14, !121, !12, !123, !130}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !118, line: 50, size: 256, elements: !126)
!126 = !{!127, !128, !129, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !118, line: 52, baseType: !12, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !125, file: !118, line: 55, baseType: !14, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !125, file: !118, line: 56, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !125, file: !118, line: 57, baseType: !14, size: 32, offset: 192)
!132 = !DISubprogram(name: "version_etc", scope: !133, file: !133, line: 69, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!133 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !DISubroutineType(types: !135)
!135 = !{null, !19, !12, !12, !12, null}
!136 = !DISubprogram(name: "quote", scope: !137, file: !137, line: 44, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!137 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!138 = !DISubroutineType(types: !139)
!139 = !{!12, !12}
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !{!142, !0, !165, !170}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "unknown", scope: !144, file: !3, line: 262, type: !162, isLocal: true, isDefinition: true)
!144 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 260, type: !145, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!145 = !DISubroutineType(types: !146)
!146 = !{!14, !14, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!148 = !{!149, !150, !151, !153, !156, !159}
!149 = !DILocalVariable(name: "argc", arg: 1, scope: !144, file: !3, line: 260, type: !14)
!150 = !DILocalVariable(name: "argv", arg: 2, scope: !144, file: !3, line: 260, type: !147)
!151 = !DILocalVariable(name: "toprint", scope: !144, file: !3, line: 265, type: !152)
!152 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!153 = !DILocalVariable(name: "name", scope: !154, file: !3, line: 284, type: !102)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 283, column: 5)
!155 = distinct !DILexicalBlock(scope: !144, file: !3, line: 280, column: 7)
!156 = !DILocalVariable(name: "element", scope: !157, file: !3, line: 303, type: !12)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 302, column: 5)
!158 = distinct !DILexicalBlock(scope: !144, file: !3, line: 301, column: 7)
!159 = !DILocalVariable(name: "element", scope: !160, file: !3, line: 347, type: !12)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 346, column: 5)
!161 = distinct !DILexicalBlock(scope: !144, file: !3, line: 345, column: 7)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 8)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "uname_long_options", scope: !2, file: !3, line: 89, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 3584, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 14)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "printed", scope: !172, file: !3, line: 163, type: !175, isLocal: true, isDefinition: true)
!172 = distinct !DISubprogram(name: "print_element", scope: !3, file: !3, line: 161, type: !78, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!173 = !{!174}
!174 = !DILocalVariable(name: "element", arg: 1, scope: !172, file: !3, line: 161, type: !12)
!175 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 768, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 3)
!179 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "uname_mode", scope: !182, file: !183, line: 2, type: !14, isLocal: false, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !184, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "src/uname-uname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !{!180}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "Version", scope: !187, file: !188, line: 2, type: !12, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !189, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = !{!185}
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "file_name", scope: !192, file: !193, line: 46, type: !12, isLocal: true, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !194, globals: !233, splitDebugInlining: false, nameTableKind: None)
!193 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!194 = !{!195, !6, !231, !113}
!195 = !DISubprogram(name: "close_stream", scope: !196, file: !196, line: 2, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!196 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = !DISubroutineType(types: !198)
!198 = !{!14, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !200, file: !21, line: 51, baseType: !14, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !200, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !200, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !200, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !200, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !200, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !200, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !200, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !200, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !200, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !200, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !200, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !200, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !200, file: !21, line: 70, baseType: !199, size: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !200, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !200, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !200, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !200, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !200, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !200, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !200, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !200, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !200, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !200, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !200, file: !21, line: 93, baseType: !199, size: 64, offset: 1344)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !200, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !200, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !200, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !200, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!231 = !DISubprogram(name: "quotearg_colon", scope: !232, file: !232, line: 391, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!232 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!233 = !{!190, !234}
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !192, file: !193, line: 56, type: !175, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "exit_failure", scope: !238, file: !239, line: 24, type: !241, isLocal: false, isDefinition: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !240, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = !{!236}
!241 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "program_name", scope: !244, file: !245, line: 33, type: !12, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !246, globals: !282, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!246 = !{!66, !247, !10}
!247 = !DISubprogram(name: "fputs", scope: !16, file: !16, line: 626, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!248 = !DISubroutineType(types: !249)
!249 = !{!14, !12, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !251, file: !21, line: 51, baseType: !14, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !251, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !251, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !251, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !251, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !251, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !251, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !251, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !251, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !251, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !251, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !251, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !251, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !251, file: !21, line: 70, baseType: !250, size: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !251, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !251, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !251, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !251, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !251, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !251, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !251, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !251, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !251, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !251, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !251, file: !21, line: 93, baseType: !250, size: 64, offset: 1344)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !251, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !251, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !251, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !251, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!282 = !{!242}
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !285, file: !286, line: 85, type: !417, isLocal: false, isDefinition: true)
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !287, retainedTypes: !321, globals: !390, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!287 = !{!288, !301, !306}
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !232, line: 32, baseType: !152, size: 32, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!290 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!291 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!292 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!293 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!294 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!295 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!296 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!297 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!298 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!299 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!300 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !232, line: 242, baseType: !152, size: 32, elements: !302)
!302 = !{!303, !304, !305}
!303 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!304 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!305 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !307, line: 46, baseType: !152, size: 32, elements: !308)
!307 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!309 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!310 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!311 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!312 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!313 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!314 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!315 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!316 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!317 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!318 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!319 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!320 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!321 = !{!322, !328, !342, !345, !14, !46, !348, !68, !365, !369, !6, !375, !379, !10, !383, !386, !387}
!322 = !DISubprogram(name: "xmemdup", scope: !323, file: !323, line: 62, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!323 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!324 = !DISubroutineType(types: !325)
!325 = !{!66, !326, !70}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!328 = !DISubprogram(name: "quotearg_alloc_mem", scope: !232, file: !232, line: 342, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!329 = !DISubroutineType(types: !330)
!330 = !{!10, !12, !70, !331, !332}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !286, line: 65, size: 448, elements: !335)
!335 = !{!336, !337, !338, !340, !341}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !334, file: !286, line: 68, baseType: !288, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !286, line: 71, baseType: !14, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !334, file: !286, line: 75, baseType: !339, size: 256, offset: 64)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !163)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !334, file: !286, line: 78, baseType: !12, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !334, file: !286, line: 81, baseType: !12, size: 64, offset: 384)
!342 = !DISubprogram(name: "free", scope: !91, file: !91, line: 565, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !66}
!345 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !232, file: !232, line: 408, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!346 = !DISubroutineType(types: !347)
!347 = !{!10, !14, !12, !12, !12, !70}
!348 = !DISubprogram(name: "rpl_mbrtowc", scope: !349, file: !349, line: 717, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!349 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = !DISubroutineType(types: !351)
!351 = !{!70, !130, !12, !70, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 13, size: 64, elements: !355)
!354 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !353, file: !354, line: 15, baseType: !14, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !353, file: !354, line: 20, baseType: !358, size: 32, offset: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !353, file: !354, line: 16, size: 32, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !358, file: !354, line: 18, baseType: !152, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !358, file: !354, line: 19, baseType: !362, size: 32)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 4)
!365 = !DISubprogram(name: "iswprint", scope: !366, file: !366, line: 120, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!366 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!367 = !DISubroutineType(types: !368)
!368 = !{!14, !152}
!369 = !DISubprogram(name: "mbsinit", scope: !370, file: !370, line: 292, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!370 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!371 = !DISubroutineType(types: !372)
!372 = !{!14, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!375 = !DISubprogram(name: "locale_charset", scope: !376, file: !376, line: 35, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!376 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!377 = !DISubroutineType(types: !378)
!378 = !{!12}
!379 = !DISubprogram(name: "c_strcasecmp", scope: !380, file: !380, line: 42, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!380 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!381 = !DISubroutineType(types: !382)
!382 = !{!14, !12, !12}
!383 = !DISubprogram(name: "xmalloc", scope: !323, file: !323, line: 53, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!384 = !DISubroutineType(types: !385)
!385 = !{!66, !70}
!386 = !DISubprogram(name: "xalloc_die", scope: !323, file: !323, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!387 = !DISubprogram(name: "xrealloc", scope: !323, file: !323, line: 59, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!388 = !DISubroutineType(types: !389)
!389 = !{!66, !66, !70}
!390 = !{!283, !391, !397, !399, !401, !406, !413, !415}
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !285, file: !286, line: 101, type: !393, isLocal: false, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 320, elements: !395)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!395 = !{!396}
!396 = !DISubrange(count: 10)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !285, file: !286, line: 1052, type: !334, isLocal: false, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !285, file: !286, line: 116, type: !334, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "slot0", scope: !285, file: !286, line: 842, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 256)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "slotvec", scope: !285, file: !286, line: 845, type: !408, isLocal: true, isDefinition: true)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !286, line: 834, size: 128, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !409, file: !286, line: 836, baseType: !68, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !409, file: !286, line: 837, baseType: !10, size: 64, offset: 64)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "nslots", scope: !285, file: !286, line: 843, type: !14, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "slotvec0", scope: !285, file: !286, line: 844, type: !409, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 704, elements: !419)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!419 = !{!420}
!420 = !DISubrange(count: 11)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !423, file: !424, line: 26, type: !426, isLocal: false, isDefinition: true)
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !425, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!425 = !{!421}
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 376, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 47)
!429 = distinct !DICompileUnit(language: DW_LANG_C99, file: !430, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !431, retainedTypes: !435, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!431 = !{!432}
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !430, line: 40, baseType: !152, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!435 = !{!6, !436, !66}
!436 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!437 = !DISubroutineType(types: !438)
!438 = !{!14, !12, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !440, file: !21, line: 51, baseType: !14, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !440, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !440, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !440, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !440, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !440, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !440, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !440, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !440, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !440, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !440, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !440, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !440, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !440, file: !21, line: 70, baseType: !439, size: 64, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !440, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !440, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !440, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !440, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !440, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !440, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !440, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !440, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !440, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !440, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !440, file: !21, line: 93, baseType: !439, size: 64, offset: 1344)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !440, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !440, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !440, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !440, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!471 = distinct !DICompileUnit(language: DW_LANG_C99, file: !472, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !473, retainedTypes: !486, splitDebugInlining: false, nameTableKind: None)
!472 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!473 = !{!474}
!474 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !475, file: !323, line: 186, baseType: !152, size: 32, elements: !484)
!475 = distinct !DISubprogram(name: "x2nrealloc", scope: !323, file: !323, line: 174, type: !476, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !479)
!476 = !DISubroutineType(types: !477)
!477 = !{!66, !66, !478, !68}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!479 = !{!480, !481, !482, !483}
!480 = !DILocalVariable(name: "p", arg: 1, scope: !475, file: !323, line: 174, type: !66)
!481 = !DILocalVariable(name: "pn", arg: 2, scope: !475, file: !323, line: 174, type: !478)
!482 = !DILocalVariable(name: "s", arg: 3, scope: !475, file: !323, line: 174, type: !68)
!483 = !DILocalVariable(name: "n", scope: !475, file: !323, line: 176, type: !68)
!484 = !{!485}
!485 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!486 = !{!68, !386, !383, !387, !10, !342, !66, !487, !490}
!487 = !DISubprogram(name: "xcalloc", scope: !323, file: !323, line: 57, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!488 = !DISubroutineType(types: !489)
!489 = !{!66, !70, !70}
!490 = !DISubprogram(name: "rpl_calloc", scope: !491, file: !491, line: 688, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!491 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!492 = distinct !DICompileUnit(language: DW_LANG_C99, file: !493, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !494, splitDebugInlining: false, nameTableKind: None)
!493 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!494 = !{!6, !113}
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !497, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!497 = !{!66}
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !500, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!500 = !{!501, !68, !513}
!501 = !DISubprogram(name: "mbrtowc", scope: !370, file: !370, line: 296, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!502 = !DISubroutineType(types: !503)
!503 = !{!70, !130, !12, !70, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 13, size: 64, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !505, file: !354, line: 15, baseType: !14, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !505, file: !354, line: 20, baseType: !509, size: 32, offset: 32)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !354, line: 16, size: 32, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !509, file: !354, line: 18, baseType: !152, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !509, file: !354, line: 19, baseType: !362, size: 32)
!513 = !DISubprogram(name: "hard_locale", scope: !514, file: !514, line: 26, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!514 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!515 = !DISubroutineType(types: !516)
!516 = !{!175, !14}
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !519, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!519 = !{!520}
!520 = !DISubprogram(name: "rpl_fclose", scope: !521, file: !521, line: 672, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!521 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!522 = !DISubroutineType(types: !523)
!523 = !{!14, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !525, file: !21, line: 51, baseType: !14, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !525, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !525, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !525, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !525, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !525, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !525, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !525, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !525, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !525, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !525, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !525, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !525, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !525, file: !21, line: 70, baseType: !524, size: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !525, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !525, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !525, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !525, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !525, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !525, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !525, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !525, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !525, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !525, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !525, file: !21, line: 93, baseType: !524, size: 64, offset: 1344)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !525, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !525, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !525, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !525, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !558, splitDebugInlining: false, nameTableKind: None)
!557 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!558 = !{!559}
!559 = !DISubprogram(name: "setlocale_null_r", scope: !560, file: !560, line: 64, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!560 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!561 = !DISubroutineType(types: !562)
!562 = !{!14, !14, !10, !70}
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !565, retainedTypes: !952, splitDebugInlining: false, nameTableKind: None)
!564 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!565 = !{!566}
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !567, line: 41, baseType: !152, size: 32, elements: !568)
!567 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951}
!569 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!570 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!571 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!572 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!573 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!574 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!575 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!576 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!577 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!578 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!579 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!580 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!581 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!582 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!583 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!584 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!585 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!586 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!587 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!588 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!589 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!590 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!591 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!592 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!593 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!594 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!595 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!596 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!597 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!598 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!599 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!600 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!601 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!602 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!603 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!604 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!605 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!606 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!607 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!608 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!609 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!610 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!611 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!612 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!613 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!614 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!615 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!616 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!617 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!618 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!677 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!680 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!681 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!682 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!683 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!684 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!685 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!686 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!687 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!688 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!689 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!690 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!691 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!764 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!837 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!838 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!839 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!840 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!841 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!842 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!843 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!844 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!845 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!846 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!847 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!848 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!849 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!850 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!851 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!853 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!854 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!855 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!856 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!857 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!858 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!884 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!885 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!886 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!887 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!888 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!893 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!894 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!895 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!896 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!952 = !{!953, !66}
!953 = !DISubprogram(name: "nl_langinfo", scope: !567, file: !567, line: 661, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!954 = !DISubroutineType(types: !955)
!955 = !{!10, !14}
!956 = distinct !DICompileUnit(language: DW_LANG_C99, file: !957, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !958, splitDebugInlining: false, nameTableKind: None)
!957 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!958 = !{!66, !80}
!959 = distinct !DICompileUnit(language: DW_LANG_C99, file: !960, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !961, splitDebugInlining: false, nameTableKind: None)
!960 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!961 = !{!962, !997, !998, !1002}
!962 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!963 = !DISubroutineType(types: !964)
!964 = !{!14, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !966, file: !21, line: 51, baseType: !14, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !966, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !966, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !966, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !966, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !966, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !966, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !966, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !966, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !966, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !966, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !966, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !966, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !966, file: !21, line: 70, baseType: !965, size: 64, offset: 832)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !966, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !966, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !966, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !966, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !966, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !966, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !966, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !966, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !966, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !966, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !966, file: !21, line: 93, baseType: !965, size: 64, offset: 1344)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !966, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !966, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !966, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !966, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!997 = !DISubprogram(name: "fclose", scope: !16, file: !16, line: 213, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!998 = !DISubprogram(name: "lseek", scope: !999, file: !999, line: 334, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!999 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!44, !14, !44, !14}
!1002 = !DISubprogram(name: "rpl_fflush", scope: !521, file: !521, line: 718, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1003 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1004, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1005, splitDebugInlining: false, nameTableKind: None)
!1004 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1005 = !{!66, !1006, !1041}
!1006 = !DISubprogram(name: "fflush", scope: !16, file: !16, line: 218, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!14, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1010, file: !21, line: 51, baseType: !14, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1010, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1010, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1010, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1010, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1010, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1010, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1010, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1010, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1010, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1010, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1010, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1010, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1010, file: !21, line: 70, baseType: !1009, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1010, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1010, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1010, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1010, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1010, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1010, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1010, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1010, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1010, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1010, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1010, file: !21, line: 93, baseType: !1009, size: 64, offset: 1344)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1010, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1010, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1010, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1010, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1041 = !DISubprogram(name: "rpl_fseeko", scope: !521, file: !521, line: 1034, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!14, !1009, !44, !14}
!1044 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1045, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1046, splitDebugInlining: false, nameTableKind: None)
!1045 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1046 = !{!66, !1047, !998, !1082}
!1047 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!14, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1051, file: !21, line: 51, baseType: !14, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1051, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1051, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1051, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1051, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1051, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1051, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1051, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1051, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1051, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1051, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1051, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1051, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1051, file: !21, line: 70, baseType: !1050, size: 64, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1051, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1051, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1051, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1051, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1051, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1051, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1051, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1051, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1051, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1051, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1051, file: !21, line: 93, baseType: !1050, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1051, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1051, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1051, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1051, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1082 = !DISubprogram(name: "fseeko", scope: !16, file: !16, line: 707, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!14, !1050, !44, !14}
!1085 = !{!"clang version 10.0.0 "}
!1086 = !{i32 7, !"Dwarf Version", i32 4}
!1087 = !{i32 2, !"Debug Info Version", i32 3}
!1088 = !{i32 1, !"wchar_size", i32 4}
!1089 = !{i32 7, !"PIC Level", i32 2}
!1090 = !{i32 7, !"PIE Level", i32 2}
!1091 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 115, type: !1092, scopeLine: 116, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1094)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !14}
!1094 = !{!1095}
!1095 = !DILocalVariable(name: "status", arg: 1, scope: !1091, file: !3, line: 115, type: !14)
!1096 = !DILocalVariable(name: "infomap", scope: !1097, file: !1098, line: 636, type: !1110)
!1097 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1098, file: !1098, line: 634, type: !78, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1099)
!1098 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1099 = !{!1100, !1096, !1101, !1102, !1109}
!1100 = !DILocalVariable(name: "program", arg: 1, scope: !1097, file: !1098, line: 634, type: !12)
!1101 = !DILocalVariable(name: "node", scope: !1097, file: !1098, line: 646, type: !12)
!1102 = !DILocalVariable(name: "map_prog", scope: !1097, file: !1098, line: 647, type: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1097, file: !1098, line: 636, size: 128, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1105, file: !1098, line: 636, baseType: !12, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1105, file: !1098, line: 636, baseType: !12, size: 64, offset: 64)
!1109 = !DILocalVariable(name: "lc_messages", scope: !1097, file: !1098, line: 659, type: !12)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1104, size: 896, elements: !1111)
!1111 = !{!1112}
!1112 = !DISubrange(count: 7)
!1113 = !DILocation(line: 636, column: 67, scope: !1097, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 152, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 120, column: 5)
!1116 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 117, column: 7)
!1117 = !DILocation(line: 0, scope: !1091)
!1118 = !DILocation(line: 117, column: 14, scope: !1116)
!1119 = !DILocation(line: 117, column: 7, scope: !1091)
!1120 = !DILocation(line: 118, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 118, column: 5)
!1122 = !{!1123, !1123, i64 0}
!1123 = !{!"any pointer", !1124, i64 0}
!1124 = !{!"omnipotent char", !1125, i64 0}
!1125 = !{!"Simple C/C++ TBAA"}
!1126 = !DILocation(line: 121, column: 7, scope: !1115)
!1127 = !DILocation(line: 123, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 123, column: 11)
!1129 = !{!1130, !1130, i64 0}
!1130 = !{!"int", !1124, i64 0}
!1131 = !DILocation(line: 123, column: 22, scope: !1128)
!1132 = !DILocation(line: 123, column: 11, scope: !1115)
!1133 = !DILocation(line: 125, column: 11, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 124, column: 9)
!1135 = !DILocation(line: 141, column: 9, scope: !1134)
!1136 = !DILocation(line: 0, scope: !1128)
!1137 = !DILocation(line: 150, column: 7, scope: !1115)
!1138 = !DILocation(line: 151, column: 7, scope: !1115)
!1139 = !DILocation(line: 152, column: 28, scope: !1115)
!1140 = !DILocation(line: 0, scope: !1097, inlinedAt: !1114)
!1141 = !DILocation(line: 636, column: 3, scope: !1097, inlinedAt: !1114)
!1142 = !DILocation(line: 647, column: 36, scope: !1097, inlinedAt: !1114)
!1143 = !DILocation(line: 649, column: 3, scope: !1097, inlinedAt: !1114)
!1144 = !DILocation(line: 649, column: 33, scope: !1097, inlinedAt: !1114)
!1145 = !DILocation(line: 650, column: 13, scope: !1097, inlinedAt: !1114)
!1146 = !DILocation(line: 649, column: 20, scope: !1097, inlinedAt: !1114)
!1147 = !{!1148, !1123, i64 0}
!1148 = !{!"infomap", !1123, i64 0, !1123, i64 8}
!1149 = !DILocation(line: 649, column: 10, scope: !1097, inlinedAt: !1114)
!1150 = !DILocation(line: 649, column: 28, scope: !1097, inlinedAt: !1114)
!1151 = distinct !{!1151, !1143, !1145}
!1152 = !DILocation(line: 652, column: 17, scope: !1153, inlinedAt: !1114)
!1153 = distinct !DILexicalBlock(scope: !1097, file: !1098, line: 652, column: 7)
!1154 = !{!1148, !1123, i64 8}
!1155 = !DILocation(line: 652, column: 7, scope: !1153, inlinedAt: !1114)
!1156 = !DILocation(line: 652, column: 7, scope: !1097, inlinedAt: !1114)
!1157 = !DILocation(line: 655, column: 3, scope: !1097, inlinedAt: !1114)
!1158 = !DILocation(line: 659, column: 29, scope: !1097, inlinedAt: !1114)
!1159 = !DILocation(line: 660, column: 7, scope: !1160, inlinedAt: !1114)
!1160 = distinct !DILexicalBlock(scope: !1097, file: !1098, line: 660, column: 7)
!1161 = !DILocation(line: 660, column: 19, scope: !1160, inlinedAt: !1114)
!1162 = !DILocation(line: 660, column: 22, scope: !1160, inlinedAt: !1114)
!1163 = !DILocation(line: 660, column: 7, scope: !1097, inlinedAt: !1114)
!1164 = !DILocation(line: 666, column: 7, scope: !1165, inlinedAt: !1114)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !1098, line: 661, column: 5)
!1166 = !DILocation(line: 668, column: 5, scope: !1165, inlinedAt: !1114)
!1167 = !DILocation(line: 669, column: 3, scope: !1097, inlinedAt: !1114)
!1168 = !DILocation(line: 671, column: 3, scope: !1097, inlinedAt: !1114)
!1169 = !DILocation(line: 673, column: 1, scope: !1097, inlinedAt: !1114)
!1170 = !DILocation(line: 154, column: 3, scope: !1091)
!1171 = !DILocation(line: 0, scope: !144)
!1172 = !DILocation(line: 268, column: 21, scope: !144)
!1173 = !DILocation(line: 268, column: 3, scope: !144)
!1174 = !DILocation(line: 269, column: 3, scope: !144)
!1175 = !DILocation(line: 270, column: 3, scope: !144)
!1176 = !DILocation(line: 271, column: 3, scope: !144)
!1177 = !DILocation(line: 273, column: 3, scope: !144)
!1178 = !DILocalVariable(name: "argc", arg: 1, scope: !1179, file: !3, line: 175, type: !14)
!1179 = distinct !DISubprogram(name: "decode_switches", scope: !3, file: !3, line: 175, type: !145, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1180)
!1180 = !{!1178, !1181, !1182, !1183}
!1181 = !DILocalVariable(name: "argv", arg: 2, scope: !1179, file: !3, line: 175, type: !147)
!1182 = !DILocalVariable(name: "c", scope: !1179, file: !3, line: 177, type: !14)
!1183 = !DILocalVariable(name: "toprint", scope: !1179, file: !3, line: 178, type: !152)
!1184 = !DILocation(line: 0, scope: !1179, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 275, column: 13, scope: !144)
!1186 = !DILocation(line: 180, column: 7, scope: !1187, inlinedAt: !1185)
!1187 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 180, column: 7)
!1188 = !DILocation(line: 180, column: 18, scope: !1187, inlinedAt: !1185)
!1189 = !DILocation(line: 180, column: 7, scope: !1179, inlinedAt: !1185)
!1190 = !DILocation(line: 182, column: 19, scope: !1191, inlinedAt: !1185)
!1191 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 181, column: 5)
!1192 = !DILocation(line: 182, column: 7, scope: !1191, inlinedAt: !1185)
!1193 = !DILocation(line: 187, column: 13, scope: !1194, inlinedAt: !1185)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 186, column: 13)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 184, column: 9)
!1196 = !DILocation(line: 189, column: 13, scope: !1194, inlinedAt: !1185)
!1197 = !DILocation(line: 192, column: 15, scope: !1194, inlinedAt: !1185)
!1198 = !DILocation(line: 199, column: 19, scope: !1199, inlinedAt: !1185)
!1199 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 198, column: 5)
!1200 = !DILocation(line: 199, column: 7, scope: !1199, inlinedAt: !1185)
!1201 = !DILocation(line: 209, column: 23, scope: !1202, inlinedAt: !1185)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 203, column: 13)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 201, column: 9)
!1204 = !DILocation(line: 210, column: 15, scope: !1202, inlinedAt: !1185)
!1205 = !DILocation(line: 213, column: 23, scope: !1202, inlinedAt: !1185)
!1206 = !DILocation(line: 214, column: 15, scope: !1202, inlinedAt: !1185)
!1207 = !DILocation(line: 217, column: 23, scope: !1202, inlinedAt: !1185)
!1208 = !DILocation(line: 218, column: 15, scope: !1202, inlinedAt: !1185)
!1209 = !DILocation(line: 221, column: 23, scope: !1202, inlinedAt: !1185)
!1210 = !DILocation(line: 222, column: 15, scope: !1202, inlinedAt: !1185)
!1211 = !DILocation(line: 225, column: 23, scope: !1202, inlinedAt: !1185)
!1212 = !DILocation(line: 226, column: 15, scope: !1202, inlinedAt: !1185)
!1213 = !DILocation(line: 229, column: 23, scope: !1202, inlinedAt: !1185)
!1214 = !DILocation(line: 230, column: 15, scope: !1202, inlinedAt: !1185)
!1215 = !DILocation(line: 233, column: 23, scope: !1202, inlinedAt: !1185)
!1216 = !DILocation(line: 234, column: 15, scope: !1202, inlinedAt: !1185)
!1217 = !DILocation(line: 237, column: 23, scope: !1202, inlinedAt: !1185)
!1218 = !DILocation(line: 238, column: 15, scope: !1202, inlinedAt: !1185)
!1219 = distinct !{!1219, !1200, !1220}
!1220 = !DILocation(line: 247, column: 9, scope: !1199, inlinedAt: !1185)
!1221 = !DILocation(line: 240, column: 13, scope: !1202, inlinedAt: !1185)
!1222 = !DILocation(line: 242, column: 13, scope: !1202, inlinedAt: !1185)
!1223 = !DILocation(line: 245, column: 15, scope: !1202, inlinedAt: !1185)
!1224 = !DILocation(line: 250, column: 15, scope: !1225, inlinedAt: !1185)
!1225 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 250, column: 7)
!1226 = !DILocation(line: 250, column: 12, scope: !1225, inlinedAt: !1185)
!1227 = !DILocation(line: 250, column: 7, scope: !1179, inlinedAt: !1185)
!1228 = !DILocation(line: 252, column: 20, scope: !1229, inlinedAt: !1185)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 251, column: 5)
!1230 = !DILocation(line: 252, column: 55, scope: !1229, inlinedAt: !1185)
!1231 = !DILocation(line: 252, column: 50, scope: !1229, inlinedAt: !1185)
!1232 = !DILocation(line: 252, column: 43, scope: !1229, inlinedAt: !1185)
!1233 = !DILocation(line: 252, column: 7, scope: !1229, inlinedAt: !1185)
!1234 = !DILocation(line: 253, column: 7, scope: !1229, inlinedAt: !1185)
!1235 = !DILocation(line: 277, column: 15, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !144, file: !3, line: 277, column: 7)
!1237 = !DILocation(line: 277, column: 7, scope: !144)
!1238 = !DILocation(line: 281, column: 8, scope: !155)
!1239 = !DILocation(line: 280, column: 7, scope: !144)
!1240 = !DILocation(line: 284, column: 7, scope: !154)
!1241 = !DILocation(line: 284, column: 22, scope: !154)
!1242 = !DILocation(line: 286, column: 11, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !154, file: !3, line: 286, column: 11)
!1244 = !DILocation(line: 286, column: 25, scope: !1243)
!1245 = !DILocation(line: 286, column: 11, scope: !154)
!1246 = !DILocation(line: 287, column: 9, scope: !1243)
!1247 = !DILocation(line: 289, column: 19, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !154, file: !3, line: 289, column: 11)
!1249 = !DILocation(line: 289, column: 11, scope: !154)
!1250 = !DILocation(line: 0, scope: !172, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 290, column: 9, scope: !1248)
!1252 = !DILocation(line: 164, column: 7, scope: !1253, inlinedAt: !1251)
!1253 = distinct !DILexicalBlock(scope: !172, file: !3, line: 164, column: 7)
!1254 = !DILocation(line: 164, column: 7, scope: !172, inlinedAt: !1251)
!1255 = !DILocalVariable(name: "__c", arg: 1, scope: !1256, file: !1257, line: 108, type: !14)
!1256 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1257, file: !1257, line: 108, type: !1258, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1260)
!1257 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!14, !14}
!1260 = !{!1255}
!1261 = !DILocation(line: 0, scope: !1256, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 165, column: 5, scope: !1253, inlinedAt: !1251)
!1263 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1262)
!1264 = !{!1265, !1123, i64 40}
!1265 = !{!"_IO_FILE", !1130, i64 0, !1123, i64 8, !1123, i64 16, !1123, i64 24, !1123, i64 32, !1123, i64 40, !1123, i64 48, !1123, i64 56, !1123, i64 64, !1123, i64 72, !1123, i64 80, !1123, i64 88, !1123, i64 96, !1123, i64 104, !1130, i64 112, !1130, i64 116, !1266, i64 120, !1267, i64 128, !1124, i64 130, !1124, i64 131, !1123, i64 136, !1266, i64 144, !1123, i64 152, !1123, i64 160, !1123, i64 168, !1123, i64 176, !1266, i64 184, !1130, i64 192, !1124, i64 196}
!1266 = !{!"long", !1124, i64 0}
!1267 = !{!"short", !1124, i64 0}
!1268 = !{!1265, !1123, i64 48}
!1269 = !{!"branch_weights", i32 2000, i32 1}
!1270 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1271 = !{!1124, !1124, i64 0}
!1272 = !DILocation(line: 166, column: 11, scope: !172, inlinedAt: !1251)
!1273 = !DILocation(line: 167, column: 3, scope: !172, inlinedAt: !1251)
!1274 = !DILocation(line: 290, column: 9, scope: !1248)
!1275 = !DILocation(line: 291, column: 19, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !154, file: !3, line: 291, column: 11)
!1277 = !DILocation(line: 291, column: 11, scope: !154)
!1278 = !DILocation(line: 292, column: 24, scope: !1276)
!1279 = !DILocation(line: 0, scope: !172, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 292, column: 9, scope: !1276)
!1281 = !DILocation(line: 164, column: 7, scope: !1253, inlinedAt: !1280)
!1282 = !DILocation(line: 164, column: 7, scope: !172, inlinedAt: !1280)
!1283 = !DILocation(line: 0, scope: !1256, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 165, column: 5, scope: !1253, inlinedAt: !1280)
!1285 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1284)
!1286 = !DILocation(line: 166, column: 11, scope: !172, inlinedAt: !1280)
!1287 = !DILocation(line: 167, column: 3, scope: !172, inlinedAt: !1280)
!1288 = !DILocation(line: 292, column: 9, scope: !1276)
!1289 = !DILocation(line: 293, column: 19, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !154, file: !3, line: 293, column: 11)
!1291 = !DILocation(line: 293, column: 11, scope: !154)
!1292 = !DILocation(line: 294, column: 24, scope: !1290)
!1293 = !DILocation(line: 0, scope: !172, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 294, column: 9, scope: !1290)
!1295 = !DILocation(line: 164, column: 7, scope: !1253, inlinedAt: !1294)
!1296 = !DILocation(line: 164, column: 7, scope: !172, inlinedAt: !1294)
!1297 = !DILocation(line: 0, scope: !1256, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 165, column: 5, scope: !1253, inlinedAt: !1294)
!1299 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1298)
!1300 = !DILocation(line: 166, column: 11, scope: !172, inlinedAt: !1294)
!1301 = !DILocation(line: 167, column: 3, scope: !172, inlinedAt: !1294)
!1302 = !DILocation(line: 294, column: 9, scope: !1290)
!1303 = !DILocation(line: 295, column: 19, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !154, file: !3, line: 295, column: 11)
!1305 = !DILocation(line: 295, column: 11, scope: !154)
!1306 = !DILocation(line: 296, column: 24, scope: !1304)
!1307 = !DILocation(line: 0, scope: !172, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 296, column: 9, scope: !1304)
!1309 = !DILocation(line: 164, column: 7, scope: !1253, inlinedAt: !1308)
!1310 = !DILocation(line: 164, column: 7, scope: !172, inlinedAt: !1308)
!1311 = !DILocation(line: 0, scope: !1256, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 165, column: 5, scope: !1253, inlinedAt: !1308)
!1313 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1312)
!1314 = !DILocation(line: 166, column: 11, scope: !172, inlinedAt: !1308)
!1315 = !DILocation(line: 167, column: 3, scope: !172, inlinedAt: !1308)
!1316 = !DILocation(line: 296, column: 9, scope: !1304)
!1317 = !DILocation(line: 297, column: 19, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !154, file: !3, line: 297, column: 11)
!1319 = !DILocation(line: 297, column: 11, scope: !154)
!1320 = !DILocation(line: 298, column: 24, scope: !1318)
!1321 = !DILocation(line: 0, scope: !172, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 298, column: 9, scope: !1318)
!1323 = !DILocation(line: 164, column: 7, scope: !1253, inlinedAt: !1322)
!1324 = !DILocation(line: 164, column: 7, scope: !172, inlinedAt: !1322)
!1325 = !DILocation(line: 0, scope: !1256, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 165, column: 5, scope: !1253, inlinedAt: !1322)
!1327 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1326)
!1328 = !DILocation(line: 166, column: 11, scope: !172, inlinedAt: !1322)
!1329 = !DILocation(line: 167, column: 3, scope: !172, inlinedAt: !1322)
!1330 = !DILocation(line: 298, column: 9, scope: !1318)
!1331 = !DILocation(line: 299, column: 5, scope: !155)
!1332 = !DILocation(line: 299, column: 5, scope: !154)
!1333 = !DILocation(line: 301, column: 15, scope: !158)
!1334 = !DILocation(line: 341, column: 22, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !157, file: !3, line: 341, column: 11)
!1336 = !DILocation(line: 301, column: 7, scope: !144)
!1337 = !DILocation(line: 0, scope: !157)
!1338 = !DILocation(line: 0, scope: !172, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 342, column: 9, scope: !1335)
!1340 = !DILocation(line: 164, column: 7, scope: !1253, inlinedAt: !1339)
!1341 = !DILocation(line: 164, column: 7, scope: !172, inlinedAt: !1339)
!1342 = !DILocation(line: 0, scope: !1256, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 165, column: 5, scope: !1253, inlinedAt: !1339)
!1344 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1343)
!1345 = !DILocation(line: 166, column: 11, scope: !172, inlinedAt: !1339)
!1346 = !DILocation(line: 167, column: 3, scope: !172, inlinedAt: !1339)
!1347 = !DILocation(line: 342, column: 9, scope: !1335)
!1348 = !DILocation(line: 345, column: 15, scope: !161)
!1349 = !DILocation(line: 345, column: 7, scope: !144)
!1350 = !DILocation(line: 0, scope: !160)
!1351 = !DILocation(line: 0, scope: !172, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 367, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !160, file: !3, line: 366, column: 11)
!1354 = !DILocation(line: 164, column: 7, scope: !1253, inlinedAt: !1352)
!1355 = !DILocation(line: 164, column: 7, scope: !172, inlinedAt: !1352)
!1356 = !DILocation(line: 0, scope: !1256, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 165, column: 5, scope: !1253, inlinedAt: !1352)
!1358 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1357)
!1359 = !DILocation(line: 166, column: 11, scope: !172, inlinedAt: !1352)
!1360 = !DILocation(line: 167, column: 3, scope: !172, inlinedAt: !1352)
!1361 = !DILocation(line: 367, column: 9, scope: !1353)
!1362 = !DILocation(line: 370, column: 15, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !144, file: !3, line: 370, column: 7)
!1364 = !DILocation(line: 370, column: 7, scope: !144)
!1365 = !DILocation(line: 0, scope: !172, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 371, column: 5, scope: !1363)
!1367 = !DILocation(line: 164, column: 7, scope: !1253, inlinedAt: !1366)
!1368 = !DILocation(line: 164, column: 7, scope: !172, inlinedAt: !1366)
!1369 = !DILocation(line: 0, scope: !1256, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 165, column: 5, scope: !1253, inlinedAt: !1366)
!1371 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1370)
!1372 = !DILocation(line: 166, column: 11, scope: !172, inlinedAt: !1366)
!1373 = !DILocation(line: 167, column: 3, scope: !172, inlinedAt: !1366)
!1374 = !DILocation(line: 371, column: 5, scope: !1363)
!1375 = !DILocation(line: 0, scope: !1256, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 373, column: 3, scope: !144)
!1377 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1376)
!1378 = !DILocation(line: 375, column: 3, scope: !144)
!1379 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !193, file: !193, line: 51, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !192, retainedNodes: !1380)
!1380 = !{!1381}
!1381 = !DILocalVariable(name: "file", arg: 1, scope: !1379, file: !193, line: 51, type: !12)
!1382 = !DILocation(line: 0, scope: !1379)
!1383 = !DILocation(line: 53, column: 13, scope: !1379)
!1384 = !DILocation(line: 54, column: 1, scope: !1379)
!1385 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !193, file: !193, line: 88, type: !1386, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !192, retainedNodes: !1388)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !175}
!1388 = !{!1389}
!1389 = !DILocalVariable(name: "ignore", arg: 1, scope: !1385, file: !193, line: 88, type: !175)
!1390 = !DILocation(line: 0, scope: !1385)
!1391 = !DILocation(line: 90, column: 16, scope: !1385)
!1392 = !{!1393, !1393, i64 0}
!1393 = !{!"_Bool", !1124, i64 0}
!1394 = !DILocation(line: 91, column: 1, scope: !1385)
!1395 = distinct !DISubprogram(name: "close_stdout", scope: !193, file: !193, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !192, retainedNodes: !1396)
!1396 = !{!1397}
!1397 = !DILocalVariable(name: "write_error", scope: !1398, file: !193, line: 122, type: !12)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !193, line: 121, column: 5)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !193, line: 119, column: 7)
!1400 = !DILocation(line: 119, column: 21, scope: !1399)
!1401 = !DILocation(line: 119, column: 7, scope: !1399)
!1402 = !DILocation(line: 119, column: 29, scope: !1399)
!1403 = !DILocation(line: 120, column: 7, scope: !1399)
!1404 = !DILocation(line: 120, column: 12, scope: !1399)
!1405 = !{i8 0, i8 2}
!1406 = !DILocation(line: 120, column: 25, scope: !1399)
!1407 = !DILocation(line: 120, column: 28, scope: !1399)
!1408 = !DILocation(line: 120, column: 34, scope: !1399)
!1409 = !DILocation(line: 119, column: 7, scope: !1395)
!1410 = !DILocation(line: 122, column: 33, scope: !1398)
!1411 = !DILocation(line: 0, scope: !1398)
!1412 = !DILocation(line: 123, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1398, file: !193, line: 123, column: 11)
!1414 = !DILocation(line: 0, scope: !1413)
!1415 = !DILocation(line: 123, column: 11, scope: !1398)
!1416 = !DILocation(line: 124, column: 36, scope: !1413)
!1417 = !DILocation(line: 124, column: 9, scope: !1413)
!1418 = !DILocation(line: 127, column: 9, scope: !1413)
!1419 = !DILocation(line: 129, column: 14, scope: !1398)
!1420 = !DILocation(line: 129, column: 7, scope: !1398)
!1421 = !DILocation(line: 134, column: 42, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1395, file: !193, line: 134, column: 7)
!1423 = !DILocation(line: 134, column: 28, scope: !1422)
!1424 = !DILocation(line: 134, column: 50, scope: !1422)
!1425 = !DILocation(line: 134, column: 7, scope: !1395)
!1426 = !DILocation(line: 135, column: 12, scope: !1422)
!1427 = !DILocation(line: 135, column: 5, scope: !1422)
!1428 = !DILocation(line: 136, column: 1, scope: !1395)
!1429 = distinct !DISubprogram(name: "set_program_name", scope: !245, file: !245, line: 39, type: !78, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DILocalVariable(name: "argv0", arg: 1, scope: !1429, file: !245, line: 39, type: !12)
!1432 = !DILocalVariable(name: "slash", scope: !1429, file: !245, line: 46, type: !12)
!1433 = !DILocalVariable(name: "base", scope: !1429, file: !245, line: 47, type: !12)
!1434 = !DILocation(line: 0, scope: !1429)
!1435 = !DILocation(line: 51, column: 13, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1429, file: !245, line: 51, column: 7)
!1437 = !DILocation(line: 51, column: 7, scope: !1429)
!1438 = !DILocation(line: 55, column: 14, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !245, line: 52, column: 5)
!1440 = !DILocation(line: 54, column: 7, scope: !1439)
!1441 = !DILocation(line: 56, column: 7, scope: !1439)
!1442 = !DILocation(line: 59, column: 11, scope: !1429)
!1443 = !DILocation(line: 60, column: 17, scope: !1429)
!1444 = !DILocation(line: 60, column: 11, scope: !1429)
!1445 = !DILocation(line: 61, column: 12, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1429, file: !245, line: 61, column: 7)
!1447 = !DILocation(line: 61, column: 20, scope: !1446)
!1448 = !DILocation(line: 61, column: 25, scope: !1446)
!1449 = !DILocation(line: 61, column: 42, scope: !1446)
!1450 = !DILocation(line: 61, column: 28, scope: !1446)
!1451 = !DILocation(line: 61, column: 61, scope: !1446)
!1452 = !DILocation(line: 61, column: 7, scope: !1429)
!1453 = !DILocation(line: 64, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !245, line: 64, column: 11)
!1455 = distinct !DILexicalBlock(scope: !1446, file: !245, line: 62, column: 5)
!1456 = !DILocation(line: 64, column: 36, scope: !1454)
!1457 = !DILocation(line: 64, column: 11, scope: !1455)
!1458 = !DILocation(line: 66, column: 24, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !245, line: 65, column: 9)
!1460 = !DILocation(line: 70, column: 41, scope: !1459)
!1461 = !DILocation(line: 72, column: 9, scope: !1459)
!1462 = !DILocation(line: 84, column: 16, scope: !1429)
!1463 = !DILocation(line: 90, column: 27, scope: !1429)
!1464 = !DILocation(line: 92, column: 1, scope: !1429)
!1465 = distinct !DISubprogram(name: "clone_quoting_options", scope: !286, file: !286, line: 122, type: !1466, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1469)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1468, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!1469 = !{!1470, !1471, !1472}
!1470 = !DILocalVariable(name: "o", arg: 1, scope: !1465, file: !286, line: 122, type: !1468)
!1471 = !DILocalVariable(name: "e", scope: !1465, file: !286, line: 124, type: !14)
!1472 = !DILocalVariable(name: "p", scope: !1465, file: !286, line: 125, type: !1468)
!1473 = !DILocation(line: 0, scope: !1465)
!1474 = !DILocation(line: 124, column: 11, scope: !1465)
!1475 = !DILocation(line: 125, column: 40, scope: !1465)
!1476 = !DILocation(line: 125, column: 31, scope: !1465)
!1477 = !DILocation(line: 127, column: 9, scope: !1465)
!1478 = !DILocation(line: 128, column: 3, scope: !1465)
!1479 = distinct !DISubprogram(name: "get_quoting_style", scope: !286, file: !286, line: 133, type: !1480, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!288, !332}
!1482 = !{!1483}
!1483 = !DILocalVariable(name: "o", arg: 1, scope: !1479, file: !286, line: 133, type: !332)
!1484 = !DILocation(line: 0, scope: !1479)
!1485 = !DILocation(line: 135, column: 11, scope: !1479)
!1486 = !DILocation(line: 135, column: 46, scope: !1479)
!1487 = !{!1488, !1124, i64 0}
!1488 = !{!"quoting_options", !1124, i64 0, !1130, i64 4, !1124, i64 8, !1123, i64 40, !1123, i64 48}
!1489 = !DILocation(line: 135, column: 3, scope: !1479)
!1490 = distinct !DISubprogram(name: "set_quoting_style", scope: !286, file: !286, line: 141, type: !1491, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1468, !288}
!1493 = !{!1494, !1495}
!1494 = !DILocalVariable(name: "o", arg: 1, scope: !1490, file: !286, line: 141, type: !1468)
!1495 = !DILocalVariable(name: "s", arg: 2, scope: !1490, file: !286, line: 141, type: !288)
!1496 = !DILocation(line: 0, scope: !1490)
!1497 = !DILocation(line: 143, column: 4, scope: !1490)
!1498 = !DILocation(line: 143, column: 39, scope: !1490)
!1499 = !DILocation(line: 143, column: 45, scope: !1490)
!1500 = !DILocation(line: 144, column: 1, scope: !1490)
!1501 = distinct !DISubprogram(name: "set_char_quoting", scope: !286, file: !286, line: 152, type: !1502, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!14, !1468, !11, !14}
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1511, !1512}
!1505 = !DILocalVariable(name: "o", arg: 1, scope: !1501, file: !286, line: 152, type: !1468)
!1506 = !DILocalVariable(name: "c", arg: 2, scope: !1501, file: !286, line: 152, type: !11)
!1507 = !DILocalVariable(name: "i", arg: 3, scope: !1501, file: !286, line: 152, type: !14)
!1508 = !DILocalVariable(name: "uc", scope: !1501, file: !286, line: 154, type: !140)
!1509 = !DILocalVariable(name: "p", scope: !1501, file: !286, line: 155, type: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1511 = !DILocalVariable(name: "shift", scope: !1501, file: !286, line: 157, type: !14)
!1512 = !DILocalVariable(name: "r", scope: !1501, file: !286, line: 158, type: !14)
!1513 = !DILocation(line: 0, scope: !1501)
!1514 = !DILocation(line: 156, column: 6, scope: !1501)
!1515 = !DILocation(line: 156, column: 62, scope: !1501)
!1516 = !DILocation(line: 156, column: 57, scope: !1501)
!1517 = !DILocation(line: 157, column: 15, scope: !1501)
!1518 = !DILocation(line: 158, column: 12, scope: !1501)
!1519 = !DILocation(line: 158, column: 15, scope: !1501)
!1520 = !DILocation(line: 158, column: 25, scope: !1501)
!1521 = !DILocation(line: 159, column: 13, scope: !1501)
!1522 = !DILocation(line: 159, column: 18, scope: !1501)
!1523 = !DILocation(line: 159, column: 23, scope: !1501)
!1524 = !DILocation(line: 159, column: 6, scope: !1501)
!1525 = !DILocation(line: 160, column: 3, scope: !1501)
!1526 = distinct !DISubprogram(name: "set_quoting_flags", scope: !286, file: !286, line: 168, type: !1527, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1529)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!14, !1468, !14}
!1529 = !{!1530, !1531, !1532}
!1530 = !DILocalVariable(name: "o", arg: 1, scope: !1526, file: !286, line: 168, type: !1468)
!1531 = !DILocalVariable(name: "i", arg: 2, scope: !1526, file: !286, line: 168, type: !14)
!1532 = !DILocalVariable(name: "r", scope: !1526, file: !286, line: 170, type: !14)
!1533 = !DILocation(line: 0, scope: !1526)
!1534 = !DILocation(line: 171, column: 8, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1526, file: !286, line: 171, column: 7)
!1536 = !DILocation(line: 171, column: 7, scope: !1526)
!1537 = !DILocation(line: 173, column: 10, scope: !1526)
!1538 = !{!1488, !1130, i64 4}
!1539 = !DILocation(line: 174, column: 12, scope: !1526)
!1540 = !DILocation(line: 175, column: 3, scope: !1526)
!1541 = distinct !DISubprogram(name: "set_custom_quoting", scope: !286, file: !286, line: 179, type: !1542, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !1468, !12, !12}
!1544 = !{!1545, !1546, !1547}
!1545 = !DILocalVariable(name: "o", arg: 1, scope: !1541, file: !286, line: 179, type: !1468)
!1546 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1541, file: !286, line: 180, type: !12)
!1547 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1541, file: !286, line: 180, type: !12)
!1548 = !DILocation(line: 0, scope: !1541)
!1549 = !DILocation(line: 182, column: 8, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1541, file: !286, line: 182, column: 7)
!1551 = !DILocation(line: 182, column: 7, scope: !1541)
!1552 = !DILocation(line: 184, column: 6, scope: !1541)
!1553 = !DILocation(line: 184, column: 12, scope: !1541)
!1554 = !DILocation(line: 185, column: 8, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1541, file: !286, line: 185, column: 7)
!1556 = !DILocation(line: 185, column: 23, scope: !1555)
!1557 = !DILocation(line: 185, column: 19, scope: !1555)
!1558 = !DILocation(line: 186, column: 5, scope: !1555)
!1559 = !DILocation(line: 187, column: 6, scope: !1541)
!1560 = !DILocation(line: 187, column: 17, scope: !1541)
!1561 = !{!1488, !1123, i64 40}
!1562 = !DILocation(line: 188, column: 6, scope: !1541)
!1563 = !DILocation(line: 188, column: 18, scope: !1541)
!1564 = !{!1488, !1123, i64 48}
!1565 = !DILocation(line: 189, column: 1, scope: !1541)
!1566 = distinct !DISubprogram(name: "quotearg_buffer", scope: !286, file: !286, line: 784, type: !1567, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!68, !10, !68, !12, !68, !332}
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!1570 = !DILocalVariable(name: "buffer", arg: 1, scope: !1566, file: !286, line: 784, type: !10)
!1571 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1566, file: !286, line: 784, type: !68)
!1572 = !DILocalVariable(name: "arg", arg: 3, scope: !1566, file: !286, line: 785, type: !12)
!1573 = !DILocalVariable(name: "argsize", arg: 4, scope: !1566, file: !286, line: 785, type: !68)
!1574 = !DILocalVariable(name: "o", arg: 5, scope: !1566, file: !286, line: 786, type: !332)
!1575 = !DILocalVariable(name: "p", scope: !1566, file: !286, line: 788, type: !332)
!1576 = !DILocalVariable(name: "e", scope: !1566, file: !286, line: 789, type: !14)
!1577 = !DILocalVariable(name: "r", scope: !1566, file: !286, line: 790, type: !68)
!1578 = !DILocation(line: 0, scope: !1566)
!1579 = !DILocation(line: 788, column: 37, scope: !1566)
!1580 = !DILocation(line: 789, column: 11, scope: !1566)
!1581 = !DILocation(line: 791, column: 43, scope: !1566)
!1582 = !DILocation(line: 791, column: 53, scope: !1566)
!1583 = !DILocation(line: 791, column: 60, scope: !1566)
!1584 = !DILocation(line: 792, column: 43, scope: !1566)
!1585 = !DILocation(line: 792, column: 58, scope: !1566)
!1586 = !DILocation(line: 790, column: 14, scope: !1566)
!1587 = !DILocation(line: 793, column: 9, scope: !1566)
!1588 = !DILocation(line: 794, column: 3, scope: !1566)
!1589 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !286, file: !286, line: 256, type: !1590, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1594)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!68, !10, !68, !12, !68, !288, !14, !1592, !12, !12}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1619, !1620, !1621, !1622, !1623, !1626, !1627, !1633, !1636, !1637, !1644, !1647, !1648, !1649, !1650, !1651, !1652}
!1595 = !DILocalVariable(name: "buffer", arg: 1, scope: !1589, file: !286, line: 256, type: !10)
!1596 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1589, file: !286, line: 256, type: !68)
!1597 = !DILocalVariable(name: "arg", arg: 3, scope: !1589, file: !286, line: 257, type: !12)
!1598 = !DILocalVariable(name: "argsize", arg: 4, scope: !1589, file: !286, line: 257, type: !68)
!1599 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1589, file: !286, line: 258, type: !288)
!1600 = !DILocalVariable(name: "flags", arg: 6, scope: !1589, file: !286, line: 258, type: !14)
!1601 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1589, file: !286, line: 259, type: !1592)
!1602 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1589, file: !286, line: 260, type: !12)
!1603 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1589, file: !286, line: 261, type: !12)
!1604 = !DILocalVariable(name: "i", scope: !1589, file: !286, line: 263, type: !68)
!1605 = !DILocalVariable(name: "len", scope: !1589, file: !286, line: 264, type: !68)
!1606 = !DILocalVariable(name: "orig_buffersize", scope: !1589, file: !286, line: 265, type: !68)
!1607 = !DILocalVariable(name: "quote_string", scope: !1589, file: !286, line: 266, type: !12)
!1608 = !DILocalVariable(name: "quote_string_len", scope: !1589, file: !286, line: 267, type: !68)
!1609 = !DILocalVariable(name: "backslash_escapes", scope: !1589, file: !286, line: 268, type: !175)
!1610 = !DILocalVariable(name: "unibyte_locale", scope: !1589, file: !286, line: 269, type: !175)
!1611 = !DILocalVariable(name: "elide_outer_quotes", scope: !1589, file: !286, line: 270, type: !175)
!1612 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1589, file: !286, line: 271, type: !175)
!1613 = !DILocalVariable(name: "encountered_single_quote", scope: !1589, file: !286, line: 272, type: !175)
!1614 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1589, file: !286, line: 273, type: !175)
!1615 = !DILocalVariable(name: "c", scope: !1616, file: !286, line: 402, type: !140)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !286, line: 401, column: 5)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !286, line: 400, column: 3)
!1618 = distinct !DILexicalBlock(scope: !1589, file: !286, line: 400, column: 3)
!1619 = !DILocalVariable(name: "esc", scope: !1616, file: !286, line: 403, type: !140)
!1620 = !DILocalVariable(name: "is_right_quote", scope: !1616, file: !286, line: 404, type: !175)
!1621 = !DILocalVariable(name: "escaping", scope: !1616, file: !286, line: 405, type: !175)
!1622 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1616, file: !286, line: 406, type: !175)
!1623 = !DILocalVariable(name: "m", scope: !1624, file: !286, line: 610, type: !68)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 608, column: 11)
!1625 = distinct !DILexicalBlock(scope: !1616, file: !286, line: 426, column: 9)
!1626 = !DILocalVariable(name: "printable", scope: !1624, file: !286, line: 612, type: !175)
!1627 = !DILocalVariable(name: "mbstate", scope: !1628, file: !286, line: 621, type: !1630)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !286, line: 620, column: 15)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !286, line: 614, column: 17)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1631, line: 6, baseType: !1632)
!1631 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !354, line: 21, baseType: !353)
!1633 = !DILocalVariable(name: "w", scope: !1634, file: !286, line: 631, type: !1635)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !286, line: 630, column: 19)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !14)
!1636 = !DILocalVariable(name: "bytes", scope: !1634, file: !286, line: 632, type: !68)
!1637 = !DILocalVariable(name: "j", scope: !1638, file: !286, line: 657, type: !68)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !286, line: 656, column: 27)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !286, line: 654, column: 29)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !286, line: 649, column: 23)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !286, line: 641, column: 30)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !286, line: 636, column: 30)
!1643 = distinct !DILexicalBlock(scope: !1634, file: !286, line: 634, column: 25)
!1644 = !DILocalVariable(name: "ilim", scope: !1645, file: !286, line: 684, type: !68)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !286, line: 681, column: 15)
!1646 = distinct !DILexicalBlock(scope: !1624, file: !286, line: 680, column: 17)
!1647 = !DILabel(scope: !1589, name: "process_input", file: !286, line: 314)
!1648 = !DILabel(scope: !1625, name: "c_and_shell_escape", file: !286, line: 512)
!1649 = !DILabel(scope: !1625, name: "c_escape", file: !286, line: 517)
!1650 = !DILabel(scope: !1616, name: "store_escape", file: !286, line: 719)
!1651 = !DILabel(scope: !1616, name: "store_c", file: !286, line: 722)
!1652 = !DILabel(scope: !1589, name: "force_outer_quoting_style", file: !286, line: 763)
!1653 = !DILocation(line: 0, scope: !1589)
!1654 = !DILocation(line: 269, column: 25, scope: !1589)
!1655 = !DILocation(line: 269, column: 36, scope: !1589)
!1656 = !DILocation(line: 270, column: 8, scope: !1589)
!1657 = !DILocation(line: 0, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 526, column: 15)
!1659 = !DILocation(line: 0, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !286, line: 462, column: 19)
!1661 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 455, column: 13)
!1662 = !DILocation(line: 0, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !286, line: 449, column: 20)
!1664 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 428, column: 15)
!1665 = !DILocation(line: 0, scope: !1628)
!1666 = !DILocation(line: 0, scope: !1634)
!1667 = !DILocation(line: 0, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1616, file: !286, line: 712, column: 11)
!1669 = !DILocation(line: 273, column: 3, scope: !1589)
!1670 = !DILocation(line: 265, column: 10, scope: !1589)
!1671 = !DILocation(line: 266, column: 15, scope: !1589)
!1672 = !DILocation(line: 267, column: 10, scope: !1589)
!1673 = !DILocation(line: 268, column: 8, scope: !1589)
!1674 = !DILocation(line: 271, column: 8, scope: !1589)
!1675 = !DILocation(line: 272, column: 8, scope: !1589)
!1676 = !DILocation(line: 273, column: 8, scope: !1589)
!1677 = !DILocation(line: 314, column: 2, scope: !1589)
!1678 = !DILocation(line: 316, column: 3, scope: !1589)
!1679 = !DILocation(line: 323, column: 11, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1589, file: !286, line: 317, column: 5)
!1681 = !DILocation(line: 323, column: 12, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1680, file: !286, line: 323, column: 11)
!1683 = !DILocation(line: 324, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !286, line: 324, column: 9)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !286, line: 324, column: 9)
!1686 = !DILocation(line: 324, column: 9, scope: !1685)
!1687 = !DILocation(line: 362, column: 26, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !286, line: 340, column: 11)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !286, line: 339, column: 13)
!1690 = distinct !DILexicalBlock(scope: !1680, file: !286, line: 338, column: 7)
!1691 = !DILocation(line: 363, column: 27, scope: !1688)
!1692 = !DILocation(line: 364, column: 11, scope: !1688)
!1693 = !DILocation(line: 365, column: 14, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !286, line: 365, column: 13)
!1695 = !DILocation(line: 365, column: 13, scope: !1690)
!1696 = !DILocation(line: 366, column: 43, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !286, line: 366, column: 11)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !286, line: 366, column: 11)
!1699 = !DILocation(line: 366, column: 11, scope: !1698)
!1700 = !DILocation(line: 367, column: 13, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !286, line: 367, column: 13)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !286, line: 367, column: 13)
!1703 = !DILocation(line: 367, column: 13, scope: !1702)
!1704 = !DILocation(line: 366, column: 70, scope: !1697)
!1705 = distinct !{!1705, !1699, !1706}
!1706 = !DILocation(line: 367, column: 13, scope: !1698)
!1707 = !DILocation(line: 264, column: 10, scope: !1589)
!1708 = !DILocation(line: 370, column: 28, scope: !1690)
!1709 = !DILocation(line: 372, column: 7, scope: !1680)
!1710 = !DILocation(line: 376, column: 7, scope: !1680)
!1711 = !DILocation(line: 379, column: 7, scope: !1680)
!1712 = !DILocation(line: 381, column: 12, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1680, file: !286, line: 381, column: 11)
!1714 = !DILocation(line: 381, column: 11, scope: !1680)
!1715 = !DILocation(line: 386, column: 12, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1680, file: !286, line: 386, column: 11)
!1717 = !DILocation(line: 386, column: 11, scope: !1680)
!1718 = !DILocation(line: 387, column: 9, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !286, line: 387, column: 9)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !286, line: 387, column: 9)
!1721 = !DILocation(line: 387, column: 9, scope: !1720)
!1722 = !DILocation(line: 394, column: 7, scope: !1680)
!1723 = !DILocation(line: 397, column: 7, scope: !1680)
!1724 = !DILocation(line: 0, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1616, file: !286, line: 408, column: 11)
!1726 = !DILocation(line: 0, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !286, line: 419, column: 15)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !286, line: 418, column: 9)
!1729 = !DILocation(line: 0, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 556, column: 15)
!1731 = !DILocation(line: 0, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 548, column: 15)
!1733 = !DILocation(line: 0, scope: !1639)
!1734 = !DILocation(line: 0, scope: !1646)
!1735 = !DILocation(line: 0, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 509, column: 15)
!1737 = !DILocation(line: 400, column: 8, scope: !1618)
!1738 = !DILocation(line: 0, scope: !1618)
!1739 = !DILocation(line: 400, column: 27, scope: !1617)
!1740 = !DILocation(line: 400, column: 19, scope: !1617)
!1741 = !DILocation(line: 400, column: 41, scope: !1617)
!1742 = !DILocation(line: 400, column: 48, scope: !1617)
!1743 = !DILocation(line: 400, column: 3, scope: !1618)
!1744 = !DILocation(line: 400, column: 60, scope: !1617)
!1745 = !DILocation(line: 0, scope: !1616)
!1746 = !DILocation(line: 409, column: 11, scope: !1725)
!1747 = !DILocation(line: 411, column: 17, scope: !1725)
!1748 = !DILocation(line: 412, column: 39, scope: !1725)
!1749 = !DILocation(line: 416, column: 32, scope: !1725)
!1750 = !DILocation(line: 412, column: 19, scope: !1725)
!1751 = !DILocation(line: 412, column: 15, scope: !1725)
!1752 = !DILocation(line: 417, column: 11, scope: !1725)
!1753 = !DILocation(line: 417, column: 26, scope: !1725)
!1754 = !DILocation(line: 417, column: 14, scope: !1725)
!1755 = !DILocation(line: 417, column: 63, scope: !1725)
!1756 = !DILocation(line: 408, column: 11, scope: !1616)
!1757 = !DILocation(line: 424, column: 11, scope: !1616)
!1758 = !DILocation(line: 425, column: 7, scope: !1616)
!1759 = !DILocation(line: 428, column: 15, scope: !1625)
!1760 = !DILocation(line: 430, column: 15, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !286, line: 430, column: 15)
!1762 = distinct !DILexicalBlock(scope: !1664, file: !286, line: 429, column: 13)
!1763 = !DILocation(line: 430, column: 15, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !286, line: 430, column: 15)
!1765 = !DILocation(line: 430, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !286, line: 430, column: 15)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !286, line: 430, column: 15)
!1768 = distinct !DILexicalBlock(scope: !1764, file: !286, line: 430, column: 15)
!1769 = !DILocation(line: 430, column: 15, scope: !1767)
!1770 = !DILocation(line: 430, column: 15, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !286, line: 430, column: 15)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !286, line: 430, column: 15)
!1773 = !DILocation(line: 430, column: 15, scope: !1772)
!1774 = !DILocation(line: 430, column: 15, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !286, line: 430, column: 15)
!1776 = distinct !DILexicalBlock(scope: !1768, file: !286, line: 430, column: 15)
!1777 = !DILocation(line: 430, column: 15, scope: !1776)
!1778 = !DILocation(line: 430, column: 15, scope: !1768)
!1779 = !DILocation(line: 430, column: 15, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !286, line: 430, column: 15)
!1781 = distinct !DILexicalBlock(scope: !1761, file: !286, line: 430, column: 15)
!1782 = !DILocation(line: 430, column: 15, scope: !1781)
!1783 = !DILocation(line: 438, column: 19, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1762, file: !286, line: 437, column: 19)
!1785 = !DILocation(line: 438, column: 24, scope: !1784)
!1786 = !DILocation(line: 438, column: 28, scope: !1784)
!1787 = !DILocation(line: 438, column: 38, scope: !1784)
!1788 = !DILocation(line: 438, column: 48, scope: !1784)
!1789 = !DILocation(line: 438, column: 59, scope: !1784)
!1790 = !DILocation(line: 440, column: 19, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !286, line: 440, column: 19)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !286, line: 440, column: 19)
!1793 = distinct !DILexicalBlock(scope: !1784, file: !286, line: 439, column: 17)
!1794 = !DILocation(line: 440, column: 19, scope: !1792)
!1795 = !DILocation(line: 441, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !286, line: 441, column: 19)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !286, line: 441, column: 19)
!1798 = !DILocation(line: 441, column: 19, scope: !1797)
!1799 = !DILocation(line: 442, column: 17, scope: !1793)
!1800 = !DILocation(line: 449, column: 20, scope: !1664)
!1801 = !DILocation(line: 454, column: 11, scope: !1625)
!1802 = !DILocation(line: 457, column: 19, scope: !1661)
!1803 = !DILocation(line: 463, column: 19, scope: !1660)
!1804 = !DILocation(line: 463, column: 24, scope: !1660)
!1805 = !DILocation(line: 463, column: 28, scope: !1660)
!1806 = !DILocation(line: 463, column: 38, scope: !1660)
!1807 = !DILocation(line: 463, column: 47, scope: !1660)
!1808 = !DILocation(line: 463, column: 41, scope: !1660)
!1809 = !DILocation(line: 463, column: 52, scope: !1660)
!1810 = !DILocation(line: 462, column: 19, scope: !1661)
!1811 = !DILocation(line: 464, column: 25, scope: !1660)
!1812 = !DILocation(line: 464, column: 17, scope: !1660)
!1813 = !DILocation(line: 471, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1660, file: !286, line: 465, column: 19)
!1815 = !DILocation(line: 475, column: 21, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !286, line: 475, column: 21)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !286, line: 475, column: 21)
!1818 = !DILocation(line: 475, column: 21, scope: !1817)
!1819 = !DILocation(line: 476, column: 21, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !286, line: 476, column: 21)
!1821 = distinct !DILexicalBlock(scope: !1814, file: !286, line: 476, column: 21)
!1822 = !DILocation(line: 476, column: 21, scope: !1821)
!1823 = !DILocation(line: 477, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !286, line: 477, column: 21)
!1825 = distinct !DILexicalBlock(scope: !1814, file: !286, line: 477, column: 21)
!1826 = !DILocation(line: 477, column: 21, scope: !1825)
!1827 = !DILocation(line: 478, column: 21, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !286, line: 478, column: 21)
!1829 = distinct !DILexicalBlock(scope: !1814, file: !286, line: 478, column: 21)
!1830 = !DILocation(line: 478, column: 21, scope: !1829)
!1831 = !DILocation(line: 479, column: 21, scope: !1814)
!1832 = !DILocation(line: 492, column: 31, scope: !1625)
!1833 = !DILocation(line: 493, column: 31, scope: !1625)
!1834 = !DILocation(line: 495, column: 31, scope: !1625)
!1835 = !DILocation(line: 496, column: 31, scope: !1625)
!1836 = !DILocation(line: 497, column: 31, scope: !1625)
!1837 = !DILocation(line: 500, column: 15, scope: !1625)
!1838 = !DILocation(line: 502, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !286, line: 501, column: 13)
!1840 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 500, column: 15)
!1841 = !DILocation(line: 509, column: 33, scope: !1736)
!1842 = !DILocation(line: 0, scope: !1625)
!1843 = !DILocation(line: 512, column: 9, scope: !1625)
!1844 = !DILocation(line: 514, column: 15, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 513, column: 15)
!1846 = !DILocation(line: 517, column: 9, scope: !1625)
!1847 = !DILocation(line: 518, column: 15, scope: !1625)
!1848 = !DILocation(line: 526, column: 15, scope: !1625)
!1849 = !DILocation(line: 526, column: 40, scope: !1658)
!1850 = !DILocation(line: 526, column: 47, scope: !1658)
!1851 = !DILocation(line: 526, column: 18, scope: !1658)
!1852 = !DILocation(line: 530, column: 17, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1625, file: !286, line: 530, column: 15)
!1854 = !DILocation(line: 530, column: 15, scope: !1625)
!1855 = !DILocation(line: 535, column: 11, scope: !1625)
!1856 = !DILocation(line: 549, column: 15, scope: !1732)
!1857 = !DILocation(line: 556, column: 15, scope: !1625)
!1858 = !DILocation(line: 558, column: 19, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1730, file: !286, line: 557, column: 13)
!1860 = !DILocation(line: 561, column: 19, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1859, file: !286, line: 561, column: 19)
!1862 = !DILocation(line: 561, column: 35, scope: !1861)
!1863 = !DILocation(line: 561, column: 30, scope: !1861)
!1864 = !DILocation(line: 570, column: 15, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !286, line: 570, column: 15)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !286, line: 570, column: 15)
!1867 = !DILocation(line: 570, column: 15, scope: !1866)
!1868 = !DILocation(line: 571, column: 15, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !286, line: 571, column: 15)
!1870 = distinct !DILexicalBlock(scope: !1859, file: !286, line: 571, column: 15)
!1871 = !DILocation(line: 571, column: 15, scope: !1870)
!1872 = !DILocation(line: 572, column: 15, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !286, line: 572, column: 15)
!1874 = distinct !DILexicalBlock(scope: !1859, file: !286, line: 572, column: 15)
!1875 = !DILocation(line: 572, column: 15, scope: !1874)
!1876 = !DILocation(line: 574, column: 13, scope: !1859)
!1877 = !DILocation(line: 614, column: 17, scope: !1624)
!1878 = !DILocation(line: 0, scope: !1624)
!1879 = !DILocation(line: 617, column: 29, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1629, file: !286, line: 615, column: 15)
!1881 = !{!1267, !1267, i64 0}
!1882 = !DILocation(line: 617, column: 27, scope: !1880)
!1883 = !DILocation(line: 618, column: 15, scope: !1880)
!1884 = !DILocation(line: 621, column: 17, scope: !1628)
!1885 = !DILocation(line: 621, column: 27, scope: !1628)
!1886 = !DILocalVariable(name: "__dest", arg: 1, scope: !1887, file: !1888, line: 59, type: !66)
!1887 = distinct !DISubprogram(name: "memset", scope: !1888, file: !1888, line: 59, type: !1889, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1891)
!1888 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!66, !66, !14, !68}
!1891 = !{!1886, !1892, !1893}
!1892 = !DILocalVariable(name: "__ch", arg: 2, scope: !1887, file: !1888, line: 59, type: !14)
!1893 = !DILocalVariable(name: "__len", arg: 3, scope: !1887, file: !1888, line: 59, type: !68)
!1894 = !DILocation(line: 0, scope: !1887, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 622, column: 17, scope: !1628)
!1896 = !DILocation(line: 71, column: 10, scope: !1887, inlinedAt: !1895)
!1897 = !DILocation(line: 626, column: 29, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1628, file: !286, line: 626, column: 21)
!1899 = !DILocation(line: 626, column: 21, scope: !1628)
!1900 = !DILocation(line: 627, column: 29, scope: !1898)
!1901 = !DILocation(line: 627, column: 19, scope: !1898)
!1902 = !DILocation(line: 629, column: 17, scope: !1628)
!1903 = !DILocation(line: 624, column: 19, scope: !1628)
!1904 = !DILocation(line: 625, column: 27, scope: !1628)
!1905 = !DILocation(line: 631, column: 21, scope: !1634)
!1906 = !DILocation(line: 632, column: 56, scope: !1634)
!1907 = !DILocation(line: 632, column: 50, scope: !1634)
!1908 = !DILocation(line: 633, column: 53, scope: !1634)
!1909 = !DILocation(line: 632, column: 36, scope: !1634)
!1910 = !DILocation(line: 634, column: 25, scope: !1634)
!1911 = !DILocation(line: 644, column: 38, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1641, file: !286, line: 642, column: 23)
!1913 = !DILocation(line: 644, column: 48, scope: !1912)
!1914 = !DILocation(line: 644, column: 25, scope: !1912)
!1915 = !DILocation(line: 644, column: 51, scope: !1912)
!1916 = !DILocation(line: 645, column: 28, scope: !1912)
!1917 = !DILocation(line: 644, column: 34, scope: !1912)
!1918 = distinct !{!1918, !1914, !1916}
!1919 = !DILocation(line: 658, column: 43, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !286, line: 658, column: 29)
!1921 = distinct !DILexicalBlock(scope: !1638, file: !286, line: 658, column: 29)
!1922 = !DILocation(line: 655, column: 29, scope: !1639)
!1923 = !DILocation(line: 0, scope: !1638)
!1924 = !DILocation(line: 659, column: 49, scope: !1920)
!1925 = !DILocation(line: 659, column: 39, scope: !1920)
!1926 = !DILocation(line: 659, column: 31, scope: !1920)
!1927 = !DILocation(line: 658, column: 53, scope: !1920)
!1928 = !DILocation(line: 658, column: 29, scope: !1921)
!1929 = distinct !{!1929, !1928, !1930}
!1930 = !DILocation(line: 667, column: 33, scope: !1921)
!1931 = !DILocation(line: 674, column: 19, scope: !1628)
!1932 = !DILocation(line: 670, column: 41, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1640, file: !286, line: 670, column: 29)
!1934 = !DILocation(line: 670, column: 31, scope: !1933)
!1935 = !DILocation(line: 670, column: 29, scope: !1640)
!1936 = !DILocation(line: 672, column: 27, scope: !1640)
!1937 = !DILocation(line: 675, column: 26, scope: !1628)
!1938 = !DILocation(line: 675, column: 24, scope: !1628)
!1939 = !DILocation(line: 674, column: 19, scope: !1634)
!1940 = distinct !{!1940, !1902, !1941}
!1941 = !DILocation(line: 675, column: 44, scope: !1628)
!1942 = !DILocation(line: 676, column: 15, scope: !1629)
!1943 = !DILocation(line: 0, scope: !1629)
!1944 = !DILocation(line: 678, column: 40, scope: !1624)
!1945 = !DILocation(line: 680, column: 19, scope: !1646)
!1946 = !DILocation(line: 680, column: 45, scope: !1646)
!1947 = !DILocation(line: 680, column: 23, scope: !1646)
!1948 = !DILocation(line: 684, column: 33, scope: !1645)
!1949 = !DILocation(line: 0, scope: !1645)
!1950 = !DILocation(line: 686, column: 17, scope: !1645)
!1951 = !DILocation(line: 405, column: 12, scope: !1616)
!1952 = !DILocation(line: 688, column: 43, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !286, line: 688, column: 25)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !286, line: 687, column: 19)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !286, line: 686, column: 17)
!1956 = distinct !DILexicalBlock(scope: !1645, file: !286, line: 686, column: 17)
!1957 = !DILocation(line: 690, column: 25, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !286, line: 690, column: 25)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !286, line: 689, column: 23)
!1960 = !DILocation(line: 690, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !286, line: 690, column: 25)
!1962 = !DILocation(line: 690, column: 25, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !286, line: 690, column: 25)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !286, line: 690, column: 25)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !286, line: 690, column: 25)
!1966 = !DILocation(line: 690, column: 25, scope: !1964)
!1967 = !DILocation(line: 690, column: 25, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !286, line: 690, column: 25)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !286, line: 690, column: 25)
!1970 = !DILocation(line: 690, column: 25, scope: !1969)
!1971 = !DILocation(line: 690, column: 25, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !286, line: 690, column: 25)
!1973 = distinct !DILexicalBlock(scope: !1965, file: !286, line: 690, column: 25)
!1974 = !DILocation(line: 690, column: 25, scope: !1973)
!1975 = !DILocation(line: 690, column: 25, scope: !1965)
!1976 = !DILocation(line: 690, column: 25, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !286, line: 690, column: 25)
!1978 = distinct !DILexicalBlock(scope: !1958, file: !286, line: 690, column: 25)
!1979 = !DILocation(line: 690, column: 25, scope: !1978)
!1980 = !DILocation(line: 691, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !286, line: 691, column: 25)
!1982 = distinct !DILexicalBlock(scope: !1959, file: !286, line: 691, column: 25)
!1983 = !DILocation(line: 691, column: 25, scope: !1982)
!1984 = !DILocation(line: 692, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !286, line: 692, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1959, file: !286, line: 692, column: 25)
!1987 = !DILocation(line: 692, column: 25, scope: !1986)
!1988 = !DILocation(line: 693, column: 38, scope: !1959)
!1989 = !DILocation(line: 693, column: 33, scope: !1959)
!1990 = !DILocation(line: 694, column: 23, scope: !1959)
!1991 = !DILocation(line: 695, column: 30, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1953, file: !286, line: 695, column: 30)
!1993 = !DILocation(line: 695, column: 30, scope: !1953)
!1994 = !DILocation(line: 697, column: 25, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !286, line: 697, column: 25)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !286, line: 697, column: 25)
!1997 = distinct !DILexicalBlock(scope: !1992, file: !286, line: 696, column: 23)
!1998 = !DILocation(line: 697, column: 25, scope: !1996)
!1999 = !DILocation(line: 699, column: 23, scope: !1997)
!2000 = !DILocation(line: 700, column: 35, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1954, file: !286, line: 700, column: 25)
!2002 = !DILocation(line: 700, column: 30, scope: !2001)
!2003 = !DILocation(line: 700, column: 25, scope: !1954)
!2004 = !DILocation(line: 702, column: 21, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !286, line: 702, column: 21)
!2006 = distinct !DILexicalBlock(scope: !1954, file: !286, line: 702, column: 21)
!2007 = !DILocation(line: 702, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !286, line: 702, column: 21)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !286, line: 702, column: 21)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !286, line: 702, column: 21)
!2011 = !DILocation(line: 702, column: 21, scope: !2009)
!2012 = !DILocation(line: 702, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !286, line: 702, column: 21)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !286, line: 702, column: 21)
!2015 = !DILocation(line: 702, column: 21, scope: !2014)
!2016 = !DILocation(line: 702, column: 21, scope: !2010)
!2017 = !DILocation(line: 0, scope: !1954)
!2018 = !DILocation(line: 703, column: 21, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !286, line: 703, column: 21)
!2020 = distinct !DILexicalBlock(scope: !1954, file: !286, line: 703, column: 21)
!2021 = !DILocation(line: 703, column: 21, scope: !2020)
!2022 = !DILocation(line: 704, column: 25, scope: !1954)
!2023 = !DILocation(line: 686, column: 17, scope: !1955)
!2024 = distinct !{!2024, !2025, !2026}
!2025 = !DILocation(line: 686, column: 17, scope: !1956)
!2026 = !DILocation(line: 705, column: 19, scope: !1956)
!2027 = !DILocation(line: 416, column: 30, scope: !1725)
!2028 = !DILocation(line: 712, column: 34, scope: !1668)
!2029 = !DILocation(line: 715, column: 35, scope: !1668)
!2030 = !DILocation(line: 715, column: 17, scope: !1668)
!2031 = !DILocation(line: 715, column: 47, scope: !1668)
!2032 = !DILocation(line: 715, column: 65, scope: !1668)
!2033 = !DILocation(line: 716, column: 15, scope: !1668)
!2034 = !DILocation(line: 716, column: 11, scope: !1668)
!2035 = !DILocation(line: 712, column: 11, scope: !1616)
!2036 = !DILocation(line: 400, column: 10, scope: !1618)
!2037 = !DILocation(line: 719, column: 5, scope: !1616)
!2038 = !DILocation(line: 720, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1616, file: !286, line: 720, column: 7)
!2040 = !DILocation(line: 720, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2039, file: !286, line: 720, column: 7)
!2042 = !DILocation(line: 720, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !286, line: 720, column: 7)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !286, line: 720, column: 7)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !286, line: 720, column: 7)
!2046 = !DILocation(line: 720, column: 7, scope: !2044)
!2047 = !DILocation(line: 720, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !286, line: 720, column: 7)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !286, line: 720, column: 7)
!2050 = !DILocation(line: 720, column: 7, scope: !2049)
!2051 = !DILocation(line: 720, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !286, line: 720, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2045, file: !286, line: 720, column: 7)
!2054 = !DILocation(line: 720, column: 7, scope: !2053)
!2055 = !DILocation(line: 720, column: 7, scope: !2045)
!2056 = !DILocation(line: 720, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !286, line: 720, column: 7)
!2058 = distinct !DILexicalBlock(scope: !2039, file: !286, line: 720, column: 7)
!2059 = !DILocation(line: 720, column: 7, scope: !2058)
!2060 = !DILocation(line: 722, column: 5, scope: !1616)
!2061 = !DILocation(line: 723, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !286, line: 723, column: 7)
!2063 = distinct !DILexicalBlock(scope: !1616, file: !286, line: 723, column: 7)
!2064 = !DILocation(line: 424, column: 9, scope: !1616)
!2065 = !DILocation(line: 723, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !286, line: 723, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !286, line: 723, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !286, line: 723, column: 7)
!2069 = !DILocation(line: 723, column: 7, scope: !2067)
!2070 = !DILocation(line: 723, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !286, line: 723, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !286, line: 723, column: 7)
!2073 = !DILocation(line: 723, column: 7, scope: !2072)
!2074 = !DILocation(line: 723, column: 7, scope: !2068)
!2075 = !DILocation(line: 724, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !286, line: 724, column: 7)
!2077 = distinct !DILexicalBlock(scope: !1616, file: !286, line: 724, column: 7)
!2078 = !DILocation(line: 724, column: 7, scope: !2077)
!2079 = !DILocation(line: 726, column: 13, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1616, file: !286, line: 726, column: 11)
!2081 = !DILocation(line: 726, column: 11, scope: !1616)
!2082 = !DILocation(line: 728, column: 5, scope: !1617)
!2083 = !DILocation(line: 400, column: 75, scope: !1617)
!2084 = !DILocation(line: 400, column: 3, scope: !1617)
!2085 = distinct !{!2085, !1743, !2086}
!2086 = !DILocation(line: 728, column: 5, scope: !1618)
!2087 = !DILocation(line: 730, column: 11, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1589, file: !286, line: 730, column: 7)
!2089 = !DILocation(line: 730, column: 16, scope: !2088)
!2090 = !DILocation(line: 738, column: 51, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1589, file: !286, line: 738, column: 7)
!2092 = !DILocation(line: 739, column: 10, scope: !2091)
!2093 = !DILocation(line: 741, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !286, line: 741, column: 11)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !286, line: 740, column: 5)
!2096 = !DILocation(line: 741, column: 11, scope: !2095)
!2097 = !DILocation(line: 742, column: 16, scope: !2094)
!2098 = !DILocation(line: 742, column: 9, scope: !2094)
!2099 = !DILocation(line: 746, column: 18, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2094, file: !286, line: 746, column: 16)
!2101 = !DILocation(line: 746, column: 32, scope: !2100)
!2102 = !DILocation(line: 746, column: 29, scope: !2100)
!2103 = !DILocation(line: 755, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1589, file: !286, line: 755, column: 7)
!2105 = !DILocation(line: 755, column: 20, scope: !2104)
!2106 = !DILocation(line: 756, column: 12, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !286, line: 756, column: 5)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !286, line: 756, column: 5)
!2109 = !DILocation(line: 756, column: 5, scope: !2108)
!2110 = !DILocation(line: 757, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !286, line: 757, column: 7)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !286, line: 757, column: 7)
!2113 = !DILocation(line: 757, column: 7, scope: !2112)
!2114 = !DILocation(line: 756, column: 39, scope: !2107)
!2115 = distinct !{!2115, !2109, !2116}
!2116 = !DILocation(line: 757, column: 7, scope: !2108)
!2117 = !DILocation(line: 759, column: 11, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1589, file: !286, line: 759, column: 7)
!2119 = !DILocation(line: 759, column: 7, scope: !1589)
!2120 = !DILocation(line: 760, column: 5, scope: !2118)
!2121 = !DILocation(line: 760, column: 17, scope: !2118)
!2122 = !DILocation(line: 763, column: 2, scope: !1589)
!2123 = !DILocation(line: 766, column: 51, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1589, file: !286, line: 766, column: 7)
!2125 = !DILocation(line: 766, column: 21, scope: !2124)
!2126 = !DILocation(line: 770, column: 42, scope: !1589)
!2127 = !DILocation(line: 768, column: 10, scope: !1589)
!2128 = !DILocation(line: 768, column: 3, scope: !1589)
!2129 = !DILocation(line: 772, column: 1, scope: !1589)
!2130 = distinct !DISubprogram(name: "gettext_quote", scope: !286, file: !286, line: 207, type: !2131, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!12, !12, !288}
!2133 = !{!2134, !2135, !2136, !2137}
!2134 = !DILocalVariable(name: "msgid", arg: 1, scope: !2130, file: !286, line: 207, type: !12)
!2135 = !DILocalVariable(name: "s", arg: 2, scope: !2130, file: !286, line: 207, type: !288)
!2136 = !DILocalVariable(name: "translation", scope: !2130, file: !286, line: 209, type: !12)
!2137 = !DILocalVariable(name: "locale_code", scope: !2130, file: !286, line: 210, type: !12)
!2138 = !DILocation(line: 0, scope: !2130)
!2139 = !DILocation(line: 209, column: 29, scope: !2130)
!2140 = !DILocation(line: 212, column: 19, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2130, file: !286, line: 212, column: 7)
!2142 = !DILocation(line: 212, column: 7, scope: !2130)
!2143 = !DILocation(line: 233, column: 17, scope: !2130)
!2144 = !DILocalVariable(name: "s1", arg: 1, scope: !2145, file: !2146, line: 160, type: !12)
!2145 = distinct !DISubprogram(name: "strcaseeq0", scope: !2146, file: !2146, line: 160, type: !2147, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2149)
!2146 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!2149 = !{!2144, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159}
!2150 = !DILocalVariable(name: "s2", arg: 2, scope: !2145, file: !2146, line: 160, type: !12)
!2151 = !DILocalVariable(name: "s20", arg: 3, scope: !2145, file: !2146, line: 160, type: !11)
!2152 = !DILocalVariable(name: "s21", arg: 4, scope: !2145, file: !2146, line: 160, type: !11)
!2153 = !DILocalVariable(name: "s22", arg: 5, scope: !2145, file: !2146, line: 160, type: !11)
!2154 = !DILocalVariable(name: "s23", arg: 6, scope: !2145, file: !2146, line: 160, type: !11)
!2155 = !DILocalVariable(name: "s24", arg: 7, scope: !2145, file: !2146, line: 160, type: !11)
!2156 = !DILocalVariable(name: "s25", arg: 8, scope: !2145, file: !2146, line: 160, type: !11)
!2157 = !DILocalVariable(name: "s26", arg: 9, scope: !2145, file: !2146, line: 160, type: !11)
!2158 = !DILocalVariable(name: "s27", arg: 10, scope: !2145, file: !2146, line: 160, type: !11)
!2159 = !DILocalVariable(name: "s28", arg: 11, scope: !2145, file: !2146, line: 160, type: !11)
!2160 = !DILocation(line: 0, scope: !2145, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 234, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2130, file: !286, line: 234, column: 7)
!2163 = !DILocation(line: 162, column: 7, scope: !2164, inlinedAt: !2161)
!2164 = distinct !DILexicalBlock(scope: !2145, file: !2146, line: 162, column: 7)
!2165 = !DILocalVariable(name: "s1", arg: 1, scope: !2166, file: !2146, line: 146, type: !12)
!2166 = distinct !DISubprogram(name: "strcaseeq1", scope: !2146, file: !2146, line: 146, type: !2167, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11}
!2169 = !{!2165, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178}
!2170 = !DILocalVariable(name: "s2", arg: 2, scope: !2166, file: !2146, line: 146, type: !12)
!2171 = !DILocalVariable(name: "s21", arg: 3, scope: !2166, file: !2146, line: 146, type: !11)
!2172 = !DILocalVariable(name: "s22", arg: 4, scope: !2166, file: !2146, line: 146, type: !11)
!2173 = !DILocalVariable(name: "s23", arg: 5, scope: !2166, file: !2146, line: 146, type: !11)
!2174 = !DILocalVariable(name: "s24", arg: 6, scope: !2166, file: !2146, line: 146, type: !11)
!2175 = !DILocalVariable(name: "s25", arg: 7, scope: !2166, file: !2146, line: 146, type: !11)
!2176 = !DILocalVariable(name: "s26", arg: 8, scope: !2166, file: !2146, line: 146, type: !11)
!2177 = !DILocalVariable(name: "s27", arg: 9, scope: !2166, file: !2146, line: 146, type: !11)
!2178 = !DILocalVariable(name: "s28", arg: 10, scope: !2166, file: !2146, line: 146, type: !11)
!2179 = !DILocation(line: 0, scope: !2166, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 167, column: 16, scope: !2181, inlinedAt: !2161)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !2146, line: 164, column: 11)
!2182 = distinct !DILexicalBlock(scope: !2164, file: !2146, line: 163, column: 5)
!2183 = !DILocation(line: 148, column: 7, scope: !2184, inlinedAt: !2180)
!2184 = distinct !DILexicalBlock(scope: !2166, file: !2146, line: 148, column: 7)
!2185 = !DILocalVariable(name: "s1", arg: 1, scope: !2186, file: !2146, line: 132, type: !12)
!2186 = distinct !DISubprogram(name: "strcaseeq2", scope: !2146, file: !2146, line: 132, type: !2187, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11}
!2189 = !{!2185, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197}
!2190 = !DILocalVariable(name: "s2", arg: 2, scope: !2186, file: !2146, line: 132, type: !12)
!2191 = !DILocalVariable(name: "s22", arg: 3, scope: !2186, file: !2146, line: 132, type: !11)
!2192 = !DILocalVariable(name: "s23", arg: 4, scope: !2186, file: !2146, line: 132, type: !11)
!2193 = !DILocalVariable(name: "s24", arg: 5, scope: !2186, file: !2146, line: 132, type: !11)
!2194 = !DILocalVariable(name: "s25", arg: 6, scope: !2186, file: !2146, line: 132, type: !11)
!2195 = !DILocalVariable(name: "s26", arg: 7, scope: !2186, file: !2146, line: 132, type: !11)
!2196 = !DILocalVariable(name: "s27", arg: 8, scope: !2186, file: !2146, line: 132, type: !11)
!2197 = !DILocalVariable(name: "s28", arg: 9, scope: !2186, file: !2146, line: 132, type: !11)
!2198 = !DILocation(line: 0, scope: !2186, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 153, column: 16, scope: !2200, inlinedAt: !2180)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !2146, line: 150, column: 11)
!2201 = distinct !DILexicalBlock(scope: !2184, file: !2146, line: 149, column: 5)
!2202 = !DILocation(line: 134, column: 7, scope: !2203, inlinedAt: !2199)
!2203 = distinct !DILexicalBlock(scope: !2186, file: !2146, line: 134, column: 7)
!2204 = !DILocalVariable(name: "s1", arg: 1, scope: !2205, file: !2146, line: 118, type: !12)
!2205 = distinct !DISubprogram(name: "strcaseeq3", scope: !2146, file: !2146, line: 118, type: !2206, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11}
!2208 = !{!2204, !2209, !2210, !2211, !2212, !2213, !2214, !2215}
!2209 = !DILocalVariable(name: "s2", arg: 2, scope: !2205, file: !2146, line: 118, type: !12)
!2210 = !DILocalVariable(name: "s23", arg: 3, scope: !2205, file: !2146, line: 118, type: !11)
!2211 = !DILocalVariable(name: "s24", arg: 4, scope: !2205, file: !2146, line: 118, type: !11)
!2212 = !DILocalVariable(name: "s25", arg: 5, scope: !2205, file: !2146, line: 118, type: !11)
!2213 = !DILocalVariable(name: "s26", arg: 6, scope: !2205, file: !2146, line: 118, type: !11)
!2214 = !DILocalVariable(name: "s27", arg: 7, scope: !2205, file: !2146, line: 118, type: !11)
!2215 = !DILocalVariable(name: "s28", arg: 8, scope: !2205, file: !2146, line: 118, type: !11)
!2216 = !DILocation(line: 0, scope: !2205, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 139, column: 16, scope: !2218, inlinedAt: !2199)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !2146, line: 136, column: 11)
!2219 = distinct !DILexicalBlock(scope: !2203, file: !2146, line: 135, column: 5)
!2220 = !DILocation(line: 120, column: 7, scope: !2221, inlinedAt: !2217)
!2221 = distinct !DILexicalBlock(scope: !2205, file: !2146, line: 120, column: 7)
!2222 = !DILocation(line: 120, column: 7, scope: !2205, inlinedAt: !2217)
!2223 = !DILocalVariable(name: "s1", arg: 1, scope: !2224, file: !2146, line: 104, type: !12)
!2224 = distinct !DISubprogram(name: "strcaseeq4", scope: !2146, file: !2146, line: 104, type: !2225, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!14, !12, !12, !11, !11, !11, !11, !11}
!2227 = !{!2223, !2228, !2229, !2230, !2231, !2232, !2233}
!2228 = !DILocalVariable(name: "s2", arg: 2, scope: !2224, file: !2146, line: 104, type: !12)
!2229 = !DILocalVariable(name: "s24", arg: 3, scope: !2224, file: !2146, line: 104, type: !11)
!2230 = !DILocalVariable(name: "s25", arg: 4, scope: !2224, file: !2146, line: 104, type: !11)
!2231 = !DILocalVariable(name: "s26", arg: 5, scope: !2224, file: !2146, line: 104, type: !11)
!2232 = !DILocalVariable(name: "s27", arg: 6, scope: !2224, file: !2146, line: 104, type: !11)
!2233 = !DILocalVariable(name: "s28", arg: 7, scope: !2224, file: !2146, line: 104, type: !11)
!2234 = !DILocation(line: 0, scope: !2224, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 125, column: 16, scope: !2236, inlinedAt: !2217)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !2146, line: 122, column: 11)
!2237 = distinct !DILexicalBlock(scope: !2221, file: !2146, line: 121, column: 5)
!2238 = !DILocation(line: 106, column: 7, scope: !2239, inlinedAt: !2235)
!2239 = distinct !DILexicalBlock(scope: !2224, file: !2146, line: 106, column: 7)
!2240 = !DILocation(line: 106, column: 7, scope: !2224, inlinedAt: !2235)
!2241 = !DILocalVariable(name: "s1", arg: 1, scope: !2242, file: !2146, line: 90, type: !12)
!2242 = distinct !DISubprogram(name: "strcaseeq5", scope: !2146, file: !2146, line: 90, type: !2243, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!14, !12, !12, !11, !11, !11, !11}
!2245 = !{!2241, !2246, !2247, !2248, !2249, !2250}
!2246 = !DILocalVariable(name: "s2", arg: 2, scope: !2242, file: !2146, line: 90, type: !12)
!2247 = !DILocalVariable(name: "s25", arg: 3, scope: !2242, file: !2146, line: 90, type: !11)
!2248 = !DILocalVariable(name: "s26", arg: 4, scope: !2242, file: !2146, line: 90, type: !11)
!2249 = !DILocalVariable(name: "s27", arg: 5, scope: !2242, file: !2146, line: 90, type: !11)
!2250 = !DILocalVariable(name: "s28", arg: 6, scope: !2242, file: !2146, line: 90, type: !11)
!2251 = !DILocation(line: 0, scope: !2242, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 111, column: 16, scope: !2253, inlinedAt: !2235)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !2146, line: 108, column: 11)
!2254 = distinct !DILexicalBlock(scope: !2239, file: !2146, line: 107, column: 5)
!2255 = !DILocation(line: 92, column: 7, scope: !2256, inlinedAt: !2252)
!2256 = distinct !DILexicalBlock(scope: !2242, file: !2146, line: 92, column: 7)
!2257 = !DILocation(line: 92, column: 7, scope: !2242, inlinedAt: !2252)
!2258 = !DILocation(line: 235, column: 12, scope: !2162)
!2259 = !DILocation(line: 235, column: 21, scope: !2162)
!2260 = !DILocation(line: 235, column: 5, scope: !2162)
!2261 = !DILocation(line: 0, scope: !2166, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 167, column: 16, scope: !2181, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 236, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2130, file: !286, line: 236, column: 7)
!2265 = !DILocation(line: 148, column: 7, scope: !2184, inlinedAt: !2262)
!2266 = !DILocation(line: 0, scope: !2186, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 153, column: 16, scope: !2200, inlinedAt: !2262)
!2268 = !DILocation(line: 134, column: 7, scope: !2203, inlinedAt: !2267)
!2269 = !DILocation(line: 134, column: 7, scope: !2186, inlinedAt: !2267)
!2270 = !DILocation(line: 0, scope: !2205, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 139, column: 16, scope: !2218, inlinedAt: !2267)
!2272 = !DILocation(line: 120, column: 7, scope: !2221, inlinedAt: !2271)
!2273 = !DILocation(line: 120, column: 7, scope: !2205, inlinedAt: !2271)
!2274 = !DILocation(line: 0, scope: !2224, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 125, column: 16, scope: !2236, inlinedAt: !2271)
!2276 = !DILocation(line: 106, column: 7, scope: !2239, inlinedAt: !2275)
!2277 = !DILocation(line: 106, column: 7, scope: !2224, inlinedAt: !2275)
!2278 = !DILocation(line: 0, scope: !2242, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 111, column: 16, scope: !2253, inlinedAt: !2275)
!2280 = !DILocation(line: 92, column: 7, scope: !2256, inlinedAt: !2279)
!2281 = !DILocation(line: 92, column: 7, scope: !2242, inlinedAt: !2279)
!2282 = !DILocalVariable(name: "s1", arg: 1, scope: !2283, file: !2146, line: 76, type: !12)
!2283 = distinct !DISubprogram(name: "strcaseeq6", scope: !2146, file: !2146, line: 76, type: !2284, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!14, !12, !12, !11, !11, !11}
!2286 = !{!2282, !2287, !2288, !2289, !2290}
!2287 = !DILocalVariable(name: "s2", arg: 2, scope: !2283, file: !2146, line: 76, type: !12)
!2288 = !DILocalVariable(name: "s26", arg: 3, scope: !2283, file: !2146, line: 76, type: !11)
!2289 = !DILocalVariable(name: "s27", arg: 4, scope: !2283, file: !2146, line: 76, type: !11)
!2290 = !DILocalVariable(name: "s28", arg: 5, scope: !2283, file: !2146, line: 76, type: !11)
!2291 = !DILocation(line: 0, scope: !2283, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 97, column: 16, scope: !2293, inlinedAt: !2279)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !2146, line: 94, column: 11)
!2294 = distinct !DILexicalBlock(scope: !2256, file: !2146, line: 93, column: 5)
!2295 = !DILocation(line: 78, column: 7, scope: !2296, inlinedAt: !2292)
!2296 = distinct !DILexicalBlock(scope: !2283, file: !2146, line: 78, column: 7)
!2297 = !DILocation(line: 78, column: 7, scope: !2283, inlinedAt: !2292)
!2298 = !DILocalVariable(name: "s1", arg: 1, scope: !2299, file: !2146, line: 62, type: !12)
!2299 = distinct !DISubprogram(name: "strcaseeq7", scope: !2146, file: !2146, line: 62, type: !2300, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!14, !12, !12, !11, !11}
!2302 = !{!2298, !2303, !2304, !2305}
!2303 = !DILocalVariable(name: "s2", arg: 2, scope: !2299, file: !2146, line: 62, type: !12)
!2304 = !DILocalVariable(name: "s27", arg: 3, scope: !2299, file: !2146, line: 62, type: !11)
!2305 = !DILocalVariable(name: "s28", arg: 4, scope: !2299, file: !2146, line: 62, type: !11)
!2306 = !DILocation(line: 0, scope: !2299, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 83, column: 16, scope: !2308, inlinedAt: !2292)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !2146, line: 80, column: 11)
!2309 = distinct !DILexicalBlock(scope: !2296, file: !2146, line: 79, column: 5)
!2310 = !DILocation(line: 64, column: 7, scope: !2311, inlinedAt: !2307)
!2311 = distinct !DILexicalBlock(scope: !2299, file: !2146, line: 64, column: 7)
!2312 = !DILocation(line: 236, column: 7, scope: !2130)
!2313 = !DILocation(line: 237, column: 12, scope: !2264)
!2314 = !DILocation(line: 237, column: 21, scope: !2264)
!2315 = !DILocation(line: 237, column: 5, scope: !2264)
!2316 = !DILocation(line: 239, column: 13, scope: !2130)
!2317 = !DILocation(line: 239, column: 11, scope: !2130)
!2318 = !DILocation(line: 239, column: 3, scope: !2130)
!2319 = !DILocation(line: 240, column: 1, scope: !2130)
!2320 = distinct !DISubprogram(name: "quotearg_alloc", scope: !286, file: !286, line: 799, type: !2321, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!10, !12, !68, !332}
!2323 = !{!2324, !2325, !2326}
!2324 = !DILocalVariable(name: "arg", arg: 1, scope: !2320, file: !286, line: 799, type: !12)
!2325 = !DILocalVariable(name: "argsize", arg: 2, scope: !2320, file: !286, line: 799, type: !68)
!2326 = !DILocalVariable(name: "o", arg: 3, scope: !2320, file: !286, line: 800, type: !332)
!2327 = !DILocation(line: 0, scope: !2320)
!2328 = !DILocalVariable(name: "arg", arg: 1, scope: !2329, file: !286, line: 812, type: !12)
!2329 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !286, file: !286, line: 812, type: !2330, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!10, !12, !68, !478, !332}
!2332 = !{!2328, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340}
!2333 = !DILocalVariable(name: "argsize", arg: 2, scope: !2329, file: !286, line: 812, type: !68)
!2334 = !DILocalVariable(name: "size", arg: 3, scope: !2329, file: !286, line: 812, type: !478)
!2335 = !DILocalVariable(name: "o", arg: 4, scope: !2329, file: !286, line: 813, type: !332)
!2336 = !DILocalVariable(name: "p", scope: !2329, file: !286, line: 815, type: !332)
!2337 = !DILocalVariable(name: "e", scope: !2329, file: !286, line: 816, type: !14)
!2338 = !DILocalVariable(name: "flags", scope: !2329, file: !286, line: 818, type: !14)
!2339 = !DILocalVariable(name: "bufsize", scope: !2329, file: !286, line: 819, type: !68)
!2340 = !DILocalVariable(name: "buf", scope: !2329, file: !286, line: 823, type: !10)
!2341 = !DILocation(line: 0, scope: !2329, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 802, column: 10, scope: !2320)
!2343 = !DILocation(line: 815, column: 37, scope: !2329, inlinedAt: !2342)
!2344 = !DILocation(line: 816, column: 11, scope: !2329, inlinedAt: !2342)
!2345 = !DILocation(line: 818, column: 18, scope: !2329, inlinedAt: !2342)
!2346 = !DILocation(line: 818, column: 24, scope: !2329, inlinedAt: !2342)
!2347 = !DILocation(line: 819, column: 69, scope: !2329, inlinedAt: !2342)
!2348 = !DILocation(line: 820, column: 53, scope: !2329, inlinedAt: !2342)
!2349 = !DILocation(line: 821, column: 49, scope: !2329, inlinedAt: !2342)
!2350 = !DILocation(line: 822, column: 49, scope: !2329, inlinedAt: !2342)
!2351 = !DILocation(line: 819, column: 20, scope: !2329, inlinedAt: !2342)
!2352 = !DILocation(line: 822, column: 62, scope: !2329, inlinedAt: !2342)
!2353 = !DILocalVariable(name: "n", arg: 1, scope: !2354, file: !323, line: 216, type: !68)
!2354 = distinct !DISubprogram(name: "xcharalloc", scope: !323, file: !323, line: 216, type: !2355, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!10, !68}
!2357 = !{!2353}
!2358 = !DILocation(line: 0, scope: !2354, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 823, column: 15, scope: !2329, inlinedAt: !2342)
!2360 = !DILocation(line: 218, column: 10, scope: !2354, inlinedAt: !2359)
!2361 = !DILocation(line: 824, column: 60, scope: !2329, inlinedAt: !2342)
!2362 = !DILocation(line: 826, column: 32, scope: !2329, inlinedAt: !2342)
!2363 = !DILocation(line: 826, column: 47, scope: !2329, inlinedAt: !2342)
!2364 = !DILocation(line: 824, column: 3, scope: !2329, inlinedAt: !2342)
!2365 = !DILocation(line: 827, column: 9, scope: !2329, inlinedAt: !2342)
!2366 = !DILocation(line: 802, column: 3, scope: !2320)
!2367 = !DILocation(line: 0, scope: !2329)
!2368 = !DILocation(line: 815, column: 37, scope: !2329)
!2369 = !DILocation(line: 816, column: 11, scope: !2329)
!2370 = !DILocation(line: 818, column: 18, scope: !2329)
!2371 = !DILocation(line: 818, column: 27, scope: !2329)
!2372 = !DILocation(line: 818, column: 24, scope: !2329)
!2373 = !DILocation(line: 819, column: 69, scope: !2329)
!2374 = !DILocation(line: 820, column: 53, scope: !2329)
!2375 = !DILocation(line: 821, column: 49, scope: !2329)
!2376 = !DILocation(line: 822, column: 49, scope: !2329)
!2377 = !DILocation(line: 819, column: 20, scope: !2329)
!2378 = !DILocation(line: 822, column: 62, scope: !2329)
!2379 = !DILocation(line: 0, scope: !2354, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 823, column: 15, scope: !2329)
!2381 = !DILocation(line: 218, column: 10, scope: !2354, inlinedAt: !2380)
!2382 = !DILocation(line: 824, column: 60, scope: !2329)
!2383 = !DILocation(line: 826, column: 32, scope: !2329)
!2384 = !DILocation(line: 826, column: 47, scope: !2329)
!2385 = !DILocation(line: 824, column: 3, scope: !2329)
!2386 = !DILocation(line: 827, column: 9, scope: !2329)
!2387 = !DILocation(line: 828, column: 7, scope: !2329)
!2388 = !DILocation(line: 829, column: 11, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2329, file: !286, line: 828, column: 7)
!2390 = !{!1266, !1266, i64 0}
!2391 = !DILocation(line: 829, column: 5, scope: !2389)
!2392 = !DILocation(line: 830, column: 3, scope: !2329)
!2393 = distinct !DISubprogram(name: "quotearg_free", scope: !286, file: !286, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2394)
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "sv", scope: !2393, file: !286, line: 850, type: !408)
!2396 = !DILocalVariable(name: "i", scope: !2393, file: !286, line: 851, type: !14)
!2397 = !DILocation(line: 850, column: 24, scope: !2393)
!2398 = !DILocation(line: 0, scope: !2393)
!2399 = !DILocation(line: 852, column: 19, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !286, line: 852, column: 3)
!2401 = distinct !DILexicalBlock(scope: !2393, file: !286, line: 852, column: 3)
!2402 = !DILocation(line: 852, column: 17, scope: !2400)
!2403 = !DILocation(line: 852, column: 3, scope: !2401)
!2404 = !DILocation(line: 853, column: 17, scope: !2400)
!2405 = !{!2406, !1123, i64 8}
!2406 = !{!"slotvec", !1266, i64 0, !1123, i64 8}
!2407 = !DILocation(line: 853, column: 5, scope: !2400)
!2408 = !DILocation(line: 852, column: 28, scope: !2400)
!2409 = distinct !{!2409, !2403, !2410}
!2410 = !DILocation(line: 853, column: 20, scope: !2401)
!2411 = !DILocation(line: 854, column: 13, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2393, file: !286, line: 854, column: 7)
!2413 = !DILocation(line: 854, column: 17, scope: !2412)
!2414 = !DILocation(line: 854, column: 7, scope: !2393)
!2415 = !DILocation(line: 856, column: 7, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !286, line: 855, column: 5)
!2417 = !DILocation(line: 857, column: 21, scope: !2416)
!2418 = !{!2406, !1266, i64 0}
!2419 = !DILocation(line: 858, column: 20, scope: !2416)
!2420 = !DILocation(line: 859, column: 5, scope: !2416)
!2421 = !DILocation(line: 860, column: 10, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2393, file: !286, line: 860, column: 7)
!2423 = !DILocation(line: 860, column: 7, scope: !2393)
!2424 = !DILocation(line: 862, column: 13, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !286, line: 861, column: 5)
!2426 = !DILocation(line: 862, column: 7, scope: !2425)
!2427 = !DILocation(line: 863, column: 15, scope: !2425)
!2428 = !DILocation(line: 864, column: 5, scope: !2425)
!2429 = !DILocation(line: 865, column: 10, scope: !2393)
!2430 = !DILocation(line: 866, column: 1, scope: !2393)
!2431 = distinct !DISubprogram(name: "quotearg_n", scope: !286, file: !286, line: 931, type: !82, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2432)
!2432 = !{!2433, !2434}
!2433 = !DILocalVariable(name: "n", arg: 1, scope: !2431, file: !286, line: 931, type: !14)
!2434 = !DILocalVariable(name: "arg", arg: 2, scope: !2431, file: !286, line: 931, type: !12)
!2435 = !DILocation(line: 0, scope: !2431)
!2436 = !DILocation(line: 933, column: 10, scope: !2431)
!2437 = !DILocation(line: 933, column: 3, scope: !2431)
!2438 = distinct !DISubprogram(name: "quotearg_n_options", scope: !286, file: !286, line: 877, type: !2439, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!10, !14, !12, !68, !332}
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2451, !2452, !2454, !2455, !2456}
!2442 = !DILocalVariable(name: "n", arg: 1, scope: !2438, file: !286, line: 877, type: !14)
!2443 = !DILocalVariable(name: "arg", arg: 2, scope: !2438, file: !286, line: 877, type: !12)
!2444 = !DILocalVariable(name: "argsize", arg: 3, scope: !2438, file: !286, line: 877, type: !68)
!2445 = !DILocalVariable(name: "options", arg: 4, scope: !2438, file: !286, line: 878, type: !332)
!2446 = !DILocalVariable(name: "e", scope: !2438, file: !286, line: 880, type: !14)
!2447 = !DILocalVariable(name: "sv", scope: !2438, file: !286, line: 882, type: !408)
!2448 = !DILocalVariable(name: "preallocated", scope: !2449, file: !286, line: 889, type: !175)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !286, line: 888, column: 5)
!2450 = distinct !DILexicalBlock(scope: !2438, file: !286, line: 887, column: 7)
!2451 = !DILocalVariable(name: "nmax", scope: !2449, file: !286, line: 890, type: !14)
!2452 = !DILocalVariable(name: "size", scope: !2453, file: !286, line: 903, type: !68)
!2453 = distinct !DILexicalBlock(scope: !2438, file: !286, line: 902, column: 3)
!2454 = !DILocalVariable(name: "val", scope: !2453, file: !286, line: 904, type: !10)
!2455 = !DILocalVariable(name: "flags", scope: !2453, file: !286, line: 906, type: !14)
!2456 = !DILocalVariable(name: "qsize", scope: !2453, file: !286, line: 907, type: !68)
!2457 = !DILocation(line: 0, scope: !2438)
!2458 = !DILocation(line: 880, column: 11, scope: !2438)
!2459 = !DILocation(line: 882, column: 24, scope: !2438)
!2460 = !DILocation(line: 884, column: 9, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2438, file: !286, line: 884, column: 7)
!2462 = !DILocation(line: 884, column: 7, scope: !2438)
!2463 = !DILocation(line: 885, column: 5, scope: !2461)
!2464 = !DILocation(line: 887, column: 7, scope: !2450)
!2465 = !DILocation(line: 887, column: 14, scope: !2450)
!2466 = !DILocation(line: 887, column: 7, scope: !2438)
!2467 = !DILocation(line: 889, column: 31, scope: !2449)
!2468 = !DILocation(line: 0, scope: !2449)
!2469 = !DILocation(line: 892, column: 16, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2449, file: !286, line: 892, column: 11)
!2471 = !DILocation(line: 892, column: 11, scope: !2449)
!2472 = !DILocation(line: 893, column: 9, scope: !2470)
!2473 = !DILocation(line: 895, column: 32, scope: !2449)
!2474 = !DILocation(line: 895, column: 61, scope: !2449)
!2475 = !DILocation(line: 895, column: 58, scope: !2449)
!2476 = !DILocation(line: 895, column: 66, scope: !2449)
!2477 = !DILocation(line: 895, column: 22, scope: !2449)
!2478 = !DILocation(line: 895, column: 15, scope: !2449)
!2479 = !DILocation(line: 896, column: 11, scope: !2449)
!2480 = !DILocation(line: 897, column: 15, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2449, file: !286, line: 896, column: 11)
!2482 = !{i64 0, i64 8, !2390, i64 8, i64 8, !1122}
!2483 = !DILocation(line: 897, column: 9, scope: !2481)
!2484 = !DILocation(line: 898, column: 20, scope: !2449)
!2485 = !DILocation(line: 898, column: 18, scope: !2449)
!2486 = !DILocation(line: 898, column: 15, scope: !2449)
!2487 = !DILocation(line: 898, column: 38, scope: !2449)
!2488 = !DILocation(line: 898, column: 31, scope: !2449)
!2489 = !DILocation(line: 898, column: 48, scope: !2449)
!2490 = !DILocation(line: 0, scope: !1887, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 898, column: 7, scope: !2449)
!2492 = !DILocation(line: 71, column: 10, scope: !1887, inlinedAt: !2491)
!2493 = !DILocation(line: 899, column: 14, scope: !2449)
!2494 = !DILocation(line: 900, column: 5, scope: !2449)
!2495 = !DILocation(line: 903, column: 19, scope: !2453)
!2496 = !DILocation(line: 903, column: 25, scope: !2453)
!2497 = !DILocation(line: 0, scope: !2453)
!2498 = !DILocation(line: 904, column: 23, scope: !2453)
!2499 = !DILocation(line: 906, column: 26, scope: !2453)
!2500 = !DILocation(line: 906, column: 32, scope: !2453)
!2501 = !DILocation(line: 908, column: 55, scope: !2453)
!2502 = !DILocation(line: 909, column: 46, scope: !2453)
!2503 = !DILocation(line: 910, column: 55, scope: !2453)
!2504 = !DILocation(line: 911, column: 55, scope: !2453)
!2505 = !DILocation(line: 907, column: 20, scope: !2453)
!2506 = !DILocation(line: 913, column: 14, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2453, file: !286, line: 913, column: 9)
!2508 = !DILocation(line: 913, column: 9, scope: !2453)
!2509 = !DILocation(line: 915, column: 35, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !286, line: 914, column: 7)
!2511 = !DILocation(line: 915, column: 20, scope: !2510)
!2512 = !DILocation(line: 916, column: 17, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !286, line: 916, column: 13)
!2514 = !DILocation(line: 916, column: 13, scope: !2510)
!2515 = !DILocation(line: 917, column: 11, scope: !2513)
!2516 = !DILocation(line: 0, scope: !2354, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 918, column: 27, scope: !2510)
!2518 = !DILocation(line: 218, column: 10, scope: !2354, inlinedAt: !2517)
!2519 = !DILocation(line: 918, column: 19, scope: !2510)
!2520 = !DILocation(line: 919, column: 69, scope: !2510)
!2521 = !DILocation(line: 921, column: 44, scope: !2510)
!2522 = !DILocation(line: 922, column: 44, scope: !2510)
!2523 = !DILocation(line: 919, column: 9, scope: !2510)
!2524 = !DILocation(line: 923, column: 7, scope: !2510)
!2525 = !DILocation(line: 925, column: 11, scope: !2453)
!2526 = !DILocation(line: 926, column: 5, scope: !2453)
!2527 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !286, file: !286, line: 937, type: !2528, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!10, !14, !12, !68}
!2530 = !{!2531, !2532, !2533}
!2531 = !DILocalVariable(name: "n", arg: 1, scope: !2527, file: !286, line: 937, type: !14)
!2532 = !DILocalVariable(name: "arg", arg: 2, scope: !2527, file: !286, line: 937, type: !12)
!2533 = !DILocalVariable(name: "argsize", arg: 3, scope: !2527, file: !286, line: 937, type: !68)
!2534 = !DILocation(line: 0, scope: !2527)
!2535 = !DILocation(line: 939, column: 10, scope: !2527)
!2536 = !DILocation(line: 939, column: 3, scope: !2527)
!2537 = distinct !DISubprogram(name: "quotearg", scope: !286, file: !286, line: 943, type: !88, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2538)
!2538 = !{!2539}
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2537, file: !286, line: 943, type: !12)
!2540 = !DILocation(line: 0, scope: !2537)
!2541 = !DILocation(line: 0, scope: !2431, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 945, column: 10, scope: !2537)
!2543 = !DILocation(line: 933, column: 10, scope: !2431, inlinedAt: !2542)
!2544 = !DILocation(line: 945, column: 3, scope: !2537)
!2545 = distinct !DISubprogram(name: "quotearg_mem", scope: !286, file: !286, line: 949, type: !2546, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!10, !12, !68}
!2548 = !{!2549, !2550}
!2549 = !DILocalVariable(name: "arg", arg: 1, scope: !2545, file: !286, line: 949, type: !12)
!2550 = !DILocalVariable(name: "argsize", arg: 2, scope: !2545, file: !286, line: 949, type: !68)
!2551 = !DILocation(line: 0, scope: !2545)
!2552 = !DILocation(line: 0, scope: !2527, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 951, column: 10, scope: !2545)
!2554 = !DILocation(line: 939, column: 10, scope: !2527, inlinedAt: !2553)
!2555 = !DILocation(line: 951, column: 3, scope: !2545)
!2556 = distinct !DISubprogram(name: "quotearg_n_style", scope: !286, file: !286, line: 955, type: !2557, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!10, !14, !288, !12}
!2559 = !{!2560, !2561, !2562, !2563}
!2560 = !DILocalVariable(name: "n", arg: 1, scope: !2556, file: !286, line: 955, type: !14)
!2561 = !DILocalVariable(name: "s", arg: 2, scope: !2556, file: !286, line: 955, type: !288)
!2562 = !DILocalVariable(name: "arg", arg: 3, scope: !2556, file: !286, line: 955, type: !12)
!2563 = !DILocalVariable(name: "o", scope: !2556, file: !286, line: 957, type: !333)
!2564 = !DILocation(line: 0, scope: !2556)
!2565 = !DILocation(line: 957, column: 3, scope: !2556)
!2566 = !DILocation(line: 957, column: 32, scope: !2556)
!2567 = !DILocalVariable(name: "style", arg: 1, scope: !2568, file: !286, line: 193, type: !288)
!2568 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !286, file: !286, line: 193, type: !2569, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!334, !288}
!2571 = !{!2567, !2572}
!2572 = !DILocalVariable(name: "o", scope: !2568, file: !286, line: 195, type: !334)
!2573 = !DILocation(line: 0, scope: !2568, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 957, column: 36, scope: !2556)
!2575 = !DILocation(line: 195, column: 26, scope: !2568, inlinedAt: !2574)
!2576 = !{!2577}
!2577 = distinct !{!2577, !2578, !"quoting_options_from_style: argument 0"}
!2578 = distinct !{!2578, !"quoting_options_from_style"}
!2579 = !DILocation(line: 196, column: 13, scope: !2580, inlinedAt: !2574)
!2580 = distinct !DILexicalBlock(scope: !2568, file: !286, line: 196, column: 7)
!2581 = !DILocation(line: 196, column: 7, scope: !2568, inlinedAt: !2574)
!2582 = !DILocation(line: 197, column: 5, scope: !2580, inlinedAt: !2574)
!2583 = !DILocation(line: 198, column: 5, scope: !2568, inlinedAt: !2574)
!2584 = !DILocation(line: 198, column: 11, scope: !2568, inlinedAt: !2574)
!2585 = !DILocation(line: 958, column: 10, scope: !2556)
!2586 = !DILocation(line: 959, column: 1, scope: !2556)
!2587 = !DILocation(line: 958, column: 3, scope: !2556)
!2588 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !286, file: !286, line: 962, type: !2589, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!10, !14, !288, !12, !68}
!2591 = !{!2592, !2593, !2594, !2595, !2596}
!2592 = !DILocalVariable(name: "n", arg: 1, scope: !2588, file: !286, line: 962, type: !14)
!2593 = !DILocalVariable(name: "s", arg: 2, scope: !2588, file: !286, line: 962, type: !288)
!2594 = !DILocalVariable(name: "arg", arg: 3, scope: !2588, file: !286, line: 963, type: !12)
!2595 = !DILocalVariable(name: "argsize", arg: 4, scope: !2588, file: !286, line: 963, type: !68)
!2596 = !DILocalVariable(name: "o", scope: !2588, file: !286, line: 965, type: !333)
!2597 = !DILocation(line: 0, scope: !2588)
!2598 = !DILocation(line: 965, column: 3, scope: !2588)
!2599 = !DILocation(line: 965, column: 32, scope: !2588)
!2600 = !DILocation(line: 0, scope: !2568, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 965, column: 36, scope: !2588)
!2602 = !DILocation(line: 195, column: 26, scope: !2568, inlinedAt: !2601)
!2603 = !{!2604}
!2604 = distinct !{!2604, !2605, !"quoting_options_from_style: argument 0"}
!2605 = distinct !{!2605, !"quoting_options_from_style"}
!2606 = !DILocation(line: 196, column: 13, scope: !2580, inlinedAt: !2601)
!2607 = !DILocation(line: 196, column: 7, scope: !2568, inlinedAt: !2601)
!2608 = !DILocation(line: 197, column: 5, scope: !2580, inlinedAt: !2601)
!2609 = !DILocation(line: 198, column: 5, scope: !2568, inlinedAt: !2601)
!2610 = !DILocation(line: 198, column: 11, scope: !2568, inlinedAt: !2601)
!2611 = !DILocation(line: 966, column: 10, scope: !2588)
!2612 = !DILocation(line: 967, column: 1, scope: !2588)
!2613 = !DILocation(line: 966, column: 3, scope: !2588)
!2614 = distinct !DISubprogram(name: "quotearg_style", scope: !286, file: !286, line: 970, type: !2615, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!10, !288, !12}
!2617 = !{!2618, !2619}
!2618 = !DILocalVariable(name: "s", arg: 1, scope: !2614, file: !286, line: 970, type: !288)
!2619 = !DILocalVariable(name: "arg", arg: 2, scope: !2614, file: !286, line: 970, type: !12)
!2620 = !DILocation(line: 195, column: 26, scope: !2568, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 957, column: 36, scope: !2556, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 972, column: 10, scope: !2614)
!2623 = !DILocation(line: 957, column: 32, scope: !2556, inlinedAt: !2622)
!2624 = !DILocation(line: 0, scope: !2614)
!2625 = !DILocation(line: 0, scope: !2556, inlinedAt: !2622)
!2626 = !DILocation(line: 957, column: 3, scope: !2556, inlinedAt: !2622)
!2627 = !DILocation(line: 0, scope: !2568, inlinedAt: !2621)
!2628 = !{!2629}
!2629 = distinct !{!2629, !2630, !"quoting_options_from_style: argument 0"}
!2630 = distinct !{!2630, !"quoting_options_from_style"}
!2631 = !DILocation(line: 196, column: 13, scope: !2580, inlinedAt: !2621)
!2632 = !DILocation(line: 196, column: 7, scope: !2568, inlinedAt: !2621)
!2633 = !DILocation(line: 197, column: 5, scope: !2580, inlinedAt: !2621)
!2634 = !DILocation(line: 198, column: 5, scope: !2568, inlinedAt: !2621)
!2635 = !DILocation(line: 198, column: 11, scope: !2568, inlinedAt: !2621)
!2636 = !DILocation(line: 958, column: 10, scope: !2556, inlinedAt: !2622)
!2637 = !DILocation(line: 959, column: 1, scope: !2556, inlinedAt: !2622)
!2638 = !DILocation(line: 972, column: 3, scope: !2614)
!2639 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !286, file: !286, line: 976, type: !2640, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!10, !288, !12, !68}
!2642 = !{!2643, !2644, !2645}
!2643 = !DILocalVariable(name: "s", arg: 1, scope: !2639, file: !286, line: 976, type: !288)
!2644 = !DILocalVariable(name: "arg", arg: 2, scope: !2639, file: !286, line: 976, type: !12)
!2645 = !DILocalVariable(name: "argsize", arg: 3, scope: !2639, file: !286, line: 976, type: !68)
!2646 = !DILocation(line: 195, column: 26, scope: !2568, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 965, column: 36, scope: !2588, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 978, column: 10, scope: !2639)
!2649 = !DILocation(line: 965, column: 32, scope: !2588, inlinedAt: !2648)
!2650 = !DILocation(line: 0, scope: !2639)
!2651 = !DILocation(line: 0, scope: !2588, inlinedAt: !2648)
!2652 = !DILocation(line: 965, column: 3, scope: !2588, inlinedAt: !2648)
!2653 = !DILocation(line: 0, scope: !2568, inlinedAt: !2647)
!2654 = !{!2655}
!2655 = distinct !{!2655, !2656, !"quoting_options_from_style: argument 0"}
!2656 = distinct !{!2656, !"quoting_options_from_style"}
!2657 = !DILocation(line: 196, column: 13, scope: !2580, inlinedAt: !2647)
!2658 = !DILocation(line: 196, column: 7, scope: !2568, inlinedAt: !2647)
!2659 = !DILocation(line: 197, column: 5, scope: !2580, inlinedAt: !2647)
!2660 = !DILocation(line: 198, column: 5, scope: !2568, inlinedAt: !2647)
!2661 = !DILocation(line: 198, column: 11, scope: !2568, inlinedAt: !2647)
!2662 = !DILocation(line: 966, column: 10, scope: !2588, inlinedAt: !2648)
!2663 = !DILocation(line: 967, column: 1, scope: !2588, inlinedAt: !2648)
!2664 = !DILocation(line: 978, column: 3, scope: !2639)
!2665 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !286, file: !286, line: 982, type: !2666, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!10, !12, !68, !11}
!2668 = !{!2669, !2670, !2671, !2672}
!2669 = !DILocalVariable(name: "arg", arg: 1, scope: !2665, file: !286, line: 982, type: !12)
!2670 = !DILocalVariable(name: "argsize", arg: 2, scope: !2665, file: !286, line: 982, type: !68)
!2671 = !DILocalVariable(name: "ch", arg: 3, scope: !2665, file: !286, line: 982, type: !11)
!2672 = !DILocalVariable(name: "options", scope: !2665, file: !286, line: 984, type: !334)
!2673 = !DILocation(line: 0, scope: !2665)
!2674 = !DILocation(line: 984, column: 3, scope: !2665)
!2675 = !DILocation(line: 984, column: 26, scope: !2665)
!2676 = !DILocation(line: 985, column: 13, scope: !2665)
!2677 = !{i64 0, i64 4, !1271, i64 4, i64 4, !1129, i64 8, i64 32, !1271, i64 40, i64 8, !1122, i64 48, i64 8, !1122}
!2678 = !DILocation(line: 0, scope: !1501, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 986, column: 3, scope: !2665)
!2680 = !DILocation(line: 156, column: 62, scope: !1501, inlinedAt: !2679)
!2681 = !DILocation(line: 156, column: 57, scope: !1501, inlinedAt: !2679)
!2682 = !DILocation(line: 157, column: 15, scope: !1501, inlinedAt: !2679)
!2683 = !DILocation(line: 158, column: 12, scope: !1501, inlinedAt: !2679)
!2684 = !DILocation(line: 158, column: 15, scope: !1501, inlinedAt: !2679)
!2685 = !DILocation(line: 158, column: 25, scope: !1501, inlinedAt: !2679)
!2686 = !DILocation(line: 159, column: 18, scope: !1501, inlinedAt: !2679)
!2687 = !DILocation(line: 159, column: 23, scope: !1501, inlinedAt: !2679)
!2688 = !DILocation(line: 159, column: 6, scope: !1501, inlinedAt: !2679)
!2689 = !DILocation(line: 987, column: 10, scope: !2665)
!2690 = !DILocation(line: 988, column: 1, scope: !2665)
!2691 = !DILocation(line: 987, column: 3, scope: !2665)
!2692 = distinct !DISubprogram(name: "quotearg_char", scope: !286, file: !286, line: 991, type: !2693, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!10, !12, !11}
!2695 = !{!2696, !2697}
!2696 = !DILocalVariable(name: "arg", arg: 1, scope: !2692, file: !286, line: 991, type: !12)
!2697 = !DILocalVariable(name: "ch", arg: 2, scope: !2692, file: !286, line: 991, type: !11)
!2698 = !DILocation(line: 984, column: 26, scope: !2665, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 993, column: 10, scope: !2692)
!2700 = !DILocation(line: 0, scope: !2692)
!2701 = !DILocation(line: 0, scope: !2665, inlinedAt: !2699)
!2702 = !DILocation(line: 984, column: 3, scope: !2665, inlinedAt: !2699)
!2703 = !DILocation(line: 985, column: 13, scope: !2665, inlinedAt: !2699)
!2704 = !DILocation(line: 0, scope: !1501, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 986, column: 3, scope: !2665, inlinedAt: !2699)
!2706 = !DILocation(line: 156, column: 62, scope: !1501, inlinedAt: !2705)
!2707 = !DILocation(line: 156, column: 57, scope: !1501, inlinedAt: !2705)
!2708 = !DILocation(line: 157, column: 15, scope: !1501, inlinedAt: !2705)
!2709 = !DILocation(line: 158, column: 12, scope: !1501, inlinedAt: !2705)
!2710 = !DILocation(line: 158, column: 15, scope: !1501, inlinedAt: !2705)
!2711 = !DILocation(line: 158, column: 25, scope: !1501, inlinedAt: !2705)
!2712 = !DILocation(line: 159, column: 18, scope: !1501, inlinedAt: !2705)
!2713 = !DILocation(line: 159, column: 23, scope: !1501, inlinedAt: !2705)
!2714 = !DILocation(line: 159, column: 6, scope: !1501, inlinedAt: !2705)
!2715 = !DILocation(line: 987, column: 10, scope: !2665, inlinedAt: !2699)
!2716 = !DILocation(line: 988, column: 1, scope: !2665, inlinedAt: !2699)
!2717 = !DILocation(line: 993, column: 3, scope: !2692)
!2718 = distinct !DISubprogram(name: "quotearg_colon", scope: !286, file: !286, line: 997, type: !88, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2719)
!2719 = !{!2720}
!2720 = !DILocalVariable(name: "arg", arg: 1, scope: !2718, file: !286, line: 997, type: !12)
!2721 = !DILocation(line: 984, column: 26, scope: !2665, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 993, column: 10, scope: !2692, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 999, column: 10, scope: !2718)
!2724 = !DILocation(line: 0, scope: !2718)
!2725 = !DILocation(line: 0, scope: !2692, inlinedAt: !2723)
!2726 = !DILocation(line: 0, scope: !2665, inlinedAt: !2722)
!2727 = !DILocation(line: 984, column: 3, scope: !2665, inlinedAt: !2722)
!2728 = !DILocation(line: 985, column: 13, scope: !2665, inlinedAt: !2722)
!2729 = !DILocation(line: 0, scope: !1501, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 986, column: 3, scope: !2665, inlinedAt: !2722)
!2731 = !DILocation(line: 156, column: 57, scope: !1501, inlinedAt: !2730)
!2732 = !DILocation(line: 158, column: 12, scope: !1501, inlinedAt: !2730)
!2733 = !DILocation(line: 159, column: 6, scope: !1501, inlinedAt: !2730)
!2734 = !DILocation(line: 987, column: 10, scope: !2665, inlinedAt: !2722)
!2735 = !DILocation(line: 988, column: 1, scope: !2665, inlinedAt: !2722)
!2736 = !DILocation(line: 999, column: 3, scope: !2718)
!2737 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !286, file: !286, line: 1003, type: !2546, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2738)
!2738 = !{!2739, !2740}
!2739 = !DILocalVariable(name: "arg", arg: 1, scope: !2737, file: !286, line: 1003, type: !12)
!2740 = !DILocalVariable(name: "argsize", arg: 2, scope: !2737, file: !286, line: 1003, type: !68)
!2741 = !DILocation(line: 984, column: 26, scope: !2665, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 1005, column: 10, scope: !2737)
!2743 = !DILocation(line: 0, scope: !2737)
!2744 = !DILocation(line: 0, scope: !2665, inlinedAt: !2742)
!2745 = !DILocation(line: 984, column: 3, scope: !2665, inlinedAt: !2742)
!2746 = !DILocation(line: 985, column: 13, scope: !2665, inlinedAt: !2742)
!2747 = !DILocation(line: 0, scope: !1501, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 986, column: 3, scope: !2665, inlinedAt: !2742)
!2749 = !DILocation(line: 156, column: 57, scope: !1501, inlinedAt: !2748)
!2750 = !DILocation(line: 158, column: 12, scope: !1501, inlinedAt: !2748)
!2751 = !DILocation(line: 159, column: 6, scope: !1501, inlinedAt: !2748)
!2752 = !DILocation(line: 987, column: 10, scope: !2665, inlinedAt: !2742)
!2753 = !DILocation(line: 988, column: 1, scope: !2665, inlinedAt: !2742)
!2754 = !DILocation(line: 1005, column: 3, scope: !2737)
!2755 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !286, file: !286, line: 1009, type: !2557, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DILocalVariable(name: "n", arg: 1, scope: !2755, file: !286, line: 1009, type: !14)
!2758 = !DILocalVariable(name: "s", arg: 2, scope: !2755, file: !286, line: 1009, type: !288)
!2759 = !DILocalVariable(name: "arg", arg: 3, scope: !2755, file: !286, line: 1009, type: !12)
!2760 = !DILocalVariable(name: "options", scope: !2755, file: !286, line: 1011, type: !334)
!2761 = !DILocation(line: 195, column: 26, scope: !2568, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 1012, column: 13, scope: !2755)
!2763 = !DILocation(line: 0, scope: !2755)
!2764 = !DILocation(line: 1011, column: 3, scope: !2755)
!2765 = !DILocation(line: 1011, column: 26, scope: !2755)
!2766 = !DILocation(line: 1012, column: 13, scope: !2755)
!2767 = !DILocation(line: 0, scope: !2568, inlinedAt: !2762)
!2768 = !{!2769}
!2769 = distinct !{!2769, !2770, !"quoting_options_from_style: argument 0"}
!2770 = distinct !{!2770, !"quoting_options_from_style"}
!2771 = !DILocation(line: 196, column: 13, scope: !2580, inlinedAt: !2762)
!2772 = !DILocation(line: 196, column: 7, scope: !2568, inlinedAt: !2762)
!2773 = !DILocation(line: 197, column: 5, scope: !2580, inlinedAt: !2762)
!2774 = !DILocation(line: 0, scope: !1501, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1013, column: 3, scope: !2755)
!2776 = !DILocation(line: 156, column: 57, scope: !1501, inlinedAt: !2775)
!2777 = !DILocation(line: 158, column: 12, scope: !1501, inlinedAt: !2775)
!2778 = !DILocation(line: 159, column: 6, scope: !1501, inlinedAt: !2775)
!2779 = !DILocation(line: 1014, column: 10, scope: !2755)
!2780 = !DILocation(line: 1015, column: 1, scope: !2755)
!2781 = !DILocation(line: 1014, column: 3, scope: !2755)
!2782 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !286, file: !286, line: 1018, type: !2783, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!10, !14, !12, !12, !12}
!2785 = !{!2786, !2787, !2788, !2789}
!2786 = !DILocalVariable(name: "n", arg: 1, scope: !2782, file: !286, line: 1018, type: !14)
!2787 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2782, file: !286, line: 1018, type: !12)
!2788 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2782, file: !286, line: 1019, type: !12)
!2789 = !DILocalVariable(name: "arg", arg: 4, scope: !2782, file: !286, line: 1019, type: !12)
!2790 = !DILocalVariable(name: "o", scope: !2791, file: !286, line: 1030, type: !334)
!2791 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !286, file: !286, line: 1026, type: !2792, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!10, !14, !12, !12, !12, !68}
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2790}
!2795 = !DILocalVariable(name: "n", arg: 1, scope: !2791, file: !286, line: 1026, type: !14)
!2796 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2791, file: !286, line: 1026, type: !12)
!2797 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2791, file: !286, line: 1027, type: !12)
!2798 = !DILocalVariable(name: "arg", arg: 4, scope: !2791, file: !286, line: 1028, type: !12)
!2799 = !DILocalVariable(name: "argsize", arg: 5, scope: !2791, file: !286, line: 1028, type: !68)
!2800 = !DILocation(line: 1030, column: 26, scope: !2791, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 1021, column: 10, scope: !2782)
!2802 = !DILocation(line: 0, scope: !2782)
!2803 = !DILocation(line: 0, scope: !2791, inlinedAt: !2801)
!2804 = !DILocation(line: 1030, column: 3, scope: !2791, inlinedAt: !2801)
!2805 = !DILocation(line: 1030, column: 30, scope: !2791, inlinedAt: !2801)
!2806 = !DILocation(line: 0, scope: !1541, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 1031, column: 3, scope: !2791, inlinedAt: !2801)
!2808 = !DILocation(line: 184, column: 6, scope: !1541, inlinedAt: !2807)
!2809 = !DILocation(line: 184, column: 12, scope: !1541, inlinedAt: !2807)
!2810 = !DILocation(line: 185, column: 8, scope: !1555, inlinedAt: !2807)
!2811 = !DILocation(line: 185, column: 23, scope: !1555, inlinedAt: !2807)
!2812 = !DILocation(line: 185, column: 19, scope: !1555, inlinedAt: !2807)
!2813 = !DILocation(line: 186, column: 5, scope: !1555, inlinedAt: !2807)
!2814 = !DILocation(line: 187, column: 6, scope: !1541, inlinedAt: !2807)
!2815 = !DILocation(line: 187, column: 17, scope: !1541, inlinedAt: !2807)
!2816 = !DILocation(line: 188, column: 6, scope: !1541, inlinedAt: !2807)
!2817 = !DILocation(line: 188, column: 18, scope: !1541, inlinedAt: !2807)
!2818 = !DILocation(line: 1032, column: 10, scope: !2791, inlinedAt: !2801)
!2819 = !DILocation(line: 1033, column: 1, scope: !2791, inlinedAt: !2801)
!2820 = !DILocation(line: 1021, column: 3, scope: !2782)
!2821 = !DILocation(line: 0, scope: !2791)
!2822 = !DILocation(line: 1030, column: 3, scope: !2791)
!2823 = !DILocation(line: 1030, column: 26, scope: !2791)
!2824 = !DILocation(line: 1030, column: 30, scope: !2791)
!2825 = !DILocation(line: 0, scope: !1541, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 1031, column: 3, scope: !2791)
!2827 = !DILocation(line: 184, column: 6, scope: !1541, inlinedAt: !2826)
!2828 = !DILocation(line: 184, column: 12, scope: !1541, inlinedAt: !2826)
!2829 = !DILocation(line: 185, column: 8, scope: !1555, inlinedAt: !2826)
!2830 = !DILocation(line: 185, column: 23, scope: !1555, inlinedAt: !2826)
!2831 = !DILocation(line: 185, column: 19, scope: !1555, inlinedAt: !2826)
!2832 = !DILocation(line: 186, column: 5, scope: !1555, inlinedAt: !2826)
!2833 = !DILocation(line: 187, column: 6, scope: !1541, inlinedAt: !2826)
!2834 = !DILocation(line: 187, column: 17, scope: !1541, inlinedAt: !2826)
!2835 = !DILocation(line: 188, column: 6, scope: !1541, inlinedAt: !2826)
!2836 = !DILocation(line: 188, column: 18, scope: !1541, inlinedAt: !2826)
!2837 = !DILocation(line: 1032, column: 10, scope: !2791)
!2838 = !DILocation(line: 1033, column: 1, scope: !2791)
!2839 = !DILocation(line: 1032, column: 3, scope: !2791)
!2840 = distinct !DISubprogram(name: "quotearg_custom", scope: !286, file: !286, line: 1036, type: !2841, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!10, !12, !12, !12}
!2843 = !{!2844, !2845, !2846}
!2844 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2840, file: !286, line: 1036, type: !12)
!2845 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2840, file: !286, line: 1036, type: !12)
!2846 = !DILocalVariable(name: "arg", arg: 3, scope: !2840, file: !286, line: 1037, type: !12)
!2847 = !DILocation(line: 1030, column: 26, scope: !2791, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1021, column: 10, scope: !2782, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 1039, column: 10, scope: !2840)
!2850 = !DILocation(line: 0, scope: !2840)
!2851 = !DILocation(line: 0, scope: !2782, inlinedAt: !2849)
!2852 = !DILocation(line: 0, scope: !2791, inlinedAt: !2848)
!2853 = !DILocation(line: 1030, column: 3, scope: !2791, inlinedAt: !2848)
!2854 = !DILocation(line: 1030, column: 30, scope: !2791, inlinedAt: !2848)
!2855 = !DILocation(line: 0, scope: !1541, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 1031, column: 3, scope: !2791, inlinedAt: !2848)
!2857 = !DILocation(line: 184, column: 6, scope: !1541, inlinedAt: !2856)
!2858 = !DILocation(line: 184, column: 12, scope: !1541, inlinedAt: !2856)
!2859 = !DILocation(line: 185, column: 8, scope: !1555, inlinedAt: !2856)
!2860 = !DILocation(line: 185, column: 23, scope: !1555, inlinedAt: !2856)
!2861 = !DILocation(line: 185, column: 19, scope: !1555, inlinedAt: !2856)
!2862 = !DILocation(line: 186, column: 5, scope: !1555, inlinedAt: !2856)
!2863 = !DILocation(line: 187, column: 6, scope: !1541, inlinedAt: !2856)
!2864 = !DILocation(line: 187, column: 17, scope: !1541, inlinedAt: !2856)
!2865 = !DILocation(line: 188, column: 6, scope: !1541, inlinedAt: !2856)
!2866 = !DILocation(line: 188, column: 18, scope: !1541, inlinedAt: !2856)
!2867 = !DILocation(line: 1032, column: 10, scope: !2791, inlinedAt: !2848)
!2868 = !DILocation(line: 1033, column: 1, scope: !2791, inlinedAt: !2848)
!2869 = !DILocation(line: 1039, column: 3, scope: !2840)
!2870 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !286, file: !286, line: 1043, type: !2871, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!10, !12, !12, !12, !68}
!2873 = !{!2874, !2875, !2876, !2877}
!2874 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2870, file: !286, line: 1043, type: !12)
!2875 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2870, file: !286, line: 1043, type: !12)
!2876 = !DILocalVariable(name: "arg", arg: 3, scope: !2870, file: !286, line: 1044, type: !12)
!2877 = !DILocalVariable(name: "argsize", arg: 4, scope: !2870, file: !286, line: 1044, type: !68)
!2878 = !DILocation(line: 1030, column: 26, scope: !2791, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 1046, column: 10, scope: !2870)
!2880 = !DILocation(line: 0, scope: !2870)
!2881 = !DILocation(line: 0, scope: !2791, inlinedAt: !2879)
!2882 = !DILocation(line: 1030, column: 3, scope: !2791, inlinedAt: !2879)
!2883 = !DILocation(line: 1030, column: 30, scope: !2791, inlinedAt: !2879)
!2884 = !DILocation(line: 0, scope: !1541, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1031, column: 3, scope: !2791, inlinedAt: !2879)
!2886 = !DILocation(line: 184, column: 6, scope: !1541, inlinedAt: !2885)
!2887 = !DILocation(line: 184, column: 12, scope: !1541, inlinedAt: !2885)
!2888 = !DILocation(line: 185, column: 8, scope: !1555, inlinedAt: !2885)
!2889 = !DILocation(line: 185, column: 23, scope: !1555, inlinedAt: !2885)
!2890 = !DILocation(line: 185, column: 19, scope: !1555, inlinedAt: !2885)
!2891 = !DILocation(line: 186, column: 5, scope: !1555, inlinedAt: !2885)
!2892 = !DILocation(line: 187, column: 6, scope: !1541, inlinedAt: !2885)
!2893 = !DILocation(line: 187, column: 17, scope: !1541, inlinedAt: !2885)
!2894 = !DILocation(line: 188, column: 6, scope: !1541, inlinedAt: !2885)
!2895 = !DILocation(line: 188, column: 18, scope: !1541, inlinedAt: !2885)
!2896 = !DILocation(line: 1032, column: 10, scope: !2791, inlinedAt: !2879)
!2897 = !DILocation(line: 1033, column: 1, scope: !2791, inlinedAt: !2879)
!2898 = !DILocation(line: 1046, column: 3, scope: !2870)
!2899 = distinct !DISubprogram(name: "quote_n_mem", scope: !286, file: !286, line: 1061, type: !2900, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!12, !14, !12, !68}
!2902 = !{!2903, !2904, !2905}
!2903 = !DILocalVariable(name: "n", arg: 1, scope: !2899, file: !286, line: 1061, type: !14)
!2904 = !DILocalVariable(name: "arg", arg: 2, scope: !2899, file: !286, line: 1061, type: !12)
!2905 = !DILocalVariable(name: "argsize", arg: 3, scope: !2899, file: !286, line: 1061, type: !68)
!2906 = !DILocation(line: 0, scope: !2899)
!2907 = !DILocation(line: 1063, column: 10, scope: !2899)
!2908 = !DILocation(line: 1063, column: 3, scope: !2899)
!2909 = distinct !DISubprogram(name: "quote_mem", scope: !286, file: !286, line: 1067, type: !2910, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!12, !12, !68}
!2912 = !{!2913, !2914}
!2913 = !DILocalVariable(name: "arg", arg: 1, scope: !2909, file: !286, line: 1067, type: !12)
!2914 = !DILocalVariable(name: "argsize", arg: 2, scope: !2909, file: !286, line: 1067, type: !68)
!2915 = !DILocation(line: 0, scope: !2909)
!2916 = !DILocation(line: 0, scope: !2899, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 1069, column: 10, scope: !2909)
!2918 = !DILocation(line: 1063, column: 10, scope: !2899, inlinedAt: !2917)
!2919 = !DILocation(line: 1069, column: 3, scope: !2909)
!2920 = distinct !DISubprogram(name: "quote_n", scope: !286, file: !286, line: 1073, type: !2921, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!12, !14, !12}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "n", arg: 1, scope: !2920, file: !286, line: 1073, type: !14)
!2925 = !DILocalVariable(name: "arg", arg: 2, scope: !2920, file: !286, line: 1073, type: !12)
!2926 = !DILocation(line: 0, scope: !2920)
!2927 = !DILocation(line: 0, scope: !2899, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 1075, column: 10, scope: !2920)
!2929 = !DILocation(line: 1063, column: 10, scope: !2899, inlinedAt: !2928)
!2930 = !DILocation(line: 1075, column: 3, scope: !2920)
!2931 = distinct !DISubprogram(name: "quote", scope: !286, file: !286, line: 1079, type: !138, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !2932)
!2932 = !{!2933}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2931, file: !286, line: 1079, type: !12)
!2934 = !DILocation(line: 0, scope: !2931)
!2935 = !DILocation(line: 0, scope: !2920, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 1081, column: 10, scope: !2931)
!2937 = !DILocation(line: 0, scope: !2899, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 1075, column: 10, scope: !2920, inlinedAt: !2936)
!2939 = !DILocation(line: 1063, column: 10, scope: !2899, inlinedAt: !2938)
!2940 = !DILocation(line: 1081, column: 3, scope: !2931)
!2941 = distinct !DISubprogram(name: "version_etc_arn", scope: !430, file: !430, line: 61, type: !2942, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !2948)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !2944, !12, !12, !12, !2947, !68}
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2946, line: 7, baseType: !440)
!2946 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954}
!2949 = !DILocalVariable(name: "stream", arg: 1, scope: !2941, file: !430, line: 61, type: !2944)
!2950 = !DILocalVariable(name: "command_name", arg: 2, scope: !2941, file: !430, line: 62, type: !12)
!2951 = !DILocalVariable(name: "package", arg: 3, scope: !2941, file: !430, line: 62, type: !12)
!2952 = !DILocalVariable(name: "version", arg: 4, scope: !2941, file: !430, line: 63, type: !12)
!2953 = !DILocalVariable(name: "authors", arg: 5, scope: !2941, file: !430, line: 64, type: !2947)
!2954 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2941, file: !430, line: 64, type: !68)
!2955 = !DILocation(line: 0, scope: !2941)
!2956 = !DILocation(line: 66, column: 7, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2941, file: !430, line: 66, column: 7)
!2958 = !DILocation(line: 66, column: 7, scope: !2941)
!2959 = !DILocation(line: 67, column: 5, scope: !2957)
!2960 = !DILocation(line: 69, column: 5, scope: !2957)
!2961 = !DILocation(line: 83, column: 3, scope: !2941)
!2962 = !DILocation(line: 85, column: 3, scope: !2941)
!2963 = !DILocation(line: 88, column: 3, scope: !2941)
!2964 = !DILocation(line: 95, column: 3, scope: !2941)
!2965 = !DILocation(line: 97, column: 3, scope: !2941)
!2966 = !DILocation(line: 105, column: 7, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2941, file: !430, line: 98, column: 5)
!2968 = !DILocation(line: 106, column: 7, scope: !2967)
!2969 = !DILocation(line: 109, column: 7, scope: !2967)
!2970 = !DILocation(line: 110, column: 7, scope: !2967)
!2971 = !DILocation(line: 113, column: 7, scope: !2967)
!2972 = !DILocation(line: 115, column: 7, scope: !2967)
!2973 = !DILocation(line: 120, column: 7, scope: !2967)
!2974 = !DILocation(line: 122, column: 7, scope: !2967)
!2975 = !DILocation(line: 127, column: 7, scope: !2967)
!2976 = !DILocation(line: 129, column: 7, scope: !2967)
!2977 = !DILocation(line: 134, column: 7, scope: !2967)
!2978 = !DILocation(line: 137, column: 7, scope: !2967)
!2979 = !DILocation(line: 142, column: 7, scope: !2967)
!2980 = !DILocation(line: 145, column: 7, scope: !2967)
!2981 = !DILocation(line: 150, column: 7, scope: !2967)
!2982 = !DILocation(line: 154, column: 7, scope: !2967)
!2983 = !DILocation(line: 159, column: 7, scope: !2967)
!2984 = !DILocation(line: 163, column: 7, scope: !2967)
!2985 = !DILocation(line: 170, column: 7, scope: !2967)
!2986 = !DILocation(line: 174, column: 7, scope: !2967)
!2987 = !DILocation(line: 176, column: 1, scope: !2941)
!2988 = distinct !DISubprogram(name: "version_etc_ar", scope: !430, file: !430, line: 183, type: !2989, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2944, !12, !12, !12, !2947}
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997}
!2992 = !DILocalVariable(name: "stream", arg: 1, scope: !2988, file: !430, line: 183, type: !2944)
!2993 = !DILocalVariable(name: "command_name", arg: 2, scope: !2988, file: !430, line: 184, type: !12)
!2994 = !DILocalVariable(name: "package", arg: 3, scope: !2988, file: !430, line: 184, type: !12)
!2995 = !DILocalVariable(name: "version", arg: 4, scope: !2988, file: !430, line: 185, type: !12)
!2996 = !DILocalVariable(name: "authors", arg: 5, scope: !2988, file: !430, line: 185, type: !2947)
!2997 = !DILocalVariable(name: "n_authors", scope: !2988, file: !430, line: 187, type: !68)
!2998 = !DILocation(line: 0, scope: !2988)
!2999 = !DILocation(line: 189, column: 8, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2988, file: !430, line: 189, column: 3)
!3001 = !DILocation(line: 0, scope: !3000)
!3002 = !DILocation(line: 189, column: 23, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3000, file: !430, line: 189, column: 3)
!3004 = !DILocation(line: 189, column: 3, scope: !3000)
!3005 = !DILocation(line: 189, column: 52, scope: !3003)
!3006 = distinct !{!3006, !3004, !3007}
!3007 = !DILocation(line: 190, column: 5, scope: !3000)
!3008 = !DILocation(line: 191, column: 3, scope: !2988)
!3009 = !DILocation(line: 192, column: 1, scope: !2988)
!3010 = distinct !DISubprogram(name: "version_etc_va", scope: !430, file: !430, line: 199, type: !3011, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !3020)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !2944, !12, !12, !12, !3013}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !430, line: 192, size: 192, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3014, file: !430, line: 192, baseType: !152, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3014, file: !430, line: 192, baseType: !152, size: 32, offset: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3014, file: !430, line: 192, baseType: !66, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3014, file: !430, line: 192, baseType: !66, size: 64, offset: 128)
!3020 = !{!3021, !3022, !3023, !3024, !3025, !3026, !3027}
!3021 = !DILocalVariable(name: "stream", arg: 1, scope: !3010, file: !430, line: 199, type: !2944)
!3022 = !DILocalVariable(name: "command_name", arg: 2, scope: !3010, file: !430, line: 200, type: !12)
!3023 = !DILocalVariable(name: "package", arg: 3, scope: !3010, file: !430, line: 200, type: !12)
!3024 = !DILocalVariable(name: "version", arg: 4, scope: !3010, file: !430, line: 201, type: !12)
!3025 = !DILocalVariable(name: "authors", arg: 5, scope: !3010, file: !430, line: 201, type: !3013)
!3026 = !DILocalVariable(name: "n_authors", scope: !3010, file: !430, line: 203, type: !68)
!3027 = !DILocalVariable(name: "authtab", scope: !3010, file: !430, line: 204, type: !3028)
!3028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640, elements: !395)
!3029 = !DILocation(line: 0, scope: !3010)
!3030 = !DILocation(line: 204, column: 3, scope: !3010)
!3031 = !DILocation(line: 204, column: 15, scope: !3010)
!3032 = !DILocation(line: 0, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !430, line: 206, column: 3)
!3034 = distinct !DILexicalBlock(scope: !3010, file: !430, line: 206, column: 3)
!3035 = !DILocation(line: 208, column: 35, scope: !3033)
!3036 = !DILocation(line: 208, column: 14, scope: !3033)
!3037 = !DILocation(line: 208, column: 33, scope: !3033)
!3038 = !DILocation(line: 208, column: 67, scope: !3033)
!3039 = !DILocation(line: 206, column: 3, scope: !3034)
!3040 = !DILocation(line: 0, scope: !3034)
!3041 = !DILocation(line: 211, column: 3, scope: !3010)
!3042 = !DILocation(line: 213, column: 1, scope: !3010)
!3043 = distinct !DISubprogram(name: "version_etc", scope: !430, file: !430, line: 230, type: !3044, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !2944, !12, !12, !12, null}
!3046 = !{!3047, !3048, !3049, !3050, !3051}
!3047 = !DILocalVariable(name: "stream", arg: 1, scope: !3043, file: !430, line: 230, type: !2944)
!3048 = !DILocalVariable(name: "command_name", arg: 2, scope: !3043, file: !430, line: 231, type: !12)
!3049 = !DILocalVariable(name: "package", arg: 3, scope: !3043, file: !430, line: 231, type: !12)
!3050 = !DILocalVariable(name: "version", arg: 4, scope: !3043, file: !430, line: 232, type: !12)
!3051 = !DILocalVariable(name: "authors", scope: !3043, file: !430, line: 234, type: !3052)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !16, line: 52, baseType: !3053)
!3053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3054, line: 32, baseType: !3055)
!3054 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !430, line: 234, baseType: !3056)
!3056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3014, size: 192, elements: !51)
!3057 = !DILocation(line: 0, scope: !3043)
!3058 = !DILocation(line: 234, column: 3, scope: !3043)
!3059 = !DILocation(line: 234, column: 11, scope: !3043)
!3060 = !DILocation(line: 236, column: 3, scope: !3043)
!3061 = !DILocation(line: 237, column: 3, scope: !3043)
!3062 = !DILocation(line: 238, column: 3, scope: !3043)
!3063 = !DILocation(line: 239, column: 1, scope: !3043)
!3064 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !430, file: !430, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !4)
!3065 = !DILocation(line: 244, column: 3, scope: !3064)
!3066 = !DILocation(line: 249, column: 3, scope: !3064)
!3067 = !DILocation(line: 255, column: 3, scope: !3064)
!3068 = !DILocation(line: 260, column: 3, scope: !3064)
!3069 = !DILocation(line: 262, column: 1, scope: !3064)
!3070 = distinct !DISubprogram(name: "xnmalloc", scope: !323, file: !323, line: 99, type: !3071, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!66, !68, !68}
!3073 = !{!3074, !3075}
!3074 = !DILocalVariable(name: "n", arg: 1, scope: !3070, file: !323, line: 99, type: !68)
!3075 = !DILocalVariable(name: "s", arg: 2, scope: !3070, file: !323, line: 99, type: !68)
!3076 = !DILocation(line: 0, scope: !3070)
!3077 = !DILocation(line: 101, column: 7, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3070, file: !323, line: 101, column: 7)
!3079 = !DILocation(line: 101, column: 7, scope: !3070)
!3080 = !DILocation(line: 102, column: 5, scope: !3078)
!3081 = !DILocation(line: 103, column: 21, scope: !3070)
!3082 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !472, line: 39, type: !68)
!3083 = distinct !DISubprogram(name: "xmalloc", scope: !472, file: !472, line: 39, type: !3084, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!66, !68}
!3086 = !{!3082, !3087}
!3087 = !DILocalVariable(name: "p", scope: !3083, file: !472, line: 41, type: !66)
!3088 = !DILocation(line: 0, scope: !3083, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 103, column: 10, scope: !3070)
!3090 = !DILocation(line: 41, column: 13, scope: !3083, inlinedAt: !3089)
!3091 = !DILocation(line: 42, column: 8, scope: !3092, inlinedAt: !3089)
!3092 = distinct !DILexicalBlock(scope: !3083, file: !472, line: 42, column: 7)
!3093 = !DILocation(line: 42, column: 15, scope: !3092, inlinedAt: !3089)
!3094 = !DILocation(line: 42, column: 10, scope: !3092, inlinedAt: !3089)
!3095 = !DILocation(line: 43, column: 5, scope: !3092, inlinedAt: !3089)
!3096 = !DILocation(line: 103, column: 3, scope: !3070)
!3097 = !DILocation(line: 0, scope: !3083)
!3098 = !DILocation(line: 41, column: 13, scope: !3083)
!3099 = !DILocation(line: 42, column: 8, scope: !3092)
!3100 = !DILocation(line: 42, column: 15, scope: !3092)
!3101 = !DILocation(line: 42, column: 10, scope: !3092)
!3102 = !DILocation(line: 43, column: 5, scope: !3092)
!3103 = !DILocation(line: 44, column: 3, scope: !3083)
!3104 = distinct !DISubprogram(name: "xnrealloc", scope: !323, file: !323, line: 112, type: !3105, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!66, !66, !68, !68}
!3107 = !{!3108, !3109, !3110}
!3108 = !DILocalVariable(name: "p", arg: 1, scope: !3104, file: !323, line: 112, type: !66)
!3109 = !DILocalVariable(name: "n", arg: 2, scope: !3104, file: !323, line: 112, type: !68)
!3110 = !DILocalVariable(name: "s", arg: 3, scope: !3104, file: !323, line: 112, type: !68)
!3111 = !DILocation(line: 0, scope: !3104)
!3112 = !DILocation(line: 114, column: 7, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3104, file: !323, line: 114, column: 7)
!3114 = !DILocation(line: 114, column: 7, scope: !3104)
!3115 = !DILocation(line: 115, column: 5, scope: !3113)
!3116 = !DILocation(line: 116, column: 25, scope: !3104)
!3117 = !DILocalVariable(name: "p", arg: 1, scope: !3118, file: !472, line: 51, type: !66)
!3118 = distinct !DISubprogram(name: "xrealloc", scope: !472, file: !472, line: 51, type: !3119, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!66, !66, !68}
!3121 = !{!3117, !3122}
!3122 = !DILocalVariable(name: "n", arg: 2, scope: !3118, file: !472, line: 51, type: !68)
!3123 = !DILocation(line: 0, scope: !3118, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 116, column: 10, scope: !3104)
!3125 = !DILocation(line: 53, column: 8, scope: !3126, inlinedAt: !3124)
!3126 = distinct !DILexicalBlock(scope: !3118, file: !472, line: 53, column: 7)
!3127 = !DILocation(line: 53, column: 13, scope: !3126, inlinedAt: !3124)
!3128 = !DILocation(line: 53, column: 10, scope: !3126, inlinedAt: !3124)
!3129 = !DILocation(line: 57, column: 7, scope: !3130, inlinedAt: !3124)
!3130 = distinct !DILexicalBlock(scope: !3126, file: !472, line: 54, column: 5)
!3131 = !DILocation(line: 58, column: 7, scope: !3130, inlinedAt: !3124)
!3132 = !DILocation(line: 61, column: 7, scope: !3118, inlinedAt: !3124)
!3133 = !DILocation(line: 62, column: 8, scope: !3134, inlinedAt: !3124)
!3134 = distinct !DILexicalBlock(scope: !3118, file: !472, line: 62, column: 7)
!3135 = !DILocation(line: 62, column: 13, scope: !3134, inlinedAt: !3124)
!3136 = !DILocation(line: 62, column: 10, scope: !3134, inlinedAt: !3124)
!3137 = !DILocation(line: 63, column: 5, scope: !3134, inlinedAt: !3124)
!3138 = !DILocation(line: 116, column: 3, scope: !3104)
!3139 = !DILocation(line: 0, scope: !3118)
!3140 = !DILocation(line: 53, column: 8, scope: !3126)
!3141 = !DILocation(line: 53, column: 13, scope: !3126)
!3142 = !DILocation(line: 53, column: 10, scope: !3126)
!3143 = !DILocation(line: 57, column: 7, scope: !3130)
!3144 = !DILocation(line: 58, column: 7, scope: !3130)
!3145 = !DILocation(line: 61, column: 7, scope: !3118)
!3146 = !DILocation(line: 62, column: 8, scope: !3134)
!3147 = !DILocation(line: 62, column: 13, scope: !3134)
!3148 = !DILocation(line: 62, column: 10, scope: !3134)
!3149 = !DILocation(line: 63, column: 5, scope: !3134)
!3150 = !DILocation(line: 65, column: 1, scope: !3118)
!3151 = !DILocation(line: 0, scope: !475)
!3152 = !DILocation(line: 176, column: 14, scope: !475)
!3153 = !DILocation(line: 178, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !475, file: !323, line: 178, column: 7)
!3155 = !DILocation(line: 178, column: 7, scope: !475)
!3156 = !DILocation(line: 180, column: 13, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !323, line: 180, column: 11)
!3158 = distinct !DILexicalBlock(scope: !3154, file: !323, line: 179, column: 5)
!3159 = !DILocation(line: 180, column: 11, scope: !3158)
!3160 = !DILocation(line: 188, column: 30, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !323, line: 181, column: 9)
!3162 = !DILocation(line: 189, column: 16, scope: !3161)
!3163 = !DILocation(line: 189, column: 13, scope: !3161)
!3164 = !DILocation(line: 190, column: 9, scope: !3161)
!3165 = !DILocation(line: 191, column: 11, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3158, file: !323, line: 191, column: 11)
!3167 = !DILocation(line: 191, column: 11, scope: !3158)
!3168 = !DILocation(line: 206, column: 7, scope: !475)
!3169 = !DILocation(line: 207, column: 25, scope: !475)
!3170 = !DILocation(line: 0, scope: !3118, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 207, column: 10, scope: !475)
!3172 = !DILocation(line: 53, column: 10, scope: !3126, inlinedAt: !3171)
!3173 = !DILocation(line: 192, column: 9, scope: !3166)
!3174 = !DILocation(line: 200, column: 69, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !323, line: 200, column: 11)
!3176 = distinct !DILexicalBlock(scope: !3154, file: !323, line: 195, column: 5)
!3177 = !DILocation(line: 201, column: 11, scope: !3175)
!3178 = !DILocation(line: 200, column: 11, scope: !3176)
!3179 = !DILocation(line: 202, column: 9, scope: !3175)
!3180 = !DILocation(line: 203, column: 14, scope: !3176)
!3181 = !DILocation(line: 203, column: 18, scope: !3176)
!3182 = !DILocation(line: 203, column: 9, scope: !3176)
!3183 = !DILocation(line: 53, column: 8, scope: !3126, inlinedAt: !3171)
!3184 = !DILocation(line: 57, column: 7, scope: !3130, inlinedAt: !3171)
!3185 = !DILocation(line: 58, column: 7, scope: !3130, inlinedAt: !3171)
!3186 = !DILocation(line: 61, column: 7, scope: !3118, inlinedAt: !3171)
!3187 = !DILocation(line: 62, column: 8, scope: !3134, inlinedAt: !3171)
!3188 = !DILocation(line: 62, column: 13, scope: !3134, inlinedAt: !3171)
!3189 = !DILocation(line: 62, column: 10, scope: !3134, inlinedAt: !3171)
!3190 = !DILocation(line: 63, column: 5, scope: !3134, inlinedAt: !3171)
!3191 = !DILocation(line: 207, column: 3, scope: !475)
!3192 = distinct !DISubprogram(name: "xcharalloc", scope: !323, file: !323, line: 216, type: !2355, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3193)
!3193 = !{!3194}
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3192, file: !323, line: 216, type: !68)
!3195 = !DILocation(line: 0, scope: !3192)
!3196 = !DILocation(line: 0, scope: !3083, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 218, column: 10, scope: !3192)
!3198 = !DILocation(line: 41, column: 13, scope: !3083, inlinedAt: !3197)
!3199 = !DILocation(line: 42, column: 8, scope: !3092, inlinedAt: !3197)
!3200 = !DILocation(line: 42, column: 15, scope: !3092, inlinedAt: !3197)
!3201 = !DILocation(line: 42, column: 10, scope: !3092, inlinedAt: !3197)
!3202 = !DILocation(line: 43, column: 5, scope: !3092, inlinedAt: !3197)
!3203 = !DILocation(line: 218, column: 3, scope: !3192)
!3204 = distinct !DISubprogram(name: "x2realloc", scope: !472, file: !472, line: 74, type: !3205, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!66, !66, !478}
!3207 = !{!3208, !3209}
!3208 = !DILocalVariable(name: "p", arg: 1, scope: !3204, file: !472, line: 74, type: !66)
!3209 = !DILocalVariable(name: "pn", arg: 2, scope: !3204, file: !472, line: 74, type: !478)
!3210 = !DILocation(line: 0, scope: !3204)
!3211 = !DILocation(line: 0, scope: !475, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 76, column: 10, scope: !3204)
!3213 = !DILocation(line: 176, column: 14, scope: !475, inlinedAt: !3212)
!3214 = !DILocation(line: 178, column: 9, scope: !3154, inlinedAt: !3212)
!3215 = !DILocation(line: 178, column: 7, scope: !475, inlinedAt: !3212)
!3216 = !DILocation(line: 180, column: 13, scope: !3157, inlinedAt: !3212)
!3217 = !DILocation(line: 180, column: 11, scope: !3158, inlinedAt: !3212)
!3218 = !DILocation(line: 191, column: 11, scope: !3166, inlinedAt: !3212)
!3219 = !DILocation(line: 191, column: 11, scope: !3158, inlinedAt: !3212)
!3220 = !DILocation(line: 206, column: 7, scope: !475, inlinedAt: !3212)
!3221 = !DILocation(line: 0, scope: !3118, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 207, column: 10, scope: !475, inlinedAt: !3212)
!3223 = !DILocation(line: 53, column: 10, scope: !3126, inlinedAt: !3222)
!3224 = !DILocation(line: 192, column: 9, scope: !3166, inlinedAt: !3212)
!3225 = !DILocation(line: 201, column: 11, scope: !3175, inlinedAt: !3212)
!3226 = !DILocation(line: 200, column: 11, scope: !3176, inlinedAt: !3212)
!3227 = !DILocation(line: 202, column: 9, scope: !3175, inlinedAt: !3212)
!3228 = !DILocation(line: 203, column: 14, scope: !3176, inlinedAt: !3212)
!3229 = !DILocation(line: 203, column: 18, scope: !3176, inlinedAt: !3212)
!3230 = !DILocation(line: 203, column: 9, scope: !3176, inlinedAt: !3212)
!3231 = !DILocation(line: 53, column: 8, scope: !3126, inlinedAt: !3222)
!3232 = !DILocation(line: 57, column: 7, scope: !3130, inlinedAt: !3222)
!3233 = !DILocation(line: 58, column: 7, scope: !3130, inlinedAt: !3222)
!3234 = !DILocation(line: 61, column: 7, scope: !3118, inlinedAt: !3222)
!3235 = !DILocation(line: 62, column: 8, scope: !3134, inlinedAt: !3222)
!3236 = !DILocation(line: 62, column: 13, scope: !3134, inlinedAt: !3222)
!3237 = !DILocation(line: 62, column: 10, scope: !3134, inlinedAt: !3222)
!3238 = !DILocation(line: 63, column: 5, scope: !3134, inlinedAt: !3222)
!3239 = !DILocation(line: 76, column: 3, scope: !3204)
!3240 = distinct !DISubprogram(name: "xzalloc", scope: !472, file: !472, line: 84, type: !3084, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3241)
!3241 = !{!3242}
!3242 = !DILocalVariable(name: "n", arg: 1, scope: !3240, file: !472, line: 84, type: !68)
!3243 = !DILocation(line: 0, scope: !3240)
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3245, file: !472, line: 93, type: !68)
!3245 = distinct !DISubprogram(name: "xcalloc", scope: !472, file: !472, line: 93, type: !3071, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3246)
!3246 = !{!3244, !3247, !3248}
!3247 = !DILocalVariable(name: "s", arg: 2, scope: !3245, file: !472, line: 93, type: !68)
!3248 = !DILocalVariable(name: "p", scope: !3245, file: !472, line: 95, type: !66)
!3249 = !DILocation(line: 0, scope: !3245, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 86, column: 10, scope: !3240)
!3251 = !DILocation(line: 100, column: 7, scope: !3252, inlinedAt: !3250)
!3252 = distinct !DILexicalBlock(scope: !3245, file: !472, line: 100, column: 7)
!3253 = !DILocation(line: 101, column: 7, scope: !3252, inlinedAt: !3250)
!3254 = !DILocation(line: 101, column: 18, scope: !3252, inlinedAt: !3250)
!3255 = !DILocation(line: 101, column: 16, scope: !3252, inlinedAt: !3250)
!3256 = !DILocation(line: 100, column: 7, scope: !3245, inlinedAt: !3250)
!3257 = !DILocation(line: 102, column: 5, scope: !3252, inlinedAt: !3250)
!3258 = !DILocation(line: 86, column: 3, scope: !3240)
!3259 = !DILocation(line: 0, scope: !3245)
!3260 = !DILocation(line: 100, column: 7, scope: !3252)
!3261 = !DILocation(line: 101, column: 7, scope: !3252)
!3262 = !DILocation(line: 101, column: 18, scope: !3252)
!3263 = !DILocation(line: 101, column: 16, scope: !3252)
!3264 = !DILocation(line: 100, column: 7, scope: !3245)
!3265 = !DILocation(line: 102, column: 5, scope: !3252)
!3266 = !DILocation(line: 103, column: 3, scope: !3245)
!3267 = distinct !DISubprogram(name: "xmemdup", scope: !472, file: !472, line: 111, type: !3268, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!66, !326, !68}
!3270 = !{!3271, !3272}
!3271 = !DILocalVariable(name: "p", arg: 1, scope: !3267, file: !472, line: 111, type: !326)
!3272 = !DILocalVariable(name: "s", arg: 2, scope: !3267, file: !472, line: 111, type: !68)
!3273 = !DILocation(line: 0, scope: !3267)
!3274 = !DILocation(line: 0, scope: !3083, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 113, column: 18, scope: !3267)
!3276 = !DILocation(line: 41, column: 13, scope: !3083, inlinedAt: !3275)
!3277 = !DILocation(line: 42, column: 8, scope: !3092, inlinedAt: !3275)
!3278 = !DILocation(line: 42, column: 15, scope: !3092, inlinedAt: !3275)
!3279 = !DILocation(line: 42, column: 10, scope: !3092, inlinedAt: !3275)
!3280 = !DILocation(line: 43, column: 5, scope: !3092, inlinedAt: !3275)
!3281 = !DILocalVariable(name: "__dest", arg: 1, scope: !3282, file: !1888, line: 31, type: !3285)
!3282 = distinct !DISubprogram(name: "memcpy", scope: !1888, file: !1888, line: 31, type: !3283, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3287)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!66, !3285, !3286, !68}
!3285 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!3286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !326)
!3287 = !{!3281, !3288, !3289}
!3288 = !DILocalVariable(name: "__src", arg: 2, scope: !3282, file: !1888, line: 31, type: !3286)
!3289 = !DILocalVariable(name: "__len", arg: 3, scope: !3282, file: !1888, line: 31, type: !68)
!3290 = !DILocation(line: 0, scope: !3282, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 113, column: 10, scope: !3267)
!3292 = !DILocation(line: 34, column: 10, scope: !3282, inlinedAt: !3291)
!3293 = !DILocation(line: 113, column: 3, scope: !3267)
!3294 = distinct !DISubprogram(name: "xstrdup", scope: !472, file: !472, line: 119, type: !88, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3295)
!3295 = !{!3296}
!3296 = !DILocalVariable(name: "string", arg: 1, scope: !3294, file: !472, line: 119, type: !12)
!3297 = !DILocation(line: 0, scope: !3294)
!3298 = !DILocation(line: 121, column: 27, scope: !3294)
!3299 = !DILocation(line: 121, column: 43, scope: !3294)
!3300 = !DILocation(line: 0, scope: !3267, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 121, column: 10, scope: !3294)
!3302 = !DILocation(line: 0, scope: !3083, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 113, column: 18, scope: !3267, inlinedAt: !3301)
!3304 = !DILocation(line: 41, column: 13, scope: !3083, inlinedAt: !3303)
!3305 = !DILocation(line: 42, column: 8, scope: !3092, inlinedAt: !3303)
!3306 = !DILocation(line: 42, column: 15, scope: !3092, inlinedAt: !3303)
!3307 = !DILocation(line: 42, column: 10, scope: !3092, inlinedAt: !3303)
!3308 = !DILocation(line: 43, column: 5, scope: !3092, inlinedAt: !3303)
!3309 = !DILocation(line: 0, scope: !3282, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 113, column: 10, scope: !3267, inlinedAt: !3301)
!3311 = !DILocation(line: 34, column: 10, scope: !3282, inlinedAt: !3310)
!3312 = !DILocation(line: 121, column: 3, scope: !3294)
!3313 = distinct !DISubprogram(name: "xalloc_die", scope: !493, file: !493, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !4)
!3314 = !DILocation(line: 34, column: 10, scope: !3313)
!3315 = !DILocation(line: 34, column: 33, scope: !3313)
!3316 = !DILocation(line: 34, column: 3, scope: !3313)
!3317 = !DILocation(line: 40, column: 3, scope: !3313)
!3318 = distinct !DISubprogram(name: "rpl_calloc", scope: !496, file: !496, line: 42, type: !3071, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !3319)
!3319 = !{!3320, !3321, !3322, !3323}
!3320 = !DILocalVariable(name: "n", arg: 1, scope: !3318, file: !496, line: 42, type: !68)
!3321 = !DILocalVariable(name: "s", arg: 2, scope: !3318, file: !496, line: 42, type: !68)
!3322 = !DILocalVariable(name: "result", scope: !3318, file: !496, line: 44, type: !66)
!3323 = !DILocalVariable(name: "bytes", scope: !3324, file: !496, line: 56, type: !68)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !496, line: 53, column: 5)
!3325 = distinct !DILexicalBlock(scope: !3318, file: !496, line: 47, column: 7)
!3326 = !DILocation(line: 0, scope: !3318)
!3327 = !DILocation(line: 47, column: 9, scope: !3325)
!3328 = !DILocation(line: 47, column: 19, scope: !3325)
!3329 = !DILocation(line: 47, column: 14, scope: !3325)
!3330 = !DILocation(line: 0, scope: !3324)
!3331 = !DILocation(line: 57, column: 21, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3324, file: !496, line: 57, column: 11)
!3333 = !DILocation(line: 57, column: 11, scope: !3324)
!3334 = !DILocation(line: 59, column: 11, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !496, line: 58, column: 9)
!3336 = !DILocation(line: 59, column: 17, scope: !3335)
!3337 = !DILocation(line: 65, column: 12, scope: !3318)
!3338 = !DILocation(line: 72, column: 3, scope: !3318)
!3339 = !DILocation(line: 73, column: 1, scope: !3318)
!3340 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !499, file: !499, line: 86, type: !3341, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !3347)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!68, !3343, !12, !68, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1631, line: 6, baseType: !3346)
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !354, line: 21, baseType: !505)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353, !3354}
!3348 = !DILocalVariable(name: "pwc", arg: 1, scope: !3340, file: !499, line: 86, type: !3343)
!3349 = !DILocalVariable(name: "s", arg: 2, scope: !3340, file: !499, line: 86, type: !12)
!3350 = !DILocalVariable(name: "n", arg: 3, scope: !3340, file: !499, line: 86, type: !68)
!3351 = !DILocalVariable(name: "ps", arg: 4, scope: !3340, file: !499, line: 86, type: !3344)
!3352 = !DILocalVariable(name: "ret", scope: !3340, file: !499, line: 88, type: !68)
!3353 = !DILocalVariable(name: "wc", scope: !3340, file: !499, line: 89, type: !1635)
!3354 = !DILocalVariable(name: "uc", scope: !3355, file: !499, line: 156, type: !140)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !499, line: 155, column: 5)
!3356 = distinct !DILexicalBlock(scope: !3340, file: !499, line: 154, column: 7)
!3357 = !DILocation(line: 0, scope: !3340)
!3358 = !DILocation(line: 89, column: 3, scope: !3340)
!3359 = !DILocation(line: 105, column: 9, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3340, file: !499, line: 105, column: 7)
!3361 = !DILocation(line: 105, column: 7, scope: !3340)
!3362 = !DILocation(line: 145, column: 9, scope: !3340)
!3363 = !DILocation(line: 154, column: 19, scope: !3356)
!3364 = !DILocation(line: 154, column: 31, scope: !3356)
!3365 = !DILocation(line: 154, column: 26, scope: !3356)
!3366 = !DILocation(line: 154, column: 41, scope: !3356)
!3367 = !DILocation(line: 154, column: 7, scope: !3340)
!3368 = !DILocation(line: 156, column: 26, scope: !3355)
!3369 = !DILocation(line: 0, scope: !3355)
!3370 = !DILocation(line: 157, column: 14, scope: !3355)
!3371 = !DILocation(line: 157, column: 12, scope: !3355)
!3372 = !DILocation(line: 163, column: 1, scope: !3340)
!3373 = distinct !DISubprogram(name: "close_stream", scope: !518, file: !518, line: 56, type: !3374, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3378)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!14, !3376}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2946, line: 7, baseType: !525)
!3378 = !{!3379, !3380, !3382, !3383}
!3379 = !DILocalVariable(name: "stream", arg: 1, scope: !3373, file: !518, line: 56, type: !3376)
!3380 = !DILocalVariable(name: "some_pending", scope: !3373, file: !518, line: 58, type: !3381)
!3381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!3382 = !DILocalVariable(name: "prev_fail", scope: !3373, file: !518, line: 59, type: !3381)
!3383 = !DILocalVariable(name: "fclose_fail", scope: !3373, file: !518, line: 60, type: !3381)
!3384 = !DILocation(line: 0, scope: !3373)
!3385 = !DILocation(line: 58, column: 30, scope: !3373)
!3386 = !DILocalVariable(name: "__stream", arg: 1, scope: !3387, file: !1257, line: 135, type: !3376)
!3387 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1257, file: !1257, line: 135, type: !3374, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3388)
!3388 = !{!3386}
!3389 = !DILocation(line: 0, scope: !3387, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 59, column: 27, scope: !3373)
!3391 = !DILocation(line: 137, column: 10, scope: !3387, inlinedAt: !3390)
!3392 = !{!1265, !1130, i64 0}
!3393 = !DILocation(line: 59, column: 43, scope: !3373)
!3394 = !DILocation(line: 60, column: 29, scope: !3373)
!3395 = !DILocation(line: 60, column: 45, scope: !3373)
!3396 = !DILocation(line: 70, column: 17, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3373, file: !518, line: 70, column: 7)
!3398 = !DILocation(line: 58, column: 50, scope: !3373)
!3399 = !DILocation(line: 70, column: 33, scope: !3397)
!3400 = !DILocation(line: 70, column: 53, scope: !3397)
!3401 = !DILocation(line: 70, column: 59, scope: !3397)
!3402 = !DILocation(line: 70, column: 7, scope: !3373)
!3403 = !DILocation(line: 72, column: 11, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3397, file: !518, line: 71, column: 5)
!3405 = !DILocation(line: 73, column: 9, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3404, file: !518, line: 72, column: 11)
!3407 = !DILocation(line: 73, column: 15, scope: !3406)
!3408 = !DILocation(line: 78, column: 1, scope: !3373)
!3409 = distinct !DISubprogram(name: "hard_locale", scope: !557, file: !557, line: 27, type: !515, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !3410)
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "category", arg: 1, scope: !3409, file: !557, line: 27, type: !14)
!3412 = !DILocalVariable(name: "locale", scope: !3409, file: !557, line: 29, type: !3413)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !3414)
!3414 = !{!3415}
!3415 = !DISubrange(count: 257)
!3416 = !DILocation(line: 0, scope: !3409)
!3417 = !DILocation(line: 29, column: 3, scope: !3409)
!3418 = !DILocation(line: 29, column: 8, scope: !3409)
!3419 = !DILocation(line: 31, column: 7, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3409, file: !557, line: 31, column: 7)
!3421 = !DILocation(line: 31, column: 7, scope: !3409)
!3422 = !DILocation(line: 34, column: 12, scope: !3409)
!3423 = !DILocation(line: 34, column: 38, scope: !3409)
!3424 = !DILocation(line: 34, column: 41, scope: !3409)
!3425 = !DILocation(line: 34, column: 66, scope: !3409)
!3426 = !DILocation(line: 35, column: 1, scope: !3409)
!3427 = distinct !DISubprogram(name: "locale_charset", scope: !564, file: !564, line: 831, type: !377, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3428)
!3428 = !{!3429}
!3429 = !DILocalVariable(name: "codeset", scope: !3427, file: !564, line: 833, type: !12)
!3430 = !DILocation(line: 847, column: 13, scope: !3427)
!3431 = !DILocation(line: 0, scope: !3427)
!3432 = !DILocation(line: 911, column: 15, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3427, file: !564, line: 911, column: 7)
!3434 = !DILocation(line: 911, column: 7, scope: !3427)
!3435 = !DILocation(line: 1070, column: 13, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !564, line: 1070, column: 13)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !564, line: 1060, column: 7)
!3438 = distinct !DILexicalBlock(scope: !3427, file: !564, line: 1019, column: 3)
!3439 = !DILocation(line: 1070, column: 24, scope: !3436)
!3440 = !DILocation(line: 1070, column: 13, scope: !3437)
!3441 = !DILocation(line: 1158, column: 3, scope: !3427)
!3442 = distinct !DISubprogram(name: "setlocale_null_r", scope: !957, file: !957, line: 269, type: !3443, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!14, !14, !10, !68}
!3445 = !{!3446, !3447, !3448}
!3446 = !DILocalVariable(name: "category", arg: 1, scope: !3442, file: !957, line: 269, type: !14)
!3447 = !DILocalVariable(name: "buf", arg: 2, scope: !3442, file: !957, line: 269, type: !10)
!3448 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3442, file: !957, line: 269, type: !68)
!3449 = !DILocation(line: 0, scope: !3442)
!3450 = !DILocalVariable(name: "category", arg: 1, scope: !3451, file: !957, line: 91, type: !14)
!3451 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !957, file: !957, line: 91, type: !3443, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !3452)
!3452 = !{!3450, !3453, !3454, !3455, !3456}
!3453 = !DILocalVariable(name: "buf", arg: 2, scope: !3451, file: !957, line: 91, type: !10)
!3454 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3451, file: !957, line: 91, type: !68)
!3455 = !DILocalVariable(name: "result", scope: !3451, file: !957, line: 140, type: !12)
!3456 = !DILocalVariable(name: "length", scope: !3457, file: !957, line: 154, type: !68)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !957, line: 153, column: 5)
!3458 = distinct !DILexicalBlock(scope: !3451, file: !957, line: 142, column: 7)
!3459 = !DILocation(line: 0, scope: !3451, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 274, column: 10, scope: !3442)
!3461 = !DILocalVariable(name: "category", arg: 1, scope: !3462, file: !957, line: 60, type: !14)
!3462 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !957, file: !957, line: 60, type: !3463, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!12, !14}
!3465 = !{!3461, !3466}
!3466 = !DILocalVariable(name: "result", scope: !3462, file: !957, line: 62, type: !12)
!3467 = !DILocation(line: 0, scope: !3462, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 140, column: 24, scope: !3451, inlinedAt: !3460)
!3469 = !DILocation(line: 62, column: 24, scope: !3462, inlinedAt: !3468)
!3470 = !DILocation(line: 142, column: 14, scope: !3458, inlinedAt: !3460)
!3471 = !DILocation(line: 142, column: 7, scope: !3451, inlinedAt: !3460)
!3472 = !DILocation(line: 145, column: 19, scope: !3473, inlinedAt: !3460)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !957, line: 145, column: 11)
!3474 = distinct !DILexicalBlock(scope: !3458, file: !957, line: 143, column: 5)
!3475 = !DILocation(line: 145, column: 11, scope: !3474, inlinedAt: !3460)
!3476 = !DILocation(line: 149, column: 16, scope: !3473, inlinedAt: !3460)
!3477 = !DILocation(line: 149, column: 9, scope: !3473, inlinedAt: !3460)
!3478 = !DILocation(line: 154, column: 23, scope: !3457, inlinedAt: !3460)
!3479 = !DILocation(line: 0, scope: !3457, inlinedAt: !3460)
!3480 = !DILocation(line: 155, column: 18, scope: !3481, inlinedAt: !3460)
!3481 = distinct !DILexicalBlock(scope: !3457, file: !957, line: 155, column: 11)
!3482 = !DILocation(line: 155, column: 11, scope: !3457, inlinedAt: !3460)
!3483 = !DILocation(line: 157, column: 39, scope: !3484, inlinedAt: !3460)
!3484 = distinct !DILexicalBlock(scope: !3481, file: !957, line: 156, column: 9)
!3485 = !DILocalVariable(name: "__dest", arg: 1, scope: !3486, file: !1888, line: 31, type: !3285)
!3486 = distinct !DISubprogram(name: "memcpy", scope: !1888, file: !1888, line: 31, type: !3283, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !3487)
!3487 = !{!3485, !3488, !3489}
!3488 = !DILocalVariable(name: "__src", arg: 2, scope: !3486, file: !1888, line: 31, type: !3286)
!3489 = !DILocalVariable(name: "__len", arg: 3, scope: !3486, file: !1888, line: 31, type: !68)
!3490 = !DILocation(line: 0, scope: !3486, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 157, column: 11, scope: !3484, inlinedAt: !3460)
!3492 = !DILocation(line: 34, column: 10, scope: !3486, inlinedAt: !3491)
!3493 = !DILocation(line: 158, column: 11, scope: !3484, inlinedAt: !3460)
!3494 = !DILocation(line: 162, column: 23, scope: !3495, inlinedAt: !3460)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !957, line: 162, column: 15)
!3496 = distinct !DILexicalBlock(scope: !3481, file: !957, line: 161, column: 9)
!3497 = !DILocation(line: 162, column: 15, scope: !3496, inlinedAt: !3460)
!3498 = !DILocation(line: 167, column: 44, scope: !3499, inlinedAt: !3460)
!3499 = distinct !DILexicalBlock(scope: !3495, file: !957, line: 163, column: 13)
!3500 = !DILocation(line: 0, scope: !3486, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 167, column: 15, scope: !3499, inlinedAt: !3460)
!3502 = !DILocation(line: 34, column: 10, scope: !3486, inlinedAt: !3501)
!3503 = !DILocation(line: 168, column: 15, scope: !3499, inlinedAt: !3460)
!3504 = !DILocation(line: 168, column: 32, scope: !3499, inlinedAt: !3460)
!3505 = !DILocation(line: 169, column: 13, scope: !3499, inlinedAt: !3460)
!3506 = !DILocation(line: 0, scope: !3458, inlinedAt: !3460)
!3507 = !DILocation(line: 274, column: 3, scope: !3442)
!3508 = distinct !DISubprogram(name: "setlocale_null", scope: !957, file: !957, line: 301, type: !3463, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !3509)
!3509 = !{!3510}
!3510 = !DILocalVariable(name: "category", arg: 1, scope: !3508, file: !957, line: 301, type: !14)
!3511 = !DILocation(line: 0, scope: !3508)
!3512 = !DILocation(line: 0, scope: !3462, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 304, column: 10, scope: !3508)
!3514 = !DILocation(line: 62, column: 24, scope: !3462, inlinedAt: !3513)
!3515 = !DILocation(line: 304, column: 3, scope: !3508)
!3516 = distinct !DISubprogram(name: "rpl_fclose", scope: !960, file: !960, line: 58, type: !3517, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3521)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!14, !3519}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2946, line: 7, baseType: !966)
!3521 = !{!3522, !3523, !3524, !3525}
!3522 = !DILocalVariable(name: "fp", arg: 1, scope: !3516, file: !960, line: 58, type: !3519)
!3523 = !DILocalVariable(name: "saved_errno", scope: !3516, file: !960, line: 60, type: !14)
!3524 = !DILocalVariable(name: "fd", scope: !3516, file: !960, line: 61, type: !14)
!3525 = !DILocalVariable(name: "result", scope: !3516, file: !960, line: 62, type: !14)
!3526 = !DILocation(line: 0, scope: !3516)
!3527 = !DILocation(line: 65, column: 8, scope: !3516)
!3528 = !DILocation(line: 66, column: 10, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3516, file: !960, line: 66, column: 7)
!3530 = !DILocation(line: 66, column: 7, scope: !3516)
!3531 = !DILocation(line: 67, column: 12, scope: !3529)
!3532 = !DILocation(line: 67, column: 5, scope: !3529)
!3533 = !DILocation(line: 72, column: 9, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3516, file: !960, line: 72, column: 7)
!3535 = !DILocation(line: 72, column: 23, scope: !3534)
!3536 = !DILocation(line: 72, column: 33, scope: !3534)
!3537 = !DILocation(line: 72, column: 26, scope: !3534)
!3538 = !DILocation(line: 72, column: 59, scope: !3534)
!3539 = !DILocation(line: 73, column: 7, scope: !3534)
!3540 = !DILocation(line: 73, column: 10, scope: !3534)
!3541 = !DILocation(line: 72, column: 7, scope: !3516)
!3542 = !DILocation(line: 100, column: 12, scope: !3516)
!3543 = !DILocation(line: 105, column: 7, scope: !3516)
!3544 = !DILocation(line: 74, column: 19, scope: !3534)
!3545 = !DILocation(line: 105, column: 19, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3516, file: !960, line: 105, column: 7)
!3547 = !DILocation(line: 107, column: 13, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3546, file: !960, line: 106, column: 5)
!3549 = !DILocation(line: 109, column: 5, scope: !3548)
!3550 = !DILocation(line: 112, column: 1, scope: !3516)
!3551 = distinct !DISubprogram(name: "rpl_fflush", scope: !1004, file: !1004, line: 129, type: !3552, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !3556)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!14, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2946, line: 7, baseType: !1010)
!3556 = !{!3557}
!3557 = !DILocalVariable(name: "stream", arg: 1, scope: !3551, file: !1004, line: 129, type: !3554)
!3558 = !DILocation(line: 0, scope: !3551)
!3559 = !DILocation(line: 150, column: 14, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3551, file: !1004, line: 150, column: 7)
!3561 = !DILocation(line: 150, column: 22, scope: !3560)
!3562 = !DILocation(line: 150, column: 27, scope: !3560)
!3563 = !DILocation(line: 150, column: 7, scope: !3551)
!3564 = !DILocation(line: 151, column: 12, scope: !3560)
!3565 = !DILocation(line: 151, column: 5, scope: !3560)
!3566 = !DILocalVariable(name: "fp", arg: 1, scope: !3567, file: !1004, line: 41, type: !3554)
!3567 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1004, file: !1004, line: 41, type: !3568, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{null, !3554}
!3570 = !{!3566}
!3571 = !DILocation(line: 0, scope: !3567, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 156, column: 3, scope: !3551)
!3573 = !DILocation(line: 43, column: 11, scope: !3574, inlinedAt: !3572)
!3574 = distinct !DILexicalBlock(scope: !3567, file: !1004, line: 43, column: 7)
!3575 = !DILocation(line: 43, column: 18, scope: !3574, inlinedAt: !3572)
!3576 = !DILocation(line: 43, column: 7, scope: !3567, inlinedAt: !3572)
!3577 = !DILocation(line: 45, column: 5, scope: !3574, inlinedAt: !3572)
!3578 = !DILocation(line: 158, column: 10, scope: !3551)
!3579 = !DILocation(line: 158, column: 3, scope: !3551)
!3580 = !DILocation(line: 235, column: 1, scope: !3551)
!3581 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1045, file: !1045, line: 28, type: !3582, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !3587)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!14, !3584, !3586, !14}
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2946, line: 7, baseType: !1051)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !16, line: 63, baseType: !42)
!3587 = !{!3588, !3589, !3590, !3591}
!3588 = !DILocalVariable(name: "fp", arg: 1, scope: !3581, file: !1045, line: 28, type: !3584)
!3589 = !DILocalVariable(name: "offset", arg: 2, scope: !3581, file: !1045, line: 28, type: !3586)
!3590 = !DILocalVariable(name: "whence", arg: 3, scope: !3581, file: !1045, line: 28, type: !14)
!3591 = !DILocalVariable(name: "pos", scope: !3592, file: !1045, line: 117, type: !3586)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !1045, line: 113, column: 5)
!3593 = distinct !DILexicalBlock(scope: !3581, file: !1045, line: 52, column: 7)
!3594 = !DILocation(line: 0, scope: !3581)
!3595 = !DILocation(line: 52, column: 11, scope: !3593)
!3596 = !{!1265, !1123, i64 16}
!3597 = !DILocation(line: 52, column: 31, scope: !3593)
!3598 = !{!1265, !1123, i64 8}
!3599 = !DILocation(line: 52, column: 24, scope: !3593)
!3600 = !DILocation(line: 53, column: 7, scope: !3593)
!3601 = !DILocation(line: 53, column: 14, scope: !3593)
!3602 = !DILocation(line: 53, column: 35, scope: !3593)
!3603 = !{!1265, !1123, i64 32}
!3604 = !DILocation(line: 53, column: 28, scope: !3593)
!3605 = !DILocation(line: 54, column: 7, scope: !3593)
!3606 = !DILocation(line: 54, column: 14, scope: !3593)
!3607 = !{!1265, !1123, i64 72}
!3608 = !DILocation(line: 54, column: 28, scope: !3593)
!3609 = !DILocation(line: 52, column: 7, scope: !3581)
!3610 = !DILocation(line: 117, column: 26, scope: !3592)
!3611 = !DILocation(line: 117, column: 19, scope: !3592)
!3612 = !DILocation(line: 0, scope: !3592)
!3613 = !DILocation(line: 118, column: 15, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3592, file: !1045, line: 118, column: 11)
!3615 = !DILocation(line: 118, column: 11, scope: !3592)
!3616 = !DILocation(line: 129, column: 11, scope: !3592)
!3617 = !DILocation(line: 129, column: 18, scope: !3592)
!3618 = !DILocation(line: 130, column: 11, scope: !3592)
!3619 = !DILocation(line: 130, column: 19, scope: !3592)
!3620 = !{!1265, !1266, i64 144}
!3621 = !DILocation(line: 161, column: 7, scope: !3592)
!3622 = !DILocation(line: 163, column: 10, scope: !3581)
!3623 = !DILocation(line: 163, column: 3, scope: !3581)
!3624 = !DILocation(line: 164, column: 1, scope: !3581)
